; ModuleID = 'XPathEnvSupportDefault.cpp'
source_filename = "XPathEnvSupportDefault.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.xalanc_1_10::XalanMap" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanVector", i64, i64 }
%"struct.xalanc_1_10::DOMStringHashFunction" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.0", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node" = type { %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry", ptr, ptr }
%"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry" = type <{ ptr, i8, [7 x i8] }>
%"struct.xalanc_1_10::XPathEnvSupportDefault::NamespaceFunctionTableDeleteFunctor" = type { ptr }
%"class.xalanc_1_10::XPathEnvSupportDefault" = type { %"class.xalanc_1_10::XPathEnvSupport", %"class.xalanc_1_10::XalanMap.1", %"class.xalanc_1_10::XalanMap" }
%"class.xalanc_1_10::XPathEnvSupport" = type { ptr }
%"class.xalanc_1_10::XalanMap.1" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.2", %"class.xalanc_1_10::XalanList.2", %"class.xalanc_1_10::XalanVector.3", i64, i64 }
%"class.xalanc_1_10::XalanList.2" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node" = type { %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry", ptr, ptr }
%"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry" = type <{ ptr, i8, [7 x i8] }>
%"struct.xalanc_1_10::XalanMapIterator" = type { %"struct.xalanc_1_10::XalanListIteratorBase" }
%"struct.xalanc_1_10::XalanListIteratorBase" = type { ptr }
%"struct.xalanc_1_10::XalanMapIterator.7" = type { %"struct.xalanc_1_10::XalanListIteratorBase.8" }
%"struct.xalanc_1_10::XalanListIteratorBase.8" = type { ptr }
%"struct.std::pair" = type { %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanMap.4" }
%"class.xalanc_1_10::XalanMap.4" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.5", %"class.xalanc_1_10::XalanList.5", %"class.xalanc_1_10::XalanVector.6", i64, i64 }
%"class.xalanc_1_10::XalanList.5" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.6" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node" = type { %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry", ptr, ptr }
%"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry" = type <{ ptr, i8, [7 x i8] }>
%"struct.std::pair.9" = type { %"class.xalanc_1_10::XalanDOMString", ptr }
%"class.xalanc_1_10::XalanVector.19" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.18" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.21" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanMapIterator.20" = type { %"struct.xalanc_1_10::XalanListIteratorBase.12" }
%"struct.xalanc_1_10::XalanListIteratorBase.12" = type { ptr }
%"struct.std::pair.13" = type { %"class.xalanc_1_10::XalanDOMString", ptr }
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_ED2Ev = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E4findERKS1_ = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_EixERKS1_ = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEixERKS1_ = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE4findERKS1_ = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE5eraseENS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S4_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS7_5EntryEEENS_9XalanListISG_E4NodeEEEEE = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE5clearEv = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEEixERKS1_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E15doRemoveEntriesEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S7_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS8_5EntryEEENS_9XalanListISH_E4NodeEEEEE = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev = comdat any

$_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S4_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS7_5EntryEEENS_9XalanListISG_E4NodeEEEEE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEED2Ev = comdat any

$_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S3_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS6_5EntryEEENS_9XalanListISF_E4NodeEEEEE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E13doCreateEntryERKS1_PKS7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_mRKSK_ = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E6rehashEv = comdat any

$_ZNK11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE5emptyEv = comdat any

$_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE9push_backERKSA_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_PKSK_SQ_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEC2ERKSN_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE6insertEPSH_PKSH_SN_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEaSERKSK_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEC2EmRKSK_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEC2ERKS7_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEEC2EmRKSJ_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE6insertEPSJ_mRKSJ_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE6insertEPSJ_PKSJ_SP_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE10doPushBackERKSJ_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEEC2ERKSM_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEC2ERKSJ_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE6insertEPSG_PKSG_SM_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE10doPushBackERKSG_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEaSERKSJ_ = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE6insertERKS1_RKS4_ = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PKS4_ = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE6rehashEv = comdat any

$_ZNK11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5emptyEv = comdat any

$_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE9push_backERKS9_ = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE14compactBucketsEv = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE4findERKS1_ = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_mRKSI_ = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE6rehashEv = comdat any

$_ZNK11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5emptyEv = comdat any

$_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE9push_backERKS8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_PKSI_SO_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEC2ERKSL_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE6insertEPSF_PKSF_SL_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEaSERKSI_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEC2EmRKSI_RN11xercesc_2_713MemoryManagerE = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE = dso_local global %"class.xalanc_1_10::XalanMap" zeroinitializer, align 8
@_ZN11xalanc_1_1022XPathEnvSupportDefault13s_emptyStringE = dso_local global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZTVN11xalanc_1_1022XPathEnvSupportDefaultE = dso_local unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1022XPathEnvSupportDefaultE, ptr @_ZN11xalanc_1_1022XPathEnvSupportDefaultD2Ev, ptr @_ZN11xalanc_1_1022XPathEnvSupportDefaultD0Ev, ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault8parseXMLERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringES6_, ptr @_ZNK11xalanc_1_1022XPathEnvSupportDefault17getSourceDocumentERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault17setSourceDocumentERKNS_14XalanDOMStringEPNS_13XalanDocumentE, ptr @_ZNK11xalanc_1_1022XPathEnvSupportDefault14findURIFromDocEPKNS_13XalanDocumentE, ptr @_ZNK11xalanc_1_1022XPathEnvSupportDefault16elementAvailableERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1022XPathEnvSupportDefault17functionAvailableERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1022XPathEnvSupportDefault11extFunctionERNS_21XPathExecutionContextERKNS_14XalanDOMStringES5_PNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS9_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1022XPathEnvSupportDefault7problemENS_15XPathEnvSupport7eSourceENS1_15eClassificationEPKNS_14PrefixResolverEPKNS_9XalanNodeERKNS_14XalanDOMStringEPKtii, ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault5resetEv, ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault28installExternalFunctionLocalERKNS_14XalanDOMStringES3_RKNS_8FunctionE, ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault30uninstallExternalFunctionLocalERKNS_14XalanDOMStringES3_] }, align 8
@_ZN11xalanc_1_1011DOMServices29s_XMLNamespaceSeparatorStringE = external local_unnamed_addr constant ptr, align 8
@_ZTIN11xalanc_1_1034XPathExceptionFunctionNotAvailableE = external constant ptr
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [5 x i8] c",in \00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c", at line number \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" at offset \00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1022XPathEnvSupportDefaultE = dso_local constant [40 x i8] c"N11xalanc_1_1022XPathEnvSupportDefaultE\00", align 1
@_ZTIN11xalanc_1_1015XPathEnvSupportE = external constant ptr
@_ZTIN11xalanc_1_1022XPathEnvSupportDefaultE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1022XPathEnvSupportDefaultE, ptr @_ZTIN11xalanc_1_1015XPathEnvSupportE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XPathEnvSupportDefault.cpp, ptr null }]

@_ZN11xalanc_1_1022XPathEnvSupportDefaultC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1022XPathEnvSupportDefaultC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1022XPathEnvSupportDefaultD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1022XPathEnvSupportDefaultD2Ev
@_ZN11xalanc_1_1022XPathEnvSupportDefault35NamespaceFunctionTableDeleteFunctorC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault35NamespaceFunctionTableDeleteFunctorC2ERN11xercesc_2_713MemoryManagerE

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_ED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  invoke void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
          to label %2 unwind label %53, !prof !123

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !124
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %47, label %6, !prof !130

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !131, !noalias !133
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20, !prof !136

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 8, !tbaa !137, !noalias !133
  %13 = load ptr, ptr %12, align 8, !tbaa !138, !noalias !133
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !133
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 32)
          to label %17 unwind label %53

17:                                               ; preds = %11
  store ptr %16, ptr %8, align 8, !tbaa !131, !noalias !133
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %18, align 8, !tbaa !140, !noalias !133
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %19, align 8, !tbaa !144, !noalias !133
  br label %20

20:                                               ; preds = %6, %17
  %21 = load ptr, ptr %8, align 8, !tbaa !131, !noalias !133
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  br label %23

23:                                               ; preds = %41, %20
  %24 = phi ptr [ %21, %20 ], [ %26, %41 ]
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !140, !noalias !145
  %27 = load ptr, ptr %8, align 8, !tbaa !131, !noalias !146
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %38, !prof !149

29:                                               ; preds = %23
  %30 = load ptr, ptr %7, align 8, !tbaa !137, !noalias !146
  %31 = load ptr, ptr %30, align 8, !tbaa !138, !noalias !146
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8, !noalias !146
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef 32)
          to label %35 unwind label %51

35:                                               ; preds = %29
  store ptr %34, ptr %8, align 8, !tbaa !131, !noalias !146
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %34, i64 0, i32 2
  store ptr %34, ptr %36, align 8, !tbaa !140, !noalias !146
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %34, i64 0, i32 1
  store ptr %34, ptr %37, align 8, !tbaa !144, !noalias !146
  br label %38

38:                                               ; preds = %23, %35
  %39 = load ptr, ptr %8, align 8, !tbaa !131, !noalias !146
  %40 = icmp eq ptr %26, %39
  br i1 %40, label %47, label %41, !prof !150

41:                                               ; preds = %38
  %42 = load ptr, ptr %26, align 8, !tbaa !151
  %43 = load ptr, ptr %22, align 8, !tbaa !152
  %44 = load ptr, ptr %43, align 8, !tbaa !138
  %45 = getelementptr inbounds ptr, ptr %44, i64 3
  %46 = load ptr, ptr %45, align 8
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef %42)
          to label %23 unwind label %51, !prof !157, !llvm.loop !158

47:                                               ; preds = %38, %2
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %48) #19
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %49) #19
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %50) #19
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
  tail call void @__clang_call_terminate(ptr %57) #20
  unreachable
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #3 comdat align 2 !prof !161 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1022XPathEnvSupportDefault10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !162 {
  %2 = alloca %"class.xalanc_1_10::XalanMap", align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %2) #19
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %2, i64 0, i32 2
  store ptr %0, ptr %3, align 8, !tbaa !152
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %2, i64 0, i32 3
  store float 7.500000e-01, ptr %4, align 8, !tbaa !163
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %2, i64 0, i32 4
  store i64 29, ptr %5, align 8, !tbaa !164
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %2, i64 0, i32 5
  store i64 0, ptr %6, align 8, !tbaa !165
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %2, i64 0, i32 6
  store ptr %0, ptr %7, align 8, !tbaa !137
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %2, i64 0, i32 6, i32 1
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %2, i64 0, i32 6, i32 2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %2, i64 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store ptr %0, ptr %10, align 8, !tbaa !137
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %2, i64 0, i32 7, i32 1
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %2, i64 0, i32 7, i32 2
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %2, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  store ptr %0, ptr %13, align 8, !tbaa !166
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %2, i64 0, i32 8, i32 1
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %2, i64 0, i32 8, i32 2
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %2, i64 0, i32 8, i32 3
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %2, i64 0, i32 9
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %2, i64 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, i8 0, i64 32, i1 false)
  store i64 50, ptr %18, align 8, !tbaa !167
  %19 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 5), align 8, !tbaa !165
  store i64 0, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 5), align 8, !tbaa !165
  store i64 %19, ptr %6, align 8, !tbaa !165
  %20 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 2), align 8, !tbaa !152
  store ptr %0, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 2), align 8, !tbaa !152
  store ptr %20, ptr %3, align 8, !tbaa !152
  %21 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 9), align 8, !tbaa !168
  store i64 0, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 9), align 8, !tbaa !168
  store i64 %21, ptr %17, align 8, !tbaa !168
  %22 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 10), align 8, !tbaa !167
  store i64 50, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 10), align 8, !tbaa !167
  store i64 %22, ptr %18, align 8, !tbaa !167
  %23 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 6), align 8, !tbaa !169
  store ptr %0, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 6), align 8, !tbaa !169
  store ptr %23, ptr %7, align 8, !tbaa !169
  %24 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 6, i32 1), align 8, !tbaa !169
  store ptr null, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 6, i32 1), align 8, !tbaa !169
  store ptr %24, ptr %8, align 8, !tbaa !169
  %25 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 6, i32 2), align 8, !tbaa !169
  store ptr null, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 6, i32 2), align 8, !tbaa !169
  store ptr %25, ptr %9, align 8, !tbaa !169
  %26 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 7), align 8, !tbaa !169
  store ptr %0, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 7), align 8, !tbaa !169
  store ptr %26, ptr %10, align 8, !tbaa !169
  %27 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 7, i32 1), align 8, !tbaa !169
  store ptr null, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 7, i32 1), align 8, !tbaa !169
  store ptr %27, ptr %11, align 8, !tbaa !169
  %28 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 7, i32 2), align 8, !tbaa !169
  store ptr null, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 7, i32 2), align 8, !tbaa !169
  store ptr %28, ptr %12, align 8, !tbaa !169
  %29 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 8), align 8, !tbaa !166
  %30 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 8, i32 1), align 8, !tbaa !124
  %31 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 8, i32 2), align 8, !tbaa !170
  %32 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 8, i32 3), align 8, !tbaa !171
  store ptr %0, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 8), align 8, !tbaa !166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 8, i32 1), i8 0, i64 24, i1 false)
  store ptr %29, ptr %13, align 8, !tbaa !166
  store i64 %30, ptr %14, align 8, !tbaa !124
  store i64 %31, ptr %15, align 8, !tbaa !170
  store ptr %32, ptr %16, align 8, !tbaa !171
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_ED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %2) #19
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1022XPathEnvSupportDefault9terminateEv() local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !162 {
  %1 = alloca %"struct.xalanc_1_10::XPathEnvSupportDefault::NamespaceFunctionTableDeleteFunctor", align 8
  %2 = alloca %"class.xalanc_1_10::XalanMap", align 8
  %3 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 6, i32 1), align 8, !tbaa !131, !noalias !172
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !136

5:                                                ; preds = %0
  %6 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 6), align 8, !tbaa !137, !noalias !172
  %7 = load ptr, ptr %6, align 8, !tbaa !138, !noalias !172
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !172
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 32), !noalias !172
  store ptr %10, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 6, i32 1), align 8, !tbaa !131, !noalias !172
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !140, !noalias !172
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !144, !noalias !172
  br label %13

13:                                               ; preds = %0, %5
  %14 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 6, i32 1), align 8, !tbaa !131, !noalias !145
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !140, !noalias !172
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %26, !prof !136

18:                                               ; preds = %13
  %19 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 6), align 8, !tbaa !137, !noalias !177
  %20 = load ptr, ptr %19, align 8, !tbaa !138, !noalias !177
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8, !noalias !177
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 32), !noalias !177
  store ptr %23, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 6, i32 1), align 8, !tbaa !131, !noalias !177
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %23, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !140, !noalias !177
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %23, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !144, !noalias !177
  br label %26

26:                                               ; preds = %13, %18
  %27 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 6, i32 1), align 8, !tbaa !131, !noalias !177
  %28 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 2), align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1)
  store ptr %28, ptr %1, align 8
  %29 = icmp eq ptr %16, %27
  br i1 %29, label %36, label %30, !prof !182

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %34, %30 ], [ %16, %26 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !151
  call void @_ZNK11xalanc_1_1022XPathEnvSupportDefault35NamespaceFunctionTableDeleteFunctorclERKSt4pairIKNS_14XalanDOMStringENS_8XalanMapIS3_PKNS_8FunctionENS_17XalanMapKeyTraitsIS3_EEEEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(176) %32)
  %33 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %31, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !140, !noalias !183
  %35 = icmp eq ptr %34, %27
  br i1 %35, label %36, label %30, !prof !186, !llvm.loop !187

36:                                               ; preds = %30, %26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1)
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %2) #19
  %37 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %2, i64 0, i32 2
  store ptr %37, ptr %38, align 8, !tbaa !152
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %2, i64 0, i32 3
  store float 7.500000e-01, ptr %39, align 8, !tbaa !163
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %2, i64 0, i32 4
  store i64 29, ptr %40, align 8, !tbaa !164
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %2, i64 0, i32 5
  store i64 0, ptr %41, align 8, !tbaa !165
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %2, i64 0, i32 6
  store ptr %37, ptr %42, align 8, !tbaa !137
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %2, i64 0, i32 6, i32 1
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %2, i64 0, i32 6, i32 2
  %45 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %2, i64 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  store ptr %37, ptr %45, align 8, !tbaa !137
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %2, i64 0, i32 7, i32 1
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %2, i64 0, i32 7, i32 2
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %2, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %46, i8 0, i64 16, i1 false)
  store ptr %37, ptr %48, align 8, !tbaa !166
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %2, i64 0, i32 8, i32 1
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %2, i64 0, i32 8, i32 2
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %2, i64 0, i32 8, i32 3
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %2, i64 0, i32 9
  %53 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %2, i64 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %49, i8 0, i64 32, i1 false)
  store i64 50, ptr %53, align 8, !tbaa !167
  %54 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 5), align 8, !tbaa !165
  store i64 %54, ptr %41, align 8, !tbaa !165
  store i64 0, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 5), align 8, !tbaa !165
  %55 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 2), align 8, !tbaa !152
  store ptr %55, ptr %38, align 8, !tbaa !152
  store ptr %37, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 2), align 8, !tbaa !152
  %56 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 9), align 8, !tbaa !168
  store i64 %56, ptr %52, align 8, !tbaa !168
  store i64 0, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 9), align 8, !tbaa !168
  %57 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 10), align 8, !tbaa !167
  store i64 %57, ptr %53, align 8, !tbaa !167
  store i64 50, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 10), align 8, !tbaa !167
  %58 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 6), align 8, !tbaa !169
  store ptr %58, ptr %42, align 8, !tbaa !169
  store ptr %37, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 6), align 8, !tbaa !169
  %59 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 6, i32 1), align 8, !tbaa !169
  store ptr %59, ptr %43, align 8, !tbaa !169
  store ptr null, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 6, i32 1), align 8, !tbaa !169
  %60 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 6, i32 2), align 8, !tbaa !169
  store ptr %60, ptr %44, align 8, !tbaa !169
  store ptr null, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 6, i32 2), align 8, !tbaa !169
  %61 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 7), align 8, !tbaa !169
  store ptr %61, ptr %45, align 8, !tbaa !169
  store ptr %37, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 7), align 8, !tbaa !169
  %62 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 7, i32 1), align 8, !tbaa !169
  store ptr %62, ptr %46, align 8, !tbaa !169
  store ptr null, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 7, i32 1), align 8, !tbaa !169
  %63 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 7, i32 2), align 8, !tbaa !169
  store ptr %63, ptr %47, align 8, !tbaa !169
  store ptr null, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 7, i32 2), align 8, !tbaa !169
  %64 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 8), align 8, !tbaa !166
  store ptr %64, ptr %48, align 8, !tbaa !166
  %65 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 8, i32 1), align 8, !tbaa !124
  store i64 %65, ptr %49, align 8, !tbaa !124
  %66 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 8, i32 2), align 8, !tbaa !170
  store i64 %66, ptr %50, align 8, !tbaa !170
  %67 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 8, i32 3), align 8, !tbaa !171
  store ptr %67, ptr %51, align 8, !tbaa !171
  store ptr %37, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 8), align 8, !tbaa !166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 8, i32 1), i8 0, i64 24, i1 false)
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_ED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %2) #19
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %2) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1022XPathEnvSupportDefaultC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !162 {
  tail call void @_ZN11xalanc_1_1015XPathEnvSupportC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xalanc_1_1022XPathEnvSupportDefaultE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !138
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 1, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !188
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 1, i32 3
  store float 7.500000e-01, ptr %4, align 8, !tbaa !192
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 1, i32 4
  store i64 29, ptr %5, align 8, !tbaa !193
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 1, i32 5
  store i64 0, ptr %6, align 8, !tbaa !194
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 1, i32 6
  store ptr %1, ptr %7, align 8, !tbaa !195
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 1, i32 6, i32 1
  %9 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 1, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store ptr %1, ptr %9, align 8, !tbaa !195
  %10 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 1, i32 7, i32 1
  %11 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 1, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  store ptr %1, ptr %11, align 8, !tbaa !196
  %12 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 1, i32 8, i32 1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 1, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 32, i1 false)
  store i64 50, ptr %13, align 8, !tbaa !197
  %14 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 2, i32 2
  store ptr %1, ptr %14, align 8, !tbaa !152
  %15 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 2, i32 3
  store float 7.500000e-01, ptr %15, align 8, !tbaa !163
  %16 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 2, i32 4
  store i64 29, ptr %16, align 8, !tbaa !164
  %17 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 2, i32 5
  store i64 0, ptr %17, align 8, !tbaa !165
  %18 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 2, i32 6
  store ptr %1, ptr %18, align 8, !tbaa !137
  %19 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 2, i32 6, i32 1
  %20 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 2, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  store ptr %1, ptr %20, align 8, !tbaa !137
  %21 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 2, i32 7, i32 1
  %22 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 2, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  store ptr %1, ptr %22, align 8, !tbaa !166
  %23 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 2, i32 8, i32 1
  %24 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 2, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %23, i8 0, i64 32, i1 false)
  store i64 50, ptr %24, align 8, !tbaa !167
  ret void
}

declare void @_ZN11xalanc_1_1015XPathEnvSupportC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !162 {
  invoke void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
          to label %2 unwind label %53, !prof !198

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 8, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !199
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %47, label %6, !prof !136

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 7
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 7, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !200, !noalias !201
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20, !prof !136

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 8, !tbaa !195, !noalias !201
  %13 = load ptr, ptr %12, align 8, !tbaa !138, !noalias !201
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !201
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 32)
          to label %17 unwind label %53

17:                                               ; preds = %11
  store ptr %16, ptr %8, align 8, !tbaa !200, !noalias !201
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %18, align 8, !tbaa !204, !noalias !201
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %19, align 8, !tbaa !207, !noalias !201
  br label %20

20:                                               ; preds = %6, %17
  %21 = load ptr, ptr %8, align 8, !tbaa !200, !noalias !201
  br label %22

22:                                               ; preds = %40, %20
  %23 = phi ptr [ %21, %20 ], [ %25, %40 ]
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !204, !noalias !145
  %26 = load ptr, ptr %8, align 8, !tbaa !200, !noalias !208
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %37, !prof !211

28:                                               ; preds = %22
  %29 = load ptr, ptr %7, align 8, !tbaa !195, !noalias !208
  %30 = load ptr, ptr %29, align 8, !tbaa !138, !noalias !208
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8, !noalias !208
  %33 = invoke noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %29, i64 noundef 32)
          to label %34 unwind label %51

34:                                               ; preds = %28
  store ptr %33, ptr %8, align 8, !tbaa !200, !noalias !208
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %33, i64 0, i32 2
  store ptr %33, ptr %35, align 8, !tbaa !204, !noalias !208
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %33, i64 0, i32 1
  store ptr %33, ptr %36, align 8, !tbaa !207, !noalias !208
  br label %37

37:                                               ; preds = %22, %34
  %38 = load ptr, ptr %8, align 8, !tbaa !200, !noalias !208
  %39 = icmp eq ptr %25, %38
  br i1 %39, label %47, label %40, !prof !212

40:                                               ; preds = %37
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 2
  %42 = load ptr, ptr %25, align 8, !tbaa !213
  %43 = load ptr, ptr %41, align 8, !tbaa !188
  %44 = load ptr, ptr %43, align 8, !tbaa !138
  %45 = getelementptr inbounds ptr, ptr %44, i64 3
  %46 = load ptr, ptr %45, align 8
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef %42)
          to label %22 unwind label %51, !prof !214, !llvm.loop !215

47:                                               ; preds = %37, %2
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %48) #19
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %49) #19
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %50) #19
  ret void

51:                                               ; preds = %28, %40
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
  tail call void @__clang_call_terminate(ptr %57) #20
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1015XPathEnvSupportD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1022XPathEnvSupportDefaultD2Ev(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !162 {
  %2 = alloca %"struct.xalanc_1_10::XPathEnvSupportDefault::NamespaceFunctionTableDeleteFunctor", align 8
  %3 = alloca %"class.xalanc_1_10::XalanMap", align 8
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xalanc_1_1022XPathEnvSupportDefaultE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !138
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 2, i32 6, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !131, !noalias !216
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %17, !prof !198

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 2, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !137, !noalias !216
  %10 = load ptr, ptr %9, align 8, !tbaa !138, !noalias !216
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8, !noalias !216
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef 32)
          to label %14 unwind label %93, !prof !221

14:                                               ; preds = %7
  store ptr %13, ptr %4, align 8, !tbaa !131, !noalias !216
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %13, i64 0, i32 2
  store ptr %13, ptr %15, align 8, !tbaa !140, !noalias !216
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %13, i64 0, i32 1
  store ptr %13, ptr %16, align 8, !tbaa !144, !noalias !216
  br label %17

17:                                               ; preds = %1, %14
  %18 = load ptr, ptr %4, align 8, !tbaa !131, !noalias !145
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !140, !noalias !216
  %21 = icmp eq ptr %18, null
  br i1 %21, label %22, label %32, !prof !136

22:                                               ; preds = %17
  %23 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 2, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !137, !noalias !222
  %25 = load ptr, ptr %24, align 8, !tbaa !138, !noalias !222
  %26 = getelementptr inbounds ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8, !noalias !222
  %28 = invoke noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %24, i64 noundef 32)
          to label %29 unwind label %93

29:                                               ; preds = %22
  store ptr %28, ptr %4, align 8, !tbaa !131, !noalias !222
  %30 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %28, i64 0, i32 2
  store ptr %28, ptr %30, align 8, !tbaa !140, !noalias !222
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %28, i64 0, i32 1
  store ptr %28, ptr %31, align 8, !tbaa !144, !noalias !222
  br label %32

32:                                               ; preds = %17, %29
  %33 = load ptr, ptr %4, align 8, !tbaa !131, !noalias !222
  %34 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 2, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  store ptr %35, ptr %2, align 8
  %36 = icmp eq ptr %20, %33
  br i1 %36, label %44, label %37, !prof !198

37:                                               ; preds = %32, %40
  %38 = phi ptr [ %42, %40 ], [ %20, %32 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !151
  invoke void @_ZNK11xalanc_1_1022XPathEnvSupportDefault35NamespaceFunctionTableDeleteFunctorclERKSt4pairIKNS_14XalanDOMStringENS_8XalanMapIS3_PKNS_8FunctionENS_17XalanMapKeyTraitsIS3_EEEEE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(176) %39)
          to label %40 unwind label %91

40:                                               ; preds = %37
  %41 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %38, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !140, !noalias !227
  %43 = icmp eq ptr %42, %33
  br i1 %43, label %44, label %37, !prof !198, !llvm.loop !187

44:                                               ; preds = %40, %32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #19
  %45 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
          to label %46 unwind label %93, !prof !198

46:                                               ; preds = %44
  %47 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 2
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %3, i64 0, i32 2
  store ptr %45, ptr %48, align 8, !tbaa !152
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %3, i64 0, i32 3
  store float 7.500000e-01, ptr %49, align 8, !tbaa !163
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %3, i64 0, i32 4
  store i64 29, ptr %50, align 8, !tbaa !164
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %3, i64 0, i32 5
  store i64 0, ptr %51, align 8, !tbaa !165
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %3, i64 0, i32 6
  store ptr %45, ptr %52, align 8, !tbaa !137
  %53 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %3, i64 0, i32 6, i32 1
  %54 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %3, i64 0, i32 6, i32 2
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %3, i64 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %53, i8 0, i64 16, i1 false)
  store ptr %45, ptr %55, align 8, !tbaa !137
  %56 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %3, i64 0, i32 7, i32 1
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %3, i64 0, i32 7, i32 2
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %3, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %56, i8 0, i64 16, i1 false)
  store ptr %45, ptr %58, align 8, !tbaa !166
  %59 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %3, i64 0, i32 8, i32 1
  %60 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %3, i64 0, i32 8, i32 2
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %3, i64 0, i32 8, i32 3
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %3, i64 0, i32 9
  %63 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %3, i64 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %59, i8 0, i64 32, i1 false)
  store i64 50, ptr %63, align 8, !tbaa !167
  %64 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 2, i32 5
  %65 = load i64, ptr %64, align 8, !tbaa !165
  store i64 %65, ptr %51, align 8, !tbaa !165
  store i64 0, ptr %64, align 8, !tbaa !165
  %66 = load ptr, ptr %34, align 8, !tbaa !152
  store ptr %66, ptr %48, align 8, !tbaa !152
  store ptr %45, ptr %34, align 8, !tbaa !152
  %67 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 2, i32 9
  %68 = load i64, ptr %67, align 8, !tbaa !168
  store i64 %68, ptr %62, align 8, !tbaa !168
  store i64 0, ptr %67, align 8, !tbaa !168
  %69 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 2, i32 10
  %70 = load i64, ptr %69, align 8, !tbaa !167
  store i64 %70, ptr %63, align 8, !tbaa !167
  store i64 50, ptr %69, align 8, !tbaa !167
  %71 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 2, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !169
  store ptr %72, ptr %52, align 8, !tbaa !169
  store ptr %45, ptr %71, align 8, !tbaa !169
  %73 = load ptr, ptr %4, align 8, !tbaa !169
  store ptr %73, ptr %53, align 8, !tbaa !169
  store ptr null, ptr %4, align 8, !tbaa !169
  %74 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 2, i32 6, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !169
  store ptr %75, ptr %54, align 8, !tbaa !169
  store ptr null, ptr %74, align 8, !tbaa !169
  %76 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 2, i32 7
  %77 = load ptr, ptr %76, align 8, !tbaa !169
  store ptr %77, ptr %55, align 8, !tbaa !169
  store ptr %45, ptr %76, align 8, !tbaa !169
  %78 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 2, i32 7, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !169
  store ptr %79, ptr %56, align 8, !tbaa !169
  store ptr null, ptr %78, align 8, !tbaa !169
  %80 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 2, i32 7, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !169
  store ptr %81, ptr %57, align 8, !tbaa !169
  store ptr null, ptr %80, align 8, !tbaa !169
  %82 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 2, i32 8
  %83 = load ptr, ptr %82, align 8, !tbaa !166
  store ptr %83, ptr %58, align 8, !tbaa !166
  %84 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 2, i32 8, i32 1
  %85 = load i64, ptr %84, align 8, !tbaa !124
  store i64 %85, ptr %59, align 8, !tbaa !124
  %86 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 2, i32 8, i32 2
  %87 = load i64, ptr %86, align 8, !tbaa !170
  store i64 %87, ptr %60, align 8, !tbaa !170
  %88 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 2, i32 8, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !171
  store ptr %89, ptr %61, align 8, !tbaa !171
  store ptr %45, ptr %82, align 8, !tbaa !166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %84, i8 0, i64 24, i1 false)
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_ED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %3) #19
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #19
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_ED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %47) #19
  %90 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 1
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %90) #19
  call void @_ZN11xalanc_1_1015XPathEnvSupportD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  ret void

91:                                               ; preds = %37
  %92 = landingpad { ptr, i32 }
          catch ptr null
  br label %95

93:                                               ; preds = %44, %7, %22
  %94 = landingpad { ptr, i32 }
          catch ptr null
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi { ptr, i32 } [ %92, %91 ], [ %94, %93 ]
  %97 = extractvalue { ptr, i32 } %96, 0
  tail call void @__clang_call_terminate(ptr %97) #20
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !161 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #19
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1022XPathEnvSupportDefaultD0Ev(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #3 align 2 !prof !161 {
  tail call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultD2Ev(ptr noundef nonnull align 8 dereferenceable(280) %0) #19
  tail call void @_ZdlPv(ptr noundef %0) #21
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1022XPathEnvSupportDefault19updateFunctionTableERNS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_EERKS2_SC_S5_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3) local_unnamed_addr #5 align 2 !prof !230 {
  %5 = alloca %"struct.xalanc_1_10::XalanMapIterator", align 8
  %6 = alloca %"struct.xalanc_1_10::XalanMapIterator.7", align 8
  %7 = alloca %"struct.xalanc_1_10::XalanMapIterator.7", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E4findERKS1_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !131, !noalias !231
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20, !prof !236

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !137, !noalias !231
  %14 = load ptr, ptr %13, align 8, !tbaa !138, !noalias !231
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !231
  %17 = call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32), !noalias !231
  store ptr %17, ptr %8, align 8, !tbaa !131, !noalias !231
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !140, !noalias !231
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %19, align 8, !tbaa !144, !noalias !231
  br label %20

20:                                               ; preds = %4, %11
  %21 = load ptr, ptr %8, align 8, !tbaa !131, !noalias !231
  %22 = load ptr, ptr %5, align 8, !tbaa !237
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %24, label %35, !prof !239

24:                                               ; preds = %20
  %25 = icmp eq ptr %3, null
  br i1 %25, label %100, label %26, !prof !240

26:                                               ; preds = %24
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !152
  %29 = load ptr, ptr %3, align 8, !tbaa !138
  %30 = getelementptr inbounds ptr, ptr %29, i64 7
  %31 = load ptr, ptr %30, align 8
  %32 = call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %28), !prof !241
  %33 = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_EixERKS1_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEixERKS1_(ptr noundef nonnull align 8 dereferenceable(136) %33, ptr noundef nonnull align 8 dereferenceable(36) %2)
  store ptr %32, ptr %34, align 8, !tbaa !169
  br label %100

35:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %36 = load ptr, ptr %22, align 8, !tbaa !151
  %37 = getelementptr inbounds %"struct.std::pair", ptr %36, i64 0, i32 1
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE4findERKS1_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.7") align 8 %6, ptr noundef nonnull align 8 dereferenceable(136) %37, ptr noundef nonnull align 8 dereferenceable(36) %2)
  %38 = load ptr, ptr %5, align 8, !tbaa !237
  %39 = load ptr, ptr %38, align 8, !tbaa !151
  %40 = getelementptr inbounds %"struct.std::pair", ptr %39, i64 0, i32 1, i32 6, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !242, !noalias !244
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %52, !prof !249

43:                                               ; preds = %35
  %44 = getelementptr inbounds %"struct.std::pair", ptr %39, i64 0, i32 1, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !250, !noalias !244
  %46 = load ptr, ptr %45, align 8, !tbaa !138, !noalias !244
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8, !noalias !244
  %49 = call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %45, i64 noundef 32), !noalias !244
  store ptr %49, ptr %40, align 8, !tbaa !242, !noalias !244
  %50 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %49, i64 0, i32 2
  store ptr %49, ptr %50, align 8, !tbaa !251, !noalias !244
  %51 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %49, i64 0, i32 1
  store ptr %49, ptr %51, align 8, !tbaa !254, !noalias !244
  br label %52

52:                                               ; preds = %35, %43
  %53 = load ptr, ptr %40, align 8, !tbaa !242, !noalias !244
  %54 = load ptr, ptr %6, align 8, !tbaa !255
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %56, label %69, !prof !257

56:                                               ; preds = %52
  %57 = icmp eq ptr %3, null
  br i1 %57, label %99, label %58, !prof !258

58:                                               ; preds = %56
  %59 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !152
  %61 = load ptr, ptr %3, align 8, !tbaa !138
  %62 = getelementptr inbounds ptr, ptr %61, i64 7
  %63 = load ptr, ptr %62, align 8
  %64 = call noundef ptr %63(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %60), !prof !259
  %65 = load ptr, ptr %5, align 8, !tbaa !237
  %66 = load ptr, ptr %65, align 8, !tbaa !151
  %67 = getelementptr inbounds %"struct.std::pair", ptr %66, i64 0, i32 1
  %68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEixERKS1_(ptr noundef nonnull align 8 dereferenceable(136) %67, ptr noundef nonnull align 8 dereferenceable(36) %2)
  store ptr %64, ptr %68, align 8, !tbaa !169
  br label %99

69:                                               ; preds = %52
  %70 = load ptr, ptr %54, align 8, !tbaa !260
  %71 = getelementptr inbounds %"struct.std::pair.9", ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !261
  %73 = load ptr, ptr %72, align 8, !tbaa !138
  %74 = load ptr, ptr %73, align 8
  call void %74(ptr noundef nonnull align 8 dereferenceable(8) %72) #19, !prof !266
  %75 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !152
  %77 = load ptr, ptr %6, align 8, !tbaa !255
  %78 = load ptr, ptr %77, align 8, !tbaa !260
  %79 = getelementptr inbounds %"struct.std::pair.9", ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !261
  %81 = load ptr, ptr %76, align 8, !tbaa !138
  %82 = getelementptr inbounds ptr, ptr %81, i64 3
  %83 = load ptr, ptr %82, align 8
  call void %83(ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef %80), !prof !267
  %84 = icmp eq ptr %3, null
  br i1 %84, label %94, label %85, !prof !268

85:                                               ; preds = %69
  %86 = load ptr, ptr %75, align 8, !tbaa !152
  %87 = load ptr, ptr %3, align 8, !tbaa !138
  %88 = getelementptr inbounds ptr, ptr %87, i64 7
  %89 = load ptr, ptr %88, align 8
  %90 = call noundef ptr %89(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %86)
  %91 = load ptr, ptr %6, align 8, !tbaa !255
  %92 = load ptr, ptr %91, align 8, !tbaa !260
  %93 = getelementptr inbounds %"struct.std::pair.9", ptr %92, i64 0, i32 1
  store ptr %90, ptr %93, align 8, !tbaa !261
  br label %99

94:                                               ; preds = %69
  %95 = load ptr, ptr %5, align 8, !tbaa !237
  %96 = load ptr, ptr %95, align 8, !tbaa !151
  %97 = getelementptr inbounds %"struct.std::pair", ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %6, align 8, !tbaa !255
  store ptr %98, ptr %7, align 8, !tbaa !255
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE5eraseENS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S4_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS7_5EntryEEENS_9XalanListISG_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %97, ptr noundef nonnull %7)
  br label %99

99:                                               ; preds = %85, %94, %56, %58
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  br label %100

100:                                              ; preds = %24, %26, %99
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E4findERKS1_(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanMapIterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #8 comdat align 2 !prof !269 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !165
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %59, label %7, !prof !270

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !124
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !271
  %12 = icmp eq i64 %11, 0
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = select i1 %12, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %14, !prof !272
  %16 = load i16, ptr %15, align 2, !tbaa !273
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %30, label %18, !prof !275

18:                                               ; preds = %7, %18
  %19 = phi i16 [ %26, %18 ], [ %16, %7 ]
  %20 = phi i64 [ %24, %18 ], [ 0, %7 ]
  %21 = phi ptr [ %25, %18 ], [ %15, %7 ]
  %22 = mul i64 %20, 5
  %23 = zext i16 %19 to i64
  %24 = add i64 %22, %23
  %25 = getelementptr inbounds i16, ptr %21, i64 1
  %26 = load i16, ptr %25, align 2, !tbaa !273
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %18, !prof !276, !llvm.loop !277

28:                                               ; preds = %18
  %29 = add i64 %24, 1
  br label %30

30:                                               ; preds = %28, %7
  %31 = phi i64 [ 1, %7 ], [ %29, %28 ]
  %32 = urem i64 %31, %9
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !171
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %34, i64 %32, i32 3
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %34, i64 %32, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !278
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %59, label %39, !prof !280

39:                                               ; preds = %30
  %40 = load ptr, ptr %35, align 8, !tbaa !281
  br label %41

41:                                               ; preds = %39, %53
  %42 = phi i1 [ %58, %53 ], [ %38, %39 ]
  %43 = phi ptr [ %54, %53 ], [ %40, %39 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !237
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry", ptr %44, i64 0, i32 1
  %46 = load i8, ptr %45, align 8, !tbaa !282, !range !283, !noundef !145
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %53, !prof !284

48:                                               ; preds = %41
  %49 = load ptr, ptr %44, align 8, !tbaa !151
  %50 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %49)
  br i1 %50, label %51, label %53, !prof !285

51:                                               ; preds = %48
  %52 = load ptr, ptr %43, align 8, !tbaa !237
  store ptr %52, ptr %0, align 8, !tbaa !237
  br i1 %42, label %59, label %74, !prof !286

53:                                               ; preds = %48, %41
  %54 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %43, i64 1
  %55 = load ptr, ptr %35, align 8, !tbaa !281
  %56 = load i64, ptr %36, align 8, !tbaa !278
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %55, i64 %56
  %58 = icmp eq ptr %54, %57
  br i1 %58, label %59, label %41, !prof !287, !llvm.loop !288

59:                                               ; preds = %53, %30, %51, %3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %60 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !131, !noalias !292
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %72, !prof !295

63:                                               ; preds = %59
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !137, !noalias !292
  %66 = load ptr, ptr %65, align 8, !tbaa !138, !noalias !292
  %67 = getelementptr inbounds ptr, ptr %66, i64 2
  %68 = load ptr, ptr %67, align 8, !noalias !292
  %69 = tail call noundef ptr %68(ptr noundef nonnull align 8 dereferenceable(8) %65, i64 noundef 32), !prof !221, !noalias !292
  store ptr %69, ptr %60, align 8, !tbaa !131, !noalias !292
  %70 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %69, i64 0, i32 2
  store ptr %69, ptr %70, align 8, !tbaa !140, !noalias !292
  %71 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %69, i64 0, i32 1
  store ptr %69, ptr %71, align 8, !tbaa !144, !noalias !292
  br label %72

72:                                               ; preds = %59, %63
  %73 = load ptr, ptr %60, align 8, !tbaa !131, !noalias !292
  store ptr %73, ptr %0, align 8, !tbaa !237, !alias.scope !289
  br label %74

74:                                               ; preds = %51, %72
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(136) ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_EixERKS1_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #5 comdat align 2 !prof !296 {
  %3 = alloca %"struct.xalanc_1_10::XalanMapIterator", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanMapIterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E4findERKS1_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !131, !noalias !297
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17, !prof !240

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !137, !noalias !297
  %11 = load ptr, ptr %10, align 8, !tbaa !138, !noalias !297
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8, !noalias !297
  %14 = call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 32), !noalias !297
  store ptr %14, ptr %5, align 8, !tbaa !131, !noalias !297
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %14, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !140, !noalias !297
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %14, i64 0, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !144, !noalias !297
  br label %17

17:                                               ; preds = %2, %8
  %18 = load ptr, ptr %5, align 8, !tbaa !131, !noalias !297
  %19 = load ptr, ptr %3, align 8, !tbaa !237
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %23, !prof !302

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E13doCreateEntryERKS1_PKS7_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef null)
  %22 = load ptr, ptr %4, align 8, !tbaa !237
  store ptr %22, ptr %3, align 8, !tbaa !237
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %23

23:                                               ; preds = %21, %17
  %24 = load ptr, ptr %3, align 8, !tbaa !237
  %25 = load ptr, ptr %24, align 8, !tbaa !151
  %26 = getelementptr inbounds %"struct.std::pair", ptr %25, i64 0, i32 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret ptr %26
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEixERKS1_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #5 comdat align 2 !prof !303 {
  %3 = alloca %"struct.xalanc_1_10::XalanMapIterator.7", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanMapIterator.7", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE4findERKS1_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.7") align 8 %3, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 6, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !242, !noalias !304
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17, !prof !309

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !250, !noalias !304
  %11 = load ptr, ptr %10, align 8, !tbaa !138, !noalias !304
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8, !noalias !304
  %14 = call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 32), !noalias !304
  store ptr %14, ptr %5, align 8, !tbaa !242, !noalias !304
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %14, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !251, !noalias !304
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %14, i64 0, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !254, !noalias !304
  br label %17

17:                                               ; preds = %2, %8
  %18 = load ptr, ptr %5, align 8, !tbaa !242, !noalias !304
  %19 = load ptr, ptr %3, align 8, !tbaa !255
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %23, !prof !268

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PKS4_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.7") align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef null)
  %22 = load ptr, ptr %4, align 8, !tbaa !255
  store ptr %22, ptr %3, align 8, !tbaa !255
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %23

23:                                               ; preds = %21, %17
  %24 = load ptr, ptr %3, align 8, !tbaa !255
  %25 = load ptr, ptr %24, align 8, !tbaa !260
  %26 = getelementptr inbounds %"struct.std::pair.9", ptr %25, i64 0, i32 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret ptr %26
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE4findERKS1_(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanMapIterator.7") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #8 comdat align 2 !prof !310 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %1, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !311
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %59, label %7, !prof !314

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %1, i64 0, i32 8, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !315
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !271
  %12 = icmp eq i64 %11, 0
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = select i1 %12, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %14, !prof !316
  %16 = load i16, ptr %15, align 2, !tbaa !273
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %30, label %18, !prof !317

18:                                               ; preds = %7, %18
  %19 = phi i16 [ %26, %18 ], [ %16, %7 ]
  %20 = phi i64 [ %24, %18 ], [ 0, %7 ]
  %21 = phi ptr [ %25, %18 ], [ %15, %7 ]
  %22 = mul i64 %20, 5
  %23 = zext i16 %19 to i64
  %24 = add i64 %22, %23
  %25 = getelementptr inbounds i16, ptr %21, i64 1
  %26 = load i16, ptr %25, align 2, !tbaa !273
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %18, !prof !318, !llvm.loop !277

28:                                               ; preds = %18
  %29 = add i64 %24, 1
  br label %30

30:                                               ; preds = %28, %7
  %31 = phi i64 [ 1, %7 ], [ %29, %28 ]
  %32 = urem i64 %31, %9
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %1, i64 0, i32 8, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !319
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %34, i64 %32, i32 3
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %34, i64 %32, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !320
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %59, label %39, !prof !322

39:                                               ; preds = %30
  %40 = load ptr, ptr %35, align 8, !tbaa !323
  br label %41

41:                                               ; preds = %39, %53
  %42 = phi i1 [ %58, %53 ], [ %38, %39 ]
  %43 = phi ptr [ %54, %53 ], [ %40, %39 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !255
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry", ptr %44, i64 0, i32 1
  %46 = load i8, ptr %45, align 8, !tbaa !324, !range !283, !noundef !145
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %53, !prof !325

48:                                               ; preds = %41
  %49 = load ptr, ptr %44, align 8, !tbaa !260
  %50 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %49)
  br i1 %50, label %51, label %53, !prof !326

51:                                               ; preds = %48
  %52 = load ptr, ptr %43, align 8, !tbaa !255
  store ptr %52, ptr %0, align 8, !tbaa !255
  br i1 %42, label %59, label %74, !prof !327

53:                                               ; preds = %48, %41
  %54 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.8", ptr %43, i64 1
  %55 = load ptr, ptr %35, align 8, !tbaa !323
  %56 = load i64, ptr %36, align 8, !tbaa !320
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.8", ptr %55, i64 %56
  %58 = icmp eq ptr %54, %57
  br i1 %58, label %59, label %41, !prof !328, !llvm.loop !329

59:                                               ; preds = %53, %30, %51, %3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %60 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %1, i64 0, i32 6, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !242, !noalias !333
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %72, !prof !336

63:                                               ; preds = %59
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %1, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !250, !noalias !333
  %66 = load ptr, ptr %65, align 8, !tbaa !138, !noalias !333
  %67 = getelementptr inbounds ptr, ptr %66, i64 2
  %68 = load ptr, ptr %67, align 8, !noalias !333
  %69 = tail call noundef ptr %68(ptr noundef nonnull align 8 dereferenceable(8) %65, i64 noundef 32), !prof !337, !noalias !333
  store ptr %69, ptr %60, align 8, !tbaa !242, !noalias !333
  %70 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %69, i64 0, i32 2
  store ptr %69, ptr %70, align 8, !tbaa !251, !noalias !333
  %71 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %69, i64 0, i32 1
  store ptr %69, ptr %71, align 8, !tbaa !254, !noalias !333
  br label %72

72:                                               ; preds = %59, %63
  %73 = load ptr, ptr %60, align 8, !tbaa !242, !noalias !333
  store ptr %73, ptr %0, align 8, !tbaa !255, !alias.scope !330
  br label %74

74:                                               ; preds = %51, %72
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE5eraseENS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S4_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS7_5EntryEEENS_9XalanListISG_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !303 {
  %3 = alloca %"struct.xalanc_1_10::XalanMapIterator.7", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 6, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !242, !noalias !338
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %16, !prof !309

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !250, !noalias !338
  %10 = load ptr, ptr %9, align 8, !tbaa !138, !noalias !338
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8, !noalias !338
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef 32), !noalias !338
  store ptr %13, ptr %4, align 8, !tbaa !242, !noalias !338
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %13, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !251, !noalias !338
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %13, i64 0, i32 1
  store ptr %13, ptr %15, align 8, !tbaa !254, !noalias !338
  br label %16

16:                                               ; preds = %2, %7
  %17 = load ptr, ptr %4, align 8, !tbaa !242, !noalias !338
  %18 = load ptr, ptr %1, align 8, !tbaa !255
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %28, label %20, !prof !309

20:                                               ; preds = %16
  store ptr %18, ptr %3, align 8, !tbaa !255
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S4_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS7_5EntryEEENS_9XalanListISG_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 9
  %22 = load i64, ptr %21, align 8, !tbaa !343
  %23 = add i64 %22, 1
  store i64 %23, ptr %21, align 8, !tbaa !343
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 10
  %25 = load i64, ptr %24, align 8, !tbaa !344
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %27, label %28, !prof !309

27:                                               ; preds = %20
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE14compactBucketsEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
  store i64 0, ptr %21, align 8, !tbaa !343
  br label %28

28:                                               ; preds = %27, %20, %16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1022XPathEnvSupportDefault29installExternalFunctionGlobalERKNS_14XalanDOMStringES3_RKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 align 2 !prof !303 {
  tail call void @_ZN11xalanc_1_1022XPathEnvSupportDefault19updateFunctionTableERNS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_EERKS2_SC_S5_(ptr noundef nonnull align 8 dereferenceable(136) @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1022XPathEnvSupportDefault31uninstallExternalFunctionGlobalERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #5 align 2 !prof !303 {
  tail call void @_ZN11xalanc_1_1022XPathEnvSupportDefault19updateFunctionTableERNS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_EERKS2_SC_S5_(ptr noundef nonnull align 8 dereferenceable(136) @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef null)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1022XPathEnvSupportDefault28installExternalFunctionLocalERKNS_14XalanDOMStringES3_RKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #5 align 2 !prof !161 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1022XPathEnvSupportDefault19updateFunctionTableERNS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_EERKS2_SC_S5_(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1022XPathEnvSupportDefault30uninstallExternalFunctionLocalERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #5 align 2 !prof !161 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1022XPathEnvSupportDefault19updateFunctionTableERNS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_EERKS2_SC_S5_(ptr noundef nonnull align 8 dereferenceable(136) %4, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef null)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1022XPathEnvSupportDefault5resetEv(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #5 align 2 !prof !122 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(136) %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #5 comdat align 2 !prof !122 {
  tail call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 8, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !345
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 8, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !199
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %3, i64 %5
  %7 = icmp eq i64 %5, 0
  br i1 %7, label %17, label %8, !prof !182

8:                                                ; preds = %1, %14
  %9 = phi ptr [ %15, %14 ], [ %3, %1 ]
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !346
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %14, label %13, !prof !348

13:                                               ; preds = %8
  store i64 0, ptr %10, align 8, !tbaa !346
  br label %14

14:                                               ; preds = %13, %8
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %9, i64 1
  %16 = icmp eq ptr %15, %6
  br i1 %16, label %17, label %8, !prof !349, !llvm.loop !350

17:                                               ; preds = %14, %1
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 9
  store i64 0, ptr %18, align 8, !tbaa !351
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault8parseXMLERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringES6_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2, ptr nocapture nonnull readnone align 8 %3) unnamed_addr #9 align 2 !prof !161 {
  ret ptr null
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1022XPathEnvSupportDefault17getSourceDocumentERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #5 align 2 !prof !161 {
  %3 = alloca %"struct.xalanc_1_10::XalanMapIterator.20", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19, !noalias !352
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE4findERKS1_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.20") align 8 %3, ptr noundef nonnull align 8 dereferenceable(136) %4, ptr noundef nonnull align 8 dereferenceable(36) %1), !noalias !352
  %5 = load ptr, ptr %3, align 8, !tbaa !355, !noalias !352
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19, !noalias !352
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 1, i32 6, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !200, !noalias !357
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 1, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !195, !noalias !357
  %12 = load ptr, ptr %11, align 8, !tbaa !138, !noalias !357
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8, !noalias !357
  %15 = call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef 32), !noalias !357
  store ptr %15, ptr %6, align 8, !tbaa !200, !noalias !357
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %15, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !204, !noalias !357
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %15, i64 0, i32 1
  store ptr %15, ptr %17, align 8, !tbaa !207, !noalias !357
  br label %18

18:                                               ; preds = %2, %9
  %19 = load ptr, ptr %6, align 8, !tbaa !200, !noalias !357
  %20 = icmp eq ptr %19, %5
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %5, align 8, !tbaa !213
  %23 = getelementptr inbounds %"struct.std::pair.13", ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !364
  br label %25

25:                                               ; preds = %18, %21
  %26 = phi ptr [ %24, %21 ], [ null, %18 ]
  ret ptr %26
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1022XPathEnvSupportDefault17setSourceDocumentERKNS_14XalanDOMStringEPNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2) unnamed_addr #5 align 2 !prof !162 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 1
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEEixERKS1_(ptr noundef nonnull align 8 dereferenceable(136) %4, ptr noundef nonnull align 8 dereferenceable(36) %1)
  store ptr %2, ptr %5, align 8, !tbaa !169
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEEixERKS1_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #5 comdat align 2 !prof !162 {
  %3 = alloca %"struct.xalanc_1_10::XalanMapIterator.20", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanMapIterator.20", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE4findERKS1_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.20") align 8 %3, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 6, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !200, !noalias !366
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17, !prof !136

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !195, !noalias !366
  %11 = load ptr, ptr %10, align 8, !tbaa !138, !noalias !366
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8, !noalias !366
  %14 = call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 32), !noalias !366
  store ptr %14, ptr %5, align 8, !tbaa !200, !noalias !366
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %14, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !204, !noalias !366
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %14, i64 0, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !207, !noalias !366
  br label %17

17:                                               ; preds = %2, %8
  %18 = load ptr, ptr %5, align 8, !tbaa !200, !noalias !366
  %19 = load ptr, ptr %3, align 8, !tbaa !355
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %23, !prof !198

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PKS3_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.20") align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef null)
  %22 = load ptr, ptr %4, align 8, !tbaa !355
  store ptr %22, ptr %3, align 8, !tbaa !355
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %23

23:                                               ; preds = %21, %17
  %24 = load ptr, ptr %3, align 8, !tbaa !355
  %25 = load ptr, ptr %24, align 8, !tbaa !213
  %26 = getelementptr inbounds %"struct.std::pair.13", ptr %25, i64 0, i32 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret ptr %26
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XPathEnvSupportDefault14findURIFromDocEPKNS_13XalanDocumentE(ptr nocapture noundef nonnull align 8 dereferenceable(280) %0, ptr noundef readnone %1) unnamed_addr #5 align 2 !prof !161 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 1, i32 6, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !200, !noalias !371
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 1, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !195, !noalias !371
  %9 = load ptr, ptr %8, align 8, !tbaa !138, !noalias !371
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !371
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 32), !noalias !371
  store ptr %12, ptr %3, align 8, !tbaa !200, !noalias !371
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !204, !noalias !371
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !207, !noalias !371
  br label %15

15:                                               ; preds = %2, %6
  %16 = load ptr, ptr %3, align 8, !tbaa !200, !noalias !371
  %17 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 1, i32 6
  br label %18

18:                                               ; preds = %45, %15
  %19 = phi ptr [ %22, %45 ], [ %16, %15 ]
  %20 = phi i8 [ %24, %45 ], [ 0, %15 ]
  %21 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !204, !noalias !145
  br label %23

23:                                               ; preds = %18, %40
  %24 = phi i8 [ 1, %40 ], [ %20, %18 ]
  %25 = load ptr, ptr %3, align 8, !tbaa !200, !noalias !378
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load ptr, ptr %17, align 8, !tbaa !195, !noalias !378
  %29 = load ptr, ptr %28, align 8, !tbaa !138, !noalias !378
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8, !noalias !378
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %28, i64 noundef 32), !noalias !378
  store ptr %32, ptr %3, align 8, !tbaa !200, !noalias !378
  %33 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %32, i64 0, i32 2
  store ptr %32, ptr %33, align 8, !tbaa !204, !noalias !378
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %32, i64 0, i32 1
  store ptr %32, ptr %34, align 8, !tbaa !207, !noalias !378
  br label %35

35:                                               ; preds = %23, %27
  %36 = load ptr, ptr %3, align 8, !tbaa !200, !noalias !378
  %37 = icmp ne ptr %22, %36
  %38 = icmp eq i8 %24, 0
  %39 = select i1 %37, i1 %38, i1 false
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load ptr, ptr %22, align 8, !tbaa !213
  %42 = getelementptr inbounds %"struct.std::pair.13", ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !364
  %44 = icmp eq ptr %43, %1
  br i1 %44, label %23, label %45, !llvm.loop !385

45:                                               ; preds = %40
  br label %18, !llvm.loop !385

46:                                               ; preds = %35
  br i1 %38, label %49, label %47

47:                                               ; preds = %46
  %48 = load ptr, ptr %22, align 8, !tbaa !213
  br label %49

49:                                               ; preds = %46, %47
  %50 = phi ptr [ %48, %47 ], [ @_ZN11xalanc_1_1022XPathEnvSupportDefault13s_emptyStringE, %46 ]
  ret ptr %50
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1022XPathEnvSupportDefault16elementAvailableERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #9 align 2 !prof !161 {
  ret i1 false
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1022XPathEnvSupportDefault17functionAvailableERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #5 align 2 !prof !161 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !386
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !271
  %10 = icmp eq i64 %9, 0
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = select i1 %10, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %12
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %2, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !386
  %16 = tail call noundef i32 @_ZN11xalanc_1_1018XPathFunctionTable16getFunctionIndexEPKtj(ptr noundef %13, i32 noundef %15)
  %17 = icmp ne i32 %16, -1
  br label %25

18:                                               ; preds = %3
  %19 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 2
  %20 = tail call noundef ptr @_ZNK11xalanc_1_1022XPathEnvSupportDefault12findFunctionERKNS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_EERKS2_SD_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(136) %19, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2)
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = tail call noundef ptr @_ZNK11xalanc_1_1022XPathEnvSupportDefault12findFunctionERKNS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_EERKS2_SD_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(136) @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2)
  %24 = icmp ne ptr %23, null
  br label %25

25:                                               ; preds = %22, %18, %7
  %26 = phi i1 [ %17, %7 ], [ %24, %22 ], [ true, %18 ]
  ret i1 %26
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1022XPathEnvSupportDefault12findFunctionERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #5 align 2 !prof !161 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 2
  %5 = tail call noundef ptr @_ZNK11xalanc_1_1022XPathEnvSupportDefault12findFunctionERKNS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_EERKS2_SD_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(136) %4, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZNK11xalanc_1_1022XPathEnvSupportDefault12findFunctionERKNS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_EERKS2_SD_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(136) @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2)
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi ptr [ %8, %7 ], [ %5, %3 ]
  ret ptr %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1022XPathEnvSupportDefault12findFunctionERKNS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_EERKS2_SD_(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3) local_unnamed_addr #5 align 2 !prof !161 {
  %5 = alloca %"struct.xalanc_1_10::XalanMapIterator.7", align 8
  %6 = alloca %"struct.xalanc_1_10::XalanMapIterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19, !noalias !387
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E4findERKS1_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator") align 8 %6, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(36) %2), !noalias !387
  %7 = load ptr, ptr %6, align 8, !tbaa !237, !noalias !387
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19, !noalias !387
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !131, !noalias !390
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !137, !noalias !390
  %14 = load ptr, ptr %13, align 8, !tbaa !138, !noalias !390
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !390
  %17 = call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32), !noalias !390
  store ptr %17, ptr %8, align 8, !tbaa !131, !noalias !390
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !140, !noalias !390
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %19, align 8, !tbaa !144, !noalias !390
  br label %20

20:                                               ; preds = %4, %11
  %21 = load ptr, ptr %8, align 8, !tbaa !131, !noalias !390
  %22 = icmp eq ptr %7, %21
  br i1 %22, label %47, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %7, align 8, !tbaa !151
  %25 = getelementptr inbounds %"struct.std::pair", ptr %24, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19, !noalias !397
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE4findERKS1_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.7") align 8 %5, ptr noundef nonnull align 8 dereferenceable(136) %25, ptr noundef nonnull align 8 dereferenceable(36) %3), !noalias !397
  %26 = load ptr, ptr %5, align 8, !tbaa !255, !noalias !397
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19, !noalias !397
  %27 = load ptr, ptr %7, align 8, !tbaa !151
  %28 = getelementptr inbounds %"struct.std::pair", ptr %27, i64 0, i32 1, i32 6, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !242, !noalias !400
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = getelementptr inbounds %"struct.std::pair", ptr %27, i64 0, i32 1, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !250, !noalias !400
  %34 = load ptr, ptr %33, align 8, !tbaa !138, !noalias !400
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8, !noalias !400
  %37 = call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 32), !noalias !400
  store ptr %37, ptr %28, align 8, !tbaa !242, !noalias !400
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %37, i64 0, i32 2
  store ptr %37, ptr %38, align 8, !tbaa !251, !noalias !400
  %39 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %37, i64 0, i32 1
  store ptr %37, ptr %39, align 8, !tbaa !254, !noalias !400
  br label %40

40:                                               ; preds = %23, %31
  %41 = load ptr, ptr %28, align 8, !tbaa !242, !noalias !400
  %42 = icmp eq ptr %26, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %26, align 8, !tbaa !260
  %45 = getelementptr inbounds %"struct.std::pair.9", ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !261
  br label %47

47:                                               ; preds = %40, %43, %20
  %48 = phi ptr [ null, %20 ], [ %46, %43 ], [ null, %40 ]
  ret ptr %48
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1022XPathEnvSupportDefault11extFunctionERNS_21XPathExecutionContextERKNS_14XalanDOMStringES5_PNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS9_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(280) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %7) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %9 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %1, i64 0, i32 2
  %11 = tail call noundef ptr @_ZNK11xalanc_1_1022XPathEnvSupportDefault12findFunctionERKNS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_EERKS2_SD_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(136) %10, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %4)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZNK11xalanc_1_1022XPathEnvSupportDefault12findFunctionERKNS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_EERKS2_SD_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(136) @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %15

15:                                               ; preds = %8, %13
  %16 = phi ptr [ %14, %13 ], [ %11, %8 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %16, align 8, !tbaa !138
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %7)
  ret void

22:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #19
  %23 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !407
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(8) %24)
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %3, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !386
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %49, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !271
  %31 = icmp eq i64 %30, 0
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8
  %34 = select i1 %31, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %33
  %35 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef %34, i32 noundef %26)
          to label %36 unwind label %47

36:                                               ; preds = %28
  %37 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices29s_XMLNamespaceSeparatorStringE, align 8, !tbaa !169
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %37, i64 0, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !271
  %40 = icmp eq i64 %39, 0
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %37, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8
  %43 = select i1 %40, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %42
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %37, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !386
  %46 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef %43, i32 noundef %45)
          to label %49 unwind label %47

47:                                               ; preds = %49, %36, %28
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %88

49:                                               ; preds = %36, %22
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %4, i64 0, i32 1
  %51 = load i64, ptr %50, align 8, !tbaa !271
  %52 = icmp eq i64 %51, 0
  %53 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %4, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8
  %55 = select i1 %52, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %54
  %56 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %4, i64 0, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !386
  %58 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef %55, i32 noundef %57)
          to label %59 unwind label %47

59:                                               ; preds = %49
  %60 = load ptr, ptr %2, align 8, !tbaa !138
  %61 = getelementptr inbounds ptr, ptr %60, i64 23
  %62 = load ptr, ptr %61, align 8
  %63 = invoke noundef nonnull align 8 dereferenceable(36) ptr %62(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %64 unwind label %68

64:                                               ; preds = %59
  %65 = icmp eq ptr %7, null
  %66 = call ptr @__cxa_allocate_exception(i64 112) #19
  br i1 %65, label %74, label %67

67:                                               ; preds = %64
  invoke void @_ZN11xalanc_1_1034XPathExceptionFunctionNotAvailableC1ERKNS_14XalanDOMStringERKN11xercesc_2_77LocatorERS1_(ptr noundef nonnull align 8 dereferenceable(112) %66, ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(36) %63)
          to label %75 unwind label %70

68:                                               ; preds = %59
  %69 = landingpad { ptr, i32 }
          cleanup
  br label %88

70:                                               ; preds = %67
  %71 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %66) #19
  br label %79

72:                                               ; preds = %75
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %79

74:                                               ; preds = %64
  invoke void @_ZN11xalanc_1_1034XPathExceptionFunctionNotAvailableC1ERKNS_14XalanDOMStringERS1_(ptr noundef nonnull align 8 dereferenceable(112) %66, ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(36) %63)
          to label %75 unwind label %77

75:                                               ; preds = %67, %74
  invoke void @__cxa_throw(ptr nonnull %66, ptr nonnull @_ZTIN11xalanc_1_1034XPathExceptionFunctionNotAvailableE, ptr nonnull @_ZN11xalanc_1_1034XPathExceptionFunctionNotAvailableD1Ev) #22
          to label %76 unwind label %72

76:                                               ; preds = %75
  unreachable

77:                                               ; preds = %74
  %78 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %66) #19
  br label %79

79:                                               ; preds = %70, %72, %77
  %80 = phi { ptr, i32 } [ %73, %72 ], [ %71, %70 ], [ %78, %77 ]
  %81 = load ptr, ptr %2, align 8, !tbaa !138
  %82 = getelementptr inbounds ptr, ptr %81, i64 24
  %83 = load ptr, ptr %82, align 8
  %84 = invoke noundef zeroext i1 %83(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %63)
          to label %88 unwind label %85

85:                                               ; preds = %79
  %86 = landingpad { ptr, i32 }
          catch ptr null
  %87 = extractvalue { ptr, i32 } %86, 0
  call void @__clang_call_terminate(ptr %87) #20
  unreachable

88:                                               ; preds = %68, %79, %47
  %89 = phi { ptr, i32 } [ %48, %47 ], [ %69, %68 ], [ %80, %79 ]
  %90 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %9, i64 0, i32 2
  %91 = load i64, ptr %90, align 8, !tbaa !409
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %9, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !410
  %96 = load ptr, ptr %9, align 8, !tbaa !411
  %97 = load ptr, ptr %96, align 8, !tbaa !138
  %98 = getelementptr inbounds ptr, ptr %97, i64 3
  %99 = load ptr, ptr %98, align 8
  invoke void %99(ptr noundef nonnull align 8 dereferenceable(8) %96, ptr noundef %95)
          to label %103 unwind label %100

100:                                              ; preds = %93
  %101 = landingpad { ptr, i32 }
          catch ptr null
  %102 = extractvalue { ptr, i32 } %101, 0
  call void @__clang_call_terminate(ptr %102) #20
  unreachable

103:                                              ; preds = %88, %93
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #19
  resume { ptr, i32 } %89
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xalanc_1_1034XPathExceptionFunctionNotAvailableC1ERKNS_14XalanDOMStringERKN11xercesc_2_77LocatorERS1_(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1034XPathExceptionFunctionNotAvailableD1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xalanc_1_1034XPathExceptionFunctionNotAvailableC1ERKNS_14XalanDOMStringERS1_(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1022XPathEnvSupportDefault7problemENS_15XPathEnvSupport7eSourceENS1_15eClassificationEPKNS_14PrefixResolverEPKNS_9XalanNodeERKNS_14XalanDOMStringEPKtii(ptr nocapture nonnull readnone align 8 %0, i32 %1, i32 noundef %2, ptr nocapture readnone %3, ptr nocapture readnone %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %5, ptr noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #5 align 2 !prof !161 {
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv()
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !271
  %13 = icmp eq i64 %12, 0
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = select i1 %13, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %15
  tail call void @_ZN11xalanc_1_1012OutputStringERSoPKtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %16, ptr noundef nonnull align 8 dereferenceable(8) %10)
  %17 = icmp eq ptr %6, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %9
  %19 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str, i64 noundef 4)
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv()
  tail call void @_ZN11xalanc_1_1012OutputStringERSoPKtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(8) %20)
  br label %21

21:                                               ; preds = %18, %9
  %22 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.3, i64 noundef 17)
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %7)
  %24 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull @.str.4, i64 noundef 11)
  %25 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %23, i32 noundef %8)
  %26 = load ptr, ptr %25, align 8, !tbaa !138
  %27 = getelementptr i8, ptr %26, i64 -24
  %28 = load i64, ptr %27, align 8
  %29 = getelementptr inbounds i8, ptr %25, i64 %28
  %30 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %29, i8 noundef signext 10)
  %31 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %25, i8 noundef signext %30)
  %32 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %31)
  %33 = icmp eq i32 %2, 2
  ret i1 %33
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1022XPathEnvSupportDefault35NamespaceFunctionTableDeleteFunctorC2ERN11xercesc_2_713MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #10 align 2 !prof !161 {
  store ptr %1, ptr %0, align 8, !tbaa !169
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1022XPathEnvSupportDefault35NamespaceFunctionTableDeleteFunctorclERKSt4pairIKNS_14XalanDOMStringENS_8XalanMapIS3_PKNS_8FunctionENS_17XalanMapKeyTraitsIS3_EEEEE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull align 8 dereferenceable(176) %1) local_unnamed_addr #5 align 2 !prof !296 {
  %3 = getelementptr inbounds %"struct.std::pair", ptr %1, i64 0, i32 1, i32 6, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !242, !noalias !412
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %15, !prof !240

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"struct.std::pair", ptr %1, i64 0, i32 1, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !250, !noalias !412
  %9 = load ptr, ptr %8, align 8, !tbaa !138, !noalias !412
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !412
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 32), !noalias !412
  store ptr %12, ptr %3, align 8, !tbaa !242, !noalias !412
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !251, !noalias !412
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !254, !noalias !412
  br label %15

15:                                               ; preds = %2, %6
  %16 = load ptr, ptr %3, align 8, !tbaa !242, !noalias !412
  br label %17

17:                                               ; preds = %35, %15
  %18 = phi ptr [ %16, %15 ], [ %20, %35 ]
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !251, !noalias !145
  %21 = load ptr, ptr %3, align 8, !tbaa !242, !noalias !419
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %32, !prof !240

23:                                               ; preds = %17
  %24 = getelementptr inbounds %"struct.std::pair", ptr %1, i64 0, i32 1, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !250, !noalias !419
  %26 = load ptr, ptr %25, align 8, !tbaa !138, !noalias !419
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8, !noalias !419
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef 32), !noalias !419
  store ptr %29, ptr %3, align 8, !tbaa !242, !noalias !419
  %30 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %29, i64 0, i32 2
  store ptr %29, ptr %30, align 8, !tbaa !251, !noalias !419
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %29, i64 0, i32 1
  store ptr %29, ptr %31, align 8, !tbaa !254, !noalias !419
  br label %32

32:                                               ; preds = %17, %23
  %33 = load ptr, ptr %3, align 8, !tbaa !242, !noalias !419
  %34 = icmp eq ptr %20, %33
  br i1 %34, label %48, label %35, !prof !302

35:                                               ; preds = %32
  %36 = load ptr, ptr %20, align 8, !tbaa !260
  %37 = getelementptr inbounds %"struct.std::pair.9", ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !261
  %39 = load ptr, ptr %38, align 8, !tbaa !138
  %40 = load ptr, ptr %39, align 8
  tail call void %40(ptr noundef nonnull align 8 dereferenceable(8) %38) #19
  %41 = load ptr, ptr %0, align 8, !tbaa !426
  %42 = load ptr, ptr %20, align 8, !tbaa !260
  %43 = getelementptr inbounds %"struct.std::pair.9", ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !261
  %45 = load ptr, ptr %41, align 8, !tbaa !138
  %46 = getelementptr inbounds ptr, ptr %45, i64 3
  %47 = load ptr, ptr %46, align 8
  tail call void %47(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef %44)
  br label %17, !llvm.loop !428

48:                                               ; preds = %32
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !429 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !409
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !430

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !410
  %8 = load ptr, ptr %0, align 8, !tbaa !411
  %9 = load ptr, ptr %8, align 8, !tbaa !138
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !431

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #20
  unreachable
}

declare noundef i32 @_ZN11xalanc_1_1018XPathFunctionTable16getFunctionIndexEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1012OutputStringERSoPKtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !432 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !131
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5, !prof !433

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !140, !noalias !434
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %7, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !131, !noalias !437
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21, !prof !440

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !137, !noalias !437
  %14 = load ptr, ptr %13, align 8, !tbaa !138, !noalias !437
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !437
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32)
          to label %18 unwind label %53

18:                                               ; preds = %12
  store ptr %17, ptr %2, align 8, !tbaa !131, !noalias !437
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !140, !noalias !437
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !144, !noalias !437
  br label %21

21:                                               ; preds = %8, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !131, !noalias !437
  %23 = icmp eq ptr %9, %22
  br i1 %23, label %31, label %24, !prof !441

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !140, !noalias !442
  %27 = load ptr, ptr %0, align 8, !tbaa !137
  %28 = load ptr, ptr %27, align 8, !tbaa !138
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %9)
          to label %8 unwind label %53, !prof !157, !llvm.loop !445

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !446
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37, !prof !447

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !140
  %40 = load ptr, ptr %0, align 8, !tbaa !137
  %41 = load ptr, ptr %40, align 8, !tbaa !138
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %35)
          to label %34 unwind label %51

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !131
  %46 = load ptr, ptr %0, align 8, !tbaa !137
  %47 = load ptr, ptr %46, align 8, !tbaa !138
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %45)
          to label %50 unwind label %55, !prof !448

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
  tail call void @__clang_call_terminate(ptr %59) #20
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #5 comdat align 2 !prof !122 {
  %2 = alloca %"struct.xalanc_1_10::XalanMapIterator", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !165
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %26, label %6, !prof !182

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  br label %8

8:                                                ; preds = %6, %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !449)
  %9 = load ptr, ptr %7, align 8, !tbaa !131, !noalias !452
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20, !prof !240

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !137, !noalias !452
  %14 = load ptr, ptr %13, align 8, !tbaa !138, !noalias !452
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !452
  %17 = call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32), !noalias !452
  store ptr %17, ptr %7, align 8, !tbaa !131, !noalias !452
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !140, !noalias !452
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %19, align 8, !tbaa !144, !noalias !452
  br label %20

20:                                               ; preds = %8, %11
  %21 = load ptr, ptr %7, align 8, !tbaa !131, !noalias !452
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !140, !noalias !452
  store ptr %23, ptr %2, align 8, !tbaa !237, !alias.scope !449
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S7_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS8_5EntryEEENS_9XalanListISH_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  %24 = load i64, ptr %3, align 8, !tbaa !165
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %8, !prof !455, !llvm.loop !456

26:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !457 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !170
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %22, label %5, !prof !458

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !171
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !124
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %16, label %12, !prof !182

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %14, %12 ], [ %7, %5 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #19
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %13, i64 1
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %16, label %12, !prof !349, !llvm.loop !459

16:                                               ; preds = %12, %5
  %17 = load ptr, ptr %6, align 8, !tbaa !171
  %18 = load ptr, ptr %0, align 8, !tbaa !166
  %19 = load ptr, ptr %18, align 8, !tbaa !138
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %17)
          to label %22 unwind label %23, !prof !214

22:                                               ; preds = %16, %1
  ret void

23:                                               ; preds = %16
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #20
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S7_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS8_5EntryEEENS_9XalanListISH_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 !prof !296 {
  %3 = load ptr, ptr %1, align 8, !tbaa !237
  %4 = load ptr, ptr %3, align 8, !tbaa !151
  %5 = getelementptr inbounds %"struct.std::pair", ptr %4, i64 0, i32 1
  tail call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %5) #19
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !131, !noalias !460
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %18, !prof !240

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !137, !noalias !460
  %12 = load ptr, ptr %11, align 8, !tbaa !138, !noalias !460
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8, !noalias !460
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef 32), !noalias !460
  store ptr %15, ptr %6, align 8, !tbaa !131, !noalias !460
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %15, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !140, !noalias !460
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %15, i64 0, i32 1
  store ptr %15, ptr %17, align 8, !tbaa !144, !noalias !460
  br label %18

18:                                               ; preds = %2, %9
  %19 = load ptr, ptr %6, align 8, !tbaa !131, !noalias !460
  %20 = load ptr, ptr %1, align 8, !tbaa !237
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %34, label %22, !prof !240

22:                                               ; preds = %18
  %23 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %20, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !140
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %20, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !144
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %26, i64 0, i32 2
  store ptr %24, ptr %27, align 8, !tbaa !140
  %28 = load ptr, ptr %23, align 8, !tbaa !140
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %28, i64 0, i32 1
  store ptr %26, ptr %29, align 8, !tbaa !144
  %30 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %19, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !144
  store ptr %31, ptr %25, align 8, !tbaa !144
  store ptr %19, ptr %23, align 8, !tbaa !140
  %32 = load ptr, ptr %30, align 8, !tbaa !144
  %33 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %32, i64 0, i32 2
  store ptr %20, ptr %33, align 8, !tbaa !140
  store ptr %20, ptr %30, align 8, !tbaa !144
  br label %34

34:                                               ; preds = %18, %22
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry", ptr %20, i64 0, i32 1
  store i8 1, ptr %35, align 8, !tbaa !282
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %37 = load i64, ptr %36, align 8, !tbaa !165
  %38 = add i64 %37, -1
  store i64 %38, ptr %36, align 8, !tbaa !165
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !296 {
  invoke void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
          to label %2 unwind label %53, !prof !302

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 8, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !315
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %47, label %6, !prof !240

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 7
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 7, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !242, !noalias !463
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20, !prof !240

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 8, !tbaa !250, !noalias !463
  %13 = load ptr, ptr %12, align 8, !tbaa !138, !noalias !463
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !463
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 32)
          to label %17 unwind label %53

17:                                               ; preds = %11
  store ptr %16, ptr %8, align 8, !tbaa !242, !noalias !463
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %18, align 8, !tbaa !251, !noalias !463
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %19, align 8, !tbaa !254, !noalias !463
  br label %20

20:                                               ; preds = %6, %17
  %21 = load ptr, ptr %8, align 8, !tbaa !242, !noalias !463
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 2
  br label %23

23:                                               ; preds = %41, %20
  %24 = phi ptr [ %21, %20 ], [ %26, %41 ]
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !251, !noalias !145
  %27 = load ptr, ptr %8, align 8, !tbaa !242, !noalias !466
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %38, !prof !469

29:                                               ; preds = %23
  %30 = load ptr, ptr %7, align 8, !tbaa !250, !noalias !466
  %31 = load ptr, ptr %30, align 8, !tbaa !138, !noalias !466
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8, !noalias !466
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef 32)
          to label %35 unwind label %51

35:                                               ; preds = %29
  store ptr %34, ptr %8, align 8, !tbaa !242, !noalias !466
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %34, i64 0, i32 2
  store ptr %34, ptr %36, align 8, !tbaa !251, !noalias !466
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %34, i64 0, i32 1
  store ptr %34, ptr %37, align 8, !tbaa !254, !noalias !466
  br label %38

38:                                               ; preds = %23, %35
  %39 = load ptr, ptr %8, align 8, !tbaa !242, !noalias !466
  %40 = icmp eq ptr %26, %39
  br i1 %40, label %47, label %41, !prof !470

41:                                               ; preds = %38
  %42 = load ptr, ptr %26, align 8, !tbaa !260
  %43 = load ptr, ptr %22, align 8, !tbaa !471
  %44 = load ptr, ptr %43, align 8, !tbaa !138
  %45 = getelementptr inbounds ptr, ptr %44, i64 3
  %46 = load ptr, ptr %45, align 8
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef %42)
          to label %23 unwind label %51, !prof !267, !llvm.loop !472

47:                                               ; preds = %38, %2
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %48) #19
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %49) #19
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %50) #19
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
  tail call void @__clang_call_terminate(ptr %57) #20
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #5 comdat align 2 !prof !296 {
  %2 = alloca %"struct.xalanc_1_10::XalanMapIterator.7", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !311
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %26, label %6, !prof !198

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 6, i32 1
  br label %8

8:                                                ; preds = %6, %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %9 = load ptr, ptr %7, align 8, !tbaa !242, !noalias !476
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !250, !noalias !476
  %14 = load ptr, ptr %13, align 8, !tbaa !138, !noalias !476
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !476
  %17 = call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32), !noalias !476
  store ptr %17, ptr %7, align 8, !tbaa !242, !noalias !476
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !251, !noalias !476
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %19, align 8, !tbaa !254, !noalias !476
  br label %20

20:                                               ; preds = %8, %11
  %21 = load ptr, ptr %7, align 8, !tbaa !242, !noalias !476
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !251, !noalias !476
  store ptr %23, ptr %2, align 8, !tbaa !255, !alias.scope !473
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S4_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS7_5EntryEEENS_9XalanListISG_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  %24 = load i64, ptr %3, align 8, !tbaa !311
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %8, !prof !198, !llvm.loop !479

26:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !480 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !481
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %22, label %5, !prof !482

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !319
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !315
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %16, label %12, !prof !483

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %14, %12 ], [ %7, %5 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #19
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %13, i64 1
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %16, label %12, !prof !484, !llvm.loop !485

16:                                               ; preds = %12, %5
  %17 = load ptr, ptr %6, align 8, !tbaa !319
  %18 = load ptr, ptr %0, align 8, !tbaa !486
  %19 = load ptr, ptr %18, align 8, !tbaa !138
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %17)
          to label %22 unwind label %23, !prof !157

22:                                               ; preds = %16, %1
  ret void

23:                                               ; preds = %16
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #20
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !480 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.5", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !242
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5, !prof !487

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !251, !noalias !488
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %7, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !242, !noalias !491
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21, !prof !494

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !250, !noalias !491
  %14 = load ptr, ptr %13, align 8, !tbaa !138, !noalias !491
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !491
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32)
          to label %18 unwind label %53

18:                                               ; preds = %12
  store ptr %17, ptr %2, align 8, !tbaa !242, !noalias !491
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !251, !noalias !491
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !254, !noalias !491
  br label %21

21:                                               ; preds = %8, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !242, !noalias !491
  %23 = icmp eq ptr %9, %22
  br i1 %23, label %31, label %24, !prof !495

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !251, !noalias !496
  %27 = load ptr, ptr %0, align 8, !tbaa !250
  %28 = load ptr, ptr %27, align 8, !tbaa !138
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %9)
          to label %8 unwind label %53, !prof !267, !llvm.loop !499

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanList.5", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !500
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37, !prof !501

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !251
  %40 = load ptr, ptr %0, align 8, !tbaa !250
  %41 = load ptr, ptr %40, align 8, !tbaa !138
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %35)
          to label %34 unwind label %51

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !242
  %46 = load ptr, ptr %0, align 8, !tbaa !250
  %47 = load ptr, ptr %46, align 8, !tbaa !138
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %45)
          to label %50 unwind label %55, !prof !502

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
  tail call void @__clang_call_terminate(ptr %59) #20
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S4_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS7_5EntryEEENS_9XalanListISG_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 !prof !303 {
  %3 = load ptr, ptr %1, align 8, !tbaa !255
  %4 = load ptr, ptr %3, align 8, !tbaa !260
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 7, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !242, !noalias !503
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17, !prof !309

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !250, !noalias !503
  %11 = load ptr, ptr %10, align 8, !tbaa !138, !noalias !503
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8, !noalias !503
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 32), !noalias !503
  store ptr %14, ptr %5, align 8, !tbaa !242, !noalias !503
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %14, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !251, !noalias !503
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %14, i64 0, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !254, !noalias !503
  br label %17

17:                                               ; preds = %2, %8
  %18 = load ptr, ptr %5, align 8, !tbaa !242, !noalias !503
  %19 = load ptr, ptr %1, align 8, !tbaa !255
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %33, label %21, !prof !309

21:                                               ; preds = %17
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %19, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !251
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %19, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !254
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %25, i64 0, i32 2
  store ptr %23, ptr %26, align 8, !tbaa !251
  %27 = load ptr, ptr %22, align 8, !tbaa !251
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %27, i64 0, i32 1
  store ptr %25, ptr %28, align 8, !tbaa !254
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %18, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !254
  store ptr %30, ptr %24, align 8, !tbaa !254
  store ptr %18, ptr %22, align 8, !tbaa !251
  %31 = load ptr, ptr %29, align 8, !tbaa !254
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %31, i64 0, i32 2
  store ptr %19, ptr %32, align 8, !tbaa !251
  store ptr %19, ptr %29, align 8, !tbaa !254
  br label %33

33:                                               ; preds = %17, %21
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry", ptr %19, i64 0, i32 1
  store i8 1, ptr %34, align 8, !tbaa !324
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 5
  %36 = load i64, ptr %35, align 8, !tbaa !311
  %37 = add i64 %36, -1
  store i64 %37, ptr %35, align 8, !tbaa !311
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !506 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !507
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !508

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !323
  %8 = load ptr, ptr %0, align 8, !tbaa !509
  %9 = load ptr, ptr %8, align 8, !tbaa !138
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !510

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #20
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !511 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !512
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !513

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !281
  %8 = load ptr, ptr %0, align 8, !tbaa !514
  %9 = load ptr, ptr %8, align 8, !tbaa !138
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !515

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #20
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !516 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.2", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !200
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5, !prof !211

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !204, !noalias !517
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %7, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !200, !noalias !520
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21, !prof !523

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !195, !noalias !520
  %14 = load ptr, ptr %13, align 8, !tbaa !138, !noalias !520
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !520
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32)
          to label %18 unwind label %53

18:                                               ; preds = %12
  store ptr %17, ptr %2, align 8, !tbaa !200, !noalias !520
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !204, !noalias !520
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !207, !noalias !520
  br label %21

21:                                               ; preds = %8, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !200, !noalias !520
  %23 = icmp eq ptr %9, %22
  br i1 %23, label %31, label %24, !prof !524

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !204, !noalias !525
  %27 = load ptr, ptr %0, align 8, !tbaa !195
  %28 = load ptr, ptr %27, align 8, !tbaa !138
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %9)
          to label %8 unwind label %53, !prof !214, !llvm.loop !528

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanList.2", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !529
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37, !prof !530

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !204
  %40 = load ptr, ptr %0, align 8, !tbaa !195
  %41 = load ptr, ptr %40, align 8, !tbaa !138
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %35)
          to label %34 unwind label %51

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !200
  %46 = load ptr, ptr %0, align 8, !tbaa !195
  %47 = load ptr, ptr %46, align 8, !tbaa !138
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %45)
          to label %50 unwind label %55, !prof !531

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
  tail call void @__clang_call_terminate(ptr %59) #20
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #5 comdat align 2 !prof !457 {
  %2 = alloca %"struct.xalanc_1_10::XalanMapIterator.20", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !194
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %26, label %6, !prof !458

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 6, i32 1
  br label %8

8:                                                ; preds = %6, %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !532)
  %9 = load ptr, ptr %7, align 8, !tbaa !200, !noalias !535
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20, !prof !136

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !195, !noalias !535
  %14 = load ptr, ptr %13, align 8, !tbaa !138, !noalias !535
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !535
  %17 = call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32), !noalias !535
  store ptr %17, ptr %7, align 8, !tbaa !200, !noalias !535
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !204, !noalias !535
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %19, align 8, !tbaa !207, !noalias !535
  br label %20

20:                                               ; preds = %8, %11
  %21 = load ptr, ptr %7, align 8, !tbaa !200, !noalias !535
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !204, !noalias !535
  store ptr %23, ptr %2, align 8, !tbaa !355, !alias.scope !532
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S3_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS6_5EntryEEENS_9XalanListISF_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  %24 = load i64, ptr %3, align 8, !tbaa !194
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %8, !prof !198, !llvm.loop !538

26:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !516 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !539
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %22, label %5, !prof !212

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !345
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !199
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %16, label %12, !prof !182

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %14, %12 ], [ %7, %5 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #19
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %13, i64 1
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %16, label %12, !prof !349, !llvm.loop !540

16:                                               ; preds = %12, %5
  %17 = load ptr, ptr %6, align 8, !tbaa !345
  %18 = load ptr, ptr %0, align 8, !tbaa !196
  %19 = load ptr, ptr %18, align 8, !tbaa !138
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %17)
          to label %22 unwind label %23, !prof !214

22:                                               ; preds = %16, %1
  ret void

23:                                               ; preds = %16
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #20
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S3_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS6_5EntryEEENS_9XalanListISF_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 !prof !162 {
  %3 = load ptr, ptr %1, align 8, !tbaa !355
  %4 = load ptr, ptr %3, align 8, !tbaa !213
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 7, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !200, !noalias !541
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17, !prof !136

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !195, !noalias !541
  %11 = load ptr, ptr %10, align 8, !tbaa !138, !noalias !541
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8, !noalias !541
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 32), !noalias !541
  store ptr %14, ptr %5, align 8, !tbaa !200, !noalias !541
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %14, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !204, !noalias !541
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %14, i64 0, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !207, !noalias !541
  br label %17

17:                                               ; preds = %2, %8
  %18 = load ptr, ptr %5, align 8, !tbaa !200, !noalias !541
  %19 = load ptr, ptr %1, align 8, !tbaa !355
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %33, label %21, !prof !136

21:                                               ; preds = %17
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %19, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !204
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %19, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !207
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %25, i64 0, i32 2
  store ptr %23, ptr %26, align 8, !tbaa !204
  %27 = load ptr, ptr %22, align 8, !tbaa !204
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %27, i64 0, i32 1
  store ptr %25, ptr %28, align 8, !tbaa !207
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %18, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !207
  store ptr %30, ptr %24, align 8, !tbaa !207
  store ptr %18, ptr %22, align 8, !tbaa !204
  %31 = load ptr, ptr %29, align 8, !tbaa !207
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %31, i64 0, i32 2
  store ptr %19, ptr %32, align 8, !tbaa !204
  store ptr %19, ptr %29, align 8, !tbaa !207
  br label %33

33:                                               ; preds = %17, %21
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry", ptr %19, i64 0, i32 1
  store i8 1, ptr %34, align 8, !tbaa !544
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 5
  %36 = load i64, ptr %35, align 8, !tbaa !194
  %37 = add i64 %36, -1
  store i64 %37, ptr %35, align 8, !tbaa !194
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !511 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !545
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !546

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !547
  %8 = load ptr, ptr %0, align 8, !tbaa !548
  %9 = load ptr, ptr %8, align 8, !tbaa !138
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !214

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #20
  unreachable
}

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E13doCreateEntryERKS1_PKS7_(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanMapIterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !296 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.19", align 8
  %6 = alloca %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry", align 8
  %7 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !124
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %49, !prof !549

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !171
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 4
  %16 = load i64, ptr %15, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !152
  store ptr %18, ptr %5, align 8, !tbaa !514
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %5, i64 0, i32 1
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %5, i64 0, i32 2
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %5, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_mRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %14, i64 noundef %16, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %22 unwind label %35, !prof !198

22:                                               ; preds = %11
  %23 = load i64, ptr %20, align 8, !tbaa !512
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %34, label %25, !prof !198

25:                                               ; preds = %22
  %26 = load ptr, ptr %21, align 8, !tbaa !281
  %27 = load ptr, ptr %5, align 8, !tbaa !514
  %28 = load ptr, ptr %27, align 8, !tbaa !138
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %26)
          to label %34 unwind label %31

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #20
  unreachable

34:                                               ; preds = %22, %25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %49

35:                                               ; preds = %11
  %36 = landingpad { ptr, i32 }
          cleanup
  %37 = load i64, ptr %20, align 8, !tbaa !512
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %21, align 8, !tbaa !281
  %41 = load ptr, ptr %5, align 8, !tbaa !514
  %42 = load ptr, ptr %41, align 8, !tbaa !138
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef %40)
          to label %48 unwind label %45

45:                                               ; preds = %39
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  call void @__clang_call_terminate(ptr %47) #20
  unreachable

48:                                               ; preds = %35, %39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %36

49:                                               ; preds = %34, %4
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 3
  %51 = load float, ptr %50, align 8, !tbaa !163
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 5
  %53 = load i64, ptr %52, align 8, !tbaa !165
  %54 = uitofp i64 %53 to float
  %55 = fmul float %51, %54
  %56 = fptoui float %55 to i64
  %57 = load i64, ptr %8, align 8, !tbaa !124
  %58 = icmp ult i64 %57, %56
  br i1 %58, label %59, label %60, !prof !240

59:                                               ; preds = %49
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E6rehashEv(ptr noundef nonnull align 8 dereferenceable(136) %1)
  br label %60

60:                                               ; preds = %59, %49
  %61 = load i64, ptr %8, align 8, !tbaa !124
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !271
  %64 = icmp eq i64 %63, 0
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8
  %67 = select i1 %64, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %66, !prof !240
  %68 = load i16, ptr %67, align 2, !tbaa !273
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %82, label %70, !prof !483

70:                                               ; preds = %60, %70
  %71 = phi i16 [ %78, %70 ], [ %68, %60 ]
  %72 = phi i64 [ %76, %70 ], [ 0, %60 ]
  %73 = phi ptr [ %77, %70 ], [ %67, %60 ]
  %74 = mul i64 %72, 5
  %75 = zext i16 %71 to i64
  %76 = add i64 %74, %75
  %77 = getelementptr inbounds i16, ptr %73, i64 1
  %78 = load i16, ptr %77, align 2, !tbaa !273
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %70, !prof !550, !llvm.loop !277

80:                                               ; preds = %70
  %81 = add i64 %76, 1
  br label %82

82:                                               ; preds = %80, %60
  %83 = phi i64 [ 1, %60 ], [ %81, %80 ]
  %84 = urem i64 %83, %61
  %85 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 7
  %86 = call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %85)
  br i1 %86, label %87, label %95, !prof !302

87:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !152
  %90 = load ptr, ptr %89, align 8, !tbaa !138
  %91 = getelementptr inbounds ptr, ptr %90, i64 2
  %92 = load ptr, ptr %91, align 8
  %93 = call noundef ptr %92(ptr noundef nonnull align 8 dereferenceable(8) %89, i64 noundef 176), !prof !337
  store ptr %93, ptr %6, align 8, !tbaa !151
  %94 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry", ptr %6, i64 0, i32 1
  store i8 0, ptr %94, align 8, !tbaa !282
  call void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE9push_backERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %85, ptr noundef nonnull align 8 dereferenceable(9) %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  br label %95

95:                                               ; preds = %87, %82
  %96 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 7, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !131, !noalias !551
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %107, !prof !240

99:                                               ; preds = %95
  %100 = load ptr, ptr %85, align 8, !tbaa !137, !noalias !551
  %101 = load ptr, ptr %100, align 8, !tbaa !138, !noalias !551
  %102 = getelementptr inbounds ptr, ptr %101, i64 2
  %103 = load ptr, ptr %102, align 8, !noalias !551
  %104 = call noundef ptr %103(ptr noundef nonnull align 8 dereferenceable(8) %100, i64 noundef 32), !noalias !551
  store ptr %104, ptr %96, align 8, !tbaa !131, !noalias !551
  %105 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %104, i64 0, i32 2
  store ptr %104, ptr %105, align 8, !tbaa !140, !noalias !551
  %106 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %104, i64 0, i32 1
  store ptr %104, ptr %106, align 8, !tbaa !144, !noalias !551
  br label %107

107:                                              ; preds = %95, %99
  %108 = load ptr, ptr %96, align 8, !tbaa !131, !noalias !551
  %109 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !144, !noalias !554
  %111 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry", ptr %110, i64 0, i32 1
  store i8 0, ptr %111, align 8, !tbaa !282
  %112 = load ptr, ptr %110, align 8, !tbaa !151
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !152
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %112, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %114, i32 noundef 0, i32 noundef -1)
  %115 = icmp eq ptr %3, null
  %116 = load ptr, ptr %110, align 8, !tbaa !151
  br i1 %115, label %120, label %117, !prof !302

117:                                              ; preds = %107
  %118 = getelementptr inbounds %"struct.std::pair", ptr %116, i64 0, i32 1
  %119 = load ptr, ptr %113, align 8, !tbaa !152
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEC2ERKS7_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %118, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(8) %119)
  br label %133

120:                                              ; preds = %107
  %121 = load ptr, ptr %113, align 8, !tbaa !152
  %122 = getelementptr inbounds %"struct.std::pair", ptr %116, i64 0, i32 1, i32 2
  store ptr %121, ptr %122, align 8, !tbaa !471
  %123 = getelementptr inbounds %"struct.std::pair", ptr %116, i64 0, i32 1, i32 3
  store float 7.500000e-01, ptr %123, align 8, !tbaa !557
  %124 = getelementptr inbounds %"struct.std::pair", ptr %116, i64 0, i32 1, i32 4
  store i64 29, ptr %124, align 8, !tbaa !558
  %125 = getelementptr inbounds %"struct.std::pair", ptr %116, i64 0, i32 1, i32 5
  store i64 0, ptr %125, align 8, !tbaa !311
  %126 = getelementptr inbounds %"struct.std::pair", ptr %116, i64 0, i32 1, i32 6
  store ptr %121, ptr %126, align 8, !tbaa !250
  %127 = getelementptr inbounds %"struct.std::pair", ptr %116, i64 0, i32 1, i32 6, i32 1
  %128 = getelementptr inbounds %"struct.std::pair", ptr %116, i64 0, i32 1, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %127, i8 0, i64 16, i1 false)
  store ptr %121, ptr %128, align 8, !tbaa !250
  %129 = getelementptr inbounds %"struct.std::pair", ptr %116, i64 0, i32 1, i32 7, i32 1
  %130 = getelementptr inbounds %"struct.std::pair", ptr %116, i64 0, i32 1, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %129, i8 0, i64 16, i1 false)
  store ptr %121, ptr %130, align 8, !tbaa !486
  %131 = getelementptr inbounds %"struct.std::pair", ptr %116, i64 0, i32 1, i32 8, i32 1
  %132 = getelementptr inbounds %"struct.std::pair", ptr %116, i64 0, i32 1, i32 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %131, i8 0, i64 32, i1 false)
  store i64 50, ptr %132, align 8, !tbaa !344
  br label %133

133:                                              ; preds = %120, %117
  %134 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6
  %135 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !131, !noalias !559
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %146, !prof !240

138:                                              ; preds = %133
  %139 = load ptr, ptr %134, align 8, !tbaa !137, !noalias !559
  %140 = load ptr, ptr %139, align 8, !tbaa !138, !noalias !559
  %141 = getelementptr inbounds ptr, ptr %140, i64 2
  %142 = load ptr, ptr %141, align 8, !noalias !559
  %143 = call noundef ptr %142(ptr noundef nonnull align 8 dereferenceable(8) %139, i64 noundef 32), !noalias !559
  store ptr %143, ptr %135, align 8, !tbaa !131, !noalias !559
  %144 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %143, i64 0, i32 2
  store ptr %143, ptr %144, align 8, !tbaa !140, !noalias !559
  %145 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %143, i64 0, i32 1
  store ptr %143, ptr %145, align 8, !tbaa !144, !noalias !559
  br label %146

146:                                              ; preds = %133, %138
  %147 = load ptr, ptr %135, align 8, !tbaa !131, !noalias !559
  %148 = load ptr, ptr %96, align 8, !tbaa !131, !noalias !562
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %158, !prof !240

150:                                              ; preds = %146
  %151 = load ptr, ptr %85, align 8, !tbaa !137, !noalias !562
  %152 = load ptr, ptr %151, align 8, !tbaa !138, !noalias !562
  %153 = getelementptr inbounds ptr, ptr %152, i64 2
  %154 = load ptr, ptr %153, align 8, !noalias !562
  %155 = call noundef ptr %154(ptr noundef nonnull align 8 dereferenceable(8) %151, i64 noundef 32), !noalias !562
  store ptr %155, ptr %96, align 8, !tbaa !131, !noalias !562
  %156 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %155, i64 0, i32 2
  store ptr %155, ptr %156, align 8, !tbaa !140, !noalias !562
  %157 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %155, i64 0, i32 1
  store ptr %155, ptr %157, align 8, !tbaa !144, !noalias !562
  br label %158

158:                                              ; preds = %146, %150
  %159 = load ptr, ptr %96, align 8, !tbaa !131, !noalias !562
  %160 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %159, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !144, !noalias !565
  %162 = icmp eq ptr %147, %161
  br i1 %162, label %175, label %163, !prof !240

163:                                              ; preds = %158
  %164 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %161, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !140
  %166 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %161, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !144
  %168 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %167, i64 0, i32 2
  store ptr %165, ptr %168, align 8, !tbaa !140
  %169 = load ptr, ptr %164, align 8, !tbaa !140
  %170 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %169, i64 0, i32 1
  store ptr %167, ptr %170, align 8, !tbaa !144
  %171 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %147, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !144
  store ptr %172, ptr %166, align 8, !tbaa !144
  store ptr %147, ptr %164, align 8, !tbaa !140
  %173 = load ptr, ptr %171, align 8, !tbaa !144
  %174 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %173, i64 0, i32 2
  store ptr %161, ptr %174, align 8, !tbaa !140
  store ptr %161, ptr %171, align 8, !tbaa !144
  br label %175

175:                                              ; preds = %158, %163
  %176 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %177 = load ptr, ptr %176, align 8, !tbaa !171
  %178 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %177, i64 %84
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %179 = load ptr, ptr %135, align 8, !tbaa !131, !noalias !568
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %189, !prof !240

181:                                              ; preds = %175
  %182 = load ptr, ptr %134, align 8, !tbaa !137, !noalias !568
  %183 = load ptr, ptr %182, align 8, !tbaa !138, !noalias !568
  %184 = getelementptr inbounds ptr, ptr %183, i64 2
  %185 = load ptr, ptr %184, align 8, !noalias !568
  %186 = call noundef ptr %185(ptr noundef nonnull align 8 dereferenceable(8) %182, i64 noundef 32), !noalias !568
  store ptr %186, ptr %135, align 8, !tbaa !131, !noalias !568
  %187 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %186, i64 0, i32 2
  store ptr %186, ptr %187, align 8, !tbaa !140, !noalias !568
  %188 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %186, i64 0, i32 1
  store ptr %186, ptr %188, align 8, !tbaa !144, !noalias !568
  br label %189

189:                                              ; preds = %175, %181
  %190 = load ptr, ptr %135, align 8, !tbaa !131, !noalias !568
  call void @llvm.experimental.noalias.scope.decl(metadata !571)
  %191 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %190, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !144, !noalias !571
  store ptr %192, ptr %7, align 8, !tbaa !237, !alias.scope !571
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %178, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  %193 = load i64, ptr %52, align 8, !tbaa !165
  %194 = add i64 %193, 1
  store i64 %194, ptr %52, align 8, !tbaa !165
  %195 = load ptr, ptr %135, align 8, !tbaa !131, !noalias !574
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %205, !prof !240

197:                                              ; preds = %189
  %198 = load ptr, ptr %134, align 8, !tbaa !137, !noalias !574
  %199 = load ptr, ptr %198, align 8, !tbaa !138, !noalias !574
  %200 = getelementptr inbounds ptr, ptr %199, i64 2
  %201 = load ptr, ptr %200, align 8, !noalias !574
  %202 = call noundef ptr %201(ptr noundef nonnull align 8 dereferenceable(8) %198, i64 noundef 32), !noalias !574
  store ptr %202, ptr %135, align 8, !tbaa !131, !noalias !574
  %203 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %202, i64 0, i32 2
  store ptr %202, ptr %203, align 8, !tbaa !140, !noalias !574
  %204 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %202, i64 0, i32 1
  store ptr %202, ptr %204, align 8, !tbaa !144, !noalias !574
  br label %205

205:                                              ; preds = %189, %197
  %206 = load ptr, ptr %135, align 8, !tbaa !131, !noalias !574
  %207 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %206, i64 0, i32 1
  %208 = load ptr, ptr %207, align 8, !tbaa !144, !noalias !577
  store ptr %208, ptr %0, align 8, !tbaa !237
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_mRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !162 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !124
  %8 = add i64 %7, %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !171
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %10, i64 %7
  %12 = icmp eq ptr %11, %1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !170
  br i1 %12, label %15, label %33, !prof !198

15:                                               ; preds = %4
  %16 = icmp ult i64 %14, %8
  br i1 %16, label %17, label %18, !prof !198

17:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8)
  br label %18

18:                                               ; preds = %15, %17
  %19 = icmp eq i64 %2, 0
  br i1 %19, label %126, label %20, !prof !182

20:                                               ; preds = %18
  %21 = load ptr, ptr %9, align 8, !tbaa !171
  %22 = load i64, ptr %6, align 8, !tbaa !124
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %21, i64 %22
  br label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %28, %24 ], [ %23, %20 ]
  %26 = phi i64 [ %31, %24 ], [ 0, %20 ]
  %27 = load ptr, ptr %0, align 8, !tbaa !166
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef 0)
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %25, i64 1
  %29 = load i64, ptr %6, align 8, !tbaa !124
  %30 = add i64 %29, 1
  store i64 %30, ptr %6, align 8, !tbaa !124
  %31 = add nuw i64 %26, 1
  %32 = icmp eq i64 %31, %2
  br i1 %32, label %126, label %24, !prof !349, !llvm.loop !580

33:                                               ; preds = %4
  %34 = icmp ugt i64 %8, %14
  br i1 %34, label %35, label %70

35:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %36 = load ptr, ptr %0, align 8, !tbaa !166
  store ptr %36, ptr %5, align 8, !tbaa !166
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %37, align 8, !tbaa !124
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %8, ptr %38, align 8, !tbaa !170
  %39 = shl i64 %8, 5
  %40 = load ptr, ptr %36, align 8, !tbaa !138
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %36, i64 noundef %39)
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %43, ptr %44, align 8, !tbaa !171
  %45 = load i64, ptr %37, align 8, !tbaa !124
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %43, i64 %45
  %47 = load ptr, ptr %9, align 8, !tbaa !171
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_PKSK_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %46, ptr noundef %47, ptr noundef %1)
          to label %48 unwind label %68

48:                                               ; preds = %35
  %49 = load ptr, ptr %44, align 8, !tbaa !171
  %50 = load i64, ptr %37, align 8, !tbaa !124
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %49, i64 %50
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_mRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %51, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %52 unwind label %68

52:                                               ; preds = %48
  %53 = load ptr, ptr %44, align 8, !tbaa !171
  %54 = load i64, ptr %37, align 8, !tbaa !124
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %53, i64 %54
  %56 = load ptr, ptr %9, align 8, !tbaa !171
  %57 = load i64, ptr %6, align 8, !tbaa !124
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %56, i64 %57
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_PKSK_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %55, ptr noundef %1, ptr noundef %58)
          to label %59 unwind label %68

59:                                               ; preds = %52
  %60 = load ptr, ptr %0, align 8, !tbaa !166
  %61 = load i64, ptr %6, align 8, !tbaa !124
  %62 = load i64, ptr %13, align 8, !tbaa !170
  %63 = load ptr, ptr %9, align 8, !tbaa !171
  %64 = load ptr, ptr %5, align 8, !tbaa !166
  store ptr %64, ptr %0, align 8, !tbaa !166
  %65 = load i64, ptr %37, align 8, !tbaa !124
  store i64 %65, ptr %6, align 8, !tbaa !124
  %66 = load i64, ptr %38, align 8, !tbaa !170
  store i64 %66, ptr %13, align 8, !tbaa !170
  %67 = load ptr, ptr %44, align 8, !tbaa !171
  store ptr %67, ptr %9, align 8, !tbaa !171
  store ptr %60, ptr %5, align 8, !tbaa !166
  store i64 %61, ptr %37, align 8, !tbaa !124
  store i64 %62, ptr %38, align 8, !tbaa !170
  store ptr %63, ptr %44, align 8, !tbaa !171
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %126

68:                                               ; preds = %52, %48, %35
  %69 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %83 = add nuw i64 %82, 1
  %84 = icmp eq i64 %83, %77
  br i1 %84, label %79, label %81, !llvm.loop !581

85:                                               ; preds = %87, %79
  %86 = icmp eq ptr %11, %1
  br i1 %86, label %126, label %91

87:                                               ; preds = %79, %87
  %88 = phi ptr [ %89, %87 ], [ %1, %79 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %88)
  %89 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %88, i64 1
  %90 = icmp eq ptr %89, %11
  br i1 %90, label %85, label %87, !llvm.loop !582

91:                                               ; preds = %85, %91
  %92 = phi ptr [ %94, %91 ], [ %1, %85 ]
  %93 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEaSERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %92, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %94 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %92, i64 1
  %95 = icmp eq ptr %94, %11
  br i1 %95, label %126, label %91, !llvm.loop !583

96:                                               ; preds = %70
  %97 = sub i64 0, %2
  %98 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %11, i64 %97
  %99 = icmp eq i64 %2, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96, %100
  %101 = phi ptr [ %102, %100 ], [ %98, %96 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %101)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %101, i64 1
  %103 = icmp eq ptr %102, %11
  br i1 %103, label %104, label %100, !llvm.loop !584

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
  %115 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEaSERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %114, ptr noundef nonnull align 8 dereferenceable(32) %113)
  %116 = add nsw i64 %110, -1
  %117 = icmp sgt i64 %110, 1
  br i1 %117, label %109, label %118, !llvm.loop !585

118:                                              ; preds = %109, %104
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %1, i64 %2
  %120 = icmp eq i64 %2, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %118, %121
  %122 = phi ptr [ %124, %121 ], [ %1, %118 ]
  %123 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEaSERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %122, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %124 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %122, i64 1
  %125 = icmp eq ptr %124, %119
  br i1 %125, label %126, label %121, !llvm.loop !583

126:                                              ; preds = %91, %121, %24, %85, %118, %18, %59
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E6rehashEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %2 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %3 = alloca %"class.xalanc_1_10::XalanVector.19", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !165
  %7 = uitofp i64 %6 to double
  %8 = fmul double %7, 1.600000e+00
  %9 = fptoui double %8 to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !152
  store ptr %11, ptr %3, align 8, !tbaa !514
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %3, i64 0, i32 1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %3, i64 0, i32 2
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %3, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEC2EmRKSK_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %9, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %15 unwind label %89

15:                                               ; preds = %1
  %16 = load i64, ptr %13, align 8, !tbaa !512
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %14, align 8, !tbaa !281
  %20 = load ptr, ptr %3, align 8, !tbaa !514
  %21 = load ptr, ptr %20, align 8, !tbaa !138
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %19)
          to label %27 unwind label %24

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #20
  unreachable

27:                                               ; preds = %15, %18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !131, !noalias !586
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load ptr, ptr %28, align 8, !tbaa !137, !noalias !586
  %34 = load ptr, ptr %33, align 8, !tbaa !138, !noalias !586
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8, !noalias !586
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 32)
          to label %38 unwind label %103

38:                                               ; preds = %32
  store ptr %37, ptr %29, align 8, !tbaa !131, !noalias !586
  %39 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %37, i64 0, i32 2
  store ptr %37, ptr %39, align 8, !tbaa !140, !noalias !586
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %37, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !144, !noalias !586
  br label %41

41:                                               ; preds = %27, %38
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  br label %43

43:                                               ; preds = %83, %41
  %44 = phi ptr [ %29, %41 ], [ %4, %83 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !169, !noalias !145
  %46 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !140, !noalias !145
  store ptr %47, ptr %4, align 8, !tbaa !237
  %48 = load ptr, ptr %29, align 8, !tbaa !131, !noalias !589
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load ptr, ptr %28, align 8, !tbaa !137, !noalias !589
  %52 = load ptr, ptr %51, align 8, !tbaa !138, !noalias !589
  %53 = getelementptr inbounds ptr, ptr %52, i64 2
  %54 = load ptr, ptr %53, align 8, !noalias !589
  %55 = invoke noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %51, i64 noundef 32)
          to label %56 unwind label %105

56:                                               ; preds = %50
  store ptr %55, ptr %29, align 8, !tbaa !131, !noalias !589
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %55, i64 0, i32 2
  store ptr %55, ptr %57, align 8, !tbaa !140, !noalias !589
  %58 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %55, i64 0, i32 1
  store ptr %55, ptr %58, align 8, !tbaa !144, !noalias !589
  br label %59

59:                                               ; preds = %43, %56
  %60 = load ptr, ptr %29, align 8, !tbaa !131, !noalias !589
  %61 = load ptr, ptr %4, align 8, !tbaa !237
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %109, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %61, align 8, !tbaa !151
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %64, i64 0, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !271
  %67 = icmp eq i64 %66, 0
  %68 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %64, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8
  %70 = select i1 %67, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %69
  %71 = load i16, ptr %70, align 2, !tbaa !273
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
  %81 = load i16, ptr %80, align 2, !tbaa !273
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %83, label %73, !llvm.loop !277

83:                                               ; preds = %73, %63
  %84 = phi i64 [ 0, %63 ], [ %79, %73 ]
  %85 = add i64 %84, 1
  %86 = urem i64 %85, %9
  %87 = load ptr, ptr %42, align 8, !tbaa !171
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %87, i64 %86
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %88, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %43 unwind label %107, !llvm.loop !592

89:                                               ; preds = %1
  %90 = landingpad { ptr, i32 }
          cleanup
  %91 = load i64, ptr %13, align 8, !tbaa !512
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr %14, align 8, !tbaa !281
  %95 = load ptr, ptr %3, align 8, !tbaa !514
  %96 = load ptr, ptr %95, align 8, !tbaa !138
  %97 = getelementptr inbounds ptr, ptr %96, i64 3
  %98 = load ptr, ptr %97, align 8
  invoke void %98(ptr noundef nonnull align 8 dereferenceable(8) %95, ptr noundef %94)
          to label %102 unwind label %99

99:                                               ; preds = %93
  %100 = landingpad { ptr, i32 }
          catch ptr null
  %101 = extractvalue { ptr, i32 } %100, 0
  call void @__clang_call_terminate(ptr %101) #20
  unreachable

102:                                              ; preds = %89, %93
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
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
  %110 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8
  %111 = load ptr, ptr %110, align 8, !tbaa !166
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 1
  %113 = load i64, ptr %112, align 8, !tbaa !124
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 2
  %115 = load i64, ptr %114, align 8, !tbaa !170
  %116 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !171
  %118 = load ptr, ptr %2, align 8, !tbaa !166
  store ptr %118, ptr %110, align 8, !tbaa !166
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %120 = load i64, ptr %119, align 8, !tbaa !124
  store i64 %120, ptr %112, align 8, !tbaa !124
  %121 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 2
  %122 = load i64, ptr %121, align 8, !tbaa !170
  store i64 %122, ptr %114, align 8, !tbaa !170
  %123 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !171
  store ptr %124, ptr %116, align 8, !tbaa !171
  store ptr %111, ptr %2, align 8, !tbaa !166
  store i64 %113, ptr %119, align 8, !tbaa !124
  store i64 %115, ptr %121, align 8, !tbaa !170
  store ptr %117, ptr %123, align 8, !tbaa !171
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #19
  ret void

125:                                              ; preds = %107, %105, %103
  %126 = phi { ptr, i32 } [ %106, %105 ], [ %104, %103 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  br label %127

127:                                              ; preds = %125, %102
  %128 = phi { ptr, i32 } [ %126, %125 ], [ %90, %102 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #19
  resume { ptr, i32 } %128
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !296 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !131
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !549

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !137
  %7 = load ptr, ptr %6, align 8, !tbaa !138
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 32), !prof !221
  store ptr %10, ptr %2, align 8, !tbaa !131
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !140
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !144
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !131
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !140
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %26, !prof !240

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !137
  %20 = load ptr, ptr %19, align 8, !tbaa !138
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 32)
  store ptr %23, ptr %2, align 8, !tbaa !131
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %23, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !140
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %23, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !144
  br label %26

26:                                               ; preds = %13, %18
  %27 = load ptr, ptr %2, align 8, !tbaa !131
  %28 = icmp eq ptr %16, %27
  ret i1 %28
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE9push_backERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #5 comdat align 2 !prof !296 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !131, !noalias !593
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !240

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !137, !noalias !593
  %8 = load ptr, ptr %7, align 8, !tbaa !138, !noalias !593
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !593
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 32), !noalias !593
  store ptr %11, ptr %3, align 8, !tbaa !131, !noalias !593
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !140, !noalias !593
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !144, !noalias !593
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !131, !noalias !593
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !446
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19, !prof !302

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !140
  br label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %0, align 8, !tbaa !137
  %24 = load ptr, ptr %23, align 8, !tbaa !138
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 32), !prof !337
  store ptr %27, ptr %16, align 8, !tbaa !446
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi ptr [ %17, %19 ], [ %27, %22 ]
  %30 = phi ptr [ %21, %19 ], [ null, %22 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !596
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %29, i64 0, i32 1
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %15, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !144
  store ptr %33, ptr %31, align 8, !tbaa !169
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %29, i64 0, i32 2
  store ptr %15, ptr %34, align 8, !tbaa !169
  %35 = load ptr, ptr %32, align 8, !tbaa !144
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>>::Entry>::Node", ptr %35, i64 0, i32 2
  store ptr %29, ptr %36, align 8, !tbaa !140
  store ptr %29, ptr %32, align 8, !tbaa !144
  store ptr %30, ptr %16, align 8, !tbaa !446
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_PKSK_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 5
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %139, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !124
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !171
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !170
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %139, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !171
  %28 = load i64, ptr %12, align 8, !tbaa !124
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %34, %30 ], [ %29, %26 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !166
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 0)
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %32, i64 1
  %35 = load i64, ptr %12, align 8, !tbaa !124
  %36 = add i64 %35, 1
  store i64 %36, ptr %12, align 8, !tbaa !124
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %139, label %30, !llvm.loop !598

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %76

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %42 = load ptr, ptr %0, align 8, !tbaa !166
  store ptr %42, ptr %5, align 8, !tbaa !166
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !124
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !170
  %45 = shl i64 %14, 5
  %46 = load ptr, ptr %42, align 8, !tbaa !138
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !171
  %51 = load i64, ptr %43, align 8, !tbaa !124
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !171
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_PKSK_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %74

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !171
  %56 = load i64, ptr %43, align 8, !tbaa !124
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_PKSK_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %74

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !171
  %60 = load i64, ptr %43, align 8, !tbaa !124
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !171
  %63 = load i64, ptr %12, align 8, !tbaa !124
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_PKSK_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %74

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !166
  %67 = load i64, ptr %12, align 8, !tbaa !124
  %68 = load i64, ptr %19, align 8, !tbaa !170
  %69 = load ptr, ptr %15, align 8, !tbaa !171
  %70 = load ptr, ptr %5, align 8, !tbaa !166
  store ptr %70, ptr %0, align 8, !tbaa !166
  %71 = load i64, ptr %43, align 8, !tbaa !124
  store i64 %71, ptr %12, align 8, !tbaa !124
  %72 = load i64, ptr %44, align 8, !tbaa !170
  store i64 %72, ptr %19, align 8, !tbaa !170
  %73 = load ptr, ptr %50, align 8, !tbaa !171
  store ptr %73, ptr %15, align 8, !tbaa !171
  store ptr %66, ptr %5, align 8, !tbaa !166
  store i64 %67, ptr %43, align 8, !tbaa !124
  store i64 %68, ptr %44, align 8, !tbaa !170
  store ptr %69, ptr %50, align 8, !tbaa !171
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %139

74:                                               ; preds = %58, %54, %41
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %87)
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %87, i64 1
  %89 = icmp eq ptr %88, %3
  br i1 %89, label %84, label %86, !llvm.loop !599

90:                                               ; preds = %84, %90
  %91 = phi ptr [ %92, %90 ], [ %1, %84 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %91)
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %91, i64 1
  %93 = icmp eq ptr %92, %17
  br i1 %93, label %94, label %90, !llvm.loop !600

94:                                               ; preds = %90, %84
  %95 = ashr exact i64 %79, 5
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %139

97:                                               ; preds = %94, %97
  %98 = phi i64 [ %104, %97 ], [ %95, %94 ]
  %99 = phi ptr [ %103, %97 ], [ %1, %94 ]
  %100 = phi ptr [ %102, %97 ], [ %2, %94 ]
  %101 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEaSERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %99, ptr noundef nonnull align 8 dereferenceable(32) %100)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %100, i64 1
  %103 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %99, i64 1
  %104 = add nsw i64 %98, -1
  %105 = icmp sgt i64 %98, 1
  br i1 %105, label %97, label %139, !llvm.loop !601

106:                                              ; preds = %76
  %107 = sub nsw i64 0, %9
  %108 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %17, i64 %107
  %109 = icmp eq ptr %3, %2
  br i1 %109, label %114, label %110

110:                                              ; preds = %106, %110
  %111 = phi ptr [ %112, %110 ], [ %108, %106 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %111)
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %111, i64 1
  %113 = icmp eq ptr %112, %17
  br i1 %113, label %114, label %110, !llvm.loop !602

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
  %127 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEaSERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %126, ptr noundef nonnull align 8 dereferenceable(32) %125)
  %128 = add nsw i64 %122, -1
  %129 = icmp sgt i64 %122, 1
  br i1 %129, label %121, label %119, !llvm.loop !585

130:                                              ; preds = %119, %130
  %131 = phi i64 [ %137, %130 ], [ %9, %119 ]
  %132 = phi ptr [ %136, %130 ], [ %1, %119 ]
  %133 = phi ptr [ %135, %130 ], [ %2, %119 ]
  %134 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEaSERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %132, ptr noundef nonnull align 8 dereferenceable(32) %133)
  %135 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %133, i64 1
  %136 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %132, i64 1
  %137 = add nsw i64 %131, -1
  %138 = icmp sgt i64 %131, 1
  br i1 %138, label %130, label %139, !llvm.loop !601

139:                                              ; preds = %97, %130, %30, %94, %119, %24, %65, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !124
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !170
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !171
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %11, i64 %5
  %13 = load ptr, ptr %0, align 8, !tbaa !166
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 0)
  %14 = load i64, ptr %4, align 8, !tbaa !124
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !124
  br label %38

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %22 = load ptr, ptr %0, align 8, !tbaa !166
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEC2ERKSN_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %23 unwind label %36

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !166
  %25 = load i64, ptr %4, align 8, !tbaa !124
  %26 = load i64, ptr %6, align 8, !tbaa !170
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !171
  %29 = load ptr, ptr %3, align 8, !tbaa !166
  store ptr %29, ptr %0, align 8, !tbaa !166
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !124
  store i64 %31, ptr %4, align 8, !tbaa !124
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !170
  store i64 %33, ptr %6, align 8, !tbaa !170
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !171
  store ptr %35, ptr %27, align 8, !tbaa !171
  store ptr %24, ptr %3, align 8, !tbaa !166
  store i64 %25, ptr %30, align 8, !tbaa !124
  store i64 %26, ptr %32, align 8, !tbaa !170
  store ptr %28, ptr %34, align 8, !tbaa !171
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %38

36:                                               ; preds = %16
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  resume { ptr, i32 } %37

38:                                               ; preds = %23, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !162 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !166
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEC2ERKSN_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !166
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !124
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !170
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !171
  %12 = load ptr, ptr %3, align 8, !tbaa !166
  store ptr %12, ptr %0, align 8, !tbaa !166
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !124
  store i64 %14, ptr %6, align 8, !tbaa !124
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !170
  store i64 %16, ptr %8, align 8, !tbaa !170
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !171
  store ptr %18, ptr %10, align 8, !tbaa !171
  store ptr %5, ptr %3, align 8, !tbaa !166
  store i64 %7, ptr %13, align 8, !tbaa !124
  store i64 %9, ptr %15, align 8, !tbaa !170
  store ptr %11, ptr %17, align 8, !tbaa !171
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEC2ERKSN_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !162 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !166
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !124
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %37, label %12, !prof !198

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !166
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !124
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !170
  %16 = shl i64 %13, 5
  %17 = load ptr, ptr %2, align 8, !tbaa !138
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !171
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !171
  %24 = load i64, ptr %9, align 8, !tbaa !124
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_PKSK_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %35

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !166
  %28 = load i64, ptr %6, align 8, !tbaa !124
  %29 = load i64, ptr %7, align 8, !tbaa !170
  %30 = load ptr, ptr %8, align 8, !tbaa !171
  %31 = load ptr, ptr %5, align 8, !tbaa !166
  store ptr %31, ptr %0, align 8, !tbaa !166
  %32 = load i64, ptr %14, align 8, !tbaa !124
  store i64 %32, ptr %6, align 8, !tbaa !124
  %33 = load i64, ptr %15, align 8, !tbaa !170
  store i64 %33, ptr %7, align 8, !tbaa !170
  %34 = load ptr, ptr %21, align 8, !tbaa !171
  store ptr %34, ptr %8, align 8, !tbaa !171
  store ptr %27, ptr %5, align 8, !tbaa !166
  store i64 %28, ptr %14, align 8, !tbaa !124
  store i64 %29, ptr %15, align 8, !tbaa !170
  store ptr %30, ptr %21, align 8, !tbaa !171
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %45

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %36

37:                                               ; preds = %4
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %45, label %39, !prof !136

39:                                               ; preds = %37
  %40 = shl i64 %3, 5
  %41 = load ptr, ptr %2, align 8, !tbaa !138
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40), !prof !221
  store ptr %44, ptr %8, align 8, !tbaa !171
  store i64 %3, ptr %7, align 8, !tbaa !170
  br label %45

45:                                               ; preds = %37, %39, %26
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !603 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.19", align 8
  store ptr %2, ptr %0, align 8, !tbaa !514
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !278
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !604

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !514
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !278
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !512
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !138
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !221
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !281
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !281
  %24 = load i64, ptr %9, align 8, !tbaa !278
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE6insertEPSH_PKSH_SN_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !198

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !514
  %28 = load i64, ptr %6, align 8, !tbaa !278
  %29 = load i64, ptr %7, align 8, !tbaa !512
  %30 = load ptr, ptr %8, align 8, !tbaa !281
  %31 = load ptr, ptr %5, align 8, !tbaa !514
  store ptr %31, ptr %0, align 8, !tbaa !514
  %32 = load i64, ptr %14, align 8, !tbaa !278
  store i64 %32, ptr %6, align 8, !tbaa !278
  %33 = load i64, ptr %15, align 8, !tbaa !512
  store i64 %33, ptr %7, align 8, !tbaa !512
  %34 = load ptr, ptr %21, align 8, !tbaa !281
  store ptr %34, ptr %8, align 8, !tbaa !281
  store ptr %27, ptr %5, align 8, !tbaa !514
  store i64 %28, ptr %14, align 8, !tbaa !278
  store i64 %29, ptr %15, align 8, !tbaa !512
  store ptr %30, ptr %21, align 8, !tbaa !281
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !198

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !138
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #20
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !512
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !281
  %50 = load ptr, ptr %5, align 8, !tbaa !514
  %51 = load ptr, ptr %50, align 8, !tbaa !138
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #20
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !605

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !138
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !606
  store ptr %65, ptr %8, align 8, !tbaa !281
  store i64 %3, ptr %7, align 8, !tbaa !512
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE6insertEPSH_PKSH_SN_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !162 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.19", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %161, label %11, !prof !136

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !278
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !281
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !512
  br i1 %18, label %21, label %39, !prof !198

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !136

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %161, label %26, !prof !182

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !281
  %28 = load i64, ptr %12, align 8, !tbaa !278
  %29 = getelementptr %"struct.xalanc_1_10::XalanListIteratorBase", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !237
  store ptr %34, ptr %32, align 8, !tbaa !237
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %160, label %30, !prof !607, !llvm.loop !608

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %42 = load ptr, ptr %0, align 8, !tbaa !514
  store ptr %42, ptr %5, align 8, !tbaa !514
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !278
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !512
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !138
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !281
  %51 = load i64, ptr %43, align 8, !tbaa !278
  %52 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !281
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE6insertEPSH_PKSH_SN_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !281
  %56 = load i64, ptr %43, align 8, !tbaa !278
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE6insertEPSH_PKSH_SN_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !281
  %60 = load i64, ptr %43, align 8, !tbaa !278
  %61 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !281
  %63 = load i64, ptr %12, align 8, !tbaa !278
  %64 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE6insertEPSH_PKSH_SN_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !514
  %67 = load i64, ptr %12, align 8, !tbaa !278
  %68 = load i64, ptr %19, align 8, !tbaa !512
  %69 = load ptr, ptr %15, align 8, !tbaa !281
  %70 = load ptr, ptr %5, align 8, !tbaa !514
  store ptr %70, ptr %0, align 8, !tbaa !514
  %71 = load i64, ptr %43, align 8, !tbaa !278
  store i64 %71, ptr %12, align 8, !tbaa !278
  %72 = load i64, ptr %44, align 8, !tbaa !512
  store i64 %72, ptr %19, align 8, !tbaa !512
  %73 = load ptr, ptr %50, align 8, !tbaa !281
  store ptr %73, ptr %15, align 8, !tbaa !281
  store ptr %66, ptr %5, align 8, !tbaa !514
  store i64 %67, ptr %43, align 8, !tbaa !278
  store i64 %68, ptr %44, align 8, !tbaa !512
  store ptr %69, ptr %50, align 8, !tbaa !281
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !138
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #20
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %161

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !512
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !281
  %89 = load ptr, ptr %5, align 8, !tbaa !514
  %90 = load ptr, ptr %89, align 8, !tbaa !138
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #20
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !609

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !610

115:                                              ; preds = %111, %105
  %116 = ashr exact i64 %100, 3
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %161

118:                                              ; preds = %115, %118
  %119 = phi i64 [ %125, %118 ], [ %116, %115 ]
  %120 = phi ptr [ %124, %118 ], [ %1, %115 ]
  %121 = phi ptr [ %123, %118 ], [ %2, %115 ]
  %122 = load ptr, ptr %121, align 8, !tbaa !237
  store ptr %122, ptr %120, align 8, !tbaa !237
  %123 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %121, i64 1
  %124 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %120, i64 1
  %125 = add nsw i64 %119, -1
  %126 = icmp sgt i64 %119, 1
  br i1 %126, label %118, label %161, !llvm.loop !611

127:                                              ; preds = %97
  %128 = sub nsw i64 0, %9
  %129 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %17, i64 %128
  %130 = icmp eq ptr %3, %2
  br i1 %130, label %135, label %131

131:                                              ; preds = %127, %131
  %132 = phi ptr [ %133, %131 ], [ %129, %127 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %132)
  %133 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %132, i64 1
  %134 = icmp eq ptr %133, %17
  br i1 %134, label %135, label %131, !llvm.loop !612

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
  %148 = load ptr, ptr %146, align 8, !tbaa !237
  store ptr %148, ptr %147, align 8, !tbaa !237
  %149 = add nsw i64 %143, -1
  %150 = icmp sgt i64 %143, 1
  br i1 %150, label %142, label %140, !llvm.loop !613

151:                                              ; preds = %140, %151
  %152 = phi i64 [ %158, %151 ], [ %9, %140 ]
  %153 = phi ptr [ %157, %151 ], [ %1, %140 ]
  %154 = phi ptr [ %156, %151 ], [ %2, %140 ]
  %155 = load ptr, ptr %154, align 8, !tbaa !237
  store ptr %155, ptr %153, align 8, !tbaa !237
  %156 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %154, i64 1
  %157 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %153, i64 1
  %158 = add nsw i64 %152, -1
  %159 = icmp sgt i64 %152, 1
  br i1 %159, label %151, label %161, !llvm.loop !611

160:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !278
  br label %161

161:                                              ; preds = %118, %151, %115, %140, %24, %160, %82, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !480 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.19", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !278
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !512
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !482

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !281
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !237
  store ptr %13, ptr %12, align 8, !tbaa !237
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !278
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !614
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %21 = load ptr, ptr %0, align 8, !tbaa !514
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44, !prof !302

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !514
  %24 = load i64, ptr %4, align 8, !tbaa !278
  %25 = load i64, ptr %6, align 8, !tbaa !512
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !281
  %28 = load ptr, ptr %3, align 8, !tbaa !514
  store ptr %28, ptr %0, align 8, !tbaa !514
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !278
  store i64 %30, ptr %4, align 8, !tbaa !278
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !512
  store i64 %32, ptr %6, align 8, !tbaa !512
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !281
  store ptr %34, ptr %26, align 8, !tbaa !281
  store ptr %23, ptr %3, align 8, !tbaa !514
  store i64 %24, ptr %29, align 8, !tbaa !278
  store i64 %25, ptr %31, align 8, !tbaa !512
  store ptr %27, ptr %33, align 8, !tbaa !281
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36, !prof !614

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !138
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40, !prof !214

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #20
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !512
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !281
  %52 = load ptr, ptr %3, align 8, !tbaa !514
  %53 = load ptr, ptr %52, align 8, !tbaa !138
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #20
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.19", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !514
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !514
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !278
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !512
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !281
  %12 = load ptr, ptr %3, align 8, !tbaa !514
  store ptr %12, ptr %0, align 8, !tbaa !514
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !278
  store i64 %14, ptr %6, align 8, !tbaa !278
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !512
  store i64 %16, ptr %8, align 8, !tbaa !512
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !281
  store ptr %18, ptr %10, align 8, !tbaa !281
  store ptr %5, ptr %3, align 8, !tbaa !514
  store i64 %7, ptr %13, align 8, !tbaa !278
  store i64 %9, ptr %15, align 8, !tbaa !512
  store ptr %11, ptr %17, align 8, !tbaa !281
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !138
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #20
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEaSERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.19", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %73, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !512
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !278
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %12 = load ptr, ptr %0, align 8, !tbaa !514
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !514
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !278
  %16 = load i64, ptr %6, align 8, !tbaa !512
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !281
  %19 = load ptr, ptr %3, align 8, !tbaa !514
  store ptr %19, ptr %0, align 8, !tbaa !514
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !278
  store i64 %21, ptr %14, align 8, !tbaa !278
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !512
  store i64 %23, ptr %6, align 8, !tbaa !512
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !281
  store ptr %25, ptr %17, align 8, !tbaa !281
  store ptr %13, ptr %3, align 8, !tbaa !514
  store i64 %15, ptr %20, align 8, !tbaa !278
  store i64 %16, ptr %22, align 8, !tbaa !512
  store ptr %18, ptr %24, align 8, !tbaa !281
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !138
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #20
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %73

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !281
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !278
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53

44:                                               ; preds = %42
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !281
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE6insertEPSH_PKSH_SN_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !278
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !278
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !281
  %56 = ptrtoint ptr %54 to i64
  %57 = ptrtoint ptr %55 to i64
  %58 = sub i64 %56, %57
  %59 = ashr exact i64 %58, 3
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %53
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !281
  br label %64

64:                                               ; preds = %61, %64
  %65 = phi i64 [ %71, %64 ], [ %59, %61 ]
  %66 = phi ptr [ %70, %64 ], [ %63, %61 ]
  %67 = phi ptr [ %69, %64 ], [ %55, %61 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !237
  store ptr %68, ptr %66, align 8, !tbaa !237
  %69 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %67, i64 1
  %70 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %66, i64 1
  %71 = add nsw i64 %65, -1
  %72 = icmp sgt i64 %65, 1
  br i1 %72, label %64, label %73, !llvm.loop !611

73:                                               ; preds = %64, %53, %34, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEC2EmRKSK_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %3, ptr %0, align 8, !tbaa !166
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  store ptr %3, ptr %5, align 8, !tbaa !166
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_mRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef null, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %8 unwind label %21

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %0, align 8, !tbaa !166
  %14 = load i64, ptr %6, align 8, !tbaa !124
  %15 = load i64, ptr %12, align 8, !tbaa !170
  %16 = load ptr, ptr %11, align 8, !tbaa !171
  %17 = load ptr, ptr %5, align 8, !tbaa !166
  store ptr %17, ptr %0, align 8, !tbaa !166
  %18 = load i64, ptr %7, align 8, !tbaa !124
  store i64 %18, ptr %6, align 8, !tbaa !124
  %19 = load i64, ptr %10, align 8, !tbaa !170
  store i64 %19, ptr %12, align 8, !tbaa !170
  %20 = load ptr, ptr %9, align 8, !tbaa !171
  store ptr %20, ptr %11, align 8, !tbaa !171
  store ptr %13, ptr %5, align 8, !tbaa !166
  store i64 %14, ptr %7, align 8, !tbaa !124
  store i64 %15, ptr %10, align 8, !tbaa !170
  store ptr %16, ptr %9, align 8, !tbaa !171
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  ret void

21:                                               ; preds = %4
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %22
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEC2ERKS7_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %4 = alloca %"class.xalanc_1_10::XalanVector.18", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !471
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %1, i64 0, i32 3
  %8 = load float, ptr %7, align 8, !tbaa !557
  store float %8, ptr %6, align 8, !tbaa !557
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %1, i64 0, i32 4
  %11 = load i64, ptr %10, align 8, !tbaa !558
  store i64 %11, ptr %9, align 8, !tbaa !558
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 5
  store i64 0, ptr %12, align 8, !tbaa !311
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 6
  store ptr %2, ptr %13, align 8, !tbaa !250
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 6, i32 1
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  store ptr %2, ptr %15, align 8, !tbaa !250
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 7, i32 1
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 8
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %1, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %19 = load i64, ptr %18, align 8, !tbaa !311
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  store ptr %2, ptr %4, align 8, !tbaa !509
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %4, i64 0, i32 1
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %4, i64 0, i32 2
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %4, i64 0, i32 3
  %23 = uitofp i64 %19 to float
  %24 = fmul float %8, %23
  %25 = fptoui float %24 to i64
  %26 = add i64 %25, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEEC2EmRKSJ_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef %26, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %27 unwind label %81

27:                                               ; preds = %3
  %28 = load i64, ptr %21, align 8, !tbaa !507
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %22, align 8, !tbaa !323
  %32 = load ptr, ptr %4, align 8, !tbaa !509
  %33 = load ptr, ptr %32, align 8, !tbaa !138
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef %31)
          to label %39 unwind label %36

36:                                               ; preds = %30
  %37 = landingpad { ptr, i32 }
          catch ptr null
  %38 = extractvalue { ptr, i32 } %37, 0
  call void @__clang_call_terminate(ptr %38) #20
  unreachable

39:                                               ; preds = %27, %30
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 9
  store i64 0, ptr %40, align 8, !tbaa !343
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 10
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %1, i64 0, i32 10
  %43 = load i64, ptr %42, align 8, !tbaa !344
  store i64 %43, ptr %41, align 8, !tbaa !344
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %1, i64 0, i32 6, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !242, !noalias !615
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %39
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %1, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !250, !noalias !615
  %50 = load ptr, ptr %49, align 8, !tbaa !138, !noalias !615
  %51 = getelementptr inbounds ptr, ptr %50, i64 2
  %52 = load ptr, ptr %51, align 8, !noalias !615
  %53 = invoke noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(8) %49, i64 noundef 32)
          to label %54 unwind label %97

54:                                               ; preds = %47
  store ptr %53, ptr %44, align 8, !tbaa !242, !noalias !615
  %55 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %53, i64 0, i32 2
  store ptr %53, ptr %55, align 8, !tbaa !251, !noalias !615
  %56 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %53, i64 0, i32 1
  store ptr %53, ptr %56, align 8, !tbaa !254, !noalias !615
  br label %57

57:                                               ; preds = %39, %54
  %58 = load ptr, ptr %44, align 8, !tbaa !242, !noalias !615
  %59 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %1, i64 0, i32 6
  br label %60

60:                                               ; preds = %78, %57
  %61 = phi ptr [ %58, %57 ], [ %63, %78 ]
  %62 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !251, !noalias !145
  %64 = load ptr, ptr %44, align 8, !tbaa !242, !noalias !622
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load ptr, ptr %59, align 8, !tbaa !250, !noalias !622
  %68 = load ptr, ptr %67, align 8, !tbaa !138, !noalias !622
  %69 = getelementptr inbounds ptr, ptr %68, i64 2
  %70 = load ptr, ptr %69, align 8, !noalias !622
  %71 = invoke noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(8) %67, i64 noundef 32)
          to label %72 unwind label %99

72:                                               ; preds = %66
  store ptr %71, ptr %44, align 8, !tbaa !242, !noalias !622
  %73 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %71, i64 0, i32 2
  store ptr %71, ptr %73, align 8, !tbaa !251, !noalias !622
  %74 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %71, i64 0, i32 1
  store ptr %71, ptr %74, align 8, !tbaa !254, !noalias !622
  br label %75

75:                                               ; preds = %60, %72
  %76 = load ptr, ptr %44, align 8, !tbaa !242, !noalias !622
  %77 = icmp eq ptr %63, %76
  br i1 %77, label %101, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %63, align 8, !tbaa !260
  %80 = getelementptr inbounds %"struct.std::pair.9", ptr %79, i64 0, i32 1
  invoke void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE6insertERKS1_RKS4_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %79, ptr noundef nonnull align 8 dereferenceable(8) %80)
          to label %60 unwind label %95

81:                                               ; preds = %3
  %82 = landingpad { ptr, i32 }
          cleanup
  %83 = load i64, ptr %21, align 8, !tbaa !507
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %22, align 8, !tbaa !323
  %87 = load ptr, ptr %4, align 8, !tbaa !509
  %88 = load ptr, ptr %87, align 8, !tbaa !138
  %89 = getelementptr inbounds ptr, ptr %88, i64 3
  %90 = load ptr, ptr %89, align 8
  invoke void %90(ptr noundef nonnull align 8 dereferenceable(8) %87, ptr noundef %86)
          to label %94 unwind label %91

91:                                               ; preds = %85
  %92 = landingpad { ptr, i32 }
          catch ptr null
  %93 = extractvalue { ptr, i32 } %92, 0
  call void @__clang_call_terminate(ptr %93) #20
  unreachable

94:                                               ; preds = %85, %81
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
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
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %17) #19
  br label %104

104:                                              ; preds = %102, %94
  %105 = phi { ptr, i32 } [ %103, %102 ], [ %82, %94 ]
  call void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #19
  call void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #19
  resume { ptr, i32 } %105
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEEC2EmRKSJ_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.6", align 8
  store ptr %3, ptr %0, align 8, !tbaa !486
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  store ptr %3, ptr %5, align 8, !tbaa !486
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %5, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE6insertEPSJ_mRKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef null, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %8 unwind label %21

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %5, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %5, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %0, align 8, !tbaa !486
  %14 = load i64, ptr %6, align 8, !tbaa !315
  %15 = load i64, ptr %12, align 8, !tbaa !481
  %16 = load ptr, ptr %11, align 8, !tbaa !319
  %17 = load ptr, ptr %5, align 8, !tbaa !486
  store ptr %17, ptr %0, align 8, !tbaa !486
  %18 = load i64, ptr %7, align 8, !tbaa !315
  store i64 %18, ptr %6, align 8, !tbaa !315
  %19 = load i64, ptr %10, align 8, !tbaa !481
  store i64 %19, ptr %12, align 8, !tbaa !481
  %20 = load ptr, ptr %9, align 8, !tbaa !319
  store ptr %20, ptr %11, align 8, !tbaa !319
  store ptr %13, ptr %5, align 8, !tbaa !486
  store i64 %14, ptr %7, align 8, !tbaa !315
  store i64 %15, ptr %10, align 8, !tbaa !481
  store ptr %16, ptr %9, align 8, !tbaa !319
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  ret void

21:                                               ; preds = %4
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %22
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE6insertEPSJ_mRKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !296 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.6", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !315
  %8 = add i64 %7, %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !319
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %10, i64 %7
  %12 = icmp eq ptr %11, %1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !481
  br i1 %12, label %15, label %33, !prof !302

15:                                               ; preds = %4
  %16 = icmp ult i64 %14, %8
  br i1 %16, label %17, label %18, !prof !302

17:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8)
  br label %18

18:                                               ; preds = %15, %17
  %19 = icmp eq i64 %2, 0
  br i1 %19, label %126, label %20, !prof !483

20:                                               ; preds = %18
  %21 = load ptr, ptr %9, align 8, !tbaa !319
  %22 = load i64, ptr %6, align 8, !tbaa !315
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %21, i64 %22
  br label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %28, %24 ], [ %23, %20 ]
  %26 = phi i64 [ %31, %24 ], [ 0, %20 ]
  %27 = load ptr, ptr %0, align 8, !tbaa !486
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEC2ERKSJ_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef 0)
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %25, i64 1
  %29 = load i64, ptr %6, align 8, !tbaa !315
  %30 = add i64 %29, 1
  store i64 %30, ptr %6, align 8, !tbaa !315
  %31 = add nuw i64 %26, 1
  %32 = icmp eq i64 %31, %2
  br i1 %32, label %126, label %24, !prof !484, !llvm.loop !629

33:                                               ; preds = %4
  %34 = icmp ugt i64 %8, %14
  br i1 %34, label %35, label %70

35:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %36 = load ptr, ptr %0, align 8, !tbaa !486
  store ptr %36, ptr %5, align 8, !tbaa !486
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %5, i64 0, i32 1
  store i64 0, ptr %37, align 8, !tbaa !315
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %5, i64 0, i32 2
  store i64 %8, ptr %38, align 8, !tbaa !481
  %39 = shl i64 %8, 5
  %40 = load ptr, ptr %36, align 8, !tbaa !138
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %36, i64 noundef %39)
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %5, i64 0, i32 3
  store ptr %43, ptr %44, align 8, !tbaa !319
  %45 = load i64, ptr %37, align 8, !tbaa !315
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %43, i64 %45
  %47 = load ptr, ptr %9, align 8, !tbaa !319
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE6insertEPSJ_PKSJ_SP_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %46, ptr noundef %47, ptr noundef %1)
          to label %48 unwind label %68

48:                                               ; preds = %35
  %49 = load ptr, ptr %44, align 8, !tbaa !319
  %50 = load i64, ptr %37, align 8, !tbaa !315
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %49, i64 %50
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE6insertEPSJ_mRKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %51, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %52 unwind label %68

52:                                               ; preds = %48
  %53 = load ptr, ptr %44, align 8, !tbaa !319
  %54 = load i64, ptr %37, align 8, !tbaa !315
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %53, i64 %54
  %56 = load ptr, ptr %9, align 8, !tbaa !319
  %57 = load i64, ptr %6, align 8, !tbaa !315
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %56, i64 %57
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE6insertEPSJ_PKSJ_SP_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %55, ptr noundef %1, ptr noundef %58)
          to label %59 unwind label %68

59:                                               ; preds = %52
  %60 = load ptr, ptr %0, align 8, !tbaa !486
  %61 = load i64, ptr %6, align 8, !tbaa !315
  %62 = load i64, ptr %13, align 8, !tbaa !481
  %63 = load ptr, ptr %9, align 8, !tbaa !319
  %64 = load ptr, ptr %5, align 8, !tbaa !486
  store ptr %64, ptr %0, align 8, !tbaa !486
  %65 = load i64, ptr %37, align 8, !tbaa !315
  store i64 %65, ptr %6, align 8, !tbaa !315
  %66 = load i64, ptr %38, align 8, !tbaa !481
  store i64 %66, ptr %13, align 8, !tbaa !481
  %67 = load ptr, ptr %44, align 8, !tbaa !319
  store ptr %67, ptr %9, align 8, !tbaa !319
  store ptr %60, ptr %5, align 8, !tbaa !486
  store i64 %61, ptr %37, align 8, !tbaa !315
  store i64 %62, ptr %38, align 8, !tbaa !481
  store ptr %63, ptr %44, align 8, !tbaa !319
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %126

68:                                               ; preds = %52, %48, %35
  %69 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE10doPushBackERKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %83 = add nuw i64 %82, 1
  %84 = icmp eq i64 %83, %77
  br i1 %84, label %79, label %81, !llvm.loop !630

85:                                               ; preds = %87, %79
  %86 = icmp eq ptr %11, %1
  br i1 %86, label %126, label %91

87:                                               ; preds = %79, %87
  %88 = phi ptr [ %89, %87 ], [ %1, %79 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE10doPushBackERKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %88)
  %89 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %88, i64 1
  %90 = icmp eq ptr %89, %11
  br i1 %90, label %85, label %87, !llvm.loop !631

91:                                               ; preds = %85, %91
  %92 = phi ptr [ %94, %91 ], [ %1, %85 ]
  %93 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEaSERKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %92, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %94 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %92, i64 1
  %95 = icmp eq ptr %94, %11
  br i1 %95, label %126, label %91, !llvm.loop !632

96:                                               ; preds = %70
  %97 = sub i64 0, %2
  %98 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %11, i64 %97
  %99 = icmp eq i64 %2, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96, %100
  %101 = phi ptr [ %102, %100 ], [ %98, %96 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE10doPushBackERKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %101)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %101, i64 1
  %103 = icmp eq ptr %102, %11
  br i1 %103, label %104, label %100, !llvm.loop !633

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
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %112, i64 -1
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %111, i64 -1
  %115 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEaSERKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %114, ptr noundef nonnull align 8 dereferenceable(32) %113)
  %116 = add nsw i64 %110, -1
  %117 = icmp sgt i64 %110, 1
  br i1 %117, label %109, label %118, !llvm.loop !634

118:                                              ; preds = %109, %104
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %1, i64 %2
  %120 = icmp eq i64 %2, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %118, %121
  %122 = phi ptr [ %124, %121 ], [ %1, %118 ]
  %123 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEaSERKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %122, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %124 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %122, i64 1
  %125 = icmp eq ptr %124, %119
  br i1 %125, label %126, label %121, !llvm.loop !632

126:                                              ; preds = %91, %121, %24, %85, %118, %18, %59
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE6insertEPSJ_PKSJ_SP_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.6", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 5
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %139, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !315
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !319
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !481
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %139, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !319
  %28 = load i64, ptr %12, align 8, !tbaa !315
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %34, %30 ], [ %29, %26 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !486
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEC2ERKSJ_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 0)
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %32, i64 1
  %35 = load i64, ptr %12, align 8, !tbaa !315
  %36 = add i64 %35, 1
  store i64 %36, ptr %12, align 8, !tbaa !315
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %139, label %30, !llvm.loop !635

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %76

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %42 = load ptr, ptr %0, align 8, !tbaa !486
  store ptr %42, ptr %5, align 8, !tbaa !486
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !315
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !481
  %45 = shl i64 %14, 5
  %46 = load ptr, ptr %42, align 8, !tbaa !138
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !319
  %51 = load i64, ptr %43, align 8, !tbaa !315
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !319
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE6insertEPSJ_PKSJ_SP_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %74

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !319
  %56 = load i64, ptr %43, align 8, !tbaa !315
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE6insertEPSJ_PKSJ_SP_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %74

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !319
  %60 = load i64, ptr %43, align 8, !tbaa !315
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !319
  %63 = load i64, ptr %12, align 8, !tbaa !315
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE6insertEPSJ_PKSJ_SP_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %74

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !486
  %67 = load i64, ptr %12, align 8, !tbaa !315
  %68 = load i64, ptr %19, align 8, !tbaa !481
  %69 = load ptr, ptr %15, align 8, !tbaa !319
  %70 = load ptr, ptr %5, align 8, !tbaa !486
  store ptr %70, ptr %0, align 8, !tbaa !486
  %71 = load i64, ptr %43, align 8, !tbaa !315
  store i64 %71, ptr %12, align 8, !tbaa !315
  %72 = load i64, ptr %44, align 8, !tbaa !481
  store i64 %72, ptr %19, align 8, !tbaa !481
  %73 = load ptr, ptr %50, align 8, !tbaa !319
  store ptr %73, ptr %15, align 8, !tbaa !319
  store ptr %66, ptr %5, align 8, !tbaa !486
  store i64 %67, ptr %43, align 8, !tbaa !315
  store i64 %68, ptr %44, align 8, !tbaa !481
  store ptr %69, ptr %50, align 8, !tbaa !319
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %139

74:                                               ; preds = %58, %54, %41
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE10doPushBackERKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %87)
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %87, i64 1
  %89 = icmp eq ptr %88, %3
  br i1 %89, label %84, label %86, !llvm.loop !636

90:                                               ; preds = %84, %90
  %91 = phi ptr [ %92, %90 ], [ %1, %84 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE10doPushBackERKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %91)
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %91, i64 1
  %93 = icmp eq ptr %92, %17
  br i1 %93, label %94, label %90, !llvm.loop !637

94:                                               ; preds = %90, %84
  %95 = ashr exact i64 %79, 5
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %139

97:                                               ; preds = %94, %97
  %98 = phi i64 [ %104, %97 ], [ %95, %94 ]
  %99 = phi ptr [ %103, %97 ], [ %1, %94 ]
  %100 = phi ptr [ %102, %97 ], [ %2, %94 ]
  %101 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEaSERKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %99, ptr noundef nonnull align 8 dereferenceable(32) %100)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %100, i64 1
  %103 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %99, i64 1
  %104 = add nsw i64 %98, -1
  %105 = icmp sgt i64 %98, 1
  br i1 %105, label %97, label %139, !llvm.loop !638

106:                                              ; preds = %76
  %107 = sub nsw i64 0, %9
  %108 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %17, i64 %107
  %109 = icmp eq ptr %3, %2
  br i1 %109, label %114, label %110

110:                                              ; preds = %106, %110
  %111 = phi ptr [ %112, %110 ], [ %108, %106 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE10doPushBackERKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %111)
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %111, i64 1
  %113 = icmp eq ptr %112, %17
  br i1 %113, label %114, label %110, !llvm.loop !639

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
  %125 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %124, i64 -1
  %126 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %123, i64 -1
  %127 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEaSERKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %126, ptr noundef nonnull align 8 dereferenceable(32) %125)
  %128 = add nsw i64 %122, -1
  %129 = icmp sgt i64 %122, 1
  br i1 %129, label %121, label %119, !llvm.loop !634

130:                                              ; preds = %119, %130
  %131 = phi i64 [ %137, %130 ], [ %9, %119 ]
  %132 = phi ptr [ %136, %130 ], [ %1, %119 ]
  %133 = phi ptr [ %135, %130 ], [ %2, %119 ]
  %134 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEaSERKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %132, ptr noundef nonnull align 8 dereferenceable(32) %133)
  %135 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %133, i64 1
  %136 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %132, i64 1
  %137 = add nsw i64 %131, -1
  %138 = icmp sgt i64 %131, 1
  br i1 %138, label %130, label %139, !llvm.loop !638

139:                                              ; preds = %97, %130, %30, %94, %119, %24, %65, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE10doPushBackERKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.6", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !315
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !481
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !319
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %11, i64 %5
  %13 = load ptr, ptr %0, align 8, !tbaa !486
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEC2ERKSJ_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 0)
  %14 = load i64, ptr %4, align 8, !tbaa !315
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !315
  br label %38

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %22 = load ptr, ptr %0, align 8, !tbaa !486
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEEC2ERKSM_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE10doPushBackERKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %23 unwind label %36

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !486
  %25 = load i64, ptr %4, align 8, !tbaa !315
  %26 = load i64, ptr %6, align 8, !tbaa !481
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !319
  %29 = load ptr, ptr %3, align 8, !tbaa !486
  store ptr %29, ptr %0, align 8, !tbaa !486
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !315
  store i64 %31, ptr %4, align 8, !tbaa !315
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !481
  store i64 %33, ptr %6, align 8, !tbaa !481
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !319
  store ptr %35, ptr %27, align 8, !tbaa !319
  store ptr %24, ptr %3, align 8, !tbaa !486
  store i64 %25, ptr %30, align 8, !tbaa !315
  store i64 %26, ptr %32, align 8, !tbaa !481
  store ptr %28, ptr %34, align 8, !tbaa !319
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %38

36:                                               ; preds = %16
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  resume { ptr, i32 } %37

38:                                               ; preds = %23, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !296 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.6", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !486
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEEC2ERKSM_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !486
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !315
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !481
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !319
  %12 = load ptr, ptr %3, align 8, !tbaa !486
  store ptr %12, ptr %0, align 8, !tbaa !486
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !315
  store i64 %14, ptr %6, align 8, !tbaa !315
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !481
  store i64 %16, ptr %8, align 8, !tbaa !481
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !319
  store ptr %18, ptr %10, align 8, !tbaa !319
  store ptr %5, ptr %3, align 8, !tbaa !486
  store i64 %7, ptr %13, align 8, !tbaa !315
  store i64 %9, ptr %15, align 8, !tbaa !481
  store ptr %11, ptr %17, align 8, !tbaa !319
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEEC2ERKSM_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !296 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.6", align 8
  store ptr %2, ptr %0, align 8, !tbaa !486
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !315
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %37, label %12, !prof !302

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !486
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !315
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !481
  %16 = shl i64 %13, 5
  %17 = load ptr, ptr %2, align 8, !tbaa !138
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !319
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !319
  %24 = load i64, ptr %9, align 8, !tbaa !315
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE6insertEPSJ_PKSJ_SP_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %35

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !486
  %28 = load i64, ptr %6, align 8, !tbaa !315
  %29 = load i64, ptr %7, align 8, !tbaa !481
  %30 = load ptr, ptr %8, align 8, !tbaa !319
  %31 = load ptr, ptr %5, align 8, !tbaa !486
  store ptr %31, ptr %0, align 8, !tbaa !486
  %32 = load i64, ptr %14, align 8, !tbaa !315
  store i64 %32, ptr %6, align 8, !tbaa !315
  %33 = load i64, ptr %15, align 8, !tbaa !481
  store i64 %33, ptr %7, align 8, !tbaa !481
  %34 = load ptr, ptr %21, align 8, !tbaa !319
  store ptr %34, ptr %8, align 8, !tbaa !319
  store ptr %27, ptr %5, align 8, !tbaa !486
  store i64 %28, ptr %14, align 8, !tbaa !315
  store i64 %29, ptr %15, align 8, !tbaa !481
  store ptr %30, ptr %21, align 8, !tbaa !319
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %45

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %36

37:                                               ; preds = %4
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %45, label %39, !prof !240

39:                                               ; preds = %37
  %40 = shl i64 %3, 5
  %41 = load ptr, ptr %2, align 8, !tbaa !138
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40), !prof !337
  store ptr %44, ptr %8, align 8, !tbaa !319
  store i64 %3, ptr %7, align 8, !tbaa !481
  br label %45

45:                                               ; preds = %37, %39, %26
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEC2ERKSJ_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !640 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.18", align 8
  store ptr %2, ptr %0, align 8, !tbaa !509
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !320
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !641

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !509
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !320
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !507
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !138
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !642
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !323
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !323
  %24 = load i64, ptr %9, align 8, !tbaa !320
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.8", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !123

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !509
  %28 = load i64, ptr %6, align 8, !tbaa !320
  %29 = load i64, ptr %7, align 8, !tbaa !507
  %30 = load ptr, ptr %8, align 8, !tbaa !323
  %31 = load ptr, ptr %5, align 8, !tbaa !509
  store ptr %31, ptr %0, align 8, !tbaa !509
  %32 = load i64, ptr %14, align 8, !tbaa !320
  store i64 %32, ptr %6, align 8, !tbaa !320
  %33 = load i64, ptr %15, align 8, !tbaa !507
  store i64 %33, ptr %7, align 8, !tbaa !507
  %34 = load ptr, ptr %21, align 8, !tbaa !323
  store ptr %34, ptr %8, align 8, !tbaa !323
  store ptr %27, ptr %5, align 8, !tbaa !509
  store i64 %28, ptr %14, align 8, !tbaa !320
  store i64 %29, ptr %15, align 8, !tbaa !507
  store ptr %30, ptr %21, align 8, !tbaa !323
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !123

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !138
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #20
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !507
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !323
  %50 = load ptr, ptr %5, align 8, !tbaa !509
  %51 = load ptr, ptr %50, align 8, !tbaa !138
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #20
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !643

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !138
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !644
  store ptr %65, ptr %8, align 8, !tbaa !323
  store i64 %3, ptr %7, align 8, !tbaa !507
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.18", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %161, label %11, !prof !645

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !320
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !323
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.8", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !507
  br i1 %18, label %21, label %39, !prof !123

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !645

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %161, label %26, !prof !182

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !323
  %28 = load i64, ptr %12, align 8, !tbaa !320
  %29 = getelementptr %"struct.xalanc_1_10::XalanListIteratorBase.8", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !255
  store ptr %34, ptr %32, align 8, !tbaa !255
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.8", ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.8", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %160, label %30, !prof !607, !llvm.loop !646

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %42 = load ptr, ptr %0, align 8, !tbaa !509
  store ptr %42, ptr %5, align 8, !tbaa !509
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !320
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !507
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !138
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !323
  %51 = load i64, ptr %43, align 8, !tbaa !320
  %52 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.8", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !323
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !323
  %56 = load i64, ptr %43, align 8, !tbaa !320
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.8", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !323
  %60 = load i64, ptr %43, align 8, !tbaa !320
  %61 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.8", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !323
  %63 = load i64, ptr %12, align 8, !tbaa !320
  %64 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.8", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !509
  %67 = load i64, ptr %12, align 8, !tbaa !320
  %68 = load i64, ptr %19, align 8, !tbaa !507
  %69 = load ptr, ptr %15, align 8, !tbaa !323
  %70 = load ptr, ptr %5, align 8, !tbaa !509
  store ptr %70, ptr %0, align 8, !tbaa !509
  %71 = load i64, ptr %43, align 8, !tbaa !320
  store i64 %71, ptr %12, align 8, !tbaa !320
  %72 = load i64, ptr %44, align 8, !tbaa !507
  store i64 %72, ptr %19, align 8, !tbaa !507
  %73 = load ptr, ptr %50, align 8, !tbaa !323
  store ptr %73, ptr %15, align 8, !tbaa !323
  store ptr %66, ptr %5, align 8, !tbaa !509
  store i64 %67, ptr %43, align 8, !tbaa !320
  store i64 %68, ptr %44, align 8, !tbaa !507
  store ptr %69, ptr %50, align 8, !tbaa !323
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !138
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #20
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %161

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !507
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !323
  %89 = load ptr, ptr %5, align 8, !tbaa !509
  %90 = load ptr, ptr %89, align 8, !tbaa !138
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #20
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.8", ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !647

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.8", ptr %112, i64 1
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
  %122 = load ptr, ptr %121, align 8, !tbaa !255
  store ptr %122, ptr %120, align 8, !tbaa !255
  %123 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.8", ptr %121, i64 1
  %124 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.8", ptr %120, i64 1
  %125 = add nsw i64 %119, -1
  %126 = icmp sgt i64 %119, 1
  br i1 %126, label %118, label %161, !llvm.loop !649

127:                                              ; preds = %97
  %128 = sub nsw i64 0, %9
  %129 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.8", ptr %17, i64 %128
  %130 = icmp eq ptr %3, %2
  br i1 %130, label %135, label %131

131:                                              ; preds = %127, %131
  %132 = phi ptr [ %133, %131 ], [ %129, %127 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %132)
  %133 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.8", ptr %132, i64 1
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
  %146 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.8", ptr %145, i64 -1
  %147 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.8", ptr %144, i64 -1
  %148 = load ptr, ptr %146, align 8, !tbaa !255
  store ptr %148, ptr %147, align 8, !tbaa !255
  %149 = add nsw i64 %143, -1
  %150 = icmp sgt i64 %143, 1
  br i1 %150, label %142, label %140, !llvm.loop !651

151:                                              ; preds = %140, %151
  %152 = phi i64 [ %158, %151 ], [ %9, %140 ]
  %153 = phi ptr [ %157, %151 ], [ %1, %140 ]
  %154 = phi ptr [ %156, %151 ], [ %2, %140 ]
  %155 = load ptr, ptr %154, align 8, !tbaa !255
  store ptr %155, ptr %153, align 8, !tbaa !255
  %156 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.8", ptr %154, i64 1
  %157 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.8", ptr %153, i64 1
  %158 = add nsw i64 %152, -1
  %159 = icmp sgt i64 %152, 1
  br i1 %159, label %151, label %161, !llvm.loop !649

160:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !320
  br label %161

161:                                              ; preds = %118, %151, %115, %140, %24, %160, %82, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !230 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.18", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !320
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !507
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !652

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !323
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.8", ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !255
  store ptr %13, ptr %12, align 8, !tbaa !255
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !320
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !653
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %21 = load ptr, ptr %0, align 8, !tbaa !509
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEC2ERKSJ_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44, !prof !268

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !509
  %24 = load i64, ptr %4, align 8, !tbaa !320
  %25 = load i64, ptr %6, align 8, !tbaa !507
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !323
  %28 = load ptr, ptr %3, align 8, !tbaa !509
  store ptr %28, ptr %0, align 8, !tbaa !509
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !320
  store i64 %30, ptr %4, align 8, !tbaa !320
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !507
  store i64 %32, ptr %6, align 8, !tbaa !507
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !323
  store ptr %34, ptr %26, align 8, !tbaa !323
  store ptr %23, ptr %3, align 8, !tbaa !509
  store i64 %24, ptr %29, align 8, !tbaa !320
  store i64 %25, ptr %31, align 8, !tbaa !507
  store ptr %27, ptr %33, align 8, !tbaa !323
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36, !prof !653

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !138
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40, !prof !654

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #20
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !507
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !323
  %52 = load ptr, ptr %3, align 8, !tbaa !509
  %53 = load ptr, ptr %52, align 8, !tbaa !138
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #20
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.18", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !509
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEC2ERKSJ_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !509
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !320
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !507
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !323
  %12 = load ptr, ptr %3, align 8, !tbaa !509
  store ptr %12, ptr %0, align 8, !tbaa !509
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !320
  store i64 %14, ptr %6, align 8, !tbaa !320
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !507
  store i64 %16, ptr %8, align 8, !tbaa !507
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !323
  store ptr %18, ptr %10, align 8, !tbaa !323
  store ptr %5, ptr %3, align 8, !tbaa !509
  store i64 %7, ptr %13, align 8, !tbaa !320
  store i64 %9, ptr %15, align 8, !tbaa !507
  store ptr %11, ptr %17, align 8, !tbaa !323
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !138
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #20
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEaSERKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.18", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %73, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !507
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !320
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %12 = load ptr, ptr %0, align 8, !tbaa !509
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEC2ERKSJ_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !509
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !320
  %16 = load i64, ptr %6, align 8, !tbaa !507
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !323
  %19 = load ptr, ptr %3, align 8, !tbaa !509
  store ptr %19, ptr %0, align 8, !tbaa !509
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !320
  store i64 %21, ptr %14, align 8, !tbaa !320
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !507
  store i64 %23, ptr %6, align 8, !tbaa !507
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !323
  store ptr %25, ptr %17, align 8, !tbaa !323
  store ptr %13, ptr %3, align 8, !tbaa !509
  store i64 %15, ptr %20, align 8, !tbaa !320
  store i64 %16, ptr %22, align 8, !tbaa !507
  store ptr %18, ptr %24, align 8, !tbaa !323
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !138
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #20
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %73

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !323
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.8", ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !320
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53

44:                                               ; preds = %42
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.8", ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !323
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.8", ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !320
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !320
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !323
  %56 = ptrtoint ptr %54 to i64
  %57 = ptrtoint ptr %55 to i64
  %58 = sub i64 %56, %57
  %59 = ashr exact i64 %58, 3
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %53
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !323
  br label %64

64:                                               ; preds = %61, %64
  %65 = phi i64 [ %71, %64 ], [ %59, %61 ]
  %66 = phi ptr [ %70, %64 ], [ %63, %61 ]
  %67 = phi ptr [ %69, %64 ], [ %55, %61 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !255
  store ptr %68, ptr %66, align 8, !tbaa !255
  %69 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.8", ptr %67, i64 1
  %70 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.8", ptr %66, i64 1
  %71 = add nsw i64 %65, -1
  %72 = icmp sgt i64 %65, 1
  br i1 %72, label %64, label %73, !llvm.loop !649

73:                                               ; preds = %64, %53, %34, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE6insertERKS1_RKS4_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 !prof !161 {
  %4 = alloca %"struct.xalanc_1_10::XalanMapIterator.7", align 8
  %5 = alloca %"struct.xalanc_1_10::XalanMapIterator.7", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE4findERKS1_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.7") align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %6 = load ptr, ptr %4, align 8, !tbaa !255
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 6, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !242, !noalias !655
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !250, !noalias !655
  %13 = load ptr, ptr %12, align 8, !tbaa !138, !noalias !655
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !655
  %16 = call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 32), !noalias !655
  store ptr %16, ptr %7, align 8, !tbaa !242, !noalias !655
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !251, !noalias !655
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !254, !noalias !655
  br label %19

19:                                               ; preds = %3, %10
  %20 = load ptr, ptr %7, align 8, !tbaa !242, !noalias !655
  %21 = icmp eq ptr %20, %6
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PKS4_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.7") align 8 %5, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  br label %23

23:                                               ; preds = %22, %19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PKS4_(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanMapIterator.7") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !303 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.18", align 8
  %6 = alloca %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry", align 8
  %7 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.8", align 8
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %1, i64 0, i32 8, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !315
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %49, !prof !660

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %1, i64 0, i32 8
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %1, i64 0, i32 8, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !319
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %1, i64 0, i32 4
  %16 = load i64, ptr %15, align 8, !tbaa !558
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !471
  store ptr %18, ptr %5, align 8, !tbaa !509
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %5, i64 0, i32 1
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %5, i64 0, i32 2
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %5, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE6insertEPSJ_mRKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %14, i64 noundef %16, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %22 unwind label %35, !prof !302

22:                                               ; preds = %11
  %23 = load i64, ptr %20, align 8, !tbaa !507
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %34, label %25, !prof !302

25:                                               ; preds = %22
  %26 = load ptr, ptr %21, align 8, !tbaa !323
  %27 = load ptr, ptr %5, align 8, !tbaa !509
  %28 = load ptr, ptr %27, align 8, !tbaa !138
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %26)
          to label %34 unwind label %31

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #20
  unreachable

34:                                               ; preds = %22, %25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %49

35:                                               ; preds = %11
  %36 = landingpad { ptr, i32 }
          cleanup
  %37 = load i64, ptr %20, align 8, !tbaa !507
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %21, align 8, !tbaa !323
  %41 = load ptr, ptr %5, align 8, !tbaa !509
  %42 = load ptr, ptr %41, align 8, !tbaa !138
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef %40)
          to label %48 unwind label %45

45:                                               ; preds = %39
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  call void @__clang_call_terminate(ptr %47) #20
  unreachable

48:                                               ; preds = %35, %39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %36

49:                                               ; preds = %34, %4
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %1, i64 0, i32 3
  %51 = load float, ptr %50, align 8, !tbaa !557
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %1, i64 0, i32 5
  %53 = load i64, ptr %52, align 8, !tbaa !311
  %54 = uitofp i64 %53 to float
  %55 = fmul float %51, %54
  %56 = fptoui float %55 to i64
  %57 = load i64, ptr %8, align 8, !tbaa !315
  %58 = icmp ult i64 %57, %56
  br i1 %58, label %59, label %60, !prof !309

59:                                               ; preds = %49
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(136) %1)
  br label %60

60:                                               ; preds = %59, %49
  %61 = load i64, ptr %8, align 8, !tbaa !315
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !271
  %64 = icmp eq i64 %63, 0
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8
  %67 = select i1 %64, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %66, !prof !309
  %68 = load i16, ptr %67, align 2, !tbaa !273
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %82, label %70, !prof !661

70:                                               ; preds = %60, %70
  %71 = phi i16 [ %78, %70 ], [ %68, %60 ]
  %72 = phi i64 [ %76, %70 ], [ 0, %60 ]
  %73 = phi ptr [ %77, %70 ], [ %67, %60 ]
  %74 = mul i64 %72, 5
  %75 = zext i16 %71 to i64
  %76 = add i64 %74, %75
  %77 = getelementptr inbounds i16, ptr %73, i64 1
  %78 = load i16, ptr %77, align 2, !tbaa !273
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %70, !prof !662, !llvm.loop !277

80:                                               ; preds = %70
  %81 = add i64 %76, 1
  br label %82

82:                                               ; preds = %80, %60
  %83 = phi i64 [ 1, %60 ], [ %81, %80 ]
  %84 = urem i64 %83, %61
  %85 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %1, i64 0, i32 7
  %86 = call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %85)
  br i1 %86, label %87, label %95, !prof !268

87:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %1, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !471
  %90 = load ptr, ptr %89, align 8, !tbaa !138
  %91 = getelementptr inbounds ptr, ptr %90, i64 2
  %92 = load ptr, ptr %91, align 8
  %93 = call noundef ptr %92(ptr noundef nonnull align 8 dereferenceable(8) %89, i64 noundef 48), !prof !663
  store ptr %93, ptr %6, align 8, !tbaa !260
  %94 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry", ptr %6, i64 0, i32 1
  store i8 0, ptr %94, align 8, !tbaa !324
  call void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE9push_backERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %85, ptr noundef nonnull align 8 dereferenceable(9) %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  br label %95

95:                                               ; preds = %87, %82
  %96 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %1, i64 0, i32 7, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !242, !noalias !664
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %107, !prof !309

99:                                               ; preds = %95
  %100 = load ptr, ptr %85, align 8, !tbaa !250, !noalias !664
  %101 = load ptr, ptr %100, align 8, !tbaa !138, !noalias !664
  %102 = getelementptr inbounds ptr, ptr %101, i64 2
  %103 = load ptr, ptr %102, align 8, !noalias !664
  %104 = call noundef ptr %103(ptr noundef nonnull align 8 dereferenceable(8) %100, i64 noundef 32), !noalias !664
  store ptr %104, ptr %96, align 8, !tbaa !242, !noalias !664
  %105 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %104, i64 0, i32 2
  store ptr %104, ptr %105, align 8, !tbaa !251, !noalias !664
  %106 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %104, i64 0, i32 1
  store ptr %104, ptr %106, align 8, !tbaa !254, !noalias !664
  br label %107

107:                                              ; preds = %95, %99
  %108 = load ptr, ptr %96, align 8, !tbaa !242, !noalias !664
  %109 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !254, !noalias !667
  %111 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry", ptr %110, i64 0, i32 1
  store i8 0, ptr %111, align 8, !tbaa !324
  %112 = load ptr, ptr %110, align 8, !tbaa !260
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %1, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !471
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %112, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %114, i32 noundef 0, i32 noundef -1)
  %115 = icmp eq ptr %3, null
  br i1 %115, label %120, label %116, !prof !268

116:                                              ; preds = %107
  %117 = load ptr, ptr %110, align 8, !tbaa !260
  %118 = getelementptr inbounds %"struct.std::pair.9", ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %3, align 8, !tbaa !169
  store ptr %119, ptr %118, align 8, !tbaa !169
  br label %120

120:                                              ; preds = %107, %116
  %121 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %1, i64 0, i32 6
  %122 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %1, i64 0, i32 6, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !242, !noalias !670
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %133, !prof !309

125:                                              ; preds = %120
  %126 = load ptr, ptr %121, align 8, !tbaa !250, !noalias !670
  %127 = load ptr, ptr %126, align 8, !tbaa !138, !noalias !670
  %128 = getelementptr inbounds ptr, ptr %127, i64 2
  %129 = load ptr, ptr %128, align 8, !noalias !670
  %130 = call noundef ptr %129(ptr noundef nonnull align 8 dereferenceable(8) %126, i64 noundef 32), !noalias !670
  store ptr %130, ptr %122, align 8, !tbaa !242, !noalias !670
  %131 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %130, i64 0, i32 2
  store ptr %130, ptr %131, align 8, !tbaa !251, !noalias !670
  %132 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %130, i64 0, i32 1
  store ptr %130, ptr %132, align 8, !tbaa !254, !noalias !670
  br label %133

133:                                              ; preds = %120, %125
  %134 = load ptr, ptr %122, align 8, !tbaa !242, !noalias !670
  %135 = load ptr, ptr %96, align 8, !tbaa !242, !noalias !673
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %145, !prof !309

137:                                              ; preds = %133
  %138 = load ptr, ptr %85, align 8, !tbaa !250, !noalias !673
  %139 = load ptr, ptr %138, align 8, !tbaa !138, !noalias !673
  %140 = getelementptr inbounds ptr, ptr %139, i64 2
  %141 = load ptr, ptr %140, align 8, !noalias !673
  %142 = call noundef ptr %141(ptr noundef nonnull align 8 dereferenceable(8) %138, i64 noundef 32), !noalias !673
  store ptr %142, ptr %96, align 8, !tbaa !242, !noalias !673
  %143 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %142, i64 0, i32 2
  store ptr %142, ptr %143, align 8, !tbaa !251, !noalias !673
  %144 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %142, i64 0, i32 1
  store ptr %142, ptr %144, align 8, !tbaa !254, !noalias !673
  br label %145

145:                                              ; preds = %133, %137
  %146 = load ptr, ptr %96, align 8, !tbaa !242, !noalias !673
  %147 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %146, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !254, !noalias !676
  %149 = icmp eq ptr %134, %148
  br i1 %149, label %162, label %150, !prof !309

150:                                              ; preds = %145
  %151 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %148, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !251
  %153 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %148, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !254
  %155 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %154, i64 0, i32 2
  store ptr %152, ptr %155, align 8, !tbaa !251
  %156 = load ptr, ptr %151, align 8, !tbaa !251
  %157 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %156, i64 0, i32 1
  store ptr %154, ptr %157, align 8, !tbaa !254
  %158 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %134, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !254
  store ptr %159, ptr %153, align 8, !tbaa !254
  store ptr %134, ptr %151, align 8, !tbaa !251
  %160 = load ptr, ptr %158, align 8, !tbaa !254
  %161 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %160, i64 0, i32 2
  store ptr %148, ptr %161, align 8, !tbaa !251
  store ptr %148, ptr %158, align 8, !tbaa !254
  br label %162

162:                                              ; preds = %145, %150
  %163 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %1, i64 0, i32 8, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !319
  %165 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %164, i64 %84
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %166 = load ptr, ptr %122, align 8, !tbaa !242, !noalias !679
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %176, !prof !309

168:                                              ; preds = %162
  %169 = load ptr, ptr %121, align 8, !tbaa !250, !noalias !679
  %170 = load ptr, ptr %169, align 8, !tbaa !138, !noalias !679
  %171 = getelementptr inbounds ptr, ptr %170, i64 2
  %172 = load ptr, ptr %171, align 8, !noalias !679
  %173 = call noundef ptr %172(ptr noundef nonnull align 8 dereferenceable(8) %169, i64 noundef 32), !noalias !679
  store ptr %173, ptr %122, align 8, !tbaa !242, !noalias !679
  %174 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %173, i64 0, i32 2
  store ptr %173, ptr %174, align 8, !tbaa !251, !noalias !679
  %175 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %173, i64 0, i32 1
  store ptr %173, ptr %175, align 8, !tbaa !254, !noalias !679
  br label %176

176:                                              ; preds = %162, %168
  %177 = load ptr, ptr %122, align 8, !tbaa !242, !noalias !679
  call void @llvm.experimental.noalias.scope.decl(metadata !682)
  %178 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %177, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !254, !noalias !682
  store ptr %179, ptr %7, align 8, !tbaa !255, !alias.scope !682
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %165, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  %180 = load i64, ptr %52, align 8, !tbaa !311
  %181 = add i64 %180, 1
  store i64 %181, ptr %52, align 8, !tbaa !311
  %182 = load ptr, ptr %122, align 8, !tbaa !242, !noalias !685
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %192, !prof !309

184:                                              ; preds = %176
  %185 = load ptr, ptr %121, align 8, !tbaa !250, !noalias !685
  %186 = load ptr, ptr %185, align 8, !tbaa !138, !noalias !685
  %187 = getelementptr inbounds ptr, ptr %186, i64 2
  %188 = load ptr, ptr %187, align 8, !noalias !685
  %189 = call noundef ptr %188(ptr noundef nonnull align 8 dereferenceable(8) %185, i64 noundef 32), !noalias !685
  store ptr %189, ptr %122, align 8, !tbaa !242, !noalias !685
  %190 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %189, i64 0, i32 2
  store ptr %189, ptr %190, align 8, !tbaa !251, !noalias !685
  %191 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %189, i64 0, i32 1
  store ptr %189, ptr %191, align 8, !tbaa !254, !noalias !685
  br label %192

192:                                              ; preds = %176, %184
  %193 = load ptr, ptr %122, align 8, !tbaa !242, !noalias !685
  %194 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %193, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !254, !noalias !688
  store ptr %195, ptr %0, align 8, !tbaa !255
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %2 = alloca %"class.xalanc_1_10::XalanVector.6", align 8
  %3 = alloca %"class.xalanc_1_10::XalanVector.18", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.8", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !311
  %7 = uitofp i64 %6 to double
  %8 = fmul double %7, 1.600000e+00
  %9 = fptoui double %8 to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !471
  store ptr %11, ptr %3, align 8, !tbaa !509
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %3, i64 0, i32 1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %3, i64 0, i32 2
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %3, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEEC2EmRKSJ_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %9, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %15 unwind label %89

15:                                               ; preds = %1
  %16 = load i64, ptr %13, align 8, !tbaa !507
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %14, align 8, !tbaa !323
  %20 = load ptr, ptr %3, align 8, !tbaa !509
  %21 = load ptr, ptr %20, align 8, !tbaa !138
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %19)
          to label %27 unwind label %24

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #20
  unreachable

27:                                               ; preds = %15, %18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 6
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 6, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !242, !noalias !691
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load ptr, ptr %28, align 8, !tbaa !250, !noalias !691
  %34 = load ptr, ptr %33, align 8, !tbaa !138, !noalias !691
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8, !noalias !691
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 32)
          to label %38 unwind label %103

38:                                               ; preds = %32
  store ptr %37, ptr %29, align 8, !tbaa !242, !noalias !691
  %39 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %37, i64 0, i32 2
  store ptr %37, ptr %39, align 8, !tbaa !251, !noalias !691
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %37, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !254, !noalias !691
  br label %41

41:                                               ; preds = %27, %38
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %2, i64 0, i32 3
  br label %43

43:                                               ; preds = %83, %41
  %44 = phi ptr [ %29, %41 ], [ %4, %83 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !169, !noalias !145
  %46 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !251, !noalias !145
  store ptr %47, ptr %4, align 8, !tbaa !255
  %48 = load ptr, ptr %29, align 8, !tbaa !242, !noalias !694
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load ptr, ptr %28, align 8, !tbaa !250, !noalias !694
  %52 = load ptr, ptr %51, align 8, !tbaa !138, !noalias !694
  %53 = getelementptr inbounds ptr, ptr %52, i64 2
  %54 = load ptr, ptr %53, align 8, !noalias !694
  %55 = invoke noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %51, i64 noundef 32)
          to label %56 unwind label %105

56:                                               ; preds = %50
  store ptr %55, ptr %29, align 8, !tbaa !242, !noalias !694
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %55, i64 0, i32 2
  store ptr %55, ptr %57, align 8, !tbaa !251, !noalias !694
  %58 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %55, i64 0, i32 1
  store ptr %55, ptr %58, align 8, !tbaa !254, !noalias !694
  br label %59

59:                                               ; preds = %43, %56
  %60 = load ptr, ptr %29, align 8, !tbaa !242, !noalias !694
  %61 = load ptr, ptr %4, align 8, !tbaa !255
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %109, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %61, align 8, !tbaa !260
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %64, i64 0, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !271
  %67 = icmp eq i64 %66, 0
  %68 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %64, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8
  %70 = select i1 %67, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %69
  %71 = load i16, ptr %70, align 2, !tbaa !273
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
  %81 = load i16, ptr %80, align 2, !tbaa !273
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %83, label %73, !llvm.loop !277

83:                                               ; preds = %73, %63
  %84 = phi i64 [ 0, %63 ], [ %79, %73 ]
  %85 = add i64 %84, 1
  %86 = urem i64 %85, %9
  %87 = load ptr, ptr %42, align 8, !tbaa !319
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %87, i64 %86
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %88, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %43 unwind label %107, !llvm.loop !697

89:                                               ; preds = %1
  %90 = landingpad { ptr, i32 }
          cleanup
  %91 = load i64, ptr %13, align 8, !tbaa !507
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr %14, align 8, !tbaa !323
  %95 = load ptr, ptr %3, align 8, !tbaa !509
  %96 = load ptr, ptr %95, align 8, !tbaa !138
  %97 = getelementptr inbounds ptr, ptr %96, i64 3
  %98 = load ptr, ptr %97, align 8
  invoke void %98(ptr noundef nonnull align 8 dereferenceable(8) %95, ptr noundef %94)
          to label %102 unwind label %99

99:                                               ; preds = %93
  %100 = landingpad { ptr, i32 }
          catch ptr null
  %101 = extractvalue { ptr, i32 } %100, 0
  call void @__clang_call_terminate(ptr %101) #20
  unreachable

102:                                              ; preds = %89, %93
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
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
  %110 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 8
  %111 = load ptr, ptr %110, align 8, !tbaa !486
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 8, i32 1
  %113 = load i64, ptr %112, align 8, !tbaa !315
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 8, i32 2
  %115 = load i64, ptr %114, align 8, !tbaa !481
  %116 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 8, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !319
  %118 = load ptr, ptr %2, align 8, !tbaa !486
  store ptr %118, ptr %110, align 8, !tbaa !486
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %2, i64 0, i32 1
  %120 = load i64, ptr %119, align 8, !tbaa !315
  store i64 %120, ptr %112, align 8, !tbaa !315
  %121 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %2, i64 0, i32 2
  %122 = load i64, ptr %121, align 8, !tbaa !481
  store i64 %122, ptr %114, align 8, !tbaa !481
  %123 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %2, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !319
  store ptr %124, ptr %116, align 8, !tbaa !319
  store ptr %111, ptr %2, align 8, !tbaa !486
  store i64 %113, ptr %119, align 8, !tbaa !315
  store i64 %115, ptr %121, align 8, !tbaa !481
  store ptr %117, ptr %123, align 8, !tbaa !319
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #19
  ret void

125:                                              ; preds = %107, %105, %103
  %126 = phi { ptr, i32 } [ %106, %105 ], [ %104, %103 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  br label %127

127:                                              ; preds = %125, %102
  %128 = phi { ptr, i32 } [ %126, %125 ], [ %90, %102 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #19
  resume { ptr, i32 } %128
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !303 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.5", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !242
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !660

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !250
  %7 = load ptr, ptr %6, align 8, !tbaa !138
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 32), !prof !337
  store ptr %10, ptr %2, align 8, !tbaa !242
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !251
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !254
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !242
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !251
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %26, !prof !309

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !250
  %20 = load ptr, ptr %19, align 8, !tbaa !138
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 32)
  store ptr %23, ptr %2, align 8, !tbaa !242
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %23, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !251
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %23, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !254
  br label %26

26:                                               ; preds = %13, %18
  %27 = load ptr, ptr %2, align 8, !tbaa !242
  %28 = icmp eq ptr %16, %27
  ret i1 %28
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE9push_backERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #5 comdat align 2 !prof !303 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList.5", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !242, !noalias !698
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !309

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !250, !noalias !698
  %8 = load ptr, ptr %7, align 8, !tbaa !138, !noalias !698
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !698
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 32), !noalias !698
  store ptr %11, ptr %3, align 8, !tbaa !242, !noalias !698
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !251, !noalias !698
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !254, !noalias !698
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !242, !noalias !698
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanList.5", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !500
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19, !prof !268

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !251
  br label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %0, align 8, !tbaa !250
  %24 = load ptr, ptr %23, align 8, !tbaa !138
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 32), !prof !663
  store ptr %27, ptr %16, align 8, !tbaa !500
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi ptr [ %17, %19 ], [ %27, %22 ]
  %30 = phi ptr [ %21, %19 ], [ null, %22 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !596
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %29, i64 0, i32 1
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %15, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !254
  store ptr %33, ptr %31, align 8, !tbaa !169
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %29, i64 0, i32 2
  store ptr %15, ptr %34, align 8, !tbaa !169
  %35 = load ptr, ptr %32, align 8, !tbaa !254
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry>::Node", ptr %35, i64 0, i32 2
  store ptr %29, ptr %36, align 8, !tbaa !251
  store ptr %29, ptr %32, align 8, !tbaa !254
  store ptr %30, ptr %16, align 8, !tbaa !500
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE14compactBucketsEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %2 = alloca %"class.xalanc_1_10::XalanVector.18", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 8, i32 3
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 8, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !315
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !tbaa !319
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.4", ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %2, i64 0, i32 1
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %2, i64 0, i32 2
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %2, i64 0, i32 3
  br label %14

13:                                               ; preds = %72, %1
  ret void

14:                                               ; preds = %7, %72
  %15 = phi ptr [ %8, %7 ], [ %73, %72 ]
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !323
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %15, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !320
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %45, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.8", ptr %17, i64 %19
  br label %23

23:                                               ; preds = %21, %40
  %24 = phi ptr [ %43, %40 ], [ %22, %21 ]
  %25 = phi ptr [ %42, %40 ], [ %17, %21 ]
  %26 = phi i64 [ %41, %40 ], [ %19, %21 ]
  %27 = load ptr, ptr %25, align 8, !tbaa !255
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::Function *>::Entry", ptr %27, i64 0, i32 1
  %29 = load i8, ptr %28, align 8, !tbaa !324, !range !283, !noundef !145
  %30 = icmp eq i8 %29, 0
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.8", ptr %25, i64 1
  br i1 %30, label %40, label %32

32:                                               ; preds = %23
  %33 = ptrtoint ptr %24 to i64
  %34 = ptrtoint ptr %31 to i64
  %35 = sub i64 %33, %34
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %25, ptr nonnull align 8 %31, i64 %35, i1 false), !tbaa !255
  br label %38

38:                                               ; preds = %32, %37
  %39 = add i64 %26, -1
  store i64 %39, ptr %18, align 8, !tbaa !320
  br label %40

40:                                               ; preds = %23, %38
  %41 = phi i64 [ %39, %38 ], [ %26, %23 ]
  %42 = phi ptr [ %25, %38 ], [ %31, %23 ]
  %43 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.8", ptr %17, i64 %41
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %45, label %23, !llvm.loop !701

45:                                               ; preds = %40, %14
  %46 = phi i64 [ %19, %14 ], [ %41, %40 ]
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %15, i64 0, i32 2
  %48 = load i64, ptr %47, align 8, !tbaa !507
  %49 = sub i64 %48, %46
  %50 = icmp ugt i64 %49, %46
  br i1 %50, label %51, label %72

51:                                               ; preds = %45
  %52 = icmp eq i64 %46, 0
  %53 = select i1 %52, i64 5, i64 %49
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #19
  %54 = load ptr, ptr %9, align 8, !tbaa !471
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEC2ERKSJ_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %54, i64 noundef %53)
  %55 = load ptr, ptr %15, align 8, !tbaa !509
  %56 = load i64, ptr %18, align 8, !tbaa !320
  %57 = load i64, ptr %47, align 8, !tbaa !507
  %58 = load ptr, ptr %16, align 8, !tbaa !323
  %59 = load ptr, ptr %2, align 8, !tbaa !509
  store ptr %59, ptr %15, align 8, !tbaa !509
  %60 = load i64, ptr %10, align 8, !tbaa !320
  store i64 %60, ptr %18, align 8, !tbaa !320
  %61 = load i64, ptr %11, align 8, !tbaa !507
  store i64 %61, ptr %47, align 8, !tbaa !507
  %62 = load ptr, ptr %12, align 8, !tbaa !323
  store ptr %62, ptr %16, align 8, !tbaa !323
  store ptr %55, ptr %2, align 8, !tbaa !509
  store i64 %56, ptr %10, align 8, !tbaa !320
  store i64 %57, ptr %11, align 8, !tbaa !507
  store ptr %58, ptr %12, align 8, !tbaa !323
  %63 = icmp eq i64 %57, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %51
  %65 = load ptr, ptr %55, align 8, !tbaa !138
  %66 = getelementptr inbounds ptr, ptr %65, i64 3
  %67 = load ptr, ptr %66, align 8
  invoke void %67(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef %58)
          to label %71 unwind label %68

68:                                               ; preds = %64
  %69 = landingpad { ptr, i32 }
          catch ptr null
  %70 = extractvalue { ptr, i32 } %69, 0
  call void @__clang_call_terminate(ptr %70) #20
  unreachable

71:                                               ; preds = %51, %64
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #19
  br label %72

72:                                               ; preds = %71, %45
  %73 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %15, i64 1
  %74 = load ptr, ptr %3, align 8, !tbaa !319
  %75 = load i64, ptr %4, align 8, !tbaa !315
  %76 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %74, i64 %75
  %77 = icmp eq ptr %73, %76
  br i1 %77, label %13, label %14, !llvm.loop !702
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE4findERKS1_(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanMapIterator.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #5 comdat align 2 !prof !162 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !194
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %59, label %7, !prof !198

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 8, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !199
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !271
  %12 = icmp eq i64 %11, 0
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = select i1 %12, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %14
  %16 = load i16, ptr %15, align 2, !tbaa !273
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
  %26 = load i16, ptr %25, align 2, !tbaa !273
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %18, !llvm.loop !277

28:                                               ; preds = %18
  %29 = add i64 %24, 1
  br label %30

30:                                               ; preds = %28, %7
  %31 = phi i64 [ 1, %7 ], [ %29, %28 ]
  %32 = urem i64 %31, %9
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 8, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !345
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %34, i64 %32, i32 3
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %34, i64 %32, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !346
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %30
  %40 = load ptr, ptr %35, align 8, !tbaa !547
  br label %41

41:                                               ; preds = %39, %53
  %42 = phi i1 [ %58, %53 ], [ %38, %39 ]
  %43 = phi ptr [ %54, %53 ], [ %40, %39 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !355
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry", ptr %44, i64 0, i32 1
  %46 = load i8, ptr %45, align 8, !tbaa !544, !range !283, !noundef !145
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load ptr, ptr %44, align 8, !tbaa !213
  %50 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %49)
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load ptr, ptr %43, align 8, !tbaa !355
  store ptr %52, ptr %0, align 8, !tbaa !355
  br i1 %42, label %59, label %74

53:                                               ; preds = %48, %41
  %54 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.12", ptr %43, i64 1
  %55 = load ptr, ptr %35, align 8, !tbaa !547
  %56 = load i64, ptr %36, align 8, !tbaa !346
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.12", ptr %55, i64 %56
  %58 = icmp eq ptr %54, %57
  br i1 %58, label %59, label %41, !llvm.loop !703

59:                                               ; preds = %53, %30, %51, %3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !704)
  %60 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 6, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !200, !noalias !707
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %72, !prof !198

63:                                               ; preds = %59
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !195, !noalias !707
  %66 = load ptr, ptr %65, align 8, !tbaa !138, !noalias !707
  %67 = getelementptr inbounds ptr, ptr %66, i64 2
  %68 = load ptr, ptr %67, align 8, !noalias !707
  %69 = tail call noundef ptr %68(ptr noundef nonnull align 8 dereferenceable(8) %65, i64 noundef 32), !prof !221, !noalias !707
  store ptr %69, ptr %60, align 8, !tbaa !200, !noalias !707
  %70 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %69, i64 0, i32 2
  store ptr %69, ptr %70, align 8, !tbaa !204, !noalias !707
  %71 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %69, i64 0, i32 1
  store ptr %69, ptr %71, align 8, !tbaa !207, !noalias !707
  br label %72

72:                                               ; preds = %59, %63
  %73 = load ptr, ptr %60, align 8, !tbaa !200, !noalias !707
  store ptr %73, ptr %0, align 8, !tbaa !355, !alias.scope !704
  br label %74

74:                                               ; preds = %51, %72
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PKS3_(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanMapIterator.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !162 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.21", align 8
  %6 = alloca %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry", align 8
  %7 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.12", align 8
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 8, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !199
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %49, !prof !198

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 8
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 8, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !345
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 4
  %16 = load i64, ptr %15, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !188
  store ptr %18, ptr %5, align 8, !tbaa !548
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %5, i64 0, i32 1
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %5, i64 0, i32 2
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %5, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_mRKSI_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %14, i64 noundef %16, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %22 unwind label %35, !prof !198

22:                                               ; preds = %11
  %23 = load i64, ptr %20, align 8, !tbaa !545
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %34, label %25, !prof !198

25:                                               ; preds = %22
  %26 = load ptr, ptr %21, align 8, !tbaa !547
  %27 = load ptr, ptr %5, align 8, !tbaa !548
  %28 = load ptr, ptr %27, align 8, !tbaa !138
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %26)
          to label %34 unwind label %31

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #20
  unreachable

34:                                               ; preds = %22, %25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %49

35:                                               ; preds = %11
  %36 = landingpad { ptr, i32 }
          cleanup
  %37 = load i64, ptr %20, align 8, !tbaa !545
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %21, align 8, !tbaa !547
  %41 = load ptr, ptr %5, align 8, !tbaa !548
  %42 = load ptr, ptr %41, align 8, !tbaa !138
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef %40)
          to label %48 unwind label %45

45:                                               ; preds = %39
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  call void @__clang_call_terminate(ptr %47) #20
  unreachable

48:                                               ; preds = %35, %39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %36

49:                                               ; preds = %34, %4
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 3
  %51 = load float, ptr %50, align 8, !tbaa !192
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 5
  %53 = load i64, ptr %52, align 8, !tbaa !194
  %54 = uitofp i64 %53 to float
  %55 = fmul float %51, %54
  %56 = fptoui float %55 to i64
  %57 = load i64, ptr %8, align 8, !tbaa !199
  %58 = icmp ult i64 %57, %56
  br i1 %58, label %59, label %60, !prof !136

59:                                               ; preds = %49
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(136) %1)
  br label %60

60:                                               ; preds = %59, %49
  %61 = load i64, ptr %8, align 8, !tbaa !199
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !271
  %64 = icmp eq i64 %63, 0
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8
  %67 = select i1 %64, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %66, !prof !136
  %68 = load i16, ptr %67, align 2, !tbaa !273
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %82, label %70, !prof !182

70:                                               ; preds = %60, %70
  %71 = phi i16 [ %78, %70 ], [ %68, %60 ]
  %72 = phi i64 [ %76, %70 ], [ 0, %60 ]
  %73 = phi ptr [ %77, %70 ], [ %67, %60 ]
  %74 = mul i64 %72, 5
  %75 = zext i16 %71 to i64
  %76 = add i64 %74, %75
  %77 = getelementptr inbounds i16, ptr %73, i64 1
  %78 = load i16, ptr %77, align 2, !tbaa !273
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %70, !prof !710, !llvm.loop !277

80:                                               ; preds = %70
  %81 = add i64 %76, 1
  br label %82

82:                                               ; preds = %80, %60
  %83 = phi i64 [ 1, %60 ], [ %81, %80 ]
  %84 = urem i64 %83, %61
  %85 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 7
  %86 = call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %85)
  br i1 %86, label %87, label %95, !prof !198

87:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !188
  %90 = load ptr, ptr %89, align 8, !tbaa !138
  %91 = getelementptr inbounds ptr, ptr %90, i64 2
  %92 = load ptr, ptr %91, align 8
  %93 = call noundef ptr %92(ptr noundef nonnull align 8 dereferenceable(8) %89, i64 noundef 48), !prof !221
  store ptr %93, ptr %6, align 8, !tbaa !213
  %94 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry", ptr %6, i64 0, i32 1
  store i8 0, ptr %94, align 8, !tbaa !544
  call void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE9push_backERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %85, ptr noundef nonnull align 8 dereferenceable(9) %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  br label %95

95:                                               ; preds = %87, %82
  %96 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 7, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !200, !noalias !711
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %107, !prof !136

99:                                               ; preds = %95
  %100 = load ptr, ptr %85, align 8, !tbaa !195, !noalias !711
  %101 = load ptr, ptr %100, align 8, !tbaa !138, !noalias !711
  %102 = getelementptr inbounds ptr, ptr %101, i64 2
  %103 = load ptr, ptr %102, align 8, !noalias !711
  %104 = call noundef ptr %103(ptr noundef nonnull align 8 dereferenceable(8) %100, i64 noundef 32), !noalias !711
  store ptr %104, ptr %96, align 8, !tbaa !200, !noalias !711
  %105 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %104, i64 0, i32 2
  store ptr %104, ptr %105, align 8, !tbaa !204, !noalias !711
  %106 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %104, i64 0, i32 1
  store ptr %104, ptr %106, align 8, !tbaa !207, !noalias !711
  br label %107

107:                                              ; preds = %95, %99
  %108 = load ptr, ptr %96, align 8, !tbaa !200, !noalias !711
  %109 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !207, !noalias !714
  %111 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry", ptr %110, i64 0, i32 1
  store i8 0, ptr %111, align 8, !tbaa !544
  %112 = load ptr, ptr %110, align 8, !tbaa !213
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !188
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %112, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %114, i32 noundef 0, i32 noundef -1)
  %115 = icmp eq ptr %3, null
  br i1 %115, label %120, label %116, !prof !198

116:                                              ; preds = %107
  %117 = load ptr, ptr %110, align 8, !tbaa !213
  %118 = getelementptr inbounds %"struct.std::pair.13", ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %3, align 8, !tbaa !169
  store ptr %119, ptr %118, align 8, !tbaa !169
  br label %120

120:                                              ; preds = %107, %116
  %121 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 6
  %122 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 6, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !200, !noalias !717
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %133, !prof !136

125:                                              ; preds = %120
  %126 = load ptr, ptr %121, align 8, !tbaa !195, !noalias !717
  %127 = load ptr, ptr %126, align 8, !tbaa !138, !noalias !717
  %128 = getelementptr inbounds ptr, ptr %127, i64 2
  %129 = load ptr, ptr %128, align 8, !noalias !717
  %130 = call noundef ptr %129(ptr noundef nonnull align 8 dereferenceable(8) %126, i64 noundef 32), !noalias !717
  store ptr %130, ptr %122, align 8, !tbaa !200, !noalias !717
  %131 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %130, i64 0, i32 2
  store ptr %130, ptr %131, align 8, !tbaa !204, !noalias !717
  %132 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %130, i64 0, i32 1
  store ptr %130, ptr %132, align 8, !tbaa !207, !noalias !717
  br label %133

133:                                              ; preds = %120, %125
  %134 = load ptr, ptr %122, align 8, !tbaa !200, !noalias !717
  %135 = load ptr, ptr %96, align 8, !tbaa !200, !noalias !720
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %145, !prof !136

137:                                              ; preds = %133
  %138 = load ptr, ptr %85, align 8, !tbaa !195, !noalias !720
  %139 = load ptr, ptr %138, align 8, !tbaa !138, !noalias !720
  %140 = getelementptr inbounds ptr, ptr %139, i64 2
  %141 = load ptr, ptr %140, align 8, !noalias !720
  %142 = call noundef ptr %141(ptr noundef nonnull align 8 dereferenceable(8) %138, i64 noundef 32), !noalias !720
  store ptr %142, ptr %96, align 8, !tbaa !200, !noalias !720
  %143 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %142, i64 0, i32 2
  store ptr %142, ptr %143, align 8, !tbaa !204, !noalias !720
  %144 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %142, i64 0, i32 1
  store ptr %142, ptr %144, align 8, !tbaa !207, !noalias !720
  br label %145

145:                                              ; preds = %133, %137
  %146 = load ptr, ptr %96, align 8, !tbaa !200, !noalias !720
  %147 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %146, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !207, !noalias !723
  %149 = icmp eq ptr %134, %148
  br i1 %149, label %162, label %150, !prof !136

150:                                              ; preds = %145
  %151 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %148, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !204
  %153 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %148, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !207
  %155 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %154, i64 0, i32 2
  store ptr %152, ptr %155, align 8, !tbaa !204
  %156 = load ptr, ptr %151, align 8, !tbaa !204
  %157 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %156, i64 0, i32 1
  store ptr %154, ptr %157, align 8, !tbaa !207
  %158 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %134, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !207
  store ptr %159, ptr %153, align 8, !tbaa !207
  store ptr %134, ptr %151, align 8, !tbaa !204
  %160 = load ptr, ptr %158, align 8, !tbaa !207
  %161 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %160, i64 0, i32 2
  store ptr %148, ptr %161, align 8, !tbaa !204
  store ptr %148, ptr %158, align 8, !tbaa !207
  br label %162

162:                                              ; preds = %145, %150
  %163 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 8, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !345
  %165 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %164, i64 %84
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %166 = load ptr, ptr %122, align 8, !tbaa !200, !noalias !726
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %176, !prof !136

168:                                              ; preds = %162
  %169 = load ptr, ptr %121, align 8, !tbaa !195, !noalias !726
  %170 = load ptr, ptr %169, align 8, !tbaa !138, !noalias !726
  %171 = getelementptr inbounds ptr, ptr %170, i64 2
  %172 = load ptr, ptr %171, align 8, !noalias !726
  %173 = call noundef ptr %172(ptr noundef nonnull align 8 dereferenceable(8) %169, i64 noundef 32), !noalias !726
  store ptr %173, ptr %122, align 8, !tbaa !200, !noalias !726
  %174 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %173, i64 0, i32 2
  store ptr %173, ptr %174, align 8, !tbaa !204, !noalias !726
  %175 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %173, i64 0, i32 1
  store ptr %173, ptr %175, align 8, !tbaa !207, !noalias !726
  br label %176

176:                                              ; preds = %162, %168
  %177 = load ptr, ptr %122, align 8, !tbaa !200, !noalias !726
  call void @llvm.experimental.noalias.scope.decl(metadata !729)
  %178 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %177, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !207, !noalias !729
  store ptr %179, ptr %7, align 8, !tbaa !355, !alias.scope !729
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_(ptr noundef nonnull align 8 dereferenceable(32) %165, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  %180 = load i64, ptr %52, align 8, !tbaa !194
  %181 = add i64 %180, 1
  store i64 %181, ptr %52, align 8, !tbaa !194
  %182 = load ptr, ptr %122, align 8, !tbaa !200, !noalias !732
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %192, !prof !136

184:                                              ; preds = %176
  %185 = load ptr, ptr %121, align 8, !tbaa !195, !noalias !732
  %186 = load ptr, ptr %185, align 8, !tbaa !138, !noalias !732
  %187 = getelementptr inbounds ptr, ptr %186, i64 2
  %188 = load ptr, ptr %187, align 8, !noalias !732
  %189 = call noundef ptr %188(ptr noundef nonnull align 8 dereferenceable(8) %185, i64 noundef 32), !noalias !732
  store ptr %189, ptr %122, align 8, !tbaa !200, !noalias !732
  %190 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %189, i64 0, i32 2
  store ptr %189, ptr %190, align 8, !tbaa !204, !noalias !732
  %191 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %189, i64 0, i32 1
  store ptr %189, ptr %191, align 8, !tbaa !207, !noalias !732
  br label %192

192:                                              ; preds = %176, %184
  %193 = load ptr, ptr %122, align 8, !tbaa !200, !noalias !732
  %194 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %193, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !207, !noalias !735
  store ptr %195, ptr %0, align 8, !tbaa !355
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_mRKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !162 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !199
  %8 = add i64 %7, %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !345
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %10, i64 %7
  %12 = icmp eq ptr %11, %1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !539
  br i1 %12, label %15, label %33, !prof !198

15:                                               ; preds = %4
  %16 = icmp ult i64 %14, %8
  br i1 %16, label %17, label %18, !prof !198

17:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8)
  br label %18

18:                                               ; preds = %15, %17
  %19 = icmp eq i64 %2, 0
  br i1 %19, label %126, label %20, !prof !182

20:                                               ; preds = %18
  %21 = load ptr, ptr %9, align 8, !tbaa !345
  %22 = load i64, ptr %6, align 8, !tbaa !199
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %21, i64 %22
  br label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %28, %24 ], [ %23, %20 ]
  %26 = phi i64 [ %31, %24 ], [ 0, %20 ]
  %27 = load ptr, ptr %0, align 8, !tbaa !196
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef 0)
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %25, i64 1
  %29 = load i64, ptr %6, align 8, !tbaa !199
  %30 = add i64 %29, 1
  store i64 %30, ptr %6, align 8, !tbaa !199
  %31 = add nuw i64 %26, 1
  %32 = icmp eq i64 %31, %2
  br i1 %32, label %126, label %24, !prof !349, !llvm.loop !738

33:                                               ; preds = %4
  %34 = icmp ugt i64 %8, %14
  br i1 %34, label %35, label %70

35:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %36 = load ptr, ptr %0, align 8, !tbaa !196
  store ptr %36, ptr %5, align 8, !tbaa !196
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  store i64 0, ptr %37, align 8, !tbaa !199
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  store i64 %8, ptr %38, align 8, !tbaa !539
  %39 = shl i64 %8, 5
  %40 = load ptr, ptr %36, align 8, !tbaa !138
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %36, i64 noundef %39)
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  store ptr %43, ptr %44, align 8, !tbaa !345
  %45 = load i64, ptr %37, align 8, !tbaa !199
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %43, i64 %45
  %47 = load ptr, ptr %9, align 8, !tbaa !345
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %46, ptr noundef %47, ptr noundef %1)
          to label %48 unwind label %68

48:                                               ; preds = %35
  %49 = load ptr, ptr %44, align 8, !tbaa !345
  %50 = load i64, ptr %37, align 8, !tbaa !199
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %49, i64 %50
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_mRKSI_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %51, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %52 unwind label %68

52:                                               ; preds = %48
  %53 = load ptr, ptr %44, align 8, !tbaa !345
  %54 = load i64, ptr %37, align 8, !tbaa !199
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %53, i64 %54
  %56 = load ptr, ptr %9, align 8, !tbaa !345
  %57 = load i64, ptr %6, align 8, !tbaa !199
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %56, i64 %57
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %55, ptr noundef %1, ptr noundef %58)
          to label %59 unwind label %68

59:                                               ; preds = %52
  %60 = load ptr, ptr %0, align 8, !tbaa !196
  %61 = load i64, ptr %6, align 8, !tbaa !199
  %62 = load i64, ptr %13, align 8, !tbaa !539
  %63 = load ptr, ptr %9, align 8, !tbaa !345
  %64 = load ptr, ptr %5, align 8, !tbaa !196
  store ptr %64, ptr %0, align 8, !tbaa !196
  %65 = load i64, ptr %37, align 8, !tbaa !199
  store i64 %65, ptr %6, align 8, !tbaa !199
  %66 = load i64, ptr %38, align 8, !tbaa !539
  store i64 %66, ptr %13, align 8, !tbaa !539
  %67 = load ptr, ptr %44, align 8, !tbaa !345
  store ptr %67, ptr %9, align 8, !tbaa !345
  store ptr %60, ptr %5, align 8, !tbaa !196
  store i64 %61, ptr %37, align 8, !tbaa !199
  store i64 %62, ptr %38, align 8, !tbaa !539
  store ptr %63, ptr %44, align 8, !tbaa !345
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %126

68:                                               ; preds = %52, %48, %35
  %69 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %83 = add nuw i64 %82, 1
  %84 = icmp eq i64 %83, %77
  br i1 %84, label %79, label %81, !llvm.loop !739

85:                                               ; preds = %87, %79
  %86 = icmp eq ptr %11, %1
  br i1 %86, label %126, label %91

87:                                               ; preds = %79, %87
  %88 = phi ptr [ %89, %87 ], [ %1, %79 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %88)
  %89 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %88, i64 1
  %90 = icmp eq ptr %89, %11
  br i1 %90, label %85, label %87, !llvm.loop !740

91:                                               ; preds = %85, %91
  %92 = phi ptr [ %94, %91 ], [ %1, %85 ]
  %93 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEaSERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %92, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %94 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %92, i64 1
  %95 = icmp eq ptr %94, %11
  br i1 %95, label %126, label %91, !llvm.loop !741

96:                                               ; preds = %70
  %97 = sub i64 0, %2
  %98 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %11, i64 %97
  %99 = icmp eq i64 %2, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96, %100
  %101 = phi ptr [ %102, %100 ], [ %98, %96 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %101)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %101, i64 1
  %103 = icmp eq ptr %102, %11
  br i1 %103, label %104, label %100, !llvm.loop !742

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
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %112, i64 -1
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %111, i64 -1
  %115 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEaSERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %114, ptr noundef nonnull align 8 dereferenceable(32) %113)
  %116 = add nsw i64 %110, -1
  %117 = icmp sgt i64 %110, 1
  br i1 %117, label %109, label %118, !llvm.loop !743

118:                                              ; preds = %109, %104
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %1, i64 %2
  %120 = icmp eq i64 %2, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %118, %121
  %122 = phi ptr [ %124, %121 ], [ %1, %118 ]
  %123 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEaSERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %122, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %124 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %122, i64 1
  %125 = icmp eq ptr %124, %119
  br i1 %125, label %126, label %121, !llvm.loop !741

126:                                              ; preds = %91, %121, %24, %85, %118, %18, %59
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %2 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %3 = alloca %"class.xalanc_1_10::XalanVector.21", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.12", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !194
  %7 = uitofp i64 %6 to double
  %8 = fmul double %7, 1.600000e+00
  %9 = fptoui double %8 to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !188
  store ptr %11, ptr %3, align 8, !tbaa !548
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %3, i64 0, i32 1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %3, i64 0, i32 2
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %3, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEC2EmRKSI_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %9, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %15 unwind label %89

15:                                               ; preds = %1
  %16 = load i64, ptr %13, align 8, !tbaa !545
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %14, align 8, !tbaa !547
  %20 = load ptr, ptr %3, align 8, !tbaa !548
  %21 = load ptr, ptr %20, align 8, !tbaa !138
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %19)
          to label %27 unwind label %24

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #20
  unreachable

27:                                               ; preds = %15, %18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 6
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 6, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !200, !noalias !744
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load ptr, ptr %28, align 8, !tbaa !195, !noalias !744
  %34 = load ptr, ptr %33, align 8, !tbaa !138, !noalias !744
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8, !noalias !744
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 32)
          to label %38 unwind label %103

38:                                               ; preds = %32
  store ptr %37, ptr %29, align 8, !tbaa !200, !noalias !744
  %39 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %37, i64 0, i32 2
  store ptr %37, ptr %39, align 8, !tbaa !204, !noalias !744
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %37, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !207, !noalias !744
  br label %41

41:                                               ; preds = %27, %38
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %2, i64 0, i32 3
  br label %43

43:                                               ; preds = %83, %41
  %44 = phi ptr [ %29, %41 ], [ %4, %83 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !169, !noalias !145
  %46 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !204, !noalias !145
  store ptr %47, ptr %4, align 8, !tbaa !355
  %48 = load ptr, ptr %29, align 8, !tbaa !200, !noalias !747
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load ptr, ptr %28, align 8, !tbaa !195, !noalias !747
  %52 = load ptr, ptr %51, align 8, !tbaa !138, !noalias !747
  %53 = getelementptr inbounds ptr, ptr %52, i64 2
  %54 = load ptr, ptr %53, align 8, !noalias !747
  %55 = invoke noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %51, i64 noundef 32)
          to label %56 unwind label %105

56:                                               ; preds = %50
  store ptr %55, ptr %29, align 8, !tbaa !200, !noalias !747
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %55, i64 0, i32 2
  store ptr %55, ptr %57, align 8, !tbaa !204, !noalias !747
  %58 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %55, i64 0, i32 1
  store ptr %55, ptr %58, align 8, !tbaa !207, !noalias !747
  br label %59

59:                                               ; preds = %43, %56
  %60 = load ptr, ptr %29, align 8, !tbaa !200, !noalias !747
  %61 = load ptr, ptr %4, align 8, !tbaa !355
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %109, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %61, align 8, !tbaa !213
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %64, i64 0, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !271
  %67 = icmp eq i64 %66, 0
  %68 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %64, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8
  %70 = select i1 %67, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %69
  %71 = load i16, ptr %70, align 2, !tbaa !273
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
  %81 = load i16, ptr %80, align 2, !tbaa !273
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %83, label %73, !llvm.loop !277

83:                                               ; preds = %73, %63
  %84 = phi i64 [ 0, %63 ], [ %79, %73 ]
  %85 = add i64 %84, 1
  %86 = urem i64 %85, %9
  %87 = load ptr, ptr %42, align 8, !tbaa !345
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %87, i64 %86
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_(ptr noundef nonnull align 8 dereferenceable(32) %88, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %43 unwind label %107, !llvm.loop !750

89:                                               ; preds = %1
  %90 = landingpad { ptr, i32 }
          cleanup
  %91 = load i64, ptr %13, align 8, !tbaa !545
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr %14, align 8, !tbaa !547
  %95 = load ptr, ptr %3, align 8, !tbaa !548
  %96 = load ptr, ptr %95, align 8, !tbaa !138
  %97 = getelementptr inbounds ptr, ptr %96, i64 3
  %98 = load ptr, ptr %97, align 8
  invoke void %98(ptr noundef nonnull align 8 dereferenceable(8) %95, ptr noundef %94)
          to label %102 unwind label %99

99:                                               ; preds = %93
  %100 = landingpad { ptr, i32 }
          catch ptr null
  %101 = extractvalue { ptr, i32 } %100, 0
  call void @__clang_call_terminate(ptr %101) #20
  unreachable

102:                                              ; preds = %89, %93
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
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
  %110 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 8
  %111 = load ptr, ptr %110, align 8, !tbaa !196
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 8, i32 1
  %113 = load i64, ptr %112, align 8, !tbaa !199
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 8, i32 2
  %115 = load i64, ptr %114, align 8, !tbaa !539
  %116 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 8, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !345
  %118 = load ptr, ptr %2, align 8, !tbaa !196
  store ptr %118, ptr %110, align 8, !tbaa !196
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %2, i64 0, i32 1
  %120 = load i64, ptr %119, align 8, !tbaa !199
  store i64 %120, ptr %112, align 8, !tbaa !199
  %121 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %2, i64 0, i32 2
  %122 = load i64, ptr %121, align 8, !tbaa !539
  store i64 %122, ptr %114, align 8, !tbaa !539
  %123 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %2, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !345
  store ptr %124, ptr %116, align 8, !tbaa !345
  store ptr %111, ptr %2, align 8, !tbaa !196
  store i64 %113, ptr %119, align 8, !tbaa !199
  store i64 %115, ptr %121, align 8, !tbaa !539
  store ptr %117, ptr %123, align 8, !tbaa !345
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #19
  ret void

125:                                              ; preds = %107, %105, %103
  %126 = phi { ptr, i32 } [ %106, %105 ], [ %104, %103 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  br label %127

127:                                              ; preds = %125, %102
  %128 = phi { ptr, i32 } [ %126, %125 ], [ %90, %102 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #19
  resume { ptr, i32 } %128
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !162 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.2", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !200
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !198

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !195
  %7 = load ptr, ptr %6, align 8, !tbaa !138
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 32), !prof !221
  store ptr %10, ptr %2, align 8, !tbaa !200
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !204
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !207
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !200
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !204
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %26, !prof !136

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !195
  %20 = load ptr, ptr %19, align 8, !tbaa !138
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 32)
  store ptr %23, ptr %2, align 8, !tbaa !200
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %23, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !204
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %23, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !207
  br label %26

26:                                               ; preds = %13, %18
  %27 = load ptr, ptr %2, align 8, !tbaa !200
  %28 = icmp eq ptr %16, %27
  ret i1 %28
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE9push_backERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #5 comdat align 2 !prof !162 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList.2", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !200, !noalias !751
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !136

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !195, !noalias !751
  %8 = load ptr, ptr %7, align 8, !tbaa !138, !noalias !751
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !751
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 32), !noalias !751
  store ptr %11, ptr %3, align 8, !tbaa !200, !noalias !751
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !204, !noalias !751
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !207, !noalias !751
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !200, !noalias !751
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanList.2", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !529
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19, !prof !198

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !204
  br label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %0, align 8, !tbaa !195
  %24 = load ptr, ptr %23, align 8, !tbaa !138
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 32), !prof !221
  store ptr %27, ptr %16, align 8, !tbaa !529
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi ptr [ %17, %19 ], [ %27, %22 ]
  %30 = phi ptr [ %21, %19 ], [ null, %22 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !596
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %29, i64 0, i32 1
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %15, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !207
  store ptr %33, ptr %31, align 8, !tbaa !169
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %29, i64 0, i32 2
  store ptr %15, ptr %34, align 8, !tbaa !169
  %35 = load ptr, ptr %32, align 8, !tbaa !207
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDocument *>::Entry>::Node", ptr %35, i64 0, i32 2
  store ptr %29, ptr %36, align 8, !tbaa !204
  store ptr %29, ptr %32, align 8, !tbaa !207
  store ptr %30, ptr %16, align 8, !tbaa !529
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 5
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %139, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !199
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !345
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !539
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %139, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !345
  %28 = load i64, ptr %12, align 8, !tbaa !199
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %34, %30 ], [ %29, %26 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !196
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 0)
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %32, i64 1
  %35 = load i64, ptr %12, align 8, !tbaa !199
  %36 = add i64 %35, 1
  store i64 %36, ptr %12, align 8, !tbaa !199
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %139, label %30, !llvm.loop !754

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %76

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %42 = load ptr, ptr %0, align 8, !tbaa !196
  store ptr %42, ptr %5, align 8, !tbaa !196
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !199
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !539
  %45 = shl i64 %14, 5
  %46 = load ptr, ptr %42, align 8, !tbaa !138
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !345
  %51 = load i64, ptr %43, align 8, !tbaa !199
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !345
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %74

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !345
  %56 = load i64, ptr %43, align 8, !tbaa !199
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %74

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !345
  %60 = load i64, ptr %43, align 8, !tbaa !199
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !345
  %63 = load i64, ptr %12, align 8, !tbaa !199
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %74

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !196
  %67 = load i64, ptr %12, align 8, !tbaa !199
  %68 = load i64, ptr %19, align 8, !tbaa !539
  %69 = load ptr, ptr %15, align 8, !tbaa !345
  %70 = load ptr, ptr %5, align 8, !tbaa !196
  store ptr %70, ptr %0, align 8, !tbaa !196
  %71 = load i64, ptr %43, align 8, !tbaa !199
  store i64 %71, ptr %12, align 8, !tbaa !199
  %72 = load i64, ptr %44, align 8, !tbaa !539
  store i64 %72, ptr %19, align 8, !tbaa !539
  %73 = load ptr, ptr %50, align 8, !tbaa !345
  store ptr %73, ptr %15, align 8, !tbaa !345
  store ptr %66, ptr %5, align 8, !tbaa !196
  store i64 %67, ptr %43, align 8, !tbaa !199
  store i64 %68, ptr %44, align 8, !tbaa !539
  store ptr %69, ptr %50, align 8, !tbaa !345
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %139

74:                                               ; preds = %58, %54, %41
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %87)
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %87, i64 1
  %89 = icmp eq ptr %88, %3
  br i1 %89, label %84, label %86, !llvm.loop !755

90:                                               ; preds = %84, %90
  %91 = phi ptr [ %92, %90 ], [ %1, %84 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %91)
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %91, i64 1
  %93 = icmp eq ptr %92, %17
  br i1 %93, label %94, label %90, !llvm.loop !756

94:                                               ; preds = %90, %84
  %95 = ashr exact i64 %79, 5
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %139

97:                                               ; preds = %94, %97
  %98 = phi i64 [ %104, %97 ], [ %95, %94 ]
  %99 = phi ptr [ %103, %97 ], [ %1, %94 ]
  %100 = phi ptr [ %102, %97 ], [ %2, %94 ]
  %101 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEaSERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %99, ptr noundef nonnull align 8 dereferenceable(32) %100)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %100, i64 1
  %103 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %99, i64 1
  %104 = add nsw i64 %98, -1
  %105 = icmp sgt i64 %98, 1
  br i1 %105, label %97, label %139, !llvm.loop !757

106:                                              ; preds = %76
  %107 = sub nsw i64 0, %9
  %108 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %17, i64 %107
  %109 = icmp eq ptr %3, %2
  br i1 %109, label %114, label %110

110:                                              ; preds = %106, %110
  %111 = phi ptr [ %112, %110 ], [ %108, %106 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %111)
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %111, i64 1
  %113 = icmp eq ptr %112, %17
  br i1 %113, label %114, label %110, !llvm.loop !758

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
  %125 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %124, i64 -1
  %126 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %123, i64 -1
  %127 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEaSERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %126, ptr noundef nonnull align 8 dereferenceable(32) %125)
  %128 = add nsw i64 %122, -1
  %129 = icmp sgt i64 %122, 1
  br i1 %129, label %121, label %119, !llvm.loop !743

130:                                              ; preds = %119, %130
  %131 = phi i64 [ %137, %130 ], [ %9, %119 ]
  %132 = phi ptr [ %136, %130 ], [ %1, %119 ]
  %133 = phi ptr [ %135, %130 ], [ %2, %119 ]
  %134 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEaSERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %132, ptr noundef nonnull align 8 dereferenceable(32) %133)
  %135 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %133, i64 1
  %136 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %132, i64 1
  %137 = add nsw i64 %131, -1
  %138 = icmp sgt i64 %131, 1
  br i1 %138, label %130, label %139, !llvm.loop !757

139:                                              ; preds = %97, %130, %30, %94, %119, %24, %65, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !199
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !539
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !345
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %11, i64 %5
  %13 = load ptr, ptr %0, align 8, !tbaa !196
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 0)
  %14 = load i64, ptr %4, align 8, !tbaa !199
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !199
  br label %38

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %22 = load ptr, ptr %0, align 8, !tbaa !196
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEC2ERKSL_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %23 unwind label %36

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !196
  %25 = load i64, ptr %4, align 8, !tbaa !199
  %26 = load i64, ptr %6, align 8, !tbaa !539
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !345
  %29 = load ptr, ptr %3, align 8, !tbaa !196
  store ptr %29, ptr %0, align 8, !tbaa !196
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !199
  store i64 %31, ptr %4, align 8, !tbaa !199
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !539
  store i64 %33, ptr %6, align 8, !tbaa !539
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !345
  store ptr %35, ptr %27, align 8, !tbaa !345
  store ptr %24, ptr %3, align 8, !tbaa !196
  store i64 %25, ptr %30, align 8, !tbaa !199
  store i64 %26, ptr %32, align 8, !tbaa !539
  store ptr %28, ptr %34, align 8, !tbaa !345
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %38

36:                                               ; preds = %16
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  resume { ptr, i32 } %37

38:                                               ; preds = %23, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !162 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEC2ERKSL_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !196
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !199
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !539
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !345
  %12 = load ptr, ptr %3, align 8, !tbaa !196
  store ptr %12, ptr %0, align 8, !tbaa !196
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !199
  store i64 %14, ptr %6, align 8, !tbaa !199
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !539
  store i64 %16, ptr %8, align 8, !tbaa !539
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !345
  store ptr %18, ptr %10, align 8, !tbaa !345
  store ptr %5, ptr %3, align 8, !tbaa !196
  store i64 %7, ptr %13, align 8, !tbaa !199
  store i64 %9, ptr %15, align 8, !tbaa !539
  store ptr %11, ptr %17, align 8, !tbaa !345
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEC2ERKSL_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !162 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  store ptr %2, ptr %0, align 8, !tbaa !196
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !199
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %37, label %12, !prof !198

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !196
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !199
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !539
  %16 = shl i64 %13, 5
  %17 = load ptr, ptr %2, align 8, !tbaa !138
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !345
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !345
  %24 = load i64, ptr %9, align 8, !tbaa !199
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %35

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !196
  %28 = load i64, ptr %6, align 8, !tbaa !199
  %29 = load i64, ptr %7, align 8, !tbaa !539
  %30 = load ptr, ptr %8, align 8, !tbaa !345
  %31 = load ptr, ptr %5, align 8, !tbaa !196
  store ptr %31, ptr %0, align 8, !tbaa !196
  %32 = load i64, ptr %14, align 8, !tbaa !199
  store i64 %32, ptr %6, align 8, !tbaa !199
  %33 = load i64, ptr %15, align 8, !tbaa !539
  store i64 %33, ptr %7, align 8, !tbaa !539
  %34 = load ptr, ptr %21, align 8, !tbaa !345
  store ptr %34, ptr %8, align 8, !tbaa !345
  store ptr %27, ptr %5, align 8, !tbaa !196
  store i64 %28, ptr %14, align 8, !tbaa !199
  store i64 %29, ptr %15, align 8, !tbaa !539
  store ptr %30, ptr %21, align 8, !tbaa !345
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %45

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %36

37:                                               ; preds = %4
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %45, label %39, !prof !136

39:                                               ; preds = %37
  %40 = shl i64 %3, 5
  %41 = load ptr, ptr %2, align 8, !tbaa !138
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40), !prof !221
  store ptr %44, ptr %8, align 8, !tbaa !345
  store i64 %3, ptr %7, align 8, !tbaa !539
  br label %45

45:                                               ; preds = %37, %39, %26
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !759 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.21", align 8
  store ptr %2, ptr %0, align 8, !tbaa !548
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !346
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !760

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !548
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !346
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !545
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !138
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !547
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !547
  %24 = load i64, ptr %9, align 8, !tbaa !346
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.12", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE6insertEPSF_PKSF_SL_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !548
  %28 = load i64, ptr %6, align 8, !tbaa !346
  %29 = load i64, ptr %7, align 8, !tbaa !545
  %30 = load ptr, ptr %8, align 8, !tbaa !547
  %31 = load ptr, ptr %5, align 8, !tbaa !548
  store ptr %31, ptr %0, align 8, !tbaa !548
  %32 = load i64, ptr %14, align 8, !tbaa !346
  store i64 %32, ptr %6, align 8, !tbaa !346
  %33 = load i64, ptr %15, align 8, !tbaa !545
  store i64 %33, ptr %7, align 8, !tbaa !545
  %34 = load ptr, ptr %21, align 8, !tbaa !547
  store ptr %34, ptr %8, align 8, !tbaa !547
  store ptr %27, ptr %5, align 8, !tbaa !548
  store i64 %28, ptr %14, align 8, !tbaa !346
  store i64 %29, ptr %15, align 8, !tbaa !545
  store ptr %30, ptr %21, align 8, !tbaa !547
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !138
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #20
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !545
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !547
  %50 = load ptr, ptr %5, align 8, !tbaa !548
  %51 = load ptr, ptr %50, align 8, !tbaa !138
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #20
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !761

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !138
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !221
  store ptr %65, ptr %8, align 8, !tbaa !547
  store i64 %3, ptr %7, align 8, !tbaa !545
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE6insertEPSF_PKSF_SL_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.21", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %161, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !346
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !547
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.12", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !545
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %161, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !547
  %28 = load i64, ptr %12, align 8, !tbaa !346
  %29 = getelementptr %"struct.xalanc_1_10::XalanListIteratorBase.12", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !355
  store ptr %34, ptr %32, align 8, !tbaa !355
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.12", ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.12", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %160, label %30, !llvm.loop !762

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %42 = load ptr, ptr %0, align 8, !tbaa !548
  store ptr %42, ptr %5, align 8, !tbaa !548
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !346
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !545
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !138
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !547
  %51 = load i64, ptr %43, align 8, !tbaa !346
  %52 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.12", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !547
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE6insertEPSF_PKSF_SL_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !547
  %56 = load i64, ptr %43, align 8, !tbaa !346
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.12", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE6insertEPSF_PKSF_SL_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !547
  %60 = load i64, ptr %43, align 8, !tbaa !346
  %61 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.12", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !547
  %63 = load i64, ptr %12, align 8, !tbaa !346
  %64 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.12", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE6insertEPSF_PKSF_SL_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !548
  %67 = load i64, ptr %12, align 8, !tbaa !346
  %68 = load i64, ptr %19, align 8, !tbaa !545
  %69 = load ptr, ptr %15, align 8, !tbaa !547
  %70 = load ptr, ptr %5, align 8, !tbaa !548
  store ptr %70, ptr %0, align 8, !tbaa !548
  %71 = load i64, ptr %43, align 8, !tbaa !346
  store i64 %71, ptr %12, align 8, !tbaa !346
  %72 = load i64, ptr %44, align 8, !tbaa !545
  store i64 %72, ptr %19, align 8, !tbaa !545
  %73 = load ptr, ptr %50, align 8, !tbaa !547
  store ptr %73, ptr %15, align 8, !tbaa !547
  store ptr %66, ptr %5, align 8, !tbaa !548
  store i64 %67, ptr %43, align 8, !tbaa !346
  store i64 %68, ptr %44, align 8, !tbaa !545
  store ptr %69, ptr %50, align 8, !tbaa !547
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !138
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #20
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %161

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !545
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !547
  %89 = load ptr, ptr %5, align 8, !tbaa !548
  %90 = load ptr, ptr %89, align 8, !tbaa !138
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #20
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.12", ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !763

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.12", ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !764

115:                                              ; preds = %111, %105
  %116 = ashr exact i64 %100, 3
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %161

118:                                              ; preds = %115, %118
  %119 = phi i64 [ %125, %118 ], [ %116, %115 ]
  %120 = phi ptr [ %124, %118 ], [ %1, %115 ]
  %121 = phi ptr [ %123, %118 ], [ %2, %115 ]
  %122 = load ptr, ptr %121, align 8, !tbaa !355
  store ptr %122, ptr %120, align 8, !tbaa !355
  %123 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.12", ptr %121, i64 1
  %124 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.12", ptr %120, i64 1
  %125 = add nsw i64 %119, -1
  %126 = icmp sgt i64 %119, 1
  br i1 %126, label %118, label %161, !llvm.loop !765

127:                                              ; preds = %97
  %128 = sub nsw i64 0, %9
  %129 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.12", ptr %17, i64 %128
  %130 = icmp eq ptr %3, %2
  br i1 %130, label %135, label %131

131:                                              ; preds = %127, %131
  %132 = phi ptr [ %133, %131 ], [ %129, %127 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %132)
  %133 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.12", ptr %132, i64 1
  %134 = icmp eq ptr %133, %17
  br i1 %134, label %135, label %131, !llvm.loop !766

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
  %146 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.12", ptr %145, i64 -1
  %147 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.12", ptr %144, i64 -1
  %148 = load ptr, ptr %146, align 8, !tbaa !355
  store ptr %148, ptr %147, align 8, !tbaa !355
  %149 = add nsw i64 %143, -1
  %150 = icmp sgt i64 %143, 1
  br i1 %150, label %142, label %140, !llvm.loop !767

151:                                              ; preds = %140, %151
  %152 = phi i64 [ %158, %151 ], [ %9, %140 ]
  %153 = phi ptr [ %157, %151 ], [ %1, %140 ]
  %154 = phi ptr [ %156, %151 ], [ %2, %140 ]
  %155 = load ptr, ptr %154, align 8, !tbaa !355
  store ptr %155, ptr %153, align 8, !tbaa !355
  %156 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.12", ptr %154, i64 1
  %157 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.12", ptr %153, i64 1
  %158 = add nsw i64 %152, -1
  %159 = icmp sgt i64 %152, 1
  br i1 %159, label %151, label %161, !llvm.loop !765

160:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !346
  br label %161

161:                                              ; preds = %118, %151, %115, %140, %24, %160, %82, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !516 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.21", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !346
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !545
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !212

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !547
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.12", ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !355
  store ptr %13, ptr %12, align 8, !tbaa !355
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !346
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !198
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %21 = load ptr, ptr %0, align 8, !tbaa !548
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44, !prof !198

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !548
  %24 = load i64, ptr %4, align 8, !tbaa !346
  %25 = load i64, ptr %6, align 8, !tbaa !545
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !547
  %28 = load ptr, ptr %3, align 8, !tbaa !548
  store ptr %28, ptr %0, align 8, !tbaa !548
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !346
  store i64 %30, ptr %4, align 8, !tbaa !346
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !545
  store i64 %32, ptr %6, align 8, !tbaa !545
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !547
  store ptr %34, ptr %26, align 8, !tbaa !547
  store ptr %23, ptr %3, align 8, !tbaa !548
  store i64 %24, ptr %29, align 8, !tbaa !346
  store i64 %25, ptr %31, align 8, !tbaa !545
  store ptr %27, ptr %33, align 8, !tbaa !547
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36, !prof !198

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !138
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #20
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !545
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !547
  %52 = load ptr, ptr %3, align 8, !tbaa !548
  %53 = load ptr, ptr %52, align 8, !tbaa !138
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #20
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.21", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !548
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !548
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !346
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !545
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !547
  %12 = load ptr, ptr %3, align 8, !tbaa !548
  store ptr %12, ptr %0, align 8, !tbaa !548
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !346
  store i64 %14, ptr %6, align 8, !tbaa !346
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !545
  store i64 %16, ptr %8, align 8, !tbaa !545
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !547
  store ptr %18, ptr %10, align 8, !tbaa !547
  store ptr %5, ptr %3, align 8, !tbaa !548
  store i64 %7, ptr %13, align 8, !tbaa !346
  store i64 %9, ptr %15, align 8, !tbaa !545
  store ptr %11, ptr %17, align 8, !tbaa !547
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !138
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #20
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEaSERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.21", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %73, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !545
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !346
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %12 = load ptr, ptr %0, align 8, !tbaa !548
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !548
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !346
  %16 = load i64, ptr %6, align 8, !tbaa !545
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !547
  %19 = load ptr, ptr %3, align 8, !tbaa !548
  store ptr %19, ptr %0, align 8, !tbaa !548
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !346
  store i64 %21, ptr %14, align 8, !tbaa !346
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !545
  store i64 %23, ptr %6, align 8, !tbaa !545
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !547
  store ptr %25, ptr %17, align 8, !tbaa !547
  store ptr %13, ptr %3, align 8, !tbaa !548
  store i64 %15, ptr %20, align 8, !tbaa !346
  store i64 %16, ptr %22, align 8, !tbaa !545
  store ptr %18, ptr %24, align 8, !tbaa !547
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !138
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #20
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %73

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !547
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.12", ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !346
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53

44:                                               ; preds = %42
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.12", ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !547
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.12", ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE6insertEPSF_PKSF_SL_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !346
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !346
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !547
  %56 = ptrtoint ptr %54 to i64
  %57 = ptrtoint ptr %55 to i64
  %58 = sub i64 %56, %57
  %59 = ashr exact i64 %58, 3
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %53
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !547
  br label %64

64:                                               ; preds = %61, %64
  %65 = phi i64 [ %71, %64 ], [ %59, %61 ]
  %66 = phi ptr [ %70, %64 ], [ %63, %61 ]
  %67 = phi ptr [ %69, %64 ], [ %55, %61 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !355
  store ptr %68, ptr %66, align 8, !tbaa !355
  %69 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.12", ptr %67, i64 1
  %70 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.12", ptr %66, i64 1
  %71 = add nsw i64 %65, -1
  %72 = icmp sgt i64 %65, 1
  br i1 %72, label %64, label %73, !llvm.loop !765

73:                                               ; preds = %64, %53, %34, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEC2EmRKSI_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  store ptr %3, ptr %0, align 8, !tbaa !196
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  store ptr %3, ptr %5, align 8, !tbaa !196
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_mRKSI_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef null, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %8 unwind label %21

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %0, align 8, !tbaa !196
  %14 = load i64, ptr %6, align 8, !tbaa !199
  %15 = load i64, ptr %12, align 8, !tbaa !539
  %16 = load ptr, ptr %11, align 8, !tbaa !345
  %17 = load ptr, ptr %5, align 8, !tbaa !196
  store ptr %17, ptr %0, align 8, !tbaa !196
  %18 = load i64, ptr %7, align 8, !tbaa !199
  store i64 %18, ptr %6, align 8, !tbaa !199
  %19 = load i64, ptr %10, align 8, !tbaa !539
  store i64 %19, ptr %12, align 8, !tbaa !539
  %20 = load ptr, ptr %9, align 8, !tbaa !345
  store ptr %20, ptr %11, align 8, !tbaa !345
  store ptr %13, ptr %5, align 8, !tbaa !196
  store i64 %14, ptr %7, align 8, !tbaa !199
  store i64 %15, ptr %10, align 8, !tbaa !539
  store ptr %16, ptr %9, align 8, !tbaa !345
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  ret void

21:                                               ; preds = %4
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %22
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_XPathEnvSupportDefault.cpp() #14 section ".text.startup" personality ptr @__gxx_personality_v0 !prof !162 !PGOFuncName !768 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #19
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  store ptr %2, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 2), align 8, !tbaa !152
  store float 7.500000e-01, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 3), align 8, !tbaa !163
  store i64 29, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 4), align 8, !tbaa !164
  store i64 0, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 5), align 8, !tbaa !165
  store ptr %2, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 6), align 8, !tbaa !137
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 6, i32 1), i8 0, i64 16, i1 false)
  store ptr %2, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 7), align 8, !tbaa !137
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 7, i32 1), i8 0, i64 16, i1 false)
  store ptr %2, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 8), align 8, !tbaa !166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 8, i32 1), i8 0, i64 32, i1 false)
  store i64 50, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanMap", ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, i64 0, i32 10), align 8, !tbaa !167
  %3 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_ED2Ev, ptr nonnull @_ZN11xalanc_1_1022XPathEnvSupportDefault19s_externalFunctionsE, ptr nonnull @__dso_handle) #19
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1022XPathEnvSupportDefault13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %5 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_1022XPathEnvSupportDefault13s_emptyStringE, ptr nonnull @__dso_handle) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #18

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn }

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
!35 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_ED2Ev, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E15doRemoveEntriesEv, i64 4}
!36 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_ED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev, i64 4}
!37 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_ED2Ev, ptr @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEED2Ev, i64 8}
!38 = !{ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_ED2Ev, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault9terminateEv, ptr @_ZNK11xalanc_1_1022XPathEnvSupportDefault35NamespaceFunctionTableDeleteFunctorclERKSt4pairIKNS_14XalanDOMStringENS_8XalanMapIS3_PKNS_8FunctionENS_17XalanMapKeyTraitsIS3_EEEEE, i64 7}
!40 = !{ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault9terminateEv, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault9terminateEv, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_ED2Ev, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1022XPathEnvSupportDefaultC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1015XPathEnvSupportC2Ev, i64 1}
!43 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEED2Ev, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv, i64 1}
!44 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev, i64 1}
!45 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEED2Ev, ptr @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev, i64 2}
!46 = !{ptr @_ZN11xalanc_1_1022XPathEnvSupportDefaultD2Ev, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!47 = !{ptr @_ZN11xalanc_1_1022XPathEnvSupportDefaultD2Ev, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_ED2Ev, i64 2}
!48 = !{ptr @_ZN11xalanc_1_1022XPathEnvSupportDefaultD2Ev, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEED2Ev, i64 1}
!49 = !{ptr @_ZN11xalanc_1_1022XPathEnvSupportDefaultD2Ev, ptr @_ZN11xalanc_1_1015XPathEnvSupportD2Ev, i64 1}
!50 = !{ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19updateFunctionTableERNS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_EERKS2_SC_S5_, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E4findERKS1_, i64 80}
!51 = !{ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19updateFunctionTableERNS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_EERKS2_SC_S5_, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_EixERKS1_, i64 7}
!52 = !{ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19updateFunctionTableERNS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_EERKS2_SC_S5_, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEixERKS1_, i64 40}
!53 = !{ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19updateFunctionTableERNS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_EERKS2_SC_S5_, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE4findERKS1_, i64 73}
!54 = !{ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19updateFunctionTableERNS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_EERKS2_SC_S5_, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE5eraseENS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S4_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS7_5EntryEEENS_9XalanListISG_E4NodeEEEEE, i64 40}
!55 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E4findERKS1_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_, i64 87}
!56 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_EixERKS1_, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E4findERKS1_, i64 7}
!57 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_EixERKS1_, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E13doCreateEntryERKS1_PKS7_, i64 7}
!58 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEixERKS1_, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE4findERKS1_, i64 40}
!59 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEixERKS1_, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PKS4_, i64 40}
!60 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE4findERKS1_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_, i64 77}
!61 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE5eraseENS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S4_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS7_5EntryEEENS_9XalanListISG_E4NodeEEEEE, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S4_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS7_5EntryEEENS_9XalanListISG_E4NodeEEEEE, i64 40}
!62 = !{ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault29installExternalFunctionGlobalERKNS_14XalanDOMStringES3_RKNS_8FunctionE, ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19updateFunctionTableERNS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_EERKS2_SC_S5_, i64 40}
!63 = !{ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault31uninstallExternalFunctionGlobalERKNS_14XalanDOMStringES3_, ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault19updateFunctionTableERNS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_EERKS2_SC_S5_, i64 40}
!64 = !{ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault5resetEv, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE5clearEv, i64 4}
!65 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE5clearEv, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv, i64 4}
!66 = !{ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault17setSourceDocumentERKNS_14XalanDOMStringEPNS_13XalanDocumentE, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEEixERKS1_, i64 1}
!67 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEEixERKS1_, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE4findERKS1_, i64 1}
!68 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEEixERKS1_, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PKS3_, i64 1}
!69 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!70 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E15doRemoveEntriesEv, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S7_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS8_5EntryEEENS_9XalanListISH_E4NodeEEEEE, i64 7}
!71 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEED2Ev, i64 29}
!72 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S7_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS8_5EntryEEENS_9XalanListISH_E4NodeEEEEE, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEED2Ev, i64 7}
!73 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S7_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS8_5EntryEEENS_9XalanListISH_E4NodeEEEEE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 7}
!74 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEED2Ev, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv, i64 7}
!75 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev, i64 7}
!76 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEED2Ev, ptr @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev, i64 14}
!77 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEED2Ev, i64 203}
!78 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S4_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS7_5EntryEEENS_9XalanListISG_E4NodeEEEEE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 40}
!79 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S3_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS6_5EntryEEENS_9XalanListISF_E4NodeEEEEE, i64 1}
!80 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEED2Ev, i64 29}
!81 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S3_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS6_5EntryEEENS_9XalanListISF_E4NodeEEEEE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 1}
!82 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E13doCreateEntryERKS1_PKS7_, ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_mRKSK_, i64 1}
!83 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E13doCreateEntryERKS1_PKS7_, ptr @_ZNK11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE5emptyEv, i64 7}
!84 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E13doCreateEntryERKS1_PKS7_, ptr @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE9push_backERKSA_, i64 7}
!85 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E13doCreateEntryERKS1_PKS7_, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj, i64 7}
!86 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E13doCreateEntryERKS1_PKS7_, ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_, i64 7}
!87 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_mRKSK_, ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE9doReserveEm, i64 1}
!88 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_mRKSK_, ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm, i64 29}
!89 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEC2ERKSN_RN11xercesc_2_713MemoryManagerEm, i64 1}
!90 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev, i64 1}
!91 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE6insertEPSH_PKSH_SN_, i64 1}
!92 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_, ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm, i64 7}
!93 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_, ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_, i64 7}
!94 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE6insertEPSJ_mRKSJ_, ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE9doReserveEm, i64 7}
!95 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE6insertEPSJ_mRKSJ_, ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEC2ERKSJ_RN11xercesc_2_713MemoryManagerEm, i64 203}
!96 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEEC2ERKSM_RN11xercesc_2_713MemoryManagerEm, i64 7}
!97 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev, i64 7}
!98 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEC2ERKSJ_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE6insertEPSG_PKSG_SM_, i64 4}
!99 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE10doPushBackERKSG_, ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEC2ERKSJ_RN11xercesc_2_713MemoryManagerEm, i64 40}
!100 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE10doPushBackERKSG_, ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE10doPushBackERKSG_, i64 40}
!101 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PKS4_, ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE6insertEPSJ_mRKSJ_, i64 7}
!102 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PKS4_, ptr @_ZNK11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5emptyEv, i64 40}
!103 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PKS4_, ptr @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE9push_backERKS9_, i64 40}
!104 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PKS4_, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj, i64 40}
!105 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PKS4_, ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE10doPushBackERKSG_, i64 40}
!106 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PKS3_, ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_mRKSI_, i64 1}
!107 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PKS3_, ptr @_ZNK11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5emptyEv, i64 1}
!108 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PKS3_, ptr @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE9push_backERKS8_, i64 1}
!109 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PKS3_, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj, i64 1}
!110 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PKS3_, ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_, i64 1}
!111 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_mRKSI_, ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE9doReserveEm, i64 1}
!112 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_mRKSI_, ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm, i64 29}
!113 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEC2ERKSL_RN11xercesc_2_713MemoryManagerEm, i64 1}
!114 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev, i64 1}
!115 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_, ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm, i64 1}
!116 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_, ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_, i64 1}
!117 = !{ptr @_GLOBAL__sub_I_XPathEnvSupportDefault.cpp, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!118 = !{ptr @_GLOBAL__sub_I_XPathEnvSupportDefault.cpp, ptr @__cxa_atexit, i64 3}
!119 = !{ptr @_GLOBAL__sub_I_XPathEnvSupportDefault.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 2}
!120 = !{ptr @_GLOBAL__sub_I_XPathEnvSupportDefault.cpp, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!121 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!122 = !{!"function_entry_count", i64 4}
!123 = !{!"branch_weights", i32 4, i32 0}
!124 = !{!125, !129, i64 8}
!125 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEE", !126, i64 0, !129, i64 8, !129, i64 16, !126, i64 24}
!126 = !{!"any pointer", !127, i64 0}
!127 = !{!"omnipotent char", !128, i64 0}
!128 = !{!"Simple C++ TBAA"}
!129 = !{!"long", !127, i64 0}
!130 = !{!"branch_weights", i32 3, i32 1}
!131 = !{!132, !126, i64 8}
!132 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEEE", !126, i64 0, !126, i64 8, !126, i64 16}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE5beginEv: argument 0"}
!135 = distinct !{!135, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE5beginEv"}
!136 = !{!"branch_weights", i32 0, i32 1}
!137 = !{!132, !126, i64 0}
!138 = !{!139, !139, i64 0}
!139 = !{!"vtable pointer", !128, i64 0}
!140 = !{!141, !126, i64 24}
!141 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE4NodeE", !142, i64 0, !126, i64 16, !126, i64 24}
!142 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E5EntryE", !126, i64 0, !143, i64 8}
!143 = !{!"bool", !127, i64 0}
!144 = !{!141, !126, i64 16}
!145 = !{}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE3endEv: argument 0"}
!148 = distinct !{!148, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE3endEv"}
!149 = !{!"branch_weights", i32 0, i32 8}
!150 = !{!"branch_weights", i32 1, i32 7}
!151 = !{!142, !126, i64 0}
!152 = !{!153, !126, i64 8}
!153 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_EE", !154, i64 0, !155, i64 1, !126, i64 8, !156, i64 16, !129, i64 24, !129, i64 32, !132, i64 40, !132, i64 64, !125, i64 88, !129, i64 120, !129, i64 128}
!154 = !{!"_ZTSN11xalanc_1_1021DOMStringHashFunctionE"}
!155 = !{!"_ZTSSt8equal_toIN11xalanc_1_1014XalanDOMStringEE"}
!156 = !{!"float", !127, i64 0}
!157 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!158 = distinct !{!158, !159, !160}
!159 = !{!"llvm.loop.mustprogress"}
!160 = !{!"llvm.loop.unroll.disable"}
!161 = !{!"function_entry_count", i64 0}
!162 = !{!"function_entry_count", i64 1}
!163 = !{!153, !156, i64 16}
!164 = !{!153, !129, i64 24}
!165 = !{!153, !129, i64 32}
!166 = !{!125, !126, i64 0}
!167 = !{!153, !129, i64 128}
!168 = !{!153, !129, i64 120}
!169 = !{!126, !126, i64 0}
!170 = !{!125, !129, i64 16}
!171 = !{!125, !126, i64 24}
!172 = !{!173, !175}
!173 = distinct !{!173, !174, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE5beginEv: argument 0"}
!174 = distinct !{!174, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE5beginEv"}
!175 = distinct !{!175, !176, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E5beginEv: argument 0"}
!176 = distinct !{!176, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E5beginEv"}
!177 = !{!178, !180}
!178 = distinct !{!178, !179, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE3endEv: argument 0"}
!179 = distinct !{!179, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE3endEv"}
!180 = distinct !{!180, !181, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E3endEv: argument 0"}
!181 = distinct !{!181, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E3endEv"}
!182 = !{!"branch_weights", i32 1, i32 127}
!183 = !{!184}
!184 = distinct !{!184, !185, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS2_IS3_PKNS_8FunctionENS_17XalanMapKeyTraitsIS3_EEEES8_E5EntryEEENS_9XalanListISB_E4NodeEEppEv: argument 0"}
!185 = distinct !{!185, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS2_IS3_PKNS_8FunctionENS_17XalanMapKeyTraitsIS3_EEEES8_E5EntryEEENS_9XalanListISB_E4NodeEEppEv"}
!186 = !{!"branch_weights", i32 127, i32 769}
!187 = distinct !{!187, !159, !160}
!188 = !{!189, !126, i64 8}
!189 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEEE", !154, i64 0, !155, i64 1, !126, i64 8, !156, i64 16, !129, i64 24, !129, i64 32, !190, i64 40, !190, i64 64, !191, i64 88, !129, i64 120, !129, i64 128}
!190 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !126, i64 0, !126, i64 8, !126, i64 16}
!191 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !126, i64 0, !129, i64 8, !129, i64 16, !126, i64 24}
!192 = !{!189, !156, i64 16}
!193 = !{!189, !129, i64 24}
!194 = !{!189, !129, i64 32}
!195 = !{!190, !126, i64 0}
!196 = !{!191, !126, i64 0}
!197 = !{!189, !129, i64 128}
!198 = !{!"branch_weights", i32 1, i32 0}
!199 = !{!191, !129, i64 8}
!200 = !{!190, !126, i64 8}
!201 = !{!202}
!202 = distinct !{!202, !203, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!203 = distinct !{!203, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!204 = !{!205, !126, i64 24}
!205 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE4NodeE", !206, i64 0, !126, i64 16, !126, i64 24}
!206 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE5EntryE", !126, i64 0, !143, i64 8}
!207 = !{!205, !126, i64 16}
!208 = !{!209}
!209 = distinct !{!209, !210, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!210 = distinct !{!210, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!211 = !{!"branch_weights", i32 0, i32 2}
!212 = !{!"branch_weights", i32 1, i32 1}
!213 = !{!206, !126, i64 0}
!214 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!215 = distinct !{!215, !159, !160}
!216 = !{!217, !219}
!217 = distinct !{!217, !218, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE5beginEv: argument 0"}
!218 = distinct !{!218, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE5beginEv"}
!219 = distinct !{!219, !220, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E5beginEv: argument 0"}
!220 = distinct !{!220, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E5beginEv"}
!221 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!222 = !{!223, !225}
!223 = distinct !{!223, !224, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE3endEv: argument 0"}
!224 = distinct !{!224, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE3endEv"}
!225 = distinct !{!225, !226, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E3endEv: argument 0"}
!226 = distinct !{!226, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E3endEv"}
!227 = !{!228}
!228 = distinct !{!228, !229, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS2_IS3_PKNS_8FunctionENS_17XalanMapKeyTraitsIS3_EEEES8_E5EntryEEENS_9XalanListISB_E4NodeEEppEv: argument 0"}
!229 = distinct !{!229, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS2_IS3_PKNS_8FunctionENS_17XalanMapKeyTraitsIS3_EEEES8_E5EntryEEENS_9XalanListISB_E4NodeEEppEv"}
!230 = !{!"function_entry_count", i64 80}
!231 = !{!232, !234}
!232 = distinct !{!232, !233, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE3endEv: argument 0"}
!233 = distinct !{!233, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE3endEv"}
!234 = distinct !{!234, !235, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E3endEv: argument 0"}
!235 = distinct !{!235, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E3endEv"}
!236 = !{!"branch_weights", i32 0, i32 80}
!237 = !{!238, !126, i64 0}
!238 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS2_IS3_PKNS_8FunctionENS_17XalanMapKeyTraitsIS3_EEEES8_E5EntryEEENS_9XalanListISB_E4NodeEEE", !126, i64 0}
!239 = !{!"branch_weights", i32 7, i32 73}
!240 = !{!"branch_weights", i32 0, i32 7}
!241 = !{!"VP", i32 0, i64 7, i64 -9095063491597436848, i64 1, i64 -2650031786346989612, i64 1, i64 -8621238190926301716, i64 1}
!242 = !{!243, !126, i64 8}
!243 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !126, i64 0, !126, i64 8, !126, i64 16}
!244 = !{!245, !247}
!245 = distinct !{!245, !246, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!246 = distinct !{!246, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!247 = distinct !{!247, !248, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!248 = distinct !{!248, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!249 = !{!"branch_weights", i32 0, i32 73}
!250 = !{!243, !126, i64 0}
!251 = !{!252, !126, i64 24}
!252 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE4NodeE", !253, i64 0, !126, i64 16, !126, i64 24}
!253 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE5EntryE", !126, i64 0, !143, i64 8}
!254 = !{!252, !126, i64 16}
!255 = !{!256, !126, i64 0}
!256 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISA_E4NodeEEE", !126, i64 0}
!257 = !{!"branch_weights", i32 33, i32 40}
!258 = !{!"branch_weights", i32 0, i32 33}
!259 = !{!"VP", i32 0, i64 26, i64 -36784025767098395, i64 2, i64 -3462863016790156731, i64 2, i64 4864008049529154241, i64 1}
!260 = !{!253, !126, i64 0}
!261 = !{!262, !126, i64 40}
!262 = !{!"_ZTSSt4pairIKN11xalanc_1_1014XalanDOMStringEPKNS0_8FunctionEE", !263, i64 0, !126, i64 40}
!263 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !264, i64 0, !265, i64 32}
!264 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !126, i64 0, !129, i64 8, !129, i64 16, !126, i64 24}
!265 = !{!"int", !127, i64 0}
!266 = !{!"VP", i32 0, i64 40, i64 7696932249515872727, i64 26, i64 2323684351093987318, i64 3, i64 7611969732965206985, i64 2}
!267 = !{!"VP", i32 0, i64 40, i64 -7405368087501025645, i64 40}
!268 = !{!"branch_weights", i32 40, i32 0}
!269 = !{!"function_entry_count", i64 87}
!270 = !{!"branch_weights", i32 2, i32 85}
!271 = !{!264, !129, i64 8}
!272 = !{!"branch_weights", i32 0, i32 85}
!273 = !{!274, !274, i64 0}
!274 = !{!"short", !127, i64 0}
!275 = !{!"branch_weights", i32 1, i32 169}
!276 = !{!"branch_weights", i32 169, i32 3727}
!277 = distinct !{!277, !159, !160}
!278 = !{!279, !129, i64 8}
!279 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEE", !126, i64 0, !129, i64 8, !129, i64 16, !126, i64 24}
!280 = !{!"branch_weights", i32 1, i32 191}
!281 = !{!279, !126, i64 24}
!282 = !{!142, !143, i64 8}
!283 = !{i8 0, i8 2}
!284 = !{!"branch_weights", i32 76, i32 0}
!285 = !{!"branch_weights", i32 73, i32 3}
!286 = !{!"branch_weights", i32 12, i32 73}
!287 = !{!"branch_weights", i32 191, i32 1025}
!288 = distinct !{!288, !159, !160}
!289 = !{!290}
!290 = distinct !{!290, !291, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E3endEv: argument 0"}
!291 = distinct !{!291, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E3endEv"}
!292 = !{!293, !290}
!293 = distinct !{!293, !294, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE3endEv: argument 0"}
!294 = distinct !{!294, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE3endEv"}
!295 = !{!"branch_weights", i32 1, i32 13}
!296 = !{!"function_entry_count", i64 7}
!297 = !{!298, !300}
!298 = distinct !{!298, !299, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE3endEv: argument 0"}
!299 = distinct !{!299, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE3endEv"}
!300 = distinct !{!300, !301, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E3endEv: argument 0"}
!301 = distinct !{!301, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E3endEv"}
!302 = !{!"branch_weights", i32 7, i32 0}
!303 = !{!"function_entry_count", i64 40}
!304 = !{!305, !307}
!305 = distinct !{!305, !306, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!306 = distinct !{!306, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!307 = distinct !{!307, !308, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!308 = distinct !{!308, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!309 = !{!"branch_weights", i32 0, i32 40}
!310 = !{!"function_entry_count", i64 113}
!311 = !{!312, !129, i64 32}
!312 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEE", !154, i64 0, !155, i64 1, !126, i64 8, !156, i64 16, !129, i64 24, !129, i64 32, !243, i64 40, !243, i64 64, !313, i64 88, !129, i64 120, !129, i64 128}
!313 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEEE", !126, i64 0, !129, i64 8, !129, i64 16, !126, i64 24}
!314 = !{!"branch_weights", i32 7, i32 106}
!315 = !{!313, !129, i64 8}
!316 = !{!"branch_weights", i32 0, i32 106}
!317 = !{!"branch_weights", i32 1, i32 211}
!318 = !{!"branch_weights", i32 211, i32 1221}
!319 = !{!313, !126, i64 24}
!320 = !{!321, !129, i64 8}
!321 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEE", !126, i64 0, !129, i64 8, !129, i64 16, !126, i64 24}
!322 = !{!"branch_weights", i32 14, i32 52}
!323 = !{!321, !126, i64 24}
!324 = !{!253, !143, i64 8}
!325 = !{!"branch_weights", i32 48, i32 4}
!326 = !{!"branch_weights", i32 40, i32 8}
!327 = !{!"branch_weights", i32 66, i32 40}
!328 = !{!"branch_weights", i32 52, i32 0}
!329 = distinct !{!329, !159, !160}
!330 = !{!331}
!331 = distinct !{!331, !332, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!332 = distinct !{!332, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!333 = !{!334, !331}
!334 = distinct !{!334, !335, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!335 = distinct !{!335, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!336 = !{!"branch_weights", i32 7, i32 66}
!337 = !{!"VP", i32 0, i64 7, i64 8345045103670217670, i64 7}
!338 = !{!339, !341}
!339 = distinct !{!339, !340, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!340 = distinct !{!340, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!341 = distinct !{!341, !342, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!342 = distinct !{!342, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!343 = !{!312, !129, i64 120}
!344 = !{!312, !129, i64 128}
!345 = !{!191, !126, i64 24}
!346 = !{!347, !129, i64 8}
!347 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEE", !126, i64 0, !129, i64 8, !129, i64 16, !126, i64 24}
!348 = !{!"branch_weights", i32 115, i32 1}
!349 = !{!"branch_weights", i32 127, i32 3585}
!350 = distinct !{!350, !159, !160}
!351 = !{!189, !129, i64 120}
!352 = !{!353}
!353 = distinct !{!353, !354, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE4findERKS1_: argument 0"}
!354 = distinct !{!354, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE4findERKS1_"}
!355 = !{!356, !126, i64 0}
!356 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEE", !126, i64 0}
!357 = !{!358, !360, !362}
!358 = distinct !{!358, !359, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!359 = distinct !{!359, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!360 = distinct !{!360, !361, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!361 = distinct !{!361, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!362 = distinct !{!362, !363, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!363 = distinct !{!363, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!364 = !{!365, !126, i64 40}
!365 = !{!"_ZTSSt4pairIKN11xalanc_1_1014XalanDOMStringEPNS0_13XalanDocumentEE", !263, i64 0, !126, i64 40}
!366 = !{!367, !369}
!367 = distinct !{!367, !368, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!368 = distinct !{!368, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!369 = distinct !{!369, !370, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!370 = distinct !{!370, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!371 = !{!372, !374, !376}
!372 = distinct !{!372, !373, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!373 = distinct !{!373, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!374 = distinct !{!374, !375, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE5beginEv: argument 0"}
!375 = distinct !{!375, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE5beginEv"}
!376 = distinct !{!376, !377, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE5beginEv: argument 0"}
!377 = distinct !{!377, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE5beginEv"}
!378 = !{!379, !381, !383}
!379 = distinct !{!379, !380, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!380 = distinct !{!380, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!381 = distinct !{!381, !382, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!382 = distinct !{!382, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!383 = distinct !{!383, !384, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!384 = distinct !{!384, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!385 = distinct !{!385, !159, !160}
!386 = !{!263, !265, i64 32}
!387 = !{!388}
!388 = distinct !{!388, !389, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E4findERKS1_: argument 0"}
!389 = distinct !{!389, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E4findERKS1_"}
!390 = !{!391, !393, !395}
!391 = distinct !{!391, !392, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE3endEv: argument 0"}
!392 = distinct !{!392, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE3endEv"}
!393 = distinct !{!393, !394, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E3endEv: argument 0"}
!394 = distinct !{!394, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E3endEv"}
!395 = distinct !{!395, !396, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E3endEv: argument 0"}
!396 = distinct !{!396, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E3endEv"}
!397 = !{!398}
!398 = distinct !{!398, !399, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE4findERKS1_: argument 0"}
!399 = distinct !{!399, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE4findERKS1_"}
!400 = !{!401, !403, !405}
!401 = distinct !{!401, !402, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!402 = distinct !{!402, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!403 = distinct !{!403, !404, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!404 = distinct !{!404, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!405 = distinct !{!405, !406, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!406 = distinct !{!406, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!407 = !{!408, !126, i64 8}
!408 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !126, i64 8}
!409 = !{!264, !129, i64 16}
!410 = !{!264, !126, i64 24}
!411 = !{!264, !126, i64 0}
!412 = !{!413, !415, !417}
!413 = distinct !{!413, !414, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!414 = distinct !{!414, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!415 = distinct !{!415, !416, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE5beginEv: argument 0"}
!416 = distinct !{!416, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE5beginEv"}
!417 = distinct !{!417, !418, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE5beginEv: argument 0"}
!418 = distinct !{!418, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE5beginEv"}
!419 = !{!420, !422, !424}
!420 = distinct !{!420, !421, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!421 = distinct !{!421, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!422 = distinct !{!422, !423, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!423 = distinct !{!423, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!424 = distinct !{!424, !425, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!425 = distinct !{!425, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!426 = !{!427, !126, i64 0}
!427 = !{!"_ZTSN11xalanc_1_1022XPathEnvSupportDefault35NamespaceFunctionTableDeleteFunctorE", !126, i64 0}
!428 = distinct !{!428, !159, !160}
!429 = !{!"function_entry_count", i64 42470003}
!430 = !{!"branch_weights", i32 52000, i32 42418003}
!431 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!432 = !{!"function_entry_count", i64 8}
!433 = !{!"branch_weights", i32 5, i32 3}
!434 = !{!435}
!435 = distinct !{!435, !436, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE5beginEv: argument 0"}
!436 = distinct !{!436, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE5beginEv"}
!437 = !{!438}
!438 = distinct !{!438, !439, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE3endEv: argument 0"}
!439 = distinct !{!439, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE3endEv"}
!440 = !{!"branch_weights", i32 0, i32 10}
!441 = !{!"branch_weights", i32 3, i32 7}
!442 = !{!443}
!443 = distinct !{!443, !444, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS2_IS3_PKNS_8FunctionENS_17XalanMapKeyTraitsIS3_EEEES8_E5EntryEEENS_9XalanListISB_E4NodeEEppEi: argument 0"}
!444 = distinct !{!444, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS2_IS3_PKNS_8FunctionENS_17XalanMapKeyTraitsIS3_EEEES8_E5EntryEEENS_9XalanListISB_E4NodeEEppEi"}
!445 = distinct !{!445, !159, !160}
!446 = !{!132, !126, i64 16}
!447 = !{!"branch_weights", i32 3, i32 0}
!448 = !{!"VP", i32 0, i64 3, i64 -7405368087501025645, i64 3}
!449 = !{!450}
!450 = distinct !{!450, !451, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E5beginEv: argument 0"}
!451 = distinct !{!451, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_E5beginEv"}
!452 = !{!453, !450}
!453 = distinct !{!453, !454, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE5beginEv: argument 0"}
!454 = distinct !{!454, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE5beginEv"}
!455 = !{!"branch_weights", i32 127, i32 97}
!456 = distinct !{!456, !159, !160}
!457 = !{!"function_entry_count", i64 5}
!458 = !{!"branch_weights", i32 4, i32 1}
!459 = distinct !{!459, !159, !160}
!460 = !{!461}
!461 = distinct !{!461, !462, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE3endEv: argument 0"}
!462 = distinct !{!462, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE3endEv"}
!463 = !{!464}
!464 = distinct !{!464, !465, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!465 = distinct !{!465, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!466 = !{!467}
!467 = distinct !{!467, !468, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!468 = distinct !{!468, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!469 = !{!"branch_weights", i32 0, i32 47}
!470 = !{!"branch_weights", i32 7, i32 40}
!471 = !{!312, !126, i64 8}
!472 = distinct !{!472, !159, !160}
!473 = !{!474}
!474 = distinct !{!474, !475, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE5beginEv: argument 0"}
!475 = distinct !{!475, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE5beginEv"}
!476 = !{!477, !474}
!477 = distinct !{!477, !478, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!478 = distinct !{!478, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!479 = distinct !{!479, !159, !160}
!480 = !{!"function_entry_count", i64 14}
!481 = !{!313, !129, i64 16}
!482 = !{!"branch_weights", i32 7, i32 7}
!483 = !{!"branch_weights", i32 1, i32 223}
!484 = !{!"branch_weights", i32 223, i32 6273}
!485 = distinct !{!485, !159, !160}
!486 = !{!313, !126, i64 0}
!487 = !{!"branch_weights", i32 0, i32 14}
!488 = !{!489}
!489 = distinct !{!489, !490, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!490 = distinct !{!490, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!491 = !{!492}
!492 = distinct !{!492, !493, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!493 = distinct !{!493, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!494 = !{!"branch_weights", i32 0, i32 54}
!495 = !{!"branch_weights", i32 14, i32 40}
!496 = !{!497}
!497 = distinct !{!497, !498, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISA_E4NodeEEppEi: argument 0"}
!498 = distinct !{!498, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISA_E4NodeEEppEi"}
!499 = distinct !{!499, !159, !160}
!500 = !{!243, !126, i64 16}
!501 = !{!"branch_weights", i32 14, i32 0}
!502 = !{!"VP", i32 0, i64 14, i64 -7405368087501025645, i64 14}
!503 = !{!504}
!504 = distinct !{!504, !505, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!505 = distinct !{!505, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!506 = !{!"function_entry_count", i64 203}
!507 = !{!321, !129, i64 16}
!508 = !{!"branch_weights", i32 167, i32 36}
!509 = !{!321, !126, i64 0}
!510 = !{!"VP", i32 0, i64 36, i64 -7405368087501025645, i64 36}
!511 = !{!"function_entry_count", i64 29}
!512 = !{!279, !129, i64 16}
!513 = !{!"branch_weights", i32 23, i32 6}
!514 = !{!279, !126, i64 0}
!515 = !{!"VP", i32 0, i64 6, i64 -7405368087501025645, i64 6}
!516 = !{!"function_entry_count", i64 2}
!517 = !{!518}
!518 = distinct !{!518, !519, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!519 = distinct !{!519, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!520 = !{!521}
!521 = distinct !{!521, !522, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!522 = distinct !{!522, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!523 = !{!"branch_weights", i32 0, i32 3}
!524 = !{!"branch_weights", i32 2, i32 1}
!525 = !{!526}
!526 = distinct !{!526, !527, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEppEi: argument 0"}
!527 = distinct !{!527, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEppEi"}
!528 = distinct !{!528, !159, !160}
!529 = !{!190, !126, i64 16}
!530 = !{!"branch_weights", i32 2, i32 0}
!531 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
!532 = !{!533}
!533 = distinct !{!533, !534, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE5beginEv: argument 0"}
!534 = distinct !{!534, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE5beginEv"}
!535 = !{!536, !533}
!536 = distinct !{!536, !537, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!537 = distinct !{!537, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!538 = distinct !{!538, !159, !160}
!539 = !{!191, !129, i64 16}
!540 = distinct !{!540, !159, !160}
!541 = !{!542}
!542 = distinct !{!542, !543, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!543 = distinct !{!543, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!544 = !{!206, !143, i64 8}
!545 = !{!347, !129, i64 16}
!546 = !{!"branch_weights", i32 28, i32 1}
!547 = !{!347, !126, i64 24}
!548 = !{!347, !126, i64 0}
!549 = !{!"branch_weights", i32 1, i32 6}
!550 = !{!"branch_weights", i32 223, i32 5281}
!551 = !{!552}
!552 = distinct !{!552, !553, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE3endEv: argument 0"}
!553 = distinct !{!553, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE3endEv"}
!554 = !{!555}
!555 = distinct !{!555, !556, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS2_IS3_PKNS_8FunctionENS_17XalanMapKeyTraitsIS3_EEEES8_E5EntryEEENS_9XalanListISB_E4NodeEEmmEv: argument 0"}
!556 = distinct !{!556, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS2_IS3_PKNS_8FunctionENS_17XalanMapKeyTraitsIS3_EEEES8_E5EntryEEENS_9XalanListISB_E4NodeEEmmEv"}
!557 = !{!312, !156, i64 16}
!558 = !{!312, !129, i64 24}
!559 = !{!560}
!560 = distinct !{!560, !561, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE3endEv: argument 0"}
!561 = distinct !{!561, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE3endEv"}
!562 = !{!563}
!563 = distinct !{!563, !564, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE3endEv: argument 0"}
!564 = distinct !{!564, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE3endEv"}
!565 = !{!566}
!566 = distinct !{!566, !567, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS2_IS3_PKNS_8FunctionENS_17XalanMapKeyTraitsIS3_EEEES8_E5EntryEEENS_9XalanListISB_E4NodeEEmmEv: argument 0"}
!567 = distinct !{!567, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS2_IS3_PKNS_8FunctionENS_17XalanMapKeyTraitsIS3_EEEES8_E5EntryEEENS_9XalanListISB_E4NodeEEmmEv"}
!568 = !{!569}
!569 = distinct !{!569, !570, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE3endEv: argument 0"}
!570 = distinct !{!570, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE3endEv"}
!571 = !{!572}
!572 = distinct !{!572, !573, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS2_IS3_PKNS_8FunctionENS_17XalanMapKeyTraitsIS3_EEEES8_E5EntryEEENS_9XalanListISB_E4NodeEEmmEv: argument 0"}
!573 = distinct !{!573, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS2_IS3_PKNS_8FunctionENS_17XalanMapKeyTraitsIS3_EEEES8_E5EntryEEENS_9XalanListISB_E4NodeEEmmEv"}
!574 = !{!575}
!575 = distinct !{!575, !576, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE3endEv: argument 0"}
!576 = distinct !{!576, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE3endEv"}
!577 = !{!578}
!578 = distinct !{!578, !579, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS2_IS3_PKNS_8FunctionENS_17XalanMapKeyTraitsIS3_EEEES8_E5EntryEEENS_9XalanListISB_E4NodeEEmmEv: argument 0"}
!579 = distinct !{!579, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS2_IS3_PKNS_8FunctionENS_17XalanMapKeyTraitsIS3_EEEES8_E5EntryEEENS_9XalanListISB_E4NodeEEmmEv"}
!580 = distinct !{!580, !159, !160}
!581 = distinct !{!581, !159, !160}
!582 = distinct !{!582, !159, !160}
!583 = distinct !{!583, !159, !160}
!584 = distinct !{!584, !159, !160}
!585 = distinct !{!585, !159, !160}
!586 = !{!587}
!587 = distinct !{!587, !588, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE5beginEv: argument 0"}
!588 = distinct !{!588, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE5beginEv"}
!589 = !{!590}
!590 = distinct !{!590, !591, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE3endEv: argument 0"}
!591 = distinct !{!591, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE3endEv"}
!592 = distinct !{!592, !159, !160}
!593 = !{!594}
!594 = distinct !{!594, !595, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE3endEv: argument 0"}
!595 = distinct !{!595, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEE3endEv"}
!596 = !{i64 0, i64 8, !169, i64 8, i64 1, !597}
!597 = !{!143, !143, i64 0}
!598 = distinct !{!598, !159, !160}
!599 = distinct !{!599, !159, !160}
!600 = distinct !{!600, !159, !160}
!601 = distinct !{!601, !159, !160}
!602 = distinct !{!602, !159, !160}
!603 = !{!"function_entry_count", i64 36}
!604 = !{!"branch_weights", i32 35, i32 1}
!605 = !{!"branch_weights", i32 29, i32 6}
!606 = !{!"VP", i32 0, i64 6, i64 8345045103670217670, i64 6}
!607 = !{!"branch_weights", i32 127, i32 1}
!608 = distinct !{!608, !159, !160}
!609 = distinct !{!609, !159, !160}
!610 = distinct !{!610, !159, !160}
!611 = distinct !{!611, !159, !160}
!612 = distinct !{!612, !159, !160}
!613 = distinct !{!613, !159, !160}
!614 = !{!"branch_weights", i32 6, i32 1}
!615 = !{!616, !618, !620}
!616 = distinct !{!616, !617, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!617 = distinct !{!617, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!618 = distinct !{!618, !619, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE5beginEv: argument 0"}
!619 = distinct !{!619, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE5beginEv"}
!620 = distinct !{!620, !621, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE5beginEv: argument 0"}
!621 = distinct !{!621, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE5beginEv"}
!622 = !{!623, !625, !627}
!623 = distinct !{!623, !624, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!624 = distinct !{!624, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!625 = distinct !{!625, !626, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!626 = distinct !{!626, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!627 = distinct !{!627, !628, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!628 = distinct !{!628, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!629 = distinct !{!629, !159, !160}
!630 = distinct !{!630, !159, !160}
!631 = distinct !{!631, !159, !160}
!632 = distinct !{!632, !159, !160}
!633 = distinct !{!633, !159, !160}
!634 = distinct !{!634, !159, !160}
!635 = distinct !{!635, !159, !160}
!636 = distinct !{!636, !159, !160}
!637 = distinct !{!637, !159, !160}
!638 = distinct !{!638, !159, !160}
!639 = distinct !{!639, !159, !160}
!640 = !{!"function_entry_count", i64 243}
!641 = !{!"branch_weights", i32 239, i32 4}
!642 = !{!"VP", i32 0, i64 4, i64 8345045103670217670, i64 4}
!643 = !{!"branch_weights", i32 203, i32 36}
!644 = !{!"VP", i32 0, i64 36, i64 8345045103670217670, i64 36}
!645 = !{!"branch_weights", i32 0, i32 4}
!646 = distinct !{!646, !159, !160}
!647 = distinct !{!647, !159, !160}
!648 = distinct !{!648, !159, !160}
!649 = distinct !{!649, !159, !160}
!650 = distinct !{!650, !159, !160}
!651 = distinct !{!651, !159, !160}
!652 = !{!"branch_weights", i32 40, i32 40}
!653 = !{!"branch_weights", i32 36, i32 4}
!654 = !{!"VP", i32 0, i64 4, i64 -7405368087501025645, i64 4}
!655 = !{!656, !658}
!656 = distinct !{!656, !657, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!657 = distinct !{!657, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!658 = distinct !{!658, !659, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!659 = distinct !{!659, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!660 = !{!"branch_weights", i32 7, i32 33}
!661 = !{!"branch_weights", i32 1, i32 159}
!662 = !{!"branch_weights", i32 159, i32 937}
!663 = !{!"VP", i32 0, i64 40, i64 8345045103670217670, i64 40}
!664 = !{!665}
!665 = distinct !{!665, !666, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!666 = distinct !{!666, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!667 = !{!668}
!668 = distinct !{!668, !669, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISA_E4NodeEEmmEv: argument 0"}
!669 = distinct !{!669, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISA_E4NodeEEmmEv"}
!670 = !{!671}
!671 = distinct !{!671, !672, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!672 = distinct !{!672, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!673 = !{!674}
!674 = distinct !{!674, !675, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!675 = distinct !{!675, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!676 = !{!677}
!677 = distinct !{!677, !678, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISA_E4NodeEEmmEv: argument 0"}
!678 = distinct !{!678, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISA_E4NodeEEmmEv"}
!679 = !{!680}
!680 = distinct !{!680, !681, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!681 = distinct !{!681, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!682 = !{!683}
!683 = distinct !{!683, !684, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISA_E4NodeEEmmEv: argument 0"}
!684 = distinct !{!684, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISA_E4NodeEEmmEv"}
!685 = !{!686}
!686 = distinct !{!686, !687, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!687 = distinct !{!687, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!688 = !{!689}
!689 = distinct !{!689, !690, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISA_E4NodeEEmmEv: argument 0"}
!690 = distinct !{!690, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISA_E4NodeEEmmEv"}
!691 = !{!692}
!692 = distinct !{!692, !693, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!693 = distinct !{!693, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!694 = !{!695}
!695 = distinct !{!695, !696, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!696 = distinct !{!696, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!697 = distinct !{!697, !159, !160}
!698 = !{!699}
!699 = distinct !{!699, !700, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!700 = distinct !{!700, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!701 = distinct !{!701, !159, !160}
!702 = distinct !{!702, !159, !160}
!703 = distinct !{!703, !159, !160}
!704 = !{!705}
!705 = distinct !{!705, !706, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!706 = distinct !{!706, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!707 = !{!708, !705}
!708 = distinct !{!708, !709, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!709 = distinct !{!709, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!710 = !{!"branch_weights", i32 127, i32 17793}
!711 = !{!712}
!712 = distinct !{!712, !713, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!713 = distinct !{!713, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!714 = !{!715}
!715 = distinct !{!715, !716, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEmmEv: argument 0"}
!716 = distinct !{!716, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEmmEv"}
!717 = !{!718}
!718 = distinct !{!718, !719, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!719 = distinct !{!719, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!720 = !{!721}
!721 = distinct !{!721, !722, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!722 = distinct !{!722, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!723 = !{!724}
!724 = distinct !{!724, !725, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEmmEv: argument 0"}
!725 = distinct !{!725, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEmmEv"}
!726 = !{!727}
!727 = distinct !{!727, !728, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!728 = distinct !{!728, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!729 = !{!730}
!730 = distinct !{!730, !731, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEmmEv: argument 0"}
!731 = distinct !{!731, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEmmEv"}
!732 = !{!733}
!733 = distinct !{!733, !734, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!734 = distinct !{!734, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!735 = !{!736}
!736 = distinct !{!736, !737, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEmmEv: argument 0"}
!737 = distinct !{!737, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEmmEv"}
!738 = distinct !{!738, !159, !160}
!739 = distinct !{!739, !159, !160}
!740 = distinct !{!740, !159, !160}
!741 = distinct !{!741, !159, !160}
!742 = distinct !{!742, !159, !160}
!743 = distinct !{!743, !159, !160}
!744 = !{!745}
!745 = distinct !{!745, !746, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!746 = distinct !{!746, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!747 = !{!748}
!748 = distinct !{!748, !749, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!749 = distinct !{!749, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!750 = distinct !{!750, !159, !160}
!751 = !{!752}
!752 = distinct !{!752, !753, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!753 = distinct !{!753, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!754 = distinct !{!754, !159, !160}
!755 = distinct !{!755, !159, !160}
!756 = distinct !{!756, !159, !160}
!757 = distinct !{!757, !159, !160}
!758 = distinct !{!758, !159, !160}
!759 = !{!"function_entry_count", i64 30}
!760 = !{!"branch_weights", i32 30, i32 0}
!761 = !{!"branch_weights", i32 29, i32 1}
!762 = distinct !{!762, !159, !160}
!763 = distinct !{!763, !159, !160}
!764 = distinct !{!764, !159, !160}
!765 = distinct !{!765, !159, !160}
!766 = distinct !{!766, !159, !160}
!767 = distinct !{!767, !159, !160}
!768 = !{!"XPathEnvSupportDefault.cpp;_GLOBAL__sub_I_XPathEnvSupportDefault.cpp"}
