; ModuleID = 'XercesParserLiaison.cpp'
source_filename = "XercesParserLiaison.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.xalanc_1_10::XercesParserLiaison" = type { %"class.xalanc_1_10::XMLParserLiaison", %"class.xercesc_2_7::ErrorHandler", i32, i8, i8, i8, i8, ptr, ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanMap", i8, i8, i8, i8, ptr, ptr, ptr }
%"class.xalanc_1_10::XMLParserLiaison" = type { ptr }
%"class.xercesc_2_7::ErrorHandler" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap" = type { %"class.xalanc_1_10::XalanHasher", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanVector.0", i64, i64 }
%"class.xalanc_1_10::XalanHasher" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node" = type { %"struct.xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry", ptr, ptr }
%"struct.xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry" = type <{ ptr, i8, [7 x i8] }>
%"struct.std::pair" = type { ptr, %"struct.xalanc_1_10::XercesParserLiaison::DocumentEntry" }
%"struct.xalanc_1_10::XercesParserLiaison::DocumentEntry" = type { i8, ptr }
%"class.xalanc_1_10::XercesDocumentWrapper" = type { %"class.xalanc_1_10::XalanDocument", ptr, ptr, %"class.xalanc_1_10::XercesWrapperToXalanNodeMap", %"class.xalanc_1_10::XalanMemMgrAutoPtr", %"class.xalanc_1_10::XercesWrapperNavigatorAllocator", ptr, %"class.xalanc_1_10::XercesNodeListWrapper", %"class.xalanc_1_10::XalanVector.11", ptr, i8, i8, i8, %"class.xalanc_1_10::XercesElementWrapperAllocator", %"class.xalanc_1_10::XercesTextWrapperAllocator", %"class.xalanc_1_10::XercesAttrWrapperAllocator", %"class.xalanc_1_10::XalanMemMgrAutoPtr.18" }
%"class.xalanc_1_10::XalanDocument" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }
%"class.xalanc_1_10::XercesWrapperToXalanNodeMap" = type { %"class.xalanc_1_10::XalanMap.1" }
%"class.xalanc_1_10::XalanMap.1" = type { %"class.xalanc_1_10::XalanHasher.2", %"struct.std::equal_to.4", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.6", %"class.xalanc_1_10::XalanList.6", %"class.xalanc_1_10::XalanVector.7", i64, i64 }
%"class.xalanc_1_10::XalanHasher.2" = type { i8 }
%"struct.std::equal_to.4" = type { i8 }
%"class.xalanc_1_10::XalanList.6" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.7" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanDOMImplementation>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanDOMImplementation>::MemMgrAutoPtrData" = type { %"struct.std::pair.8" }
%"struct.std::pair.8" = type { ptr, ptr }
%"class.xalanc_1_10::XercesWrapperNavigatorAllocator" = type { %"class.xalanc_1_10::ArenaAllocator" }
%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i64, %"class.xalanc_1_10::XalanList.10" }
%"class.xalanc_1_10::XalanList.10" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XercesNodeListWrapper" = type { %"class.xalanc_1_10::XalanNodeList", ptr, ptr }
%"class.xalanc_1_10::XalanNodeList" = type { ptr }
%"class.xalanc_1_10::XalanVector.11" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XercesElementWrapperAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.12" }
%"class.xalanc_1_10::ArenaAllocator.12" = type { ptr, i64, %"class.xalanc_1_10::XalanList.13" }
%"class.xalanc_1_10::XalanList.13" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XercesTextWrapperAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.14" }
%"class.xalanc_1_10::ArenaAllocator.14" = type { ptr, i64, %"class.xalanc_1_10::XalanList.15" }
%"class.xalanc_1_10::XalanList.15" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XercesAttrWrapperAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.16" }
%"class.xalanc_1_10::ArenaAllocator.16" = type { ptr, i64, %"class.xalanc_1_10::XalanList.17" }
%"class.xalanc_1_10::XalanList.17" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr.18" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanDOMStringPool>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanDOMStringPool>::MemMgrAutoPtrData" = type { %"struct.std::pair.19" }
%"struct.std::pair.19" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector.26" = type { ptr, i64, i64, ptr }
%"class.xercesc_2_7::AbstractDOMParser" = type { %"class.xercesc_2_7::XMLDocumentHandler", %"class.xercesc_2_7::XMLErrorReporter", %"class.xercesc_2_7::XMLEntityHandler", %"class.xercesc_2_7::DocTypeHandler", %"class.xercesc_2_7::PSVIHandler", i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.xercesc_2_7::XMLBufferMgr", ptr, ptr }
%"class.xercesc_2_7::XMLDocumentHandler" = type { ptr }
%"class.xercesc_2_7::XMLErrorReporter" = type { ptr }
%"class.xercesc_2_7::XMLEntityHandler" = type { ptr }
%"class.xercesc_2_7::DocTypeHandler" = type { ptr }
%"class.xercesc_2_7::PSVIHandler" = type { ptr }
%"class.xercesc_2_7::XMLBufferMgr" = type { i32, ptr, ptr }
%"struct.xalanc_1_10::XalanMapIterator" = type { %"struct.xalanc_1_10::XalanListIteratorBase" }
%"struct.xalanc_1_10::XalanListIteratorBase" = type { ptr }

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE5clearEv = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE4findERKS3_ = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE5eraseENS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS3_S5_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS8_5EntryEEENS_9XalanListISH_E4NodeEEEEE = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEEixERKS3_ = comdat any

$_ZN11xalanc_1_1019XercesParserLiaison16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_712ErrorHandlerD2Ev = comdat any

$_ZN11xercesc_2_712ErrorHandlerD0Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE15doRemoveEntriesEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS3_S5_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS8_5EntryEEENS_9XalanListISH_E4NodeEEEEE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE14compactBucketsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE6insertEPSH_PKSH_SN_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE13doCreateEntryERKS3_PKS5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_mRKSK_ = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE6rehashEv = comdat any

$_ZNK11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5emptyEv = comdat any

$_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE9push_backERKSA_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_PKSK_SQ_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEC2ERKSN_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEaSERKSK_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEC2EmRKSK_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZTSN11xercesc_2_712ErrorHandlerE = comdat any

$_ZTIN11xercesc_2_712ErrorHandlerE = comdat any

$_ZTVN11xercesc_2_712ErrorHandlerE = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZTVN11xalanc_1_1019XercesParserLiaisonE = dso_local unnamed_addr constant { [36 x ptr], [8 x ptr] } { [36 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1019XercesParserLiaisonE, ptr @_ZN11xalanc_1_1019XercesParserLiaisonD2Ev, ptr @_ZN11xalanc_1_1019XercesParserLiaisonD0Ev, ptr @_ZN11xalanc_1_1019XercesParserLiaison5resetEv, ptr @_ZNK11xalanc_1_1019XercesParserLiaison19getExecutionContextEv, ptr @_ZN11xalanc_1_1019XercesParserLiaison16getMemoryManagerEv, ptr @_ZN11xalanc_1_1019XercesParserLiaison19setExecutionContextERNS_16ExecutionContextE, ptr @_ZN11xalanc_1_1019XercesParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1019XercesParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERNS1_15DocumentHandlerERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1019XercesParserLiaison15destroyDocumentEPNS_13XalanDocumentE, ptr @_ZNK11xalanc_1_1019XercesParserLiaison9getIndentEv, ptr @_ZN11xalanc_1_1019XercesParserLiaison9setIndentEi, ptr @_ZNK11xalanc_1_1019XercesParserLiaison16getUseValidationEv, ptr @_ZN11xalanc_1_1019XercesParserLiaison16setUseValidationEb, ptr @_ZNK11xalanc_1_1019XercesParserLiaison20getParserDescriptionERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019XercesParserLiaison17getEntityResolverEv, ptr @_ZN11xalanc_1_1019XercesParserLiaison17setEntityResolverEPN11xercesc_2_714EntityResolverE, ptr @_ZNK11xalanc_1_1019XercesParserLiaison15getErrorHandlerEv, ptr @_ZN11xalanc_1_1019XercesParserLiaison15setErrorHandlerEPN11xercesc_2_712ErrorHandlerE, ptr @_ZN11xalanc_1_1019XercesParserLiaison16createDOMFactoryEv, ptr @_ZN11xalanc_1_1019XercesParserLiaison15destroyDocumentEPN11xercesc_2_711DOMDocumentE, ptr @_ZNK11xalanc_1_1019XercesParserLiaison29getIncludeIgnorableWhitespaceEv, ptr @_ZN11xalanc_1_1019XercesParserLiaison29setIncludeIgnorableWhitespaceEb, ptr @_ZNK11xalanc_1_1019XercesParserLiaison15getDoNamespacesEv, ptr @_ZN11xalanc_1_1019XercesParserLiaison15setDoNamespacesEb, ptr @_ZNK11xalanc_1_1019XercesParserLiaison24getExitOnFirstFatalErrorEv, ptr @_ZN11xalanc_1_1019XercesParserLiaison24setExitOnFirstFatalErrorEb, ptr @_ZNK11xalanc_1_1019XercesParserLiaison25getExternalSchemaLocationEv, ptr @_ZN11xalanc_1_1019XercesParserLiaison25setExternalSchemaLocationEPKt, ptr @_ZNK11xalanc_1_1019XercesParserLiaison36getExternalNoNamespaceSchemaLocationEv, ptr @_ZN11xalanc_1_1019XercesParserLiaison36setExternalNoNamespaceSchemaLocationEPKt, ptr @_ZN11xalanc_1_1019XercesParserLiaison7warningERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZN11xalanc_1_1019XercesParserLiaison5errorERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZN11xalanc_1_1019XercesParserLiaison10fatalErrorERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZN11xalanc_1_1019XercesParserLiaison11resetErrorsEv], [8 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN11xalanc_1_1019XercesParserLiaisonE, ptr @_ZThn8_N11xalanc_1_1019XercesParserLiaisonD1Ev, ptr @_ZThn8_N11xalanc_1_1019XercesParserLiaisonD0Ev, ptr @_ZThn8_N11xalanc_1_1019XercesParserLiaison7warningERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZThn8_N11xalanc_1_1019XercesParserLiaison5errorERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZThn8_N11xalanc_1_1019XercesParserLiaison10fatalErrorERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZThn8_N11xalanc_1_1019XercesParserLiaison11resetErrorsEv] }, align 8
@.str = private unnamed_addr constant [7 x i8] c"Xerces\00", align 1
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@_ZTIN11xercesc_2_717SAXParseExceptionE = external constant ptr
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1019XercesParserLiaisonE = dso_local constant [37 x i8] c"N11xalanc_1_1019XercesParserLiaisonE\00", align 1
@_ZTIN11xalanc_1_1016XMLParserLiaisonE = external constant ptr
@_ZTSN11xercesc_2_712ErrorHandlerE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_712ErrorHandlerE\00", comdat, align 1
@_ZTIN11xercesc_2_712ErrorHandlerE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712ErrorHandlerE }, comdat, align 8
@_ZTIN11xalanc_1_1019XercesParserLiaisonE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1019XercesParserLiaisonE, i32 0, i32 2, ptr @_ZTIN11xalanc_1_1016XMLParserLiaisonE, i64 2, ptr @_ZTIN11xercesc_2_712ErrorHandlerE, i64 2050 }, align 8
@_ZTVN11xercesc_2_712ErrorHandlerE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712ErrorHandlerE, ptr @_ZN11xercesc_2_712ErrorHandlerD2Ev, ptr @_ZN11xercesc_2_712ErrorHandlerD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XercesParserLiaison.cpp, ptr null }]

@_ZN11xalanc_1_1019XercesParserLiaisonC1ERNS_16XercesDOMSupportERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1019XercesParserLiaisonC2ERNS_16XercesDOMSupportERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1019XercesParserLiaisonC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1019XercesParserLiaisonC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1019XercesParserLiaisonD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1019XercesParserLiaisonD2Ev

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !prof !56 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #23
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019XercesParserLiaisonC2ERNS_16XercesDOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  tail call void @_ZN11xalanc_1_1016XMLParserLiaisonC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_712ErrorHandlerE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !57
  store ptr getelementptr inbounds ({ [36 x ptr], [8 x ptr] }, ptr @_ZTVN11xalanc_1_1019XercesParserLiaisonE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  store ptr getelementptr inbounds ({ [36 x ptr], [8 x ptr] }, ptr @_ZTVN11xalanc_1_1019XercesParserLiaisonE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !57
  %5 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 2
  store i32 -1, ptr %5, align 8, !tbaa !60
  %6 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 4, !tbaa !77
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 4
  store i8 1, ptr %7, align 1, !tbaa !78
  %8 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 5
  store i8 1, ptr %8, align 2, !tbaa !79
  %9 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 6
  store i8 1, ptr %9, align 1, !tbaa !80
  %10 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 7
  store ptr null, ptr %10, align 8, !tbaa !81
  %11 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 8
  store ptr %4, ptr %11, align 8, !tbaa !82
  %12 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 9
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %13 unwind label %32

13:                                               ; preds = %3
  %14 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 10
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %14, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %15 unwind label %34

15:                                               ; preds = %13
  %16 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 2
  store ptr %2, ptr %16, align 8, !tbaa !83
  %17 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 3
  store float 7.500000e-01, ptr %17, align 8, !tbaa !84
  %18 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 4
  store i64 29, ptr %18, align 8, !tbaa !85
  %19 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 5
  store i64 0, ptr %19, align 8, !tbaa !86
  %20 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 6
  store ptr %2, ptr %20, align 8, !tbaa !87
  %21 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 6, i32 1
  %22 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  store ptr %2, ptr %22, align 8, !tbaa !87
  %23 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 7, i32 1
  %24 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  store ptr %2, ptr %24, align 8, !tbaa !88
  %25 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 8, i32 1
  %26 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %25, i8 0, i64 32, i1 false)
  store i64 50, ptr %26, align 8, !tbaa !89
  %27 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 12
  store i8 1, ptr %27, align 8, !tbaa !90
  %28 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 13
  store i8 1, ptr %28, align 1, !tbaa !91
  %29 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 14
  store i8 0, ptr %29, align 2, !tbaa !92
  %30 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 15
  store i8 0, ptr %30, align 1, !tbaa !93
  %31 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 0, i64 24, i1 false)
  ret void

32:                                               ; preds = %3
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %36

34:                                               ; preds = %13
  %35 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #23
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi { ptr, i32 } [ %35, %34 ], [ %33, %32 ]
  tail call void @_ZN11xalanc_1_1016XMLParserLiaisonD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #23
  resume { ptr, i32 } %37
}

declare void @_ZN11xalanc_1_1016XMLParserLiaisonC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1016XMLParserLiaisonD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019XercesParserLiaisonC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  tail call void @_ZN11xalanc_1_1016XMLParserLiaisonC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_712ErrorHandlerE, i64 0, inrange i32 0, i64 2), ptr %3, align 8, !tbaa !57
  store ptr getelementptr inbounds ({ [36 x ptr], [8 x ptr] }, ptr @_ZTVN11xalanc_1_1019XercesParserLiaisonE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  store ptr getelementptr inbounds ({ [36 x ptr], [8 x ptr] }, ptr @_ZTVN11xalanc_1_1019XercesParserLiaisonE, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !57
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 2
  store i32 -1, ptr %4, align 8, !tbaa !60
  %5 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 3
  store i8 0, ptr %5, align 4, !tbaa !77
  %6 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 4
  store i8 1, ptr %6, align 1, !tbaa !78
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 5
  store i8 1, ptr %7, align 2, !tbaa !79
  %8 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 6
  store i8 1, ptr %8, align 1, !tbaa !80
  %9 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 7
  store ptr null, ptr %9, align 8, !tbaa !81
  %10 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 8
  store ptr %3, ptr %10, align 8, !tbaa !82
  %11 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 9
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %12 unwind label %31, !prof !95

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 10
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %13, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %14 unwind label %33, !prof !95

14:                                               ; preds = %12
  %15 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 2
  store ptr %1, ptr %15, align 8, !tbaa !83
  %16 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 3
  store float 7.500000e-01, ptr %16, align 8, !tbaa !84
  %17 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 4
  store i64 29, ptr %17, align 8, !tbaa !85
  %18 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 5
  store i64 0, ptr %18, align 8, !tbaa !86
  %19 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 6
  store ptr %1, ptr %19, align 8, !tbaa !87
  %20 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 6, i32 1
  %21 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  store ptr %1, ptr %21, align 8, !tbaa !87
  %22 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 7, i32 1
  %23 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  store ptr %1, ptr %23, align 8, !tbaa !88
  %24 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 8, i32 1
  %25 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %24, i8 0, i64 32, i1 false)
  store i64 50, ptr %25, align 8, !tbaa !89
  %26 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 12
  store i8 1, ptr %26, align 8, !tbaa !90
  %27 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 13
  store i8 1, ptr %27, align 1, !tbaa !91
  %28 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 14
  store i8 0, ptr %28, align 2, !tbaa !92
  %29 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 15
  store i8 0, ptr %29, align 1, !tbaa !93
  %30 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 0, i64 24, i1 false)
  ret void

31:                                               ; preds = %2
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %35

33:                                               ; preds = %12
  %34 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #23
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi { ptr, i32 } [ %34, %33 ], [ %32, %31 ]
  tail call void @_ZN11xalanc_1_1016XMLParserLiaisonD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #23
  resume { ptr, i32 } %36
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1019XercesParserLiaisonD2Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  store ptr getelementptr inbounds ({ [36 x ptr], [8 x ptr] }, ptr @_ZTVN11xalanc_1_1019XercesParserLiaisonE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [36 x ptr], [8 x ptr] }, ptr @_ZTVN11xalanc_1_1019XercesParserLiaisonE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !57
  invoke void @_ZN11xalanc_1_1019XercesParserLiaison5resetEv(ptr noundef nonnull align 8 dereferenceable(288) %0)
          to label %3 unwind label %23, !prof !95

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7, !prof !95

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !57
  %9 = getelementptr inbounds ptr, ptr %8, i64 1
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(224) %5) #23
  br label %11

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 18
  %13 = load ptr, ptr %12, align 8, !tbaa !97
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15, !prof !95

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !57
  %17 = getelementptr inbounds ptr, ptr %16, i64 1
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(224) %13) #23
  br label %19

19:                                               ; preds = %15, %11
  %20 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11
  tail call void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %20) #23
  %21 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 10
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %21) #23
  %22 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 9
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %22) #23
  tail call void @_ZN11xalanc_1_1016XMLParserLiaisonD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #23
  ret void

23:                                               ; preds = %1
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #24
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  invoke void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
          to label %2 unwind label %53, !prof !95

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !98
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %47, label %6, !prof !95

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !99, !noalias !100
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 8, !tbaa !87, !noalias !100
  %13 = load ptr, ptr %12, align 8, !tbaa !57, !noalias !100
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !100
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 32)
          to label %17 unwind label %53

17:                                               ; preds = %11
  store ptr %16, ptr %8, align 8, !tbaa !99, !noalias !100
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %18, align 8, !tbaa !103, !noalias !100
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %19, align 8, !tbaa !106, !noalias !100
  br label %20

20:                                               ; preds = %6, %17
  %21 = load ptr, ptr %8, align 8, !tbaa !99, !noalias !100
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  br label %23

23:                                               ; preds = %41, %20
  %24 = phi ptr [ %21, %20 ], [ %26, %41 ]
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !103, !noalias !107
  %27 = load ptr, ptr %8, align 8, !tbaa !99, !noalias !108
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load ptr, ptr %7, align 8, !tbaa !87, !noalias !108
  %31 = load ptr, ptr %30, align 8, !tbaa !57, !noalias !108
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8, !noalias !108
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef 32)
          to label %35 unwind label %51

35:                                               ; preds = %29
  store ptr %34, ptr %8, align 8, !tbaa !99, !noalias !108
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %34, i64 0, i32 2
  store ptr %34, ptr %36, align 8, !tbaa !103, !noalias !108
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %34, i64 0, i32 1
  store ptr %34, ptr %37, align 8, !tbaa !106, !noalias !108
  br label %38

38:                                               ; preds = %23, %35
  %39 = load ptr, ptr %8, align 8, !tbaa !99, !noalias !108
  %40 = icmp eq ptr %26, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %26, align 8, !tbaa !111
  %43 = load ptr, ptr %22, align 8, !tbaa !83
  %44 = load ptr, ptr %43, align 8, !tbaa !57
  %45 = getelementptr inbounds ptr, ptr %44, i64 3
  %46 = load ptr, ptr %45, align 8
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef %42)
          to label %23 unwind label %51, !llvm.loop !112

47:                                               ; preds = %38, %2
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %48) #23
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %49) #23
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %50) #23
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
  tail call void @__clang_call_terminate(ptr %57) #24
  unreachable
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn8_N11xalanc_1_1019XercesParserLiaisonD1Ev(ptr noundef %0) unnamed_addr #8 align 2 !prof !56 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xalanc_1_1019XercesParserLiaisonD2Ev(ptr noundef nonnull align 8 dereferenceable(288) %2) #23
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1019XercesParserLiaisonD0Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #7 align 2 !prof !56 {
  tail call void @_ZN11xalanc_1_1019XercesParserLiaisonD2Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #25
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn8_N11xalanc_1_1019XercesParserLiaisonD0Ev(ptr noundef %0) unnamed_addr #8 align 2 !prof !56 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xalanc_1_1019XercesParserLiaisonD2Ev(ptr noundef nonnull align 8 dereferenceable(288) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #25
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019XercesParserLiaison5resetEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #6 align 2 !prof !115 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 6, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !99, !noalias !116
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %14, !prof !121

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !87, !noalias !116
  %8 = load ptr, ptr %7, align 8, !tbaa !57, !noalias !116
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !116
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 32), !prof !122, !noalias !116
  store ptr %11, ptr %2, align 8, !tbaa !99, !noalias !116
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !103, !noalias !116
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !106, !noalias !116
  br label %14

14:                                               ; preds = %1, %5
  %15 = load ptr, ptr %2, align 8, !tbaa !99, !noalias !116
  br label %16

16:                                               ; preds = %66, %14
  %17 = phi ptr [ %15, %14 ], [ %19, %66 ]
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !103, !noalias !107
  %20 = load ptr, ptr %2, align 8, !tbaa !99, !noalias !123
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %31, !prof !128

22:                                               ; preds = %16
  %23 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !87, !noalias !123
  %25 = load ptr, ptr %24, align 8, !tbaa !57, !noalias !123
  %26 = getelementptr inbounds ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8, !noalias !123
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %24, i64 noundef 32), !noalias !123
  store ptr %28, ptr %2, align 8, !tbaa !99, !noalias !123
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %28, i64 0, i32 2
  store ptr %28, ptr %29, align 8, !tbaa !103, !noalias !123
  %30 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %28, i64 0, i32 1
  store ptr %28, ptr %30, align 8, !tbaa !106, !noalias !123
  br label %31

31:                                               ; preds = %16, %22
  %32 = load ptr, ptr %2, align 8, !tbaa !99, !noalias !123
  %33 = icmp eq ptr %19, %32
  br i1 %33, label %34, label %37, !prof !129

34:                                               ; preds = %31
  %35 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11
  tail call void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(136) %35)
  %36 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 16
  store ptr null, ptr %36, align 8, !tbaa !130
  ret void

37:                                               ; preds = %31
  %38 = load ptr, ptr %19, align 8, !tbaa !111
  %39 = getelementptr inbounds %"struct.std::pair", ptr %38, i64 0, i32 1
  %40 = load i8, ptr %39, align 8, !tbaa !131, !range !133, !noundef !107
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %"struct.std::pair", ptr %38, i64 0, i32 1, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !134
  %45 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !136
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = load ptr, ptr %46, align 8, !tbaa !57
  %50 = getelementptr inbounds ptr, ptr %49, i64 1
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(32) %46) #23
  br label %52

52:                                               ; preds = %42, %48, %37
  %53 = load ptr, ptr %19, align 8, !tbaa !111
  %54 = load ptr, ptr %53, align 8, !tbaa !167
  %55 = icmp eq ptr %54, null
  br i1 %55, label %66, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %54, align 8, !tbaa !57
  %58 = load ptr, ptr %57, align 8
  tail call void %58(ptr noundef nonnull align 8 dereferenceable(8) %54) #23
  %59 = load ptr, ptr %0, align 8, !tbaa !57
  %60 = getelementptr inbounds ptr, ptr %59, i64 4
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef nonnull align 8 dereferenceable(8) ptr %61(ptr noundef nonnull align 8 dereferenceable(288) %0)
  %63 = load ptr, ptr %62, align 8, !tbaa !57
  %64 = getelementptr inbounds ptr, ptr %63, i64 3
  %65 = load ptr, ptr %64, align 8
  tail call void %65(ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef nonnull %54)
  br label %66

66:                                               ; preds = %56, %52
  br label %16, !llvm.loop !168
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #6 comdat align 2 !prof !115 {
  tail call void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !169
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !98
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %3, i64 %5
  %7 = icmp eq i64 %5, 0
  br i1 %7, label %17, label %8, !prof !170

8:                                                ; preds = %1, %14
  %9 = phi ptr [ %15, %14 ], [ %3, %1 ]
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !171
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  store i64 0, ptr %10, align 8, !tbaa !171
  br label %14

14:                                               ; preds = %13, %8
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %9, i64 1
  %16 = icmp eq ptr %15, %6
  br i1 %16, label %17, label %8, !prof !170, !llvm.loop !173

17:                                               ; preds = %14, %1
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 9
  store i64 0, ptr %18, align 8, !tbaa !174
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019XercesParserLiaison19getExecutionContextEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(288) %0) unnamed_addr #10 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !130
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1019XercesParserLiaison19setExecutionContextERNS_16ExecutionContextE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #11 align 2 !prof !175 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 16
  store ptr %1, ptr %3, align 8, !tbaa !130
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019XercesParserLiaison15ensureSAXParserEv(ptr noundef nonnull align 8 dereferenceable(288) %0) local_unnamed_addr #6 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !96
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1019XercesParserLiaison15createSAXParserEv(ptr noundef nonnull align 8 dereferenceable(288) %0)
  store ptr %6, ptr %2, align 8, !tbaa !96
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr %2, align 8, !tbaa !96
  %9 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 6
  %10 = load i8, ptr %9, align 1, !tbaa !80, !range !133, !noundef !107
  %11 = icmp ne i8 %10, 0
  tail call void @_ZN11xercesc_2_79SAXParser24setExitOnFirstFatalErrorEb(ptr noundef nonnull align 8 dereferenceable(224) %8, i1 noundef zeroext %11)
  %12 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !81
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %7
  %16 = load ptr, ptr %2, align 8, !tbaa !96
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(224) %16, ptr noundef nonnull %13)
  br label %20

20:                                               ; preds = %15, %7
  %21 = load ptr, ptr %2, align 8, !tbaa !96
  %22 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !82
  %24 = load ptr, ptr %21, align 8, !tbaa !57
  %25 = getelementptr inbounds ptr, ptr %24, i64 5
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(224) %21, ptr noundef %23)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1019XercesParserLiaison15createSAXParserEv(ptr noundef nonnull align 8 dereferenceable(288) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !175 {
  %2 = load ptr, ptr %0, align 8, !tbaa !57
  %3 = getelementptr inbounds ptr, ptr %2, i64 4
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr %4(ptr noundef nonnull align 8 dereferenceable(288) %0), !prof !176
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 224, ptr noundef nonnull %5)
  invoke void @_ZN11xercesc_2_79SAXParserC1EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(224) %6, ptr noundef null, ptr noundef nonnull %5, ptr noundef null)
          to label %7 unwind label %8, !prof !170

7:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_79SAXParser15setDoValidationEb(ptr noundef nonnull align 8 dereferenceable(224) %6, i1 noundef zeroext false)
  tail call void @_ZN11xercesc_2_79SAXParser15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(224) %6, i1 noundef zeroext false)
  ret ptr %6

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %6, ptr noundef nonnull %5) #23
  resume { ptr, i32 } %9
}

declare void @_ZN11xercesc_2_79SAXParser24setExitOnFirstFatalErrorEb(ptr noundef nonnull align 8 dereferenceable(224), i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019XercesParserLiaison15ensureDOMParserEv(ptr noundef nonnull align 8 dereferenceable(288) %0) local_unnamed_addr #6 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1019XercesParserLiaison15createDOMParserEv(ptr noundef nonnull align 8 dereferenceable(288) %0)
  store ptr %6, ptr %2, align 8, !tbaa !97
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr %2, align 8, !tbaa !97
  %9 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 3
  %10 = load i8, ptr %9, align 4, !tbaa !77, !range !133, !noundef !107
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, i32 0, i32 2
  tail call void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(200) %8, i32 noundef %12)
  %13 = load ptr, ptr %2, align 8, !tbaa !97
  %14 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 4
  %15 = load i8, ptr %14, align 1, !tbaa !78, !range !133, !noundef !107
  %16 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %13, i64 0, i32 6
  store i8 %15, ptr %16, align 1, !tbaa !177
  %17 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 5
  %18 = load i8, ptr %17, align 2, !tbaa !79, !range !133, !noundef !107
  %19 = icmp ne i8 %18, 0
  tail call void @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(200) %13, i1 noundef zeroext %19)
  %20 = load ptr, ptr %2, align 8, !tbaa !97
  %21 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 6
  %22 = load i8, ptr %21, align 1, !tbaa !80, !range !133, !noundef !107
  %23 = icmp ne i8 %22, 0
  tail call void @_ZN11xercesc_2_717AbstractDOMParser24setExitOnFirstFatalErrorEb(ptr noundef nonnull align 8 dereferenceable(200) %20, i1 noundef zeroext %23)
  %24 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !81
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %7
  %28 = load ptr, ptr %2, align 8, !tbaa !97
  tail call void @_ZN11xercesc_2_715XercesDOMParser17setEntityResolverEPNS_14EntityResolverE(ptr noundef nonnull align 8 dereferenceable(224) %28, ptr noundef nonnull %25)
  br label %29

29:                                               ; preds = %27, %7
  %30 = load ptr, ptr %2, align 8, !tbaa !97
  %31 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !82
  tail call void @_ZN11xercesc_2_715XercesDOMParser15setErrorHandlerEPNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(224) %30, ptr noundef %32)
  %33 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 9, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !185
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %29
  %37 = load ptr, ptr %2, align 8, !tbaa !97
  %38 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 9, i32 0, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !186
  %40 = icmp eq i64 %39, 0
  %41 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 9, i32 0, i32 3
  %42 = load ptr, ptr %41, align 8
  %43 = select i1 %40, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %42
  tail call void @_ZN11xercesc_2_717AbstractDOMParser25setExternalSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(200) %37, ptr noundef %43)
  br label %44

44:                                               ; preds = %36, %29
  %45 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 10, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !185
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %2, align 8, !tbaa !97
  %50 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 10, i32 0, i32 1
  %51 = load i64, ptr %50, align 8, !tbaa !186
  %52 = icmp eq i64 %51, 0
  %53 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 10, i32 0, i32 3
  %54 = load ptr, ptr %53, align 8
  %55 = select i1 %52, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %54
  tail call void @_ZN11xercesc_2_717AbstractDOMParser36setExternalNoNamespaceSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(200) %49, ptr noundef %55)
  br label %56

56:                                               ; preds = %48, %44
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1019XercesParserLiaison15createDOMParserEv(ptr noundef nonnull align 8 dereferenceable(288) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = load ptr, ptr %0, align 8, !tbaa !57
  %3 = getelementptr inbounds ptr, ptr %2, i64 4
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr %4(ptr noundef nonnull align 8 dereferenceable(288) %0)
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 224, ptr noundef nonnull %5)
  invoke void @_ZN11xercesc_2_715XercesDOMParserC1EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(224) %6, ptr noundef null, ptr noundef nonnull %5, ptr noundef null)
          to label %7 unwind label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %6, i64 0, i32 5
  store i8 0, ptr %8, align 8, !tbaa !187
  %9 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 5
  %10 = load i8, ptr %9, align 2, !tbaa !79, !range !133, !noundef !107
  %11 = icmp ne i8 %10, 0
  tail call void @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(200) %6, i1 noundef zeroext %11)
  %12 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !81
  tail call void @_ZN11xercesc_2_715XercesDOMParser17setEntityResolverEPNS_14EntityResolverE(ptr noundef nonnull align 8 dereferenceable(224) %6, ptr noundef %13)
  ret ptr %6

14:                                               ; preds = %1
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %6, ptr noundef nonnull %5) #23
  resume { ptr, i32 } %15
}

declare void @_ZN11xercesc_2_717AbstractDOMParser19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #0

declare void @_ZN11xercesc_2_717AbstractDOMParser15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(200), i1 noundef zeroext) local_unnamed_addr #0

declare void @_ZN11xercesc_2_717AbstractDOMParser24setExitOnFirstFatalErrorEb(ptr noundef nonnull align 8 dereferenceable(200), i1 noundef zeroext) local_unnamed_addr #0

declare void @_ZN11xercesc_2_715XercesDOMParser17setEntityResolverEPNS_14EntityResolverE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef) local_unnamed_addr #0

declare void @_ZN11xercesc_2_715XercesDOMParser15setErrorHandlerEPNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef) local_unnamed_addr #0

declare void @_ZN11xercesc_2_717AbstractDOMParser25setExternalSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) local_unnamed_addr #0

declare void @_ZN11xercesc_2_717AbstractDOMParser36setExternalNoNamespaceSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019XercesParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERNS1_15DocumentHandlerERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nocapture nonnull readnone align 8 %3) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !175 {
  %5 = tail call noundef ptr @_ZN11xalanc_1_1019XercesParserLiaison15createSAXParserEv(ptr noundef nonnull align 8 dereferenceable(288) %0)
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = getelementptr inbounds ptr, ptr %6, i64 4
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(224) %5, ptr noundef nonnull %2)
          to label %9 unwind label %18, !prof !188

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !82
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds i8, ptr %0, i64 8
  %14 = select i1 %12, ptr %13, ptr %11, !prof !170
  %15 = load ptr, ptr %5, align 8, !tbaa !57
  %16 = getelementptr inbounds ptr, ptr %15, i64 5
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(224) %5, ptr noundef nonnull %14)
          to label %23 unwind label %18

18:                                               ; preds = %9, %23, %4
  %19 = landingpad { ptr, i32 }
          cleanup
  %20 = load ptr, ptr %5, align 8, !tbaa !57
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(224) %5) #23
  resume { ptr, i32 } %19

23:                                               ; preds = %9
  %24 = load ptr, ptr %5, align 8, !tbaa !57
  %25 = getelementptr inbounds ptr, ptr %24, i64 6
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr noundef nonnull align 8 dereferenceable(224) %5, ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %27 unwind label %18, !prof !189

27:                                               ; preds = %23
  %28 = load ptr, ptr %5, align 8, !tbaa !57
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(224) %5) #23, !prof !190
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1019XercesParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %4 = alloca ptr, align 8
  %5 = tail call noundef ptr @_ZN11xalanc_1_1019XercesParserLiaison15createDOMParserEv(ptr noundef nonnull align 8 dereferenceable(288) %0)
  %6 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !82
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds i8, ptr %0, i64 8
  %10 = select i1 %8, ptr %9, ptr %7
  invoke void @_ZN11xercesc_2_715XercesDOMParser15setErrorHandlerEPNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(224) %5, ptr noundef nonnull %10)
          to label %13 unwind label %11

11:                                               ; preds = %3, %13
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %54

13:                                               ; preds = %3
  invoke void @_ZN11xercesc_2_717AbstractDOMParser5parseERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(200) %5, ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %14 unwind label %11

14:                                               ; preds = %13
  %15 = invoke noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %5)
          to label %16 unwind label %45

16:                                               ; preds = %14
  %17 = getelementptr inbounds i8, ptr %15, i64 24
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  %19 = getelementptr inbounds ptr, ptr %18, i64 20
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %21 unwind label %45

21:                                               ; preds = %16
  %22 = icmp eq ptr %15, null
  br i1 %22, label %49, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 14
  %25 = load i8, ptr %24, align 2, !tbaa !92, !range !133, !noundef !107
  %26 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 12
  %27 = load i8, ptr %26, align 8, !tbaa !90, !range !133, !noundef !107
  %28 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 15
  %29 = load i8, ptr %28, align 1, !tbaa !93, !range !133, !noundef !107
  %30 = load ptr, ptr %0, align 8, !tbaa !57
  %31 = getelementptr inbounds ptr, ptr %30, i64 4
  %32 = load ptr, ptr %31, align 8
  %33 = invoke noundef nonnull align 8 dereferenceable(8) ptr %32(ptr noundef nonnull align 8 dereferenceable(288) %0)
          to label %34 unwind label %47

34:                                               ; preds = %23
  %35 = icmp ne i8 %29, 0
  %36 = icmp ne i8 %27, 0
  %37 = icmp ne i8 %25, 0
  %38 = invoke noundef ptr @_ZN11xalanc_1_1021XercesDocumentWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_11DOMDocumentEbbb(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %15, i1 noundef zeroext %37, i1 noundef zeroext %36, i1 noundef zeroext %35)
          to label %39 unwind label %47

39:                                               ; preds = %34
  %40 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  store ptr %38, ptr %4, align 8, !tbaa !191
  %41 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEEixERKS3_(ptr noundef nonnull align 8 dereferenceable(136) %40, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %42 unwind label %47

42:                                               ; preds = %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  %43 = getelementptr inbounds %"struct.xalanc_1_10::XercesParserLiaison::DocumentEntry", ptr %41, i64 0, i32 1
  store ptr %38, ptr %43, align 8, !tbaa !192
  store i8 1, ptr %41, align 8, !tbaa !131
  %44 = invoke noundef ptr @_ZN11xercesc_2_717AbstractDOMParser13adoptDocumentEv(ptr noundef nonnull align 8 dereferenceable(200) %5)
          to label %49 unwind label %47

45:                                               ; preds = %16, %14
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %54

47:                                               ; preds = %39, %34, %23, %42
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %54

49:                                               ; preds = %21, %42
  %50 = phi ptr [ %38, %42 ], [ null, %21 ]
  %51 = load ptr, ptr %5, align 8, !tbaa !57
  %52 = getelementptr inbounds ptr, ptr %51, i64 1
  %53 = load ptr, ptr %52, align 8
  call void %53(ptr noundef nonnull align 8 dereferenceable(224) %5) #23
  ret ptr %50

54:                                               ; preds = %45, %47, %11
  %55 = phi { ptr, i32 } [ %12, %11 ], [ %48, %47 ], [ %46, %45 ]
  %56 = icmp eq ptr %5, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %5, align 8, !tbaa !57
  %59 = getelementptr inbounds ptr, ptr %58, i64 1
  %60 = load ptr, ptr %59, align 8
  call void %60(ptr noundef nonnull align 8 dereferenceable(224) %5) #23
  br label %61

61:                                               ; preds = %54, %57
  resume { ptr, i32 } %55
}

declare void @_ZN11xercesc_2_717AbstractDOMParser5parseERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #0

declare noundef ptr @_ZN11xercesc_2_717AbstractDOMParser11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1019XercesParserLiaison16doCreateDocumentEPKN11xercesc_2_711DOMDocumentEbbbb(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #6 align 2 !prof !56 {
  %7 = alloca ptr, align 8
  %8 = zext i1 %5 to i8
  %9 = load ptr, ptr %0, align 8, !tbaa !57
  %10 = getelementptr inbounds ptr, ptr %9, i64 4
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr %11(ptr noundef nonnull align 8 dereferenceable(288) %0)
  %13 = tail call noundef ptr @_ZN11xalanc_1_1021XercesDocumentWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_11DOMDocumentEbbb(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4)
  %14 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  store ptr %13, ptr %7, align 8, !tbaa !191
  %15 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEEixERKS3_(ptr noundef nonnull align 8 dereferenceable(136) %14, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XercesParserLiaison::DocumentEntry", ptr %15, i64 0, i32 1
  store ptr %13, ptr %16, align 8, !tbaa !192
  store i8 %8, ptr %15, align 8, !tbaa !131
  ret ptr %13
}

declare noundef ptr @_ZN11xercesc_2_717AbstractDOMParser13adoptDocumentEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019XercesParserLiaison15destroyDocumentEPNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = alloca ptr, align 8
  %4 = alloca %"struct.xalanc_1_10::XalanMapIterator", align 8
  %5 = alloca %"struct.xalanc_1_10::XalanMapIterator", align 8
  store ptr %1, ptr %3, align 8, !tbaa !191
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  %6 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11
  call void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE4findERKS3_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 6, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !99, !noalias !193
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !87, !noalias !193
  %13 = load ptr, ptr %12, align 8, !tbaa !57, !noalias !193
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !193
  %16 = call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 32), !noalias !193
  store ptr %16, ptr %7, align 8, !tbaa !99, !noalias !193
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !103, !noalias !193
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !106, !noalias !193
  br label %19

19:                                               ; preds = %2, %10
  %20 = load ptr, ptr %7, align 8, !tbaa !99, !noalias !193
  %21 = load ptr, ptr %4, align 8, !tbaa !198
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %55, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !83
  %26 = load ptr, ptr %3, align 8, !tbaa !191
  store ptr %21, ptr %5, align 8, !tbaa !198
  invoke void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE5eraseENS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS3_S5_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS8_5EntryEEENS_9XalanListISH_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull %5)
          to label %27 unwind label %40

27:                                               ; preds = %23
  %28 = icmp ne ptr %25, null
  %29 = icmp ne ptr %26, null
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %31, label %55

31:                                               ; preds = %27
  %32 = load ptr, ptr %26, align 8, !tbaa !57
  %33 = load ptr, ptr %32, align 8
  call void %33(ptr noundef nonnull align 8 dereferenceable(8) %26) #23
  %34 = load ptr, ptr %25, align 8, !tbaa !57
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull %26)
          to label %55 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #24
  unreachable

40:                                               ; preds = %23
  %41 = landingpad { ptr, i32 }
          cleanup
  %42 = icmp ne ptr %25, null
  %43 = icmp ne ptr %26, null
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load ptr, ptr %26, align 8, !tbaa !57
  %47 = load ptr, ptr %46, align 8
  call void %47(ptr noundef nonnull align 8 dereferenceable(8) %26) #23
  %48 = load ptr, ptr %25, align 8, !tbaa !57
  %49 = getelementptr inbounds ptr, ptr %48, i64 3
  %50 = load ptr, ptr %49, align 8
  invoke void %50(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull %26)
          to label %54 unwind label %51

51:                                               ; preds = %45
  %52 = landingpad { ptr, i32 }
          catch ptr null
  %53 = extractvalue { ptr, i32 } %52, 0
  call void @__clang_call_terminate(ptr %53) #24
  unreachable

54:                                               ; preds = %40, %45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  resume { ptr, i32 } %41

55:                                               ; preds = %31, %27, %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE4findERKS3_(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanMapIterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat align 2 !prof !56 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !86
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %47, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !98
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi i64 [ 0, %7 ], [ %18, %10 ]
  %12 = phi i64 [ 0, %7 ], [ %17, %10 ]
  %13 = shl i64 %12, 1
  %14 = getelementptr inbounds i8, ptr %2, i64 %11
  %15 = load i8, ptr %14, align 1, !tbaa !200
  %16 = sext i8 %15 to i64
  %17 = xor i64 %13, %16
  %18 = add nuw nsw i64 %11, 1
  %19 = icmp eq i64 %18, 8
  br i1 %19, label %20, label %10, !llvm.loop !201

20:                                               ; preds = %10
  %21 = urem i64 %17, %9
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !169
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %23, i64 %21, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !202
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %23, i64 %21, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !171
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %25, i64 %27
  %29 = icmp eq i64 %27, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %20
  %31 = load ptr, ptr %2, align 8
  br label %32

32:                                               ; preds = %30, %44
  %33 = phi i1 [ %29, %30 ], [ %46, %44 ]
  %34 = phi ptr [ %25, %30 ], [ %45, %44 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !198
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry", ptr %35, i64 0, i32 1
  %37 = load i8, ptr %36, align 8, !tbaa !203, !range !133, !noundef !107
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load ptr, ptr %35, align 8, !tbaa !111
  %41 = load ptr, ptr %40, align 8, !tbaa !191
  %42 = icmp eq ptr %31, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store ptr %35, ptr %0, align 8, !tbaa !198
  br i1 %33, label %47, label %62

44:                                               ; preds = %39, %32
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %34, i64 1
  %46 = icmp eq ptr %45, %28
  br i1 %46, label %47, label %32, !llvm.loop !204

47:                                               ; preds = %44, %20, %43, %3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !99, !noalias !208
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !87, !noalias !208
  %54 = load ptr, ptr %53, align 8, !tbaa !57, !noalias !208
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8, !noalias !208
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %53, i64 noundef 32), !noalias !208
  store ptr %57, ptr %48, align 8, !tbaa !99, !noalias !208
  %58 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %57, i64 0, i32 2
  store ptr %57, ptr %58, align 8, !tbaa !103, !noalias !208
  %59 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %57, i64 0, i32 1
  store ptr %57, ptr %59, align 8, !tbaa !106, !noalias !208
  br label %60

60:                                               ; preds = %47, %51
  %61 = load ptr, ptr %48, align 8, !tbaa !99, !noalias !208
  store ptr %61, ptr %0, align 8, !tbaa !198, !alias.scope !205
  br label %62

62:                                               ; preds = %43, %60
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE5eraseENS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS3_S5_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS8_5EntryEEENS_9XalanListISH_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !56 {
  %3 = alloca %"struct.xalanc_1_10::XalanMapIterator", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !99, !noalias !211
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !87, !noalias !211
  %10 = load ptr, ptr %9, align 8, !tbaa !57, !noalias !211
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8, !noalias !211
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef 32), !noalias !211
  store ptr %13, ptr %4, align 8, !tbaa !99, !noalias !211
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %13, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !103, !noalias !211
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %13, i64 0, i32 1
  store ptr %13, ptr %15, align 8, !tbaa !106, !noalias !211
  br label %16

16:                                               ; preds = %2, %7
  %17 = load ptr, ptr %4, align 8, !tbaa !99, !noalias !211
  %18 = load ptr, ptr %1, align 8, !tbaa !198
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  store ptr %18, ptr %3, align 8, !tbaa !198
  call void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS3_S5_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS8_5EntryEEENS_9XalanListISH_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 9
  %22 = load i64, ptr %21, align 8, !tbaa !174
  %23 = add i64 %22, 1
  store i64 %23, ptr %21, align 8, !tbaa !174
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 10
  %25 = load i64, ptr %24, align 8, !tbaa !89
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  call void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE14compactBucketsEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
  store i64 0, ptr %21, align 8, !tbaa !174
  br label %28

28:                                               ; preds = %27, %20, %16
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1019XercesParserLiaison9getIndentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(288) %0) unnamed_addr #10 align 2 !prof !175 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !60
  ret i32 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1019XercesParserLiaison9setIndentEi(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(288) %0, i32 noundef %1) unnamed_addr #11 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 8, !tbaa !60
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019XercesParserLiaison16getUseValidationEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(288) %0) unnamed_addr #10 align 2 !prof !175 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 4, !tbaa !77, !range !133, !noundef !107
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1019XercesParserLiaison16setUseValidationEb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(288) %0, i1 noundef zeroext %1) unnamed_addr #11 align 2 !prof !94 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 3
  store i8 %3, ptr %4, align 4, !tbaa !77
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019XercesParserLiaison20getParserDescriptionERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull returned align 8 dereferenceable(36) %1) unnamed_addr #6 align 2 !prof !56 {
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 0, i32 noundef -1)
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef nonnull @.str)
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str, i32 noundef %3)
  ret ptr %1
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1019XercesParserLiaison16createDOMFactoryEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #6 align 2 !prof !56 {
  %2 = alloca ptr, align 8
  %3 = tail call noundef ptr @_ZN11xercesc_2_717DOMImplementation17getImplementationEv()
  %4 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !191
  %5 = load ptr, ptr %3, align 8, !tbaa !57
  %6 = getelementptr inbounds ptr, ptr %5, i64 9
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4)
  %9 = load ptr, ptr %0, align 8, !tbaa !57
  %10 = getelementptr inbounds ptr, ptr %9, i64 4
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr %11(ptr noundef nonnull align 8 dereferenceable(288) %0)
  %13 = tail call noundef ptr @_ZN11xalanc_1_1021XercesDocumentWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_11DOMDocumentEbbb(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %8, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
  %14 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  store ptr %13, ptr %2, align 8, !tbaa !191
  %15 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEEixERKS3_(ptr noundef nonnull align 8 dereferenceable(136) %14, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XercesParserLiaison::DocumentEntry", ptr %15, i64 0, i32 1
  store ptr %13, ptr %16, align 8, !tbaa !192
  store i8 0, ptr %15, align 8, !tbaa !131
  ret ptr %8
}

declare noundef ptr @_ZN11xercesc_2_717DOMImplementation17getImplementationEv() local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1019XercesParserLiaison14createDocumentEPKN11xercesc_2_711DOMDocumentEbbb(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #6 align 2 !prof !56 {
  %6 = alloca ptr, align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !57
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr %9(ptr noundef nonnull align 8 dereferenceable(288) %0)
  %11 = tail call noundef ptr @_ZN11xalanc_1_1021XercesDocumentWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_11DOMDocumentEbbb(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4)
  %12 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  store ptr %11, ptr %6, align 8, !tbaa !191
  %13 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEEixERKS3_(ptr noundef nonnull align 8 dereferenceable(136) %12, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XercesParserLiaison::DocumentEntry", ptr %13, i64 0, i32 1
  store ptr %11, ptr %14, align 8, !tbaa !192
  store i8 0, ptr %13, align 8, !tbaa !131
  ret ptr %11
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019XercesParserLiaison15destroyDocumentEPN11xercesc_2_711DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef readnone %1) unnamed_addr #6 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 6, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !99, !noalias !216
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !87, !noalias !216
  %9 = load ptr, ptr %8, align 8, !tbaa !57, !noalias !216
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !216
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 32), !noalias !216
  store ptr %12, ptr %3, align 8, !tbaa !99, !noalias !216
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !103, !noalias !216
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !106, !noalias !216
  br label %15

15:                                               ; preds = %2, %6
  %16 = load ptr, ptr %3, align 8, !tbaa !99, !noalias !216
  %17 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 6
  br label %18

18:                                               ; preds = %43, %15
  %19 = phi ptr [ %16, %15 ], [ %21, %43 ]
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !103, !noalias !107
  %22 = load ptr, ptr %3, align 8, !tbaa !99, !noalias !221
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load ptr, ptr %17, align 8, !tbaa !87, !noalias !221
  %26 = load ptr, ptr %25, align 8, !tbaa !57, !noalias !221
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8, !noalias !221
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef 32), !noalias !221
  store ptr %29, ptr %3, align 8, !tbaa !99, !noalias !221
  %30 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %29, i64 0, i32 2
  store ptr %29, ptr %30, align 8, !tbaa !103, !noalias !221
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %29, i64 0, i32 1
  store ptr %29, ptr %31, align 8, !tbaa !106, !noalias !221
  br label %32

32:                                               ; preds = %18, %24
  %33 = load ptr, ptr %3, align 8, !tbaa !99, !noalias !221
  %34 = icmp eq ptr %21, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  ret void

36:                                               ; preds = %32
  %37 = load ptr, ptr %21, align 8, !tbaa !111
  %38 = getelementptr inbounds %"struct.std::pair", ptr %37, i64 0, i32 1, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !134
  %40 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !136
  %42 = icmp eq ptr %41, %1
  br i1 %42, label %44, label %43

43:                                               ; preds = %36, %44
  br label %18, !llvm.loop !226

44:                                               ; preds = %36
  %45 = load ptr, ptr %37, align 8, !tbaa !167
  %46 = load ptr, ptr %0, align 8, !tbaa !57
  %47 = getelementptr inbounds ptr, ptr %46, i64 8
  %48 = load ptr, ptr %47, align 8
  tail call void %48(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %45)
  br label %43
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019XercesParserLiaison29getIncludeIgnorableWhitespaceEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(288) %0) unnamed_addr #10 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 1, !tbaa !78, !range !133, !noundef !107
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1019XercesParserLiaison29setIncludeIgnorableWhitespaceEb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(288) %0, i1 noundef zeroext %1) unnamed_addr #11 align 2 !prof !56 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 4
  store i8 %3, ptr %4, align 1, !tbaa !78
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019XercesParserLiaison15getErrorHandlerEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(288) %0) unnamed_addr #10 align 2 !prof !175 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1019XercesParserLiaison15setErrorHandlerEPN11xercesc_2_712ErrorHandlerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #11 align 2 !prof !94 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 8
  store ptr %1, ptr %3, align 8, !tbaa !82
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019XercesParserLiaison15getDoNamespacesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(288) %0) unnamed_addr #10 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 2, !tbaa !79, !range !133, !noundef !107
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1019XercesParserLiaison15setDoNamespacesEb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(288) %0, i1 noundef zeroext %1) unnamed_addr #11 align 2 !prof !56 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 5
  store i8 %3, ptr %4, align 2, !tbaa !79
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019XercesParserLiaison24getExitOnFirstFatalErrorEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(288) %0) unnamed_addr #10 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 1, !tbaa !80, !range !133, !noundef !107
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1019XercesParserLiaison24setExitOnFirstFatalErrorEb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(288) %0, i1 noundef zeroext %1) unnamed_addr #11 align 2 !prof !56 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 6
  store i8 %3, ptr %4, align 1, !tbaa !80
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019XercesParserLiaison17getEntityResolverEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(288) %0) unnamed_addr #10 align 2 !prof !175 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !81
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1019XercesParserLiaison17setEntityResolverEPN11xercesc_2_714EntityResolverE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #11 align 2 !prof !94 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 7
  store ptr %1, ptr %3, align 8, !tbaa !81
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019XercesParserLiaison25getExternalSchemaLocationEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(288) %0) unnamed_addr #10 align 2 !prof !175 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 9, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !185
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 9, i32 0, i32 1
  %6 = load i64, ptr %5, align 8
  %7 = icmp eq i64 %6, 0
  %8 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 9, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = select i1 %7, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %9, !prof !170
  %11 = select i1 %4, ptr null, ptr %10, !prof !170
  ret ptr %11
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019XercesParserLiaison25setExternalSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #6 align 2 !prof !175 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %13, !prof !170

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 9, i32 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !186
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %11, label %8, !prof !170

8:                                                ; preds = %4
  %9 = load i64, ptr %5, align 8, !tbaa !186
  %10 = sub i64 %9, %6
  store i64 %10, ptr %5, align 8, !tbaa !186
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 9, i32 1
  store i32 0, ptr %12, align 8, !tbaa !185
  br label %17

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 9
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %14, i32 noundef 0, i32 noundef -1)
  %15 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %1)
  %16 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %14, ptr noundef nonnull %1, i32 noundef %15)
  br label %17

17:                                               ; preds = %13, %11
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019XercesParserLiaison36getExternalNoNamespaceSchemaLocationEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(288) %0) unnamed_addr #10 align 2 !prof !175 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 10, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !185
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 10, i32 0, i32 1
  %6 = load i64, ptr %5, align 8
  %7 = icmp eq i64 %6, 0
  %8 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 10, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = select i1 %7, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %9, !prof !170
  %11 = select i1 %4, ptr null, ptr %10, !prof !170
  ret ptr %11
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019XercesParserLiaison36setExternalNoNamespaceSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #6 align 2 !prof !175 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %13, !prof !170

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 10, i32 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !186
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %11, label %8, !prof !170

8:                                                ; preds = %4
  %9 = load i64, ptr %5, align 8, !tbaa !186
  %10 = sub i64 %9, %6
  store i64 %10, ptr %5, align 8, !tbaa !186
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 10, i32 1
  store i32 0, ptr %12, align 8, !tbaa !185
  br label %17

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 10
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %14, i32 noundef 0, i32 noundef -1)
  %15 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %1)
  %16 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %14, ptr noundef nonnull %1, i32 noundef %15)
  br label %17

17:                                               ; preds = %13, %11
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019XercesParserLiaison20mapDocumentToWrapperEPKNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) local_unnamed_addr #6 align 2 !prof !56 {
  %3 = alloca %"struct.xalanc_1_10::XalanMapIterator", align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !191
  %5 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23, !noalias !227
  call void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE4findERKS3_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 8 dereferenceable(8) %4), !noalias !227
  %6 = load ptr, ptr %3, align 8, !tbaa !198, !noalias !227
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23, !noalias !227
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 6, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !99, !noalias !230
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !87, !noalias !230
  %13 = load ptr, ptr %12, align 8, !tbaa !57, !noalias !230
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !230
  %16 = call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 32), !noalias !230
  store ptr %16, ptr %7, align 8, !tbaa !99, !noalias !230
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !103, !noalias !230
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !106, !noalias !230
  br label %19

19:                                               ; preds = %2, %10
  %20 = load ptr, ptr %7, align 8, !tbaa !99, !noalias !230
  %21 = icmp eq ptr %6, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %6, align 8, !tbaa !111
  %24 = getelementptr inbounds %"struct.std::pair", ptr %23, i64 0, i32 1, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !134
  br label %26

26:                                               ; preds = %19, %22
  %27 = phi ptr [ %25, %22 ], [ null, %19 ]
  ret ptr %27
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019XercesParserLiaison19mapToXercesDocumentEPKNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) local_unnamed_addr #6 align 2 !prof !56 {
  %3 = alloca %"struct.xalanc_1_10::XalanMapIterator", align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !191
  %5 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23, !noalias !237
  call void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE4findERKS3_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 8 dereferenceable(8) %4), !noalias !237
  %6 = load ptr, ptr %3, align 8, !tbaa !198, !noalias !237
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23, !noalias !237
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 6, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !99, !noalias !240
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 11, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !87, !noalias !240
  %13 = load ptr, ptr %12, align 8, !tbaa !57, !noalias !240
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !240
  %16 = call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 32), !noalias !240
  store ptr %16, ptr %7, align 8, !tbaa !99, !noalias !240
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !103, !noalias !240
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !106, !noalias !240
  br label %19

19:                                               ; preds = %2, %10
  %20 = load ptr, ptr %7, align 8, !tbaa !99, !noalias !240
  %21 = icmp eq ptr %6, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %6, align 8, !tbaa !111
  %24 = getelementptr inbounds %"struct.std::pair", ptr %23, i64 0, i32 1, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !134
  %26 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !136
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi ptr [ %27, %22 ], [ null, %19 ]
  ret ptr %29
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1019XercesParserLiaison10fatalErrorERKN11xercesc_2_717SAXParseExceptionE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #23
  %4 = load ptr, ptr %0, align 8, !tbaa !57
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr %6(ptr noundef nonnull align 8 dereferenceable(288) %0)
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %8 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 116)
          to label %9 unwind label %18

9:                                                ; preds = %2
  invoke void @_ZN11xalanc_1_1019XercesParserLiaison18formatErrorMessageERKN11xercesc_2_717SAXParseExceptionERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(36) %3)
          to label %10 unwind label %18

10:                                               ; preds = %9
  %11 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 16
  %12 = load ptr, ptr %11, align 8, !tbaa !130
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !57
  %16 = getelementptr inbounds ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef null, ptr noundef null)
          to label %48 unwind label %18

18:                                               ; preds = %46, %44, %38, %28, %26, %20, %30, %50, %14, %9, %2
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %53

20:                                               ; preds = %10
  %21 = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !57
  %22 = getelementptr i8, ptr %21, i64 -24
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %23
  %25 = invoke noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %24, i8 noundef signext 10)
          to label %26 unwind label %18

26:                                               ; preds = %20
  %27 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %25)
          to label %28 unwind label %18

28:                                               ; preds = %26
  %29 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %30 unwind label %18

30:                                               ; preds = %28
  %31 = load ptr, ptr %3, align 8, !tbaa !247
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !186
  %34 = icmp eq i64 %33, 0
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8
  %37 = select i1 %34, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %36
  invoke void @_ZN11xalanc_1_1012OutputStringERSoPKtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %37, ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %38 unwind label %18

38:                                               ; preds = %30
  %39 = load ptr, ptr %29, align 8, !tbaa !57
  %40 = getelementptr i8, ptr %39, i64 -24
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds i8, ptr %29, i64 %41
  %43 = invoke noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %42, i8 noundef signext 10)
          to label %44 unwind label %18

44:                                               ; preds = %38
  %45 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %29, i8 noundef signext %43)
          to label %46 unwind label %18

46:                                               ; preds = %44
  %47 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %45)
          to label %48 unwind label %18

48:                                               ; preds = %46, %14
  %49 = call ptr @__cxa_allocate_exception(i64 56) #23
  invoke void @_ZN11xercesc_2_717SAXParseExceptionC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %49, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %50 unwind label %51

50:                                               ; preds = %48
  invoke void @__cxa_throw(ptr nonnull %49, ptr nonnull @_ZTIN11xercesc_2_717SAXParseExceptionE, ptr nonnull @_ZN11xercesc_2_717SAXParseExceptionD1Ev) #26
          to label %69 unwind label %18

51:                                               ; preds = %48
  %52 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %49) #23
  br label %53

53:                                               ; preds = %51, %18
  %54 = phi { ptr, i32 } [ %19, %18 ], [ %52, %51 ]
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !248
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !249
  %61 = load ptr, ptr %3, align 8, !tbaa !247
  %62 = load ptr, ptr %61, align 8, !tbaa !57
  %63 = getelementptr inbounds ptr, ptr %62, i64 3
  %64 = load ptr, ptr %63, align 8
  invoke void %64(ptr noundef nonnull align 8 dereferenceable(8) %61, ptr noundef %60)
          to label %68 unwind label %65

65:                                               ; preds = %58
  %66 = landingpad { ptr, i32 }
          catch ptr null
  %67 = extractvalue { ptr, i32 } %66, 0
  call void @__clang_call_terminate(ptr %67) #24
  unreachable

68:                                               ; preds = %53, %58
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #23
  resume { ptr, i32 } %54

69:                                               ; preds = %50
  unreachable
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019XercesParserLiaison18formatErrorMessageERKN11xercesc_2_717SAXParseExceptionERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = tail call noundef ptr @_ZNK11xercesc_2_717SAXParseException11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #23
  %8 = load ptr, ptr %1, align 8, !tbaa !247
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %8)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #23
  %9 = load ptr, ptr %1, align 8, !tbaa !247
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %10 unwind label %45

10:                                               ; preds = %2
  %11 = invoke noundef i64 @_ZNK11xercesc_2_717SAXParseException13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %12 unwind label %47

12:                                               ; preds = %10
  %13 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %11, ptr noundef nonnull align 8 dereferenceable(36) %3)
          to label %14 unwind label %47

14:                                               ; preds = %12
  %15 = invoke noundef i64 @_ZNK11xercesc_2_717SAXParseException15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %16 unwind label %47

16:                                               ; preds = %14
  %17 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %15, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %18 unwind label %47

18:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #23
  %19 = load ptr, ptr %1, align 8, !tbaa !247
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %20 unwind label %49

20:                                               ; preds = %18
  %21 = icmp eq ptr %7, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %20, %22
  %23 = phi ptr [ %26, %22 ], [ %7, %20 ]
  %24 = load i16, ptr %23, align 2, !tbaa !250
  %25 = icmp eq i16 %24, 0
  %26 = getelementptr inbounds i16, ptr %23, i64 1
  br i1 %25, label %27, label %22, !llvm.loop !252

27:                                               ; preds = %22
  %28 = ptrtoint ptr %23 to i64
  %29 = ptrtoint ptr %7 to i64
  %30 = sub i64 %28, %29
  %31 = and i64 %30, 8589934590
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %27, %20
  %34 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef 119, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %35 unwind label %51

35:                                               ; preds = %33
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %34, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !186
  %38 = icmp eq i64 %37, 0
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %34, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8
  %41 = select i1 %38, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %40
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %34, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !185
  %44 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %41, i32 noundef %43)
          to label %101 unwind label %51

45:                                               ; preds = %2
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %187

47:                                               ; preds = %16, %14, %12, %10
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %172

49:                                               ; preds = %18
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %170

51:                                               ; preds = %110, %108, %101, %35, %103, %33
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %155

53:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #23
  %54 = load ptr, ptr %1, align 8, !tbaa !247
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(8) %54, i32 noundef -1)
          to label %55 unwind label %82

55:                                               ; preds = %53
  %56 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef 115, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %57 unwind label %84

57:                                               ; preds = %55
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %56, i64 0, i32 1
  %59 = load i64, ptr %58, align 8, !tbaa !186
  %60 = icmp eq i64 %59, 0
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %56, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8
  %63 = select i1 %60, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %62
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %56, i64 0, i32 1
  %65 = load i32, ptr %64, align 8, !tbaa !185
  %66 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %63, i32 noundef %65)
          to label %67 unwind label %84

67:                                               ; preds = %57
  %68 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %69 = load i64, ptr %68, align 8, !tbaa !248
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !249
  %74 = load ptr, ptr %6, align 8, !tbaa !247
  %75 = load ptr, ptr %74, align 8, !tbaa !57
  %76 = getelementptr inbounds ptr, ptr %75, i64 3
  %77 = load ptr, ptr %76, align 8
  invoke void %77(ptr noundef nonnull align 8 dereferenceable(8) %74, ptr noundef %73)
          to label %81 unwind label %78

78:                                               ; preds = %71
  %79 = landingpad { ptr, i32 }
          catch ptr null
  %80 = extractvalue { ptr, i32 } %79, 0
  call void @__clang_call_terminate(ptr %80) #24
  unreachable

81:                                               ; preds = %67, %71
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #23
  br label %101

82:                                               ; preds = %53
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %99

84:                                               ; preds = %57, %55
  %85 = landingpad { ptr, i32 }
          cleanup
  %86 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %87 = load i64, ptr %86, align 8, !tbaa !248
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !249
  %92 = load ptr, ptr %6, align 8, !tbaa !247
  %93 = load ptr, ptr %92, align 8, !tbaa !57
  %94 = getelementptr inbounds ptr, ptr %93, i64 3
  %95 = load ptr, ptr %94, align 8
  invoke void %95(ptr noundef nonnull align 8 dereferenceable(8) %92, ptr noundef %91)
          to label %99 unwind label %96

96:                                               ; preds = %89
  %97 = landingpad { ptr, i32 }
          catch ptr null
  %98 = extractvalue { ptr, i32 } %97, 0
  call void @__clang_call_terminate(ptr %98) #24
  unreachable

99:                                               ; preds = %89, %84, %82
  %100 = phi { ptr, i32 } [ %83, %82 ], [ %85, %84 ], [ %85, %89 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #23
  br label %155

101:                                              ; preds = %35, %81
  %102 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 1, i16 noundef zeroext 32)
          to label %103 unwind label %51

103:                                              ; preds = %101
  %104 = load ptr, ptr %0, align 8, !tbaa !57
  %105 = getelementptr inbounds ptr, ptr %104, i64 2
  %106 = load ptr, ptr %105, align 8
  %107 = invoke noundef ptr %106(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %108 unwind label %51

108:                                              ; preds = %103
  %109 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %107)
          to label %110 unwind label %51

110:                                              ; preds = %108
  %111 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %107, i32 noundef %109)
          to label %112 unwind label %51

112:                                              ; preds = %110
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %114 = load i64, ptr %113, align 8, !tbaa !248
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %126, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !249
  %119 = load ptr, ptr %5, align 8, !tbaa !247
  %120 = load ptr, ptr %119, align 8, !tbaa !57
  %121 = getelementptr inbounds ptr, ptr %120, i64 3
  %122 = load ptr, ptr %121, align 8
  invoke void %122(ptr noundef nonnull align 8 dereferenceable(8) %119, ptr noundef %118)
          to label %126 unwind label %123

123:                                              ; preds = %116
  %124 = landingpad { ptr, i32 }
          catch ptr null
  %125 = extractvalue { ptr, i32 } %124, 0
  call void @__clang_call_terminate(ptr %125) #24
  unreachable

126:                                              ; preds = %112, %116
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #23
  %127 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %128 = load i64, ptr %127, align 8, !tbaa !248
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %140, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !249
  %133 = load ptr, ptr %4, align 8, !tbaa !247
  %134 = load ptr, ptr %133, align 8, !tbaa !57
  %135 = getelementptr inbounds ptr, ptr %134, i64 3
  %136 = load ptr, ptr %135, align 8
  invoke void %136(ptr noundef nonnull align 8 dereferenceable(8) %133, ptr noundef %132)
          to label %140 unwind label %137

137:                                              ; preds = %130
  %138 = landingpad { ptr, i32 }
          catch ptr null
  %139 = extractvalue { ptr, i32 } %138, 0
  call void @__clang_call_terminate(ptr %139) #24
  unreachable

140:                                              ; preds = %126, %130
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #23
  %141 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %142 = load i64, ptr %141, align 8, !tbaa !248
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %154, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !249
  %147 = load ptr, ptr %3, align 8, !tbaa !247
  %148 = load ptr, ptr %147, align 8, !tbaa !57
  %149 = getelementptr inbounds ptr, ptr %148, i64 3
  %150 = load ptr, ptr %149, align 8
  invoke void %150(ptr noundef nonnull align 8 dereferenceable(8) %147, ptr noundef %146)
          to label %154 unwind label %151

151:                                              ; preds = %144
  %152 = landingpad { ptr, i32 }
          catch ptr null
  %153 = extractvalue { ptr, i32 } %152, 0
  call void @__clang_call_terminate(ptr %153) #24
  unreachable

154:                                              ; preds = %140, %144
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #23
  ret void

155:                                              ; preds = %99, %51
  %156 = phi { ptr, i32 } [ %52, %51 ], [ %100, %99 ]
  %157 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %158 = load i64, ptr %157, align 8, !tbaa !248
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %170, label %160

160:                                              ; preds = %155
  %161 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %162 = load ptr, ptr %161, align 8, !tbaa !249
  %163 = load ptr, ptr %5, align 8, !tbaa !247
  %164 = load ptr, ptr %163, align 8, !tbaa !57
  %165 = getelementptr inbounds ptr, ptr %164, i64 3
  %166 = load ptr, ptr %165, align 8
  invoke void %166(ptr noundef nonnull align 8 dereferenceable(8) %163, ptr noundef %162)
          to label %170 unwind label %167

167:                                              ; preds = %160
  %168 = landingpad { ptr, i32 }
          catch ptr null
  %169 = extractvalue { ptr, i32 } %168, 0
  call void @__clang_call_terminate(ptr %169) #24
  unreachable

170:                                              ; preds = %160, %155, %49
  %171 = phi { ptr, i32 } [ %50, %49 ], [ %156, %155 ], [ %156, %160 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #23
  br label %172

172:                                              ; preds = %170, %47
  %173 = phi { ptr, i32 } [ %171, %170 ], [ %48, %47 ]
  %174 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %175 = load i64, ptr %174, align 8, !tbaa !248
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %187, label %177

177:                                              ; preds = %172
  %178 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %179 = load ptr, ptr %178, align 8, !tbaa !249
  %180 = load ptr, ptr %4, align 8, !tbaa !247
  %181 = load ptr, ptr %180, align 8, !tbaa !57
  %182 = getelementptr inbounds ptr, ptr %181, i64 3
  %183 = load ptr, ptr %182, align 8
  invoke void %183(ptr noundef nonnull align 8 dereferenceable(8) %180, ptr noundef %179)
          to label %187 unwind label %184

184:                                              ; preds = %177
  %185 = landingpad { ptr, i32 }
          catch ptr null
  %186 = extractvalue { ptr, i32 } %185, 0
  call void @__clang_call_terminate(ptr %186) #24
  unreachable

187:                                              ; preds = %177, %172, %45
  %188 = phi { ptr, i32 } [ %46, %45 ], [ %173, %172 ], [ %173, %177 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #23
  %189 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %190 = load i64, ptr %189, align 8, !tbaa !248
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %202, label %192

192:                                              ; preds = %187
  %193 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %194 = load ptr, ptr %193, align 8, !tbaa !249
  %195 = load ptr, ptr %3, align 8, !tbaa !247
  %196 = load ptr, ptr %195, align 8, !tbaa !57
  %197 = getelementptr inbounds ptr, ptr %196, i64 3
  %198 = load ptr, ptr %197, align 8
  invoke void %198(ptr noundef nonnull align 8 dereferenceable(8) %195, ptr noundef %194)
          to label %202 unwind label %199

199:                                              ; preds = %192
  %200 = landingpad { ptr, i32 }
          catch ptr null
  %201 = extractvalue { ptr, i32 } %200, 0
  call void @__clang_call_terminate(ptr %201) #24
  unreachable

202:                                              ; preds = %187, %192
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #23
  resume { ptr, i32 } %188
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xercesc_2_717SAXParseExceptionC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #0

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_717SAXParseExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold noreturn uwtable
define dso_local void @_ZThn8_N11xalanc_1_1019XercesParserLiaison10fatalErrorERKN11xercesc_2_717SAXParseExceptionE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #13 align 2 !prof !56 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xalanc_1_1019XercesParserLiaison10fatalErrorERKN11xercesc_2_717SAXParseExceptionE(ptr noundef nonnull align 8 dereferenceable(288) %3, ptr noundef nonnull align 8 dereferenceable(56) %1)
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019XercesParserLiaison5errorERKN11xercesc_2_717SAXParseExceptionE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #23
  %4 = load ptr, ptr %0, align 8, !tbaa !57
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr %6(ptr noundef nonnull align 8 dereferenceable(288) %0)
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %8 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 174)
          to label %9 unwind label %18

9:                                                ; preds = %2
  invoke void @_ZN11xalanc_1_1019XercesParserLiaison18formatErrorMessageERKN11xercesc_2_717SAXParseExceptionERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(36) %3)
          to label %10 unwind label %18

10:                                               ; preds = %9
  %11 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 16
  %12 = load ptr, ptr %11, align 8, !tbaa !130
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !57
  %16 = getelementptr inbounds ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef null, ptr noundef null)
          to label %48 unwind label %18

18:                                               ; preds = %46, %44, %38, %28, %26, %20, %30, %54, %14, %9, %2
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %72

20:                                               ; preds = %10
  %21 = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !57
  %22 = getelementptr i8, ptr %21, i64 -24
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %23
  %25 = invoke noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %24, i8 noundef signext 10)
          to label %26 unwind label %18

26:                                               ; preds = %20
  %27 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %25)
          to label %28 unwind label %18

28:                                               ; preds = %26
  %29 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %30 unwind label %18

30:                                               ; preds = %28
  %31 = load ptr, ptr %3, align 8, !tbaa !247
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !186
  %34 = icmp eq i64 %33, 0
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8
  %37 = select i1 %34, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %36
  invoke void @_ZN11xalanc_1_1012OutputStringERSoPKtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %37, ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %38 unwind label %18

38:                                               ; preds = %30
  %39 = load ptr, ptr %29, align 8, !tbaa !57
  %40 = getelementptr i8, ptr %39, i64 -24
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds i8, ptr %29, i64 %41
  %43 = invoke noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %42, i8 noundef signext 10)
          to label %44 unwind label %18

44:                                               ; preds = %38
  %45 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %29, i8 noundef signext %43)
          to label %46 unwind label %18

46:                                               ; preds = %44
  %47 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %45)
          to label %48 unwind label %18

48:                                               ; preds = %46, %14
  %49 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 3
  %50 = load i8, ptr %49, align 4, !tbaa !77, !range !133, !noundef !107
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = call ptr @__cxa_allocate_exception(i64 56) #23
  invoke void @_ZN11xercesc_2_717SAXParseExceptionC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %53, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %54 unwind label %55

54:                                               ; preds = %52
  invoke void @__cxa_throw(ptr nonnull %53, ptr nonnull @_ZTIN11xercesc_2_717SAXParseExceptionE, ptr nonnull @_ZN11xercesc_2_717SAXParseExceptionD1Ev) #26
          to label %88 unwind label %18

55:                                               ; preds = %52
  %56 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %53) #23
  br label %72

57:                                               ; preds = %48
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %59 = load i64, ptr %58, align 8, !tbaa !248
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !249
  %64 = load ptr, ptr %3, align 8, !tbaa !247
  %65 = load ptr, ptr %64, align 8, !tbaa !57
  %66 = getelementptr inbounds ptr, ptr %65, i64 3
  %67 = load ptr, ptr %66, align 8
  invoke void %67(ptr noundef nonnull align 8 dereferenceable(8) %64, ptr noundef %63)
          to label %71 unwind label %68

68:                                               ; preds = %61
  %69 = landingpad { ptr, i32 }
          catch ptr null
  %70 = extractvalue { ptr, i32 } %69, 0
  call void @__clang_call_terminate(ptr %70) #24
  unreachable

71:                                               ; preds = %57, %61
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #23
  ret void

72:                                               ; preds = %55, %18
  %73 = phi { ptr, i32 } [ %19, %18 ], [ %56, %55 ]
  %74 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %75 = load i64, ptr %74, align 8, !tbaa !248
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !249
  %80 = load ptr, ptr %3, align 8, !tbaa !247
  %81 = load ptr, ptr %80, align 8, !tbaa !57
  %82 = getelementptr inbounds ptr, ptr %81, i64 3
  %83 = load ptr, ptr %82, align 8
  invoke void %83(ptr noundef nonnull align 8 dereferenceable(8) %80, ptr noundef %79)
          to label %87 unwind label %84

84:                                               ; preds = %77
  %85 = landingpad { ptr, i32 }
          catch ptr null
  %86 = extractvalue { ptr, i32 } %85, 0
  call void @__clang_call_terminate(ptr %86) #24
  unreachable

87:                                               ; preds = %72, %77
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #23
  resume { ptr, i32 } %73

88:                                               ; preds = %54
  unreachable
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn8_N11xalanc_1_1019XercesParserLiaison5errorERKN11xercesc_2_717SAXParseExceptionE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #14 align 2 !prof !56 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xalanc_1_1019XercesParserLiaison5errorERKN11xercesc_2_717SAXParseExceptionE(ptr noundef nonnull align 8 dereferenceable(288) %3, ptr noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019XercesParserLiaison7warningERKN11xercesc_2_717SAXParseExceptionE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #23
  %4 = load ptr, ptr %0, align 8, !tbaa !57
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr %6(ptr noundef nonnull align 8 dereferenceable(288) %0)
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %8 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 114)
          to label %9 unwind label %18

9:                                                ; preds = %2
  invoke void @_ZN11xalanc_1_1019XercesParserLiaison18formatErrorMessageERKN11xercesc_2_717SAXParseExceptionERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(36) %3)
          to label %10 unwind label %18

10:                                               ; preds = %9
  %11 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 16
  %12 = load ptr, ptr %11, align 8, !tbaa !130
  %13 = icmp eq ptr %12, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !57
  %16 = getelementptr inbounds ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef null, ptr noundef null)
          to label %62 unwind label %18

18:                                               ; preds = %60, %58, %52, %42, %40, %34, %44, %14, %9, %2
  %19 = landingpad { ptr, i32 }
          cleanup
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !248
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !249
  %26 = load ptr, ptr %3, align 8, !tbaa !247
  %27 = load ptr, ptr %26, align 8, !tbaa !57
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  invoke void %29(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %25)
          to label %33 unwind label %30

30:                                               ; preds = %23
  %31 = landingpad { ptr, i32 }
          catch ptr null
  %32 = extractvalue { ptr, i32 } %31, 0
  call void @__clang_call_terminate(ptr %32) #24
  unreachable

33:                                               ; preds = %18, %23
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #23
  resume { ptr, i32 } %19

34:                                               ; preds = %10
  %35 = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !57
  %36 = getelementptr i8, ptr %35, i64 -24
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %37
  %39 = invoke noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %38, i8 noundef signext 10)
          to label %40 unwind label %18

40:                                               ; preds = %34
  %41 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %39)
          to label %42 unwind label %18

42:                                               ; preds = %40
  %43 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %41)
          to label %44 unwind label %18

44:                                               ; preds = %42
  %45 = load ptr, ptr %3, align 8, !tbaa !247
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !186
  %48 = icmp eq i64 %47, 0
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8
  %51 = select i1 %48, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %50
  invoke void @_ZN11xalanc_1_1012OutputStringERSoPKtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef %51, ptr noundef nonnull align 8 dereferenceable(8) %45)
          to label %52 unwind label %18

52:                                               ; preds = %44
  %53 = load ptr, ptr %43, align 8, !tbaa !57
  %54 = getelementptr i8, ptr %53, i64 -24
  %55 = load i64, ptr %54, align 8
  %56 = getelementptr inbounds i8, ptr %43, i64 %55
  %57 = invoke noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %56, i8 noundef signext 10)
          to label %58 unwind label %18

58:                                               ; preds = %52
  %59 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %43, i8 noundef signext %57)
          to label %60 unwind label %18

60:                                               ; preds = %58
  %61 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %59)
          to label %62 unwind label %18

62:                                               ; preds = %60, %14
  %63 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %64 = load i64, ptr %63, align 8, !tbaa !248
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !249
  %69 = load ptr, ptr %3, align 8, !tbaa !247
  %70 = load ptr, ptr %69, align 8, !tbaa !57
  %71 = getelementptr inbounds ptr, ptr %70, i64 3
  %72 = load ptr, ptr %71, align 8
  invoke void %72(ptr noundef nonnull align 8 dereferenceable(8) %69, ptr noundef %68)
          to label %76 unwind label %73

73:                                               ; preds = %66
  %74 = landingpad { ptr, i32 }
          catch ptr null
  %75 = extractvalue { ptr, i32 } %74, 0
  call void @__clang_call_terminate(ptr %75) #24
  unreachable

76:                                               ; preds = %62, %66
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #23
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn8_N11xalanc_1_1019XercesParserLiaison7warningERKN11xercesc_2_717SAXParseExceptionE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #14 align 2 !prof !56 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xalanc_1_1019XercesParserLiaison7warningERKN11xercesc_2_717SAXParseExceptionE(ptr noundef nonnull align 8 dereferenceable(288) %3, ptr noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

declare noundef ptr @_ZNK11xercesc_2_717SAXParseException11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

declare noundef i64 @_ZNK11xercesc_2_717SAXParseException13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #0

declare noundef i64 @_ZNK11xercesc_2_717SAXParseException15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1019XercesParserLiaison11resetErrorsEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #15 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn8_N11xalanc_1_1019XercesParserLiaison11resetErrorsEv(ptr nocapture readnone %0) unnamed_addr #15 align 2 !prof !94 {
  ret void
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #0

declare void @_ZN11xercesc_2_715XercesDOMParserC1EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_79SAXParserC1EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

declare void @_ZN11xercesc_2_79SAXParser15setDoValidationEb(ptr noundef nonnull align 8 dereferenceable(224), i1 noundef zeroext) local_unnamed_addr #0

declare void @_ZN11xercesc_2_79SAXParser15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(224), i1 noundef zeroext) local_unnamed_addr #0

declare noundef ptr @_ZN11xalanc_1_1021XercesDocumentWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_11DOMDocumentEbbb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEEixERKS3_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 !prof !56 {
  %3 = alloca %"struct.xalanc_1_10::XalanMapIterator", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanMapIterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  call void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE4findERKS3_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !99, !noalias !253
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !87, !noalias !253
  %11 = load ptr, ptr %10, align 8, !tbaa !57, !noalias !253
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8, !noalias !253
  %14 = call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 32), !noalias !253
  store ptr %14, ptr %5, align 8, !tbaa !99, !noalias !253
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %14, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !103, !noalias !253
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %14, i64 0, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !106, !noalias !253
  br label %17

17:                                               ; preds = %2, %8
  %18 = load ptr, ptr %5, align 8, !tbaa !99, !noalias !253
  %19 = load ptr, ptr %3, align 8, !tbaa !198
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  call void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE13doCreateEntryERKS3_PKS5_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null)
  %22 = load ptr, ptr %4, align 8, !tbaa !198
  store ptr %22, ptr %3, align 8, !tbaa !198
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  br label %23

23:                                               ; preds = %21, %17
  %24 = load ptr, ptr %3, align 8, !tbaa !198
  %25 = load ptr, ptr %24, align 8, !tbaa !111
  %26 = getelementptr inbounds %"struct.std::pair", ptr %25, i64 0, i32 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  ret ptr %26
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1019XercesParserLiaison16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #6 comdat align 2 !prof !175 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesParserLiaison", ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !247
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ErrorHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ErrorHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !56 {
  tail call void @llvm.trap() #24
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 !prof !258 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !248
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !259

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !249
  %8 = load ptr, ptr %0, align 8, !tbaa !247
  %9 = load ptr, ptr %8, align 8, !tbaa !57
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
  tail call void @__clang_call_terminate(ptr %15) #24
  unreachable
}

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #0

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #0

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1012OutputStringERSoPKtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !115 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !99
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5, !prof !121

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !103, !noalias !261
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %7, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !99, !noalias !264
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21, !prof !267

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !87, !noalias !264
  %14 = load ptr, ptr %13, align 8, !tbaa !57, !noalias !264
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !264
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32)
          to label %18 unwind label %53

18:                                               ; preds = %12
  store ptr %17, ptr %2, align 8, !tbaa !99, !noalias !264
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !103, !noalias !264
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !106, !noalias !264
  br label %21

21:                                               ; preds = %8, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !99, !noalias !264
  %23 = icmp eq ptr %9, %22
  br i1 %23, label %31, label %24, !prof !95

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !103, !noalias !268
  %27 = load ptr, ptr %0, align 8, !tbaa !87
  %28 = load ptr, ptr %27, align 8, !tbaa !57
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %9)
          to label %8 unwind label %53, !llvm.loop !271

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !272
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37, !prof !95

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !103
  %40 = load ptr, ptr %0, align 8, !tbaa !87
  %41 = load ptr, ptr %40, align 8, !tbaa !57
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %35)
          to label %34 unwind label %51

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !99
  %46 = load ptr, ptr %0, align 8, !tbaa !87
  %47 = load ptr, ptr %46, align 8, !tbaa !57
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %45)
          to label %50 unwind label %55, !prof !273

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
  tail call void @__clang_call_terminate(ptr %59) #24
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #6 comdat align 2 !prof !274 {
  %2 = alloca %"struct.xalanc_1_10::XalanMapIterator", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !86
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %26, label %6, !prof !170

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  br label %8

8:                                                ; preds = %6, %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !275)
  %9 = load ptr, ptr %7, align 8, !tbaa !99, !noalias !278
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !87, !noalias !278
  %14 = load ptr, ptr %13, align 8, !tbaa !57, !noalias !278
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !278
  %17 = call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32), !noalias !278
  store ptr %17, ptr %7, align 8, !tbaa !99, !noalias !278
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !103, !noalias !278
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %19, align 8, !tbaa !106, !noalias !278
  br label %20

20:                                               ; preds = %8, %11
  %21 = load ptr, ptr %7, align 8, !tbaa !99, !noalias !278
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !103, !noalias !278
  store ptr %23, ptr %2, align 8, !tbaa !198, !alias.scope !275
  call void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS3_S5_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS8_5EntryEEENS_9XalanListISH_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  %24 = load i64, ptr %3, align 8, !tbaa !86
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %8, !prof !170, !llvm.loop !281

26:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !282
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %22, label %5, !prof !95

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !169
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !98
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %14, %12 ], [ %7, %5 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #23
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %13, i64 1
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %16, label %12, !llvm.loop !283

16:                                               ; preds = %12, %5
  %17 = load ptr, ptr %6, align 8, !tbaa !169
  %18 = load ptr, ptr %0, align 8, !tbaa !88
  %19 = load ptr, ptr %18, align 8, !tbaa !57
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
  tail call void @__clang_call_terminate(ptr %25) #24
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS3_S5_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS8_5EntryEEENS_9XalanListISH_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !99, !noalias !284
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !87, !noalias !284
  %9 = load ptr, ptr %8, align 8, !tbaa !57, !noalias !284
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !284
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 32), !noalias !284
  store ptr %12, ptr %3, align 8, !tbaa !99, !noalias !284
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !103, !noalias !284
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !106, !noalias !284
  br label %15

15:                                               ; preds = %2, %6
  %16 = load ptr, ptr %3, align 8, !tbaa !99, !noalias !284
  %17 = load ptr, ptr %1, align 8, !tbaa !198
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !103
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %17, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !106
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %23, i64 0, i32 2
  store ptr %21, ptr %24, align 8, !tbaa !103
  %25 = load ptr, ptr %20, align 8, !tbaa !103
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %25, i64 0, i32 1
  store ptr %23, ptr %26, align 8, !tbaa !106
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %16, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !106
  store ptr %28, ptr %22, align 8, !tbaa !106
  store ptr %16, ptr %20, align 8, !tbaa !103
  %29 = load ptr, ptr %27, align 8, !tbaa !106
  %30 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %29, i64 0, i32 2
  store ptr %17, ptr %30, align 8, !tbaa !103
  store ptr %17, ptr %27, align 8, !tbaa !106
  br label %31

31:                                               ; preds = %15, %19
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry", ptr %17, i64 0, i32 1
  store i8 1, ptr %32, align 8, !tbaa !203
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %34 = load i64, ptr %33, align 8, !tbaa !86
  %35 = add i64 %34, -1
  store i64 %35, ptr %33, align 8, !tbaa !86
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !287
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !202
  %8 = load ptr, ptr %0, align 8, !tbaa !288
  %9 = load ptr, ptr %8, align 8, !tbaa !57
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
  tail call void @__clang_call_terminate(ptr %15) #24
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE14compactBucketsEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = alloca %"class.xalanc_1_10::XalanVector.26", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 3
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !98
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !tbaa !169
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %2, i64 0, i32 1
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %2, i64 0, i32 2
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %2, i64 0, i32 3
  br label %14

13:                                               ; preds = %72, %1
  ret void

14:                                               ; preds = %7, %72
  %15 = phi ptr [ %8, %7 ], [ %73, %72 ]
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !202
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %15, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !171
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %45, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %17, i64 %19
  br label %23

23:                                               ; preds = %21, %40
  %24 = phi ptr [ %43, %40 ], [ %22, %21 ]
  %25 = phi ptr [ %42, %40 ], [ %17, %21 ]
  %26 = phi i64 [ %41, %40 ], [ %19, %21 ]
  %27 = load ptr, ptr %25, align 8, !tbaa !198
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry", ptr %27, i64 0, i32 1
  %29 = load i8, ptr %28, align 8, !tbaa !203, !range !133, !noundef !107
  %30 = icmp eq i8 %29, 0
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %25, i64 1
  br i1 %30, label %40, label %32

32:                                               ; preds = %23
  %33 = ptrtoint ptr %24 to i64
  %34 = ptrtoint ptr %31 to i64
  %35 = sub i64 %33, %34
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %25, ptr nonnull align 8 %31, i64 %35, i1 false), !tbaa !198
  br label %38

38:                                               ; preds = %32, %37
  %39 = add i64 %26, -1
  store i64 %39, ptr %18, align 8, !tbaa !171
  br label %40

40:                                               ; preds = %23, %38
  %41 = phi i64 [ %39, %38 ], [ %26, %23 ]
  %42 = phi ptr [ %25, %38 ], [ %31, %23 ]
  %43 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %17, i64 %41
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %45, label %23, !llvm.loop !289

45:                                               ; preds = %40, %14
  %46 = phi i64 [ %19, %14 ], [ %41, %40 ]
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %15, i64 0, i32 2
  %48 = load i64, ptr %47, align 8, !tbaa !287
  %49 = sub i64 %48, %46
  %50 = icmp ugt i64 %49, %46
  br i1 %50, label %51, label %72

51:                                               ; preds = %45
  %52 = icmp eq i64 %46, 0
  %53 = select i1 %52, i64 5, i64 %49
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  %54 = load ptr, ptr %9, align 8, !tbaa !83
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %54, i64 noundef %53)
  %55 = load ptr, ptr %15, align 8, !tbaa !288
  %56 = load i64, ptr %18, align 8, !tbaa !171
  %57 = load i64, ptr %47, align 8, !tbaa !287
  %58 = load ptr, ptr %16, align 8, !tbaa !202
  %59 = load ptr, ptr %2, align 8, !tbaa !288
  store ptr %59, ptr %15, align 8, !tbaa !288
  %60 = load i64, ptr %10, align 8, !tbaa !171
  store i64 %60, ptr %18, align 8, !tbaa !171
  %61 = load i64, ptr %11, align 8, !tbaa !287
  store i64 %61, ptr %47, align 8, !tbaa !287
  %62 = load ptr, ptr %12, align 8, !tbaa !202
  store ptr %62, ptr %16, align 8, !tbaa !202
  store ptr %55, ptr %2, align 8, !tbaa !288
  store i64 %56, ptr %10, align 8, !tbaa !171
  store i64 %57, ptr %11, align 8, !tbaa !287
  store ptr %58, ptr %12, align 8, !tbaa !202
  %63 = icmp eq i64 %57, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %51
  %65 = load ptr, ptr %55, align 8, !tbaa !57
  %66 = getelementptr inbounds ptr, ptr %65, i64 3
  %67 = load ptr, ptr %66, align 8
  invoke void %67(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef %58)
          to label %71 unwind label %68

68:                                               ; preds = %64
  %69 = landingpad { ptr, i32 }
          catch ptr null
  %70 = extractvalue { ptr, i32 } %69, 0
  call void @__clang_call_terminate(ptr %70) #24
  unreachable

71:                                               ; preds = %51, %64
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  br label %72

72:                                               ; preds = %71, %45
  %73 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %15, i64 1
  %74 = load ptr, ptr %3, align 8, !tbaa !169
  %75 = load i64, ptr %4, align 8, !tbaa !98
  %76 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %74, i64 %75
  %77 = icmp eq ptr %73, %76
  br i1 %77, label %13, label %14, !llvm.loop !290
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.26", align 8
  store ptr %2, ptr %0, align 8, !tbaa !288
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !171
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !288
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !171
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !287
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !57
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !202
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !202
  %24 = load i64, ptr %9, align 8, !tbaa !171
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE6insertEPSH_PKSH_SN_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !288
  %28 = load i64, ptr %6, align 8, !tbaa !171
  %29 = load i64, ptr %7, align 8, !tbaa !287
  %30 = load ptr, ptr %8, align 8, !tbaa !202
  %31 = load ptr, ptr %5, align 8, !tbaa !288
  store ptr %31, ptr %0, align 8, !tbaa !288
  %32 = load i64, ptr %14, align 8, !tbaa !171
  store i64 %32, ptr %6, align 8, !tbaa !171
  %33 = load i64, ptr %15, align 8, !tbaa !287
  store i64 %33, ptr %7, align 8, !tbaa !287
  %34 = load ptr, ptr %21, align 8, !tbaa !202
  store ptr %34, ptr %8, align 8, !tbaa !202
  store ptr %27, ptr %5, align 8, !tbaa !288
  store i64 %28, ptr %14, align 8, !tbaa !171
  store i64 %29, ptr %15, align 8, !tbaa !287
  store ptr %30, ptr %21, align 8, !tbaa !202
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !57
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #24
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !287
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !202
  %50 = load ptr, ptr %5, align 8, !tbaa !288
  %51 = load ptr, ptr %50, align 8, !tbaa !57
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #24
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !57
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61)
  store ptr %65, ptr %8, align 8, !tbaa !202
  store i64 %3, ptr %7, align 8, !tbaa !287
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE6insertEPSH_PKSH_SN_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.26", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %161, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !171
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !202
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !287
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %161, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !202
  %28 = load i64, ptr %12, align 8, !tbaa !171
  %29 = getelementptr %"struct.xalanc_1_10::XalanListIteratorBase", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !198
  store ptr %34, ptr %32, align 8, !tbaa !198
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %160, label %30, !llvm.loop !291

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  %42 = load ptr, ptr %0, align 8, !tbaa !288
  store ptr %42, ptr %5, align 8, !tbaa !288
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !171
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !287
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !57
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !202
  %51 = load i64, ptr %43, align 8, !tbaa !171
  %52 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !202
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE6insertEPSH_PKSH_SN_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !202
  %56 = load i64, ptr %43, align 8, !tbaa !171
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE6insertEPSH_PKSH_SN_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !202
  %60 = load i64, ptr %43, align 8, !tbaa !171
  %61 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !202
  %63 = load i64, ptr %12, align 8, !tbaa !171
  %64 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE6insertEPSH_PKSH_SN_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !288
  %67 = load i64, ptr %12, align 8, !tbaa !171
  %68 = load i64, ptr %19, align 8, !tbaa !287
  %69 = load ptr, ptr %15, align 8, !tbaa !202
  %70 = load ptr, ptr %5, align 8, !tbaa !288
  store ptr %70, ptr %0, align 8, !tbaa !288
  %71 = load i64, ptr %43, align 8, !tbaa !171
  store i64 %71, ptr %12, align 8, !tbaa !171
  %72 = load i64, ptr %44, align 8, !tbaa !287
  store i64 %72, ptr %19, align 8, !tbaa !287
  %73 = load ptr, ptr %50, align 8, !tbaa !202
  store ptr %73, ptr %15, align 8, !tbaa !202
  store ptr %66, ptr %5, align 8, !tbaa !288
  store i64 %67, ptr %43, align 8, !tbaa !171
  store i64 %68, ptr %44, align 8, !tbaa !287
  store ptr %69, ptr %50, align 8, !tbaa !202
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !57
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #24
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %161

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !287
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !202
  %89 = load ptr, ptr %5, align 8, !tbaa !288
  %90 = load ptr, ptr %89, align 8, !tbaa !57
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #24
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !292

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !293

115:                                              ; preds = %111, %105
  %116 = ashr exact i64 %100, 3
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %161

118:                                              ; preds = %115, %118
  %119 = phi i64 [ %125, %118 ], [ %116, %115 ]
  %120 = phi ptr [ %124, %118 ], [ %1, %115 ]
  %121 = phi ptr [ %123, %118 ], [ %2, %115 ]
  %122 = load ptr, ptr %121, align 8, !tbaa !198
  store ptr %122, ptr %120, align 8, !tbaa !198
  %123 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %121, i64 1
  %124 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %120, i64 1
  %125 = add nsw i64 %119, -1
  %126 = icmp sgt i64 %119, 1
  br i1 %126, label %118, label %161, !llvm.loop !294

127:                                              ; preds = %97
  %128 = sub nsw i64 0, %9
  %129 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %17, i64 %128
  %130 = icmp eq ptr %3, %2
  br i1 %130, label %135, label %131

131:                                              ; preds = %127, %131
  %132 = phi ptr [ %133, %131 ], [ %129, %127 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %132)
  %133 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %132, i64 1
  %134 = icmp eq ptr %133, %17
  br i1 %134, label %135, label %131, !llvm.loop !295

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
  %148 = load ptr, ptr %146, align 8, !tbaa !198
  store ptr %148, ptr %147, align 8, !tbaa !198
  %149 = add nsw i64 %143, -1
  %150 = icmp sgt i64 %143, 1
  br i1 %150, label %142, label %140, !llvm.loop !296

151:                                              ; preds = %140, %151
  %152 = phi i64 [ %158, %151 ], [ %9, %140 ]
  %153 = phi ptr [ %157, %151 ], [ %1, %140 ]
  %154 = phi ptr [ %156, %151 ], [ %2, %140 ]
  %155 = load ptr, ptr %154, align 8, !tbaa !198
  store ptr %155, ptr %153, align 8, !tbaa !198
  %156 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %154, i64 1
  %157 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %153, i64 1
  %158 = add nsw i64 %152, -1
  %159 = icmp sgt i64 %152, 1
  br i1 %159, label %151, label %161, !llvm.loop !294

160:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !171
  br label %161

161:                                              ; preds = %118, %151, %115, %140, %24, %160, %82, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.26", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !171
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !287
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !202
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !198
  store ptr %13, ptr %12, align 8, !tbaa !198
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !171
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  %21 = load ptr, ptr %0, align 8, !tbaa !288
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !288
  %24 = load i64, ptr %4, align 8, !tbaa !171
  %25 = load i64, ptr %6, align 8, !tbaa !287
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !202
  %28 = load ptr, ptr %3, align 8, !tbaa !288
  store ptr %28, ptr %0, align 8, !tbaa !288
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !171
  store i64 %30, ptr %4, align 8, !tbaa !171
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !287
  store i64 %32, ptr %6, align 8, !tbaa !287
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !202
  store ptr %34, ptr %26, align 8, !tbaa !202
  store ptr %23, ptr %3, align 8, !tbaa !288
  store i64 %24, ptr %29, align 8, !tbaa !171
  store i64 %25, ptr %31, align 8, !tbaa !287
  store ptr %27, ptr %33, align 8, !tbaa !202
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !57
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #24
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !287
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !202
  %52 = load ptr, ptr %3, align 8, !tbaa !288
  %53 = load ptr, ptr %52, align 8, !tbaa !57
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #24
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.26", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  %4 = load ptr, ptr %0, align 8, !tbaa !288
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !288
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !171
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !287
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !202
  %12 = load ptr, ptr %3, align 8, !tbaa !288
  store ptr %12, ptr %0, align 8, !tbaa !288
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !171
  store i64 %14, ptr %6, align 8, !tbaa !171
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !287
  store i64 %16, ptr %8, align 8, !tbaa !287
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !202
  store ptr %18, ptr %10, align 8, !tbaa !202
  store ptr %5, ptr %3, align 8, !tbaa !288
  store i64 %7, ptr %13, align 8, !tbaa !171
  store i64 %9, ptr %15, align 8, !tbaa !287
  store ptr %11, ptr %17, align 8, !tbaa !202
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !57
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #24
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #17

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #6 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE13doCreateEntryERKS3_PKS5_(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanMapIterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.26", align 8
  %6 = alloca %"struct.xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry", align 8
  %7 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !98
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %49

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !169
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 4
  %16 = load i64, ptr %15, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !83
  store ptr %18, ptr %5, align 8, !tbaa !288
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %5, i64 0, i32 1
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %5, i64 0, i32 2
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %5, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_mRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %14, i64 noundef %16, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %22 unwind label %35

22:                                               ; preds = %11
  %23 = load i64, ptr %20, align 8, !tbaa !287
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %21, align 8, !tbaa !202
  %27 = load ptr, ptr %5, align 8, !tbaa !288
  %28 = load ptr, ptr %27, align 8, !tbaa !57
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %26)
          to label %34 unwind label %31

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #24
  unreachable

34:                                               ; preds = %22, %25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %49

35:                                               ; preds = %11
  %36 = landingpad { ptr, i32 }
          cleanup
  %37 = load i64, ptr %20, align 8, !tbaa !287
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %21, align 8, !tbaa !202
  %41 = load ptr, ptr %5, align 8, !tbaa !288
  %42 = load ptr, ptr %41, align 8, !tbaa !57
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef %40)
          to label %48 unwind label %45

45:                                               ; preds = %39
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  call void @__clang_call_terminate(ptr %47) #24
  unreachable

48:                                               ; preds = %35, %39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  resume { ptr, i32 } %36

49:                                               ; preds = %34, %4
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 3
  %51 = load float, ptr %50, align 8, !tbaa !84
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 5
  %53 = load i64, ptr %52, align 8, !tbaa !86
  %54 = uitofp i64 %53 to float
  %55 = fmul float %51, %54
  %56 = fptoui float %55 to i64
  %57 = load i64, ptr %8, align 8, !tbaa !98
  %58 = icmp ult i64 %57, %56
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  call void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(136) %1)
  br label %60

60:                                               ; preds = %59, %49
  %61 = load i64, ptr %8, align 8, !tbaa !98
  br label %62

62:                                               ; preds = %60, %62
  %63 = phi i64 [ 0, %60 ], [ %70, %62 ]
  %64 = phi i64 [ 0, %60 ], [ %69, %62 ]
  %65 = shl i64 %64, 1
  %66 = getelementptr inbounds i8, ptr %2, i64 %63
  %67 = load i8, ptr %66, align 1, !tbaa !200
  %68 = sext i8 %67 to i64
  %69 = xor i64 %65, %68
  %70 = add nuw nsw i64 %63, 1
  %71 = icmp eq i64 %70, 8
  br i1 %71, label %72, label %62, !llvm.loop !201

72:                                               ; preds = %62
  %73 = urem i64 %69, %61
  %74 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 7
  %75 = call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %74)
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #23
  %77 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !83
  %79 = load ptr, ptr %78, align 8, !tbaa !57
  %80 = getelementptr inbounds ptr, ptr %79, i64 2
  %81 = load ptr, ptr %80, align 8
  %82 = call noundef ptr %81(ptr noundef nonnull align 8 dereferenceable(8) %78, i64 noundef 24)
  store ptr %82, ptr %6, align 8, !tbaa !111
  %83 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry", ptr %6, i64 0, i32 1
  store i8 0, ptr %83, align 8, !tbaa !203
  call void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE9push_backERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %74, ptr noundef nonnull align 8 dereferenceable(9) %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #23
  br label %84

84:                                               ; preds = %76, %72
  %85 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 7, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !99, !noalias !297
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load ptr, ptr %74, align 8, !tbaa !87, !noalias !297
  %90 = load ptr, ptr %89, align 8, !tbaa !57, !noalias !297
  %91 = getelementptr inbounds ptr, ptr %90, i64 2
  %92 = load ptr, ptr %91, align 8, !noalias !297
  %93 = call noundef ptr %92(ptr noundef nonnull align 8 dereferenceable(8) %89, i64 noundef 32), !noalias !297
  store ptr %93, ptr %85, align 8, !tbaa !99, !noalias !297
  %94 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %93, i64 0, i32 2
  store ptr %93, ptr %94, align 8, !tbaa !103, !noalias !297
  %95 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %93, i64 0, i32 1
  store ptr %93, ptr %95, align 8, !tbaa !106, !noalias !297
  br label %96

96:                                               ; preds = %84, %88
  %97 = load ptr, ptr %85, align 8, !tbaa !99, !noalias !297
  %98 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !106, !noalias !300
  %100 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry", ptr %99, i64 0, i32 1
  store i8 0, ptr %100, align 8, !tbaa !203
  %101 = load ptr, ptr %99, align 8, !tbaa !111
  %102 = load ptr, ptr %2, align 8, !tbaa !191
  store ptr %102, ptr %101, align 8, !tbaa !191
  %103 = icmp eq ptr %3, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %96
  %105 = load ptr, ptr %99, align 8, !tbaa !111
  %106 = getelementptr inbounds %"struct.std::pair", ptr %105, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %106, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !303
  br label %107

107:                                              ; preds = %96, %104
  %108 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6
  %109 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !99, !noalias !305
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = load ptr, ptr %108, align 8, !tbaa !87, !noalias !305
  %114 = load ptr, ptr %113, align 8, !tbaa !57, !noalias !305
  %115 = getelementptr inbounds ptr, ptr %114, i64 2
  %116 = load ptr, ptr %115, align 8, !noalias !305
  %117 = call noundef ptr %116(ptr noundef nonnull align 8 dereferenceable(8) %113, i64 noundef 32), !noalias !305
  store ptr %117, ptr %109, align 8, !tbaa !99, !noalias !305
  %118 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %117, i64 0, i32 2
  store ptr %117, ptr %118, align 8, !tbaa !103, !noalias !305
  %119 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %117, i64 0, i32 1
  store ptr %117, ptr %119, align 8, !tbaa !106, !noalias !305
  br label %120

120:                                              ; preds = %107, %112
  %121 = load ptr, ptr %109, align 8, !tbaa !99, !noalias !305
  %122 = load ptr, ptr %85, align 8, !tbaa !99, !noalias !308
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = load ptr, ptr %74, align 8, !tbaa !87, !noalias !308
  %126 = load ptr, ptr %125, align 8, !tbaa !57, !noalias !308
  %127 = getelementptr inbounds ptr, ptr %126, i64 2
  %128 = load ptr, ptr %127, align 8, !noalias !308
  %129 = call noundef ptr %128(ptr noundef nonnull align 8 dereferenceable(8) %125, i64 noundef 32), !noalias !308
  store ptr %129, ptr %85, align 8, !tbaa !99, !noalias !308
  %130 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %129, i64 0, i32 2
  store ptr %129, ptr %130, align 8, !tbaa !103, !noalias !308
  %131 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %129, i64 0, i32 1
  store ptr %129, ptr %131, align 8, !tbaa !106, !noalias !308
  br label %132

132:                                              ; preds = %120, %124
  %133 = load ptr, ptr %85, align 8, !tbaa !99, !noalias !308
  %134 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %133, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !106, !noalias !311
  %136 = icmp eq ptr %121, %135
  br i1 %136, label %149, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %135, i64 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !103
  %140 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %135, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !106
  %142 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %141, i64 0, i32 2
  store ptr %139, ptr %142, align 8, !tbaa !103
  %143 = load ptr, ptr %138, align 8, !tbaa !103
  %144 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %143, i64 0, i32 1
  store ptr %141, ptr %144, align 8, !tbaa !106
  %145 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %121, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !106
  store ptr %146, ptr %140, align 8, !tbaa !106
  store ptr %121, ptr %138, align 8, !tbaa !103
  %147 = load ptr, ptr %145, align 8, !tbaa !106
  %148 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %147, i64 0, i32 2
  store ptr %135, ptr %148, align 8, !tbaa !103
  store ptr %135, ptr %145, align 8, !tbaa !106
  br label %149

149:                                              ; preds = %132, %137
  %150 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !169
  %152 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %151, i64 %73
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  %153 = load ptr, ptr %109, align 8, !tbaa !99, !noalias !314
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %163

155:                                              ; preds = %149
  %156 = load ptr, ptr %108, align 8, !tbaa !87, !noalias !314
  %157 = load ptr, ptr %156, align 8, !tbaa !57, !noalias !314
  %158 = getelementptr inbounds ptr, ptr %157, i64 2
  %159 = load ptr, ptr %158, align 8, !noalias !314
  %160 = call noundef ptr %159(ptr noundef nonnull align 8 dereferenceable(8) %156, i64 noundef 32), !noalias !314
  store ptr %160, ptr %109, align 8, !tbaa !99, !noalias !314
  %161 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %160, i64 0, i32 2
  store ptr %160, ptr %161, align 8, !tbaa !103, !noalias !314
  %162 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %160, i64 0, i32 1
  store ptr %160, ptr %162, align 8, !tbaa !106, !noalias !314
  br label %163

163:                                              ; preds = %149, %155
  %164 = load ptr, ptr %109, align 8, !tbaa !99, !noalias !314
  call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %165 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %164, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !106, !noalias !317
  store ptr %166, ptr %7, align 8, !tbaa !198, !alias.scope !317
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %152, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  %167 = load i64, ptr %52, align 8, !tbaa !86
  %168 = add i64 %167, 1
  store i64 %168, ptr %52, align 8, !tbaa !86
  %169 = load ptr, ptr %109, align 8, !tbaa !99, !noalias !320
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %179

171:                                              ; preds = %163
  %172 = load ptr, ptr %108, align 8, !tbaa !87, !noalias !320
  %173 = load ptr, ptr %172, align 8, !tbaa !57, !noalias !320
  %174 = getelementptr inbounds ptr, ptr %173, i64 2
  %175 = load ptr, ptr %174, align 8, !noalias !320
  %176 = call noundef ptr %175(ptr noundef nonnull align 8 dereferenceable(8) %172, i64 noundef 32), !noalias !320
  store ptr %176, ptr %109, align 8, !tbaa !99, !noalias !320
  %177 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %176, i64 0, i32 2
  store ptr %176, ptr %177, align 8, !tbaa !103, !noalias !320
  %178 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %176, i64 0, i32 1
  store ptr %176, ptr %178, align 8, !tbaa !106, !noalias !320
  br label %179

179:                                              ; preds = %163, %171
  %180 = load ptr, ptr %109, align 8, !tbaa !99, !noalias !320
  %181 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %180, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !106, !noalias !323
  store ptr %182, ptr %0, align 8, !tbaa !198
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_mRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !98
  %8 = add i64 %7, %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !169
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %10, i64 %7
  %12 = icmp eq ptr %11, %1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !282
  br i1 %12, label %15, label %33

15:                                               ; preds = %4
  %16 = icmp ult i64 %14, %8
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8)
  br label %18

18:                                               ; preds = %15, %17
  %19 = icmp eq i64 %2, 0
  br i1 %19, label %126, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %9, align 8, !tbaa !169
  %22 = load i64, ptr %6, align 8, !tbaa !98
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %21, i64 %22
  br label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %28, %24 ], [ %23, %20 ]
  %26 = phi i64 [ %31, %24 ], [ 0, %20 ]
  %27 = load ptr, ptr %0, align 8, !tbaa !88
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef 0)
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %25, i64 1
  %29 = load i64, ptr %6, align 8, !tbaa !98
  %30 = add i64 %29, 1
  store i64 %30, ptr %6, align 8, !tbaa !98
  %31 = add nuw i64 %26, 1
  %32 = icmp eq i64 %31, %2
  br i1 %32, label %126, label %24, !llvm.loop !326

33:                                               ; preds = %4
  %34 = icmp ugt i64 %8, %14
  br i1 %34, label %35, label %70

35:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  %36 = load ptr, ptr %0, align 8, !tbaa !88
  store ptr %36, ptr %5, align 8, !tbaa !88
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %37, align 8, !tbaa !98
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %8, ptr %38, align 8, !tbaa !282
  %39 = shl i64 %8, 5
  %40 = load ptr, ptr %36, align 8, !tbaa !57
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %36, i64 noundef %39)
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %43, ptr %44, align 8, !tbaa !169
  %45 = load i64, ptr %37, align 8, !tbaa !98
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %43, i64 %45
  %47 = load ptr, ptr %9, align 8, !tbaa !169
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_PKSK_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %46, ptr noundef %47, ptr noundef %1)
          to label %48 unwind label %68

48:                                               ; preds = %35
  %49 = load ptr, ptr %44, align 8, !tbaa !169
  %50 = load i64, ptr %37, align 8, !tbaa !98
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %49, i64 %50
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_mRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %51, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %52 unwind label %68

52:                                               ; preds = %48
  %53 = load ptr, ptr %44, align 8, !tbaa !169
  %54 = load i64, ptr %37, align 8, !tbaa !98
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %53, i64 %54
  %56 = load ptr, ptr %9, align 8, !tbaa !169
  %57 = load i64, ptr %6, align 8, !tbaa !98
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %56, i64 %57
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_PKSK_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %55, ptr noundef %1, ptr noundef %58)
          to label %59 unwind label %68

59:                                               ; preds = %52
  %60 = load ptr, ptr %0, align 8, !tbaa !88
  %61 = load i64, ptr %6, align 8, !tbaa !98
  %62 = load i64, ptr %13, align 8, !tbaa !282
  %63 = load ptr, ptr %9, align 8, !tbaa !169
  %64 = load ptr, ptr %5, align 8, !tbaa !88
  store ptr %64, ptr %0, align 8, !tbaa !88
  %65 = load i64, ptr %37, align 8, !tbaa !98
  store i64 %65, ptr %6, align 8, !tbaa !98
  %66 = load i64, ptr %38, align 8, !tbaa !282
  store i64 %66, ptr %13, align 8, !tbaa !282
  %67 = load ptr, ptr %44, align 8, !tbaa !169
  store ptr %67, ptr %9, align 8, !tbaa !169
  store ptr %60, ptr %5, align 8, !tbaa !88
  store i64 %61, ptr %37, align 8, !tbaa !98
  store i64 %62, ptr %38, align 8, !tbaa !282
  store ptr %63, ptr %44, align 8, !tbaa !169
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %126

68:                                               ; preds = %52, %48, %35
  %69 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %83 = add nuw i64 %82, 1
  %84 = icmp eq i64 %83, %77
  br i1 %84, label %79, label %81, !llvm.loop !327

85:                                               ; preds = %87, %79
  %86 = icmp eq ptr %11, %1
  br i1 %86, label %126, label %91

87:                                               ; preds = %79, %87
  %88 = phi ptr [ %89, %87 ], [ %1, %79 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %88)
  %89 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %88, i64 1
  %90 = icmp eq ptr %89, %11
  br i1 %90, label %85, label %87, !llvm.loop !328

91:                                               ; preds = %85, %91
  %92 = phi ptr [ %94, %91 ], [ %1, %85 ]
  %93 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEaSERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %92, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %94 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %92, i64 1
  %95 = icmp eq ptr %94, %11
  br i1 %95, label %126, label %91, !llvm.loop !329

96:                                               ; preds = %70
  %97 = sub i64 0, %2
  %98 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %11, i64 %97
  %99 = icmp eq i64 %2, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96, %100
  %101 = phi ptr [ %102, %100 ], [ %98, %96 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %101)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %101, i64 1
  %103 = icmp eq ptr %102, %11
  br i1 %103, label %104, label %100, !llvm.loop !330

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
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %112, i64 -1
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %111, i64 -1
  %115 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEaSERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %114, ptr noundef nonnull align 8 dereferenceable(32) %113)
  %116 = add nsw i64 %110, -1
  %117 = icmp sgt i64 %110, 1
  br i1 %117, label %109, label %118, !llvm.loop !331

118:                                              ; preds = %109, %104
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %1, i64 %2
  %120 = icmp eq i64 %2, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %118, %121
  %122 = phi ptr [ %124, %121 ], [ %1, %118 ]
  %123 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEaSERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %122, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %124 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %122, i64 1
  %125 = icmp eq ptr %124, %119
  br i1 %125, label %126, label %121, !llvm.loop !329

126:                                              ; preds = %91, %121, %24, %85, %118, %18, %59
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %3 = alloca %"class.xalanc_1_10::XalanVector.26", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !86
  %7 = uitofp i64 %6 to double
  %8 = fmul double %7, 1.600000e+00
  %9 = fptoui double %8 to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  store ptr %11, ptr %3, align 8, !tbaa !288
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %3, i64 0, i32 1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %3, i64 0, i32 2
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %3, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEC2EmRKSK_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %9, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %15 unwind label %79

15:                                               ; preds = %1
  %16 = load i64, ptr %13, align 8, !tbaa !287
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %14, align 8, !tbaa !202
  %20 = load ptr, ptr %3, align 8, !tbaa !288
  %21 = load ptr, ptr %20, align 8, !tbaa !57
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %19)
          to label %27 unwind label %24

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #24
  unreachable

27:                                               ; preds = %15, %18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !99, !noalias !332
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load ptr, ptr %28, align 8, !tbaa !87, !noalias !332
  %34 = load ptr, ptr %33, align 8, !tbaa !57, !noalias !332
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8, !noalias !332
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 32)
          to label %38 unwind label %93

38:                                               ; preds = %32
  store ptr %37, ptr %29, align 8, !tbaa !99, !noalias !332
  %39 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %37, i64 0, i32 2
  store ptr %37, ptr %39, align 8, !tbaa !103, !noalias !332
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %37, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !106, !noalias !332
  br label %41

41:                                               ; preds = %27, %38
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 3
  br label %43

43:                                               ; preds = %75, %41
  %44 = phi ptr [ %29, %41 ], [ %4, %75 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !191, !noalias !107
  %46 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !103, !noalias !107
  store ptr %47, ptr %4, align 8, !tbaa !198
  %48 = load ptr, ptr %29, align 8, !tbaa !99, !noalias !335
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load ptr, ptr %28, align 8, !tbaa !87, !noalias !335
  %52 = load ptr, ptr %51, align 8, !tbaa !57, !noalias !335
  %53 = getelementptr inbounds ptr, ptr %52, i64 2
  %54 = load ptr, ptr %53, align 8, !noalias !335
  %55 = invoke noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %51, i64 noundef 32)
          to label %56 unwind label %95

56:                                               ; preds = %50
  store ptr %55, ptr %29, align 8, !tbaa !99, !noalias !335
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %55, i64 0, i32 2
  store ptr %55, ptr %57, align 8, !tbaa !103, !noalias !335
  %58 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %55, i64 0, i32 1
  store ptr %55, ptr %58, align 8, !tbaa !106, !noalias !335
  br label %59

59:                                               ; preds = %43, %56
  %60 = load ptr, ptr %29, align 8, !tbaa !99, !noalias !335
  %61 = load ptr, ptr %4, align 8, !tbaa !198
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %99, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %61, align 8, !tbaa !111
  br label %65

65:                                               ; preds = %63, %65
  %66 = phi i64 [ 0, %63 ], [ %73, %65 ]
  %67 = phi i64 [ 0, %63 ], [ %72, %65 ]
  %68 = shl i64 %67, 1
  %69 = getelementptr inbounds i8, ptr %64, i64 %66
  %70 = load i8, ptr %69, align 1, !tbaa !200
  %71 = sext i8 %70 to i64
  %72 = xor i64 %68, %71
  %73 = add nuw nsw i64 %66, 1
  %74 = icmp eq i64 %73, 8
  br i1 %74, label %75, label %65, !llvm.loop !201

75:                                               ; preds = %65
  %76 = urem i64 %72, %9
  %77 = load ptr, ptr %42, align 8, !tbaa !169
  %78 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %77, i64 %76
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %78, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %43 unwind label %97, !llvm.loop !338

79:                                               ; preds = %1
  %80 = landingpad { ptr, i32 }
          cleanup
  %81 = load i64, ptr %13, align 8, !tbaa !287
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %14, align 8, !tbaa !202
  %85 = load ptr, ptr %3, align 8, !tbaa !288
  %86 = load ptr, ptr %85, align 8, !tbaa !57
  %87 = getelementptr inbounds ptr, ptr %86, i64 3
  %88 = load ptr, ptr %87, align 8
  invoke void %88(ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef %84)
          to label %92 unwind label %89

89:                                               ; preds = %83
  %90 = landingpad { ptr, i32 }
          catch ptr null
  %91 = extractvalue { ptr, i32 } %90, 0
  call void @__clang_call_terminate(ptr %91) #24
  unreachable

92:                                               ; preds = %79, %83
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  br label %117

93:                                               ; preds = %32
  %94 = landingpad { ptr, i32 }
          cleanup
  br label %115

95:                                               ; preds = %50
  %96 = landingpad { ptr, i32 }
          cleanup
  br label %115

97:                                               ; preds = %75
  %98 = landingpad { ptr, i32 }
          cleanup
  br label %115

99:                                               ; preds = %59
  %100 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8
  %101 = load ptr, ptr %100, align 8, !tbaa !88
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 1
  %103 = load i64, ptr %102, align 8, !tbaa !98
  %104 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 2
  %105 = load i64, ptr %104, align 8, !tbaa !282
  %106 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !169
  %108 = load ptr, ptr %2, align 8, !tbaa !88
  store ptr %108, ptr %100, align 8, !tbaa !88
  %109 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 1
  %110 = load i64, ptr %109, align 8, !tbaa !98
  store i64 %110, ptr %102, align 8, !tbaa !98
  %111 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 2
  %112 = load i64, ptr %111, align 8, !tbaa !282
  store i64 %112, ptr %104, align 8, !tbaa !282
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !169
  store ptr %114, ptr %106, align 8, !tbaa !169
  store ptr %101, ptr %2, align 8, !tbaa !88
  store i64 %103, ptr %109, align 8, !tbaa !98
  store i64 %105, ptr %111, align 8, !tbaa !282
  store ptr %107, ptr %113, align 8, !tbaa !169
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  ret void

115:                                              ; preds = %97, %95, %93
  %116 = phi { ptr, i32 } [ %96, %95 ], [ %94, %93 ], [ %98, %97 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #23
  br label %117

117:                                              ; preds = %115, %92
  %118 = phi { ptr, i32 } [ %116, %115 ], [ %80, %92 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  resume { ptr, i32 } %118
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !99
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !87
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 32)
  store ptr %10, ptr %2, align 8, !tbaa !99
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !103
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !106
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !99
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !103
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !87
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 32)
  store ptr %23, ptr %2, align 8, !tbaa !99
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %23, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !103
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %23, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !106
  br label %26

26:                                               ; preds = %13, %18
  %27 = load ptr, ptr %2, align 8, !tbaa !99
  %28 = icmp eq ptr %16, %27
  ret i1 %28
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE9push_backERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #6 comdat align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !99, !noalias !339
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !87, !noalias !339
  %8 = load ptr, ptr %7, align 8, !tbaa !57, !noalias !339
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !339
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 32), !noalias !339
  store ptr %11, ptr %3, align 8, !tbaa !99, !noalias !339
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !103, !noalias !339
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !106, !noalias !339
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !99, !noalias !339
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !272
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !103
  br label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %0, align 8, !tbaa !87
  %24 = load ptr, ptr %23, align 8, !tbaa !57
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 32)
  store ptr %27, ptr %16, align 8, !tbaa !272
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi ptr [ %17, %19 ], [ %27, %22 ]
  %30 = phi ptr [ %21, %19 ], [ null, %22 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !342
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %29, i64 0, i32 1
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %15, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !106
  store ptr %33, ptr %31, align 8, !tbaa !191
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %29, i64 0, i32 2
  store ptr %15, ptr %34, align 8, !tbaa !191
  %35 = load ptr, ptr %32, align 8, !tbaa !106
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XercesParserLiaison::DocumentEntry>::Entry>::Node", ptr %35, i64 0, i32 2
  store ptr %29, ptr %36, align 8, !tbaa !103
  store ptr %29, ptr %32, align 8, !tbaa !106
  store ptr %30, ptr %16, align 8, !tbaa !272
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_PKSK_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 5
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %139, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !98
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !169
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !282
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %139, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !169
  %28 = load i64, ptr %12, align 8, !tbaa !98
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %34, %30 ], [ %29, %26 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !88
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 0)
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %32, i64 1
  %35 = load i64, ptr %12, align 8, !tbaa !98
  %36 = add i64 %35, 1
  store i64 %36, ptr %12, align 8, !tbaa !98
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %139, label %30, !llvm.loop !343

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %76

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  %42 = load ptr, ptr %0, align 8, !tbaa !88
  store ptr %42, ptr %5, align 8, !tbaa !88
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !98
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !282
  %45 = shl i64 %14, 5
  %46 = load ptr, ptr %42, align 8, !tbaa !57
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !169
  %51 = load i64, ptr %43, align 8, !tbaa !98
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !169
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_PKSK_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %74

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !169
  %56 = load i64, ptr %43, align 8, !tbaa !98
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_PKSK_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %74

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !169
  %60 = load i64, ptr %43, align 8, !tbaa !98
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !169
  %63 = load i64, ptr %12, align 8, !tbaa !98
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_PKSK_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %74

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !88
  %67 = load i64, ptr %12, align 8, !tbaa !98
  %68 = load i64, ptr %19, align 8, !tbaa !282
  %69 = load ptr, ptr %15, align 8, !tbaa !169
  %70 = load ptr, ptr %5, align 8, !tbaa !88
  store ptr %70, ptr %0, align 8, !tbaa !88
  %71 = load i64, ptr %43, align 8, !tbaa !98
  store i64 %71, ptr %12, align 8, !tbaa !98
  %72 = load i64, ptr %44, align 8, !tbaa !282
  store i64 %72, ptr %19, align 8, !tbaa !282
  %73 = load ptr, ptr %50, align 8, !tbaa !169
  store ptr %73, ptr %15, align 8, !tbaa !169
  store ptr %66, ptr %5, align 8, !tbaa !88
  store i64 %67, ptr %43, align 8, !tbaa !98
  store i64 %68, ptr %44, align 8, !tbaa !282
  store ptr %69, ptr %50, align 8, !tbaa !169
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %139

74:                                               ; preds = %58, %54, %41
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %87)
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %87, i64 1
  %89 = icmp eq ptr %88, %3
  br i1 %89, label %84, label %86, !llvm.loop !344

90:                                               ; preds = %84, %90
  %91 = phi ptr [ %92, %90 ], [ %1, %84 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %91)
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %91, i64 1
  %93 = icmp eq ptr %92, %17
  br i1 %93, label %94, label %90, !llvm.loop !345

94:                                               ; preds = %90, %84
  %95 = ashr exact i64 %79, 5
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %139

97:                                               ; preds = %94, %97
  %98 = phi i64 [ %104, %97 ], [ %95, %94 ]
  %99 = phi ptr [ %103, %97 ], [ %1, %94 ]
  %100 = phi ptr [ %102, %97 ], [ %2, %94 ]
  %101 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEaSERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %99, ptr noundef nonnull align 8 dereferenceable(32) %100)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %100, i64 1
  %103 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %99, i64 1
  %104 = add nsw i64 %98, -1
  %105 = icmp sgt i64 %98, 1
  br i1 %105, label %97, label %139, !llvm.loop !346

106:                                              ; preds = %76
  %107 = sub nsw i64 0, %9
  %108 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %17, i64 %107
  %109 = icmp eq ptr %3, %2
  br i1 %109, label %114, label %110

110:                                              ; preds = %106, %110
  %111 = phi ptr [ %112, %110 ], [ %108, %106 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %111)
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %111, i64 1
  %113 = icmp eq ptr %112, %17
  br i1 %113, label %114, label %110, !llvm.loop !347

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
  %125 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %124, i64 -1
  %126 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %123, i64 -1
  %127 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEaSERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %126, ptr noundef nonnull align 8 dereferenceable(32) %125)
  %128 = add nsw i64 %122, -1
  %129 = icmp sgt i64 %122, 1
  br i1 %129, label %121, label %119, !llvm.loop !331

130:                                              ; preds = %119, %130
  %131 = phi i64 [ %137, %130 ], [ %9, %119 ]
  %132 = phi ptr [ %136, %130 ], [ %1, %119 ]
  %133 = phi ptr [ %135, %130 ], [ %2, %119 ]
  %134 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEaSERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %132, ptr noundef nonnull align 8 dereferenceable(32) %133)
  %135 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %133, i64 1
  %136 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %132, i64 1
  %137 = add nsw i64 %131, -1
  %138 = icmp sgt i64 %131, 1
  br i1 %138, label %130, label %139, !llvm.loop !346

139:                                              ; preds = %97, %130, %30, %94, %119, %24, %65, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !98
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !282
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !169
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %11, i64 %5
  %13 = load ptr, ptr %0, align 8, !tbaa !88
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 0)
  %14 = load i64, ptr %4, align 8, !tbaa !98
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !98
  br label %38

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  %22 = load ptr, ptr %0, align 8, !tbaa !88
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEC2ERKSN_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %23 unwind label %36

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !88
  %25 = load i64, ptr %4, align 8, !tbaa !98
  %26 = load i64, ptr %6, align 8, !tbaa !282
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !169
  %29 = load ptr, ptr %3, align 8, !tbaa !88
  store ptr %29, ptr %0, align 8, !tbaa !88
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !98
  store i64 %31, ptr %4, align 8, !tbaa !98
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !282
  store i64 %33, ptr %6, align 8, !tbaa !282
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !169
  store ptr %35, ptr %27, align 8, !tbaa !169
  store ptr %24, ptr %3, align 8, !tbaa !88
  store i64 %25, ptr %30, align 8, !tbaa !98
  store i64 %26, ptr %32, align 8, !tbaa !282
  store ptr %28, ptr %34, align 8, !tbaa !169
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  br label %38

36:                                               ; preds = %16
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  resume { ptr, i32 } %37

38:                                               ; preds = %23, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  %4 = load ptr, ptr %0, align 8, !tbaa !88
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEC2ERKSN_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !88
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !98
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !282
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !169
  %12 = load ptr, ptr %3, align 8, !tbaa !88
  store ptr %12, ptr %0, align 8, !tbaa !88
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !98
  store i64 %14, ptr %6, align 8, !tbaa !98
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !282
  store i64 %16, ptr %8, align 8, !tbaa !282
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !169
  store ptr %18, ptr %10, align 8, !tbaa !169
  store ptr %5, ptr %3, align 8, !tbaa !88
  store i64 %7, ptr %13, align 8, !tbaa !98
  store i64 %9, ptr %15, align 8, !tbaa !282
  store ptr %11, ptr %17, align 8, !tbaa !169
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEC2ERKSN_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !88
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !98
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !88
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !98
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !282
  %16 = shl i64 %13, 5
  %17 = load ptr, ptr %2, align 8, !tbaa !57
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !169
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !169
  %24 = load i64, ptr %9, align 8, !tbaa !98
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_PKSK_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %35

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !88
  %28 = load i64, ptr %6, align 8, !tbaa !98
  %29 = load i64, ptr %7, align 8, !tbaa !282
  %30 = load ptr, ptr %8, align 8, !tbaa !169
  %31 = load ptr, ptr %5, align 8, !tbaa !88
  store ptr %31, ptr %0, align 8, !tbaa !88
  %32 = load i64, ptr %14, align 8, !tbaa !98
  store i64 %32, ptr %6, align 8, !tbaa !98
  %33 = load i64, ptr %15, align 8, !tbaa !282
  store i64 %33, ptr %7, align 8, !tbaa !282
  %34 = load ptr, ptr %21, align 8, !tbaa !169
  store ptr %34, ptr %8, align 8, !tbaa !169
  store ptr %27, ptr %5, align 8, !tbaa !88
  store i64 %28, ptr %14, align 8, !tbaa !98
  store i64 %29, ptr %15, align 8, !tbaa !282
  store ptr %30, ptr %21, align 8, !tbaa !169
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %45

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  resume { ptr, i32 } %36

37:                                               ; preds = %4
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %37
  %40 = shl i64 %3, 5
  %41 = load ptr, ptr %2, align 8, !tbaa !57
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40)
  store ptr %44, ptr %8, align 8, !tbaa !169
  store i64 %3, ptr %7, align 8, !tbaa !282
  br label %45

45:                                               ; preds = %37, %39, %26
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEaSERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.26", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %73, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !287
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !171
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  %12 = load ptr, ptr %0, align 8, !tbaa !288
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !288
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !171
  %16 = load i64, ptr %6, align 8, !tbaa !287
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !202
  %19 = load ptr, ptr %3, align 8, !tbaa !288
  store ptr %19, ptr %0, align 8, !tbaa !288
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !171
  store i64 %21, ptr %14, align 8, !tbaa !171
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !287
  store i64 %23, ptr %6, align 8, !tbaa !287
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !202
  store ptr %25, ptr %17, align 8, !tbaa !202
  store ptr %13, ptr %3, align 8, !tbaa !288
  store i64 %15, ptr %20, align 8, !tbaa !171
  store i64 %16, ptr %22, align 8, !tbaa !287
  store ptr %18, ptr %24, align 8, !tbaa !202
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !57
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #24
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  br label %73

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !202
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !171
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53

44:                                               ; preds = %42
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !202
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE6insertEPSH_PKSH_SN_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !171
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !171
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !202
  %56 = ptrtoint ptr %54 to i64
  %57 = ptrtoint ptr %55 to i64
  %58 = sub i64 %56, %57
  %59 = ashr exact i64 %58, 3
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %53
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.26", ptr %0, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !202
  br label %64

64:                                               ; preds = %61, %64
  %65 = phi i64 [ %71, %64 ], [ %59, %61 ]
  %66 = phi ptr [ %70, %64 ], [ %63, %61 ]
  %67 = phi ptr [ %69, %64 ], [ %55, %61 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !198
  store ptr %68, ptr %66, align 8, !tbaa !198
  %69 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %67, i64 1
  %70 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %66, i64 1
  %71 = add nsw i64 %65, -1
  %72 = icmp sgt i64 %65, 1
  br i1 %72, label %64, label %73, !llvm.loop !294

73:                                               ; preds = %64, %53, %34, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEC2EmRKSK_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %3, ptr %0, align 8, !tbaa !88
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  store ptr %3, ptr %5, align 8, !tbaa !88
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_mRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef null, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %8 unwind label %21

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %0, align 8, !tbaa !88
  %14 = load i64, ptr %6, align 8, !tbaa !98
  %15 = load i64, ptr %12, align 8, !tbaa !282
  %16 = load ptr, ptr %11, align 8, !tbaa !169
  %17 = load ptr, ptr %5, align 8, !tbaa !88
  store ptr %17, ptr %0, align 8, !tbaa !88
  %18 = load i64, ptr %7, align 8, !tbaa !98
  store i64 %18, ptr %6, align 8, !tbaa !98
  %19 = load i64, ptr %10, align 8, !tbaa !282
  store i64 %19, ptr %12, align 8, !tbaa !282
  %20 = load ptr, ptr %9, align 8, !tbaa !169
  store ptr %20, ptr %11, align 8, !tbaa !169
  store ptr %13, ptr %5, align 8, !tbaa !88
  store i64 %14, ptr %7, align 8, !tbaa !98
  store i64 %15, ptr %10, align 8, !tbaa !282
  store ptr %16, ptr %9, align 8, !tbaa !169
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  ret void

21:                                               ; preds = %4
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  resume { ptr, i32 } %22
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #18

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_XercesParserLiaison.cpp() #14 section ".text.startup" !prof !175 !PGOFuncName !348 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #22

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #22 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #23 = { nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!55}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54}
!35 = !{ptr @_ZN11xalanc_1_1019XercesParserLiaisonC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1016XMLParserLiaisonC2Ev, i64 2}
!36 = !{ptr @_ZN11xalanc_1_1019XercesParserLiaisonC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 4}
!37 = !{ptr @_ZN11xalanc_1_1019XercesParserLiaisonD2Ev, ptr @_ZN11xalanc_1_1019XercesParserLiaison5resetEv, i64 2}
!38 = !{ptr @_ZN11xalanc_1_1019XercesParserLiaisonD2Ev, ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEED2Ev, i64 2}
!39 = !{ptr @_ZN11xalanc_1_1019XercesParserLiaisonD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 4}
!40 = !{ptr @_ZN11xalanc_1_1019XercesParserLiaisonD2Ev, ptr @_ZN11xalanc_1_1016XMLParserLiaisonD2Ev, i64 2}
!41 = !{ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEED2Ev, ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE15doRemoveEntriesEv, i64 2}
!42 = !{ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev, i64 2}
!43 = !{ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEED2Ev, ptr @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEED2Ev, i64 4}
!44 = !{ptr @_ZN11xalanc_1_1019XercesParserLiaison5resetEv, ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE5clearEv, i64 4}
!45 = !{ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE5clearEv, ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE15doRemoveEntriesEv, i64 4}
!46 = !{ptr @_ZN11xalanc_1_1019XercesParserLiaison15createSAXParserEv, ptr @_ZN11xalanc_1_1019XercesParserLiaison16getMemoryManagerEv, i64 1}
!47 = !{ptr @_ZN11xalanc_1_1019XercesParserLiaison15createSAXParserEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 1}
!48 = !{ptr @_ZN11xalanc_1_1019XercesParserLiaison15createSAXParserEv, ptr @_ZN11xercesc_2_79SAXParserC1EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, i64 1}
!49 = !{ptr @_ZN11xalanc_1_1019XercesParserLiaison15createSAXParserEv, ptr @_ZN11xercesc_2_79SAXParser15setDoValidationEb, i64 1}
!50 = !{ptr @_ZN11xalanc_1_1019XercesParserLiaison15createSAXParserEv, ptr @_ZN11xercesc_2_79SAXParser15setDoNamespacesEb, i64 1}
!51 = !{ptr @_ZN11xalanc_1_1019XercesParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERNS1_15DocumentHandlerERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1019XercesParserLiaison15createSAXParserEv, i64 1}
!52 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!53 = !{ptr @_GLOBAL__sub_I_XercesParserLiaison.cpp, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!54 = !{ptr @_GLOBAL__sub_I_XercesParserLiaison.cpp, ptr @__cxa_atexit, i64 1}
!55 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!56 = !{!"function_entry_count", i64 0}
!57 = !{!58, !58, i64 0}
!58 = !{!"vtable pointer", !59, i64 0}
!59 = !{!"Simple C++ TBAA"}
!60 = !{!61, !64, i64 16}
!61 = !{!"_ZTSN11xalanc_1_1019XercesParserLiaisonE", !62, i64 0, !63, i64 8, !64, i64 16, !66, i64 20, !66, i64 21, !66, i64 22, !66, i64 23, !67, i64 24, !67, i64 32, !68, i64 40, !68, i64 80, !71, i64 120, !66, i64 256, !66, i64 257, !66, i64 258, !66, i64 259, !67, i64 264, !67, i64 272, !67, i64 280}
!62 = !{!"_ZTSN11xalanc_1_1016XMLParserLiaisonE"}
!63 = !{!"_ZTSN11xercesc_2_712ErrorHandlerE"}
!64 = !{!"int", !65, i64 0}
!65 = !{!"omnipotent char", !59, i64 0}
!66 = !{!"bool", !65, i64 0}
!67 = !{!"any pointer", !65, i64 0}
!68 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !69, i64 0, !64, i64 32}
!69 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !67, i64 0, !70, i64 8, !70, i64 16, !67, i64 24}
!70 = !{!"long", !65, i64 0}
!71 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEEE", !72, i64 0, !73, i64 1, !67, i64 8, !74, i64 16, !70, i64 24, !70, i64 32, !75, i64 40, !75, i64 64, !76, i64 88, !70, i64 120, !70, i64 128}
!72 = !{!"_ZTSN11xalanc_1_1011XalanHasherIPKNS_13XalanDocumentEEE"}
!73 = !{!"_ZTSSt8equal_toIPKN11xalanc_1_1013XalanDocumentEE"}
!74 = !{!"float", !65, i64 0}
!75 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !67, i64 0, !67, i64 8, !67, i64 16}
!76 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEE", !67, i64 0, !70, i64 8, !70, i64 16, !67, i64 24}
!77 = !{!61, !66, i64 20}
!78 = !{!61, !66, i64 21}
!79 = !{!61, !66, i64 22}
!80 = !{!61, !66, i64 23}
!81 = !{!61, !67, i64 24}
!82 = !{!61, !67, i64 32}
!83 = !{!71, !67, i64 8}
!84 = !{!71, !74, i64 16}
!85 = !{!71, !70, i64 24}
!86 = !{!71, !70, i64 32}
!87 = !{!75, !67, i64 0}
!88 = !{!76, !67, i64 0}
!89 = !{!71, !70, i64 128}
!90 = !{!61, !66, i64 256}
!91 = !{!61, !66, i64 257}
!92 = !{!61, !66, i64 258}
!93 = !{!61, !66, i64 259}
!94 = !{!"function_entry_count", i64 2}
!95 = !{!"branch_weights", i32 2, i32 0}
!96 = !{!61, !67, i64 272}
!97 = !{!61, !67, i64 280}
!98 = !{!76, !70, i64 8}
!99 = !{!75, !67, i64 8}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv: argument 0"}
!102 = distinct !{!102, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv"}
!103 = !{!104, !67, i64 24}
!104 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE4NodeE", !105, i64 0, !67, i64 16, !67, i64 24}
!105 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE5EntryE", !67, i64 0, !66, i64 8}
!106 = !{!104, !67, i64 16}
!107 = !{}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!110 = distinct !{!110, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!111 = !{!105, !67, i64 0}
!112 = distinct !{!112, !113, !114}
!113 = !{!"llvm.loop.mustprogress"}
!114 = !{!"llvm.loop.unroll.disable"}
!115 = !{!"function_entry_count", i64 4}
!116 = !{!117, !119}
!117 = distinct !{!117, !118, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv: argument 0"}
!118 = distinct !{!118, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv"}
!119 = distinct !{!119, !120, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE5beginEv: argument 0"}
!120 = distinct !{!120, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE5beginEv"}
!121 = !{!"branch_weights", i32 2, i32 2}
!122 = !{!"VP", i32 0, i64 2, i64 8345045103670217670, i64 2}
!123 = !{!124, !126}
!124 = distinct !{!124, !125, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!125 = distinct !{!125, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!126 = distinct !{!126, !127, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE3endEv: argument 0"}
!127 = distinct !{!127, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE3endEv"}
!128 = !{!"branch_weights", i32 0, i32 4}
!129 = !{!"branch_weights", i32 4, i32 0}
!130 = !{!61, !67, i64 264}
!131 = !{!132, !66, i64 0}
!132 = !{!"_ZTSN11xalanc_1_1019XercesParserLiaison13DocumentEntryE", !66, i64 0, !67, i64 8}
!133 = !{i8 0, i8 2}
!134 = !{!135, !67, i64 16}
!135 = !{!"_ZTSSt4pairIKPKN11xalanc_1_1013XalanDocumentENS0_19XercesParserLiaison13DocumentEntryEE", !67, i64 0, !132, i64 8}
!136 = !{!137, !67, i64 8}
!137 = !{!"_ZTSN11xalanc_1_1021XercesDocumentWrapperE", !138, i64 0, !67, i64 8, !67, i64 16, !140, i64 24, !146, i64 160, !149, i64 176, !67, i64 216, !152, i64 224, !154, i64 248, !67, i64 280, !66, i64 288, !66, i64 289, !66, i64 290, !155, i64 296, !158, i64 336, !161, i64 376, !164, i64 416}
!138 = !{!"_ZTSN11xalanc_1_1013XalanDocumentE", !139, i64 0}
!139 = !{!"_ZTSN11xalanc_1_109XalanNodeE"}
!140 = !{!"_ZTSN11xalanc_1_1027XercesWrapperToXalanNodeMapE", !141, i64 0}
!141 = !{!"_ZTSN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEEE", !142, i64 0, !143, i64 1, !67, i64 8, !74, i64 16, !70, i64 24, !70, i64 32, !144, i64 40, !144, i64 64, !145, i64 88, !70, i64 120, !70, i64 128}
!142 = !{!"_ZTSN11xalanc_1_1011XalanHasherIPKN11xercesc_2_77DOMNodeEEE"}
!143 = !{!"_ZTSSt8equal_toIPKN11xercesc_2_77DOMNodeEE"}
!144 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEEE", !67, i64 0, !67, i64 8, !67, i64 16}
!145 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEEE", !67, i64 0, !70, i64 8, !70, i64 16, !67, i64 24}
!146 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EEE", !147, i64 0}
!147 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EE17MemMgrAutoPtrDataE", !148, i64 0}
!148 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1022XalanDOMImplementationEE", !67, i64 0, !67, i64 8}
!149 = !{!"_ZTSN11xalanc_1_1031XercesWrapperNavigatorAllocatorE", !150, i64 0}
!150 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEEE", !70, i64 8, !151, i64 16}
!151 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEEE", !67, i64 0, !67, i64 8, !67, i64 16}
!152 = !{!"_ZTSN11xalanc_1_1021XercesNodeListWrapperE", !153, i64 0, !67, i64 8, !67, i64 16}
!153 = !{!"_ZTSN11xalanc_1_1013XalanNodeListE"}
!154 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEE", !67, i64 0, !70, i64 8, !70, i64 16, !67, i64 24}
!155 = !{!"_ZTSN11xalanc_1_1029XercesElementWrapperAllocatorE", !156, i64 0}
!156 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_20XercesElementWrapperENS_10ArenaBlockIS1_mEEEE", !70, i64 8, !157, i64 16}
!157 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_20XercesElementWrapperEmEEEE", !67, i64 0, !67, i64 8, !67, i64 16}
!158 = !{!"_ZTSN11xalanc_1_1026XercesTextWrapperAllocatorE", !159, i64 0}
!159 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_17XercesTextWrapperENS_10ArenaBlockIS1_mEEEE", !70, i64 8, !160, i64 16}
!160 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17XercesTextWrapperEmEEEE", !67, i64 0, !67, i64 8, !67, i64 16}
!161 = !{!"_ZTSN11xalanc_1_1026XercesAttrWrapperAllocatorE", !162, i64 0}
!162 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_17XercesAttrWrapperENS_10ArenaBlockIS1_mEEEE", !70, i64 8, !163, i64 16}
!163 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17XercesAttrWrapperEmEEEE", !67, i64 0, !67, i64 8, !67, i64 16}
!164 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EEE", !165, i64 0}
!165 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EE17MemMgrAutoPtrDataE", !166, i64 0}
!166 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1018XalanDOMStringPoolEE", !67, i64 0, !67, i64 8}
!167 = !{!135, !67, i64 0}
!168 = distinct !{!168, !113, !114}
!169 = !{!76, !67, i64 24}
!170 = !{!"branch_weights", i32 1, i32 0}
!171 = !{!172, !70, i64 8}
!172 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEE", !67, i64 0, !70, i64 8, !70, i64 16, !67, i64 24}
!173 = distinct !{!173, !113, !114}
!174 = !{!71, !70, i64 120}
!175 = !{!"function_entry_count", i64 1}
!176 = !{!"VP", i32 0, i64 1, i64 2492163581461711072, i64 1}
!177 = !{!178, !66, i64 41}
!178 = !{!"_ZTSN11xercesc_2_717AbstractDOMParserE", !179, i64 0, !180, i64 8, !181, i64 16, !182, i64 24, !183, i64 32, !66, i64 40, !66, i64 41, !66, i64 42, !66, i64 43, !66, i64 44, !66, i64 45, !66, i64 46, !67, i64 48, !67, i64 56, !67, i64 64, !67, i64 72, !67, i64 80, !67, i64 88, !67, i64 96, !67, i64 104, !67, i64 112, !67, i64 120, !67, i64 128, !67, i64 136, !67, i64 144, !67, i64 152, !184, i64 160, !67, i64 184, !67, i64 192}
!179 = !{!"_ZTSN11xercesc_2_718XMLDocumentHandlerE"}
!180 = !{!"_ZTSN11xercesc_2_716XMLErrorReporterE"}
!181 = !{!"_ZTSN11xercesc_2_716XMLEntityHandlerE"}
!182 = !{!"_ZTSN11xercesc_2_714DocTypeHandlerE"}
!183 = !{!"_ZTSN11xercesc_2_711PSVIHandlerE"}
!184 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !64, i64 0, !67, i64 8, !67, i64 16}
!185 = !{!68, !64, i64 32}
!186 = !{!69, !70, i64 8}
!187 = !{!178, !66, i64 40}
!188 = !{!"VP", i32 0, i64 1, i64 -4926781347762418137, i64 1}
!189 = !{!"VP", i32 0, i64 1, i64 133130611337176887, i64 1}
!190 = !{!"VP", i32 0, i64 1, i64 5062355511865801603, i64 1}
!191 = !{!67, !67, i64 0}
!192 = !{!132, !67, i64 8}
!193 = !{!194, !196}
!194 = distinct !{!194, !195, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!195 = distinct !{!195, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!196 = distinct !{!196, !197, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE3endEv: argument 0"}
!197 = distinct !{!197, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE3endEv"}
!198 = !{!199, !67, i64 0}
!199 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEE", !67, i64 0}
!200 = !{!65, !65, i64 0}
!201 = distinct !{!201, !113, !114}
!202 = !{!172, !67, i64 24}
!203 = !{!105, !66, i64 8}
!204 = distinct !{!204, !113, !114}
!205 = !{!206}
!206 = distinct !{!206, !207, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE3endEv: argument 0"}
!207 = distinct !{!207, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE3endEv"}
!208 = !{!209, !206}
!209 = distinct !{!209, !210, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!210 = distinct !{!210, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!211 = !{!212, !214}
!212 = distinct !{!212, !213, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!213 = distinct !{!213, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!214 = distinct !{!214, !215, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE3endEv: argument 0"}
!215 = distinct !{!215, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE3endEv"}
!216 = !{!217, !219}
!217 = distinct !{!217, !218, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv: argument 0"}
!218 = distinct !{!218, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv"}
!219 = distinct !{!219, !220, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE5beginEv: argument 0"}
!220 = distinct !{!220, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE5beginEv"}
!221 = !{!222, !224}
!222 = distinct !{!222, !223, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!223 = distinct !{!223, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!224 = distinct !{!224, !225, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE3endEv: argument 0"}
!225 = distinct !{!225, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE3endEv"}
!226 = distinct !{!226, !113, !114}
!227 = !{!228}
!228 = distinct !{!228, !229, !"_ZNK11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE4findERKS3_: argument 0"}
!229 = distinct !{!229, !"_ZNK11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE4findERKS3_"}
!230 = !{!231, !233, !235}
!231 = distinct !{!231, !232, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!232 = distinct !{!232, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!233 = distinct !{!233, !234, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE3endEv: argument 0"}
!234 = distinct !{!234, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE3endEv"}
!235 = distinct !{!235, !236, !"_ZNK11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE3endEv: argument 0"}
!236 = distinct !{!236, !"_ZNK11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE3endEv"}
!237 = !{!238}
!238 = distinct !{!238, !239, !"_ZNK11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE4findERKS3_: argument 0"}
!239 = distinct !{!239, !"_ZNK11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE4findERKS3_"}
!240 = !{!241, !243, !245}
!241 = distinct !{!241, !242, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!242 = distinct !{!242, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!243 = distinct !{!243, !244, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE3endEv: argument 0"}
!244 = distinct !{!244, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE3endEv"}
!245 = distinct !{!245, !246, !"_ZNK11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE3endEv: argument 0"}
!246 = distinct !{!246, !"_ZNK11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE3endEv"}
!247 = !{!69, !67, i64 0}
!248 = !{!69, !70, i64 16}
!249 = !{!69, !67, i64 24}
!250 = !{!251, !251, i64 0}
!251 = !{!"short", !65, i64 0}
!252 = distinct !{!252, !113, !114}
!253 = !{!254, !256}
!254 = distinct !{!254, !255, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!255 = distinct !{!255, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!256 = distinct !{!256, !257, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE3endEv: argument 0"}
!257 = distinct !{!257, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE3endEv"}
!258 = !{!"function_entry_count", i64 42470003}
!259 = !{!"branch_weights", i32 52000, i32 42418003}
!260 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!261 = !{!262}
!262 = distinct !{!262, !263, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv: argument 0"}
!263 = distinct !{!263, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv"}
!264 = !{!265}
!265 = distinct !{!265, !266, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!266 = distinct !{!266, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!267 = !{!"branch_weights", i32 0, i32 2}
!268 = !{!269}
!269 = distinct !{!269, !270, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEppEi: argument 0"}
!270 = distinct !{!270, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEppEi"}
!271 = distinct !{!271, !113, !114}
!272 = !{!75, !67, i64 16}
!273 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
!274 = !{!"function_entry_count", i64 6}
!275 = !{!276}
!276 = distinct !{!276, !277, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE5beginEv: argument 0"}
!277 = distinct !{!277, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEE5beginEv"}
!278 = !{!279, !276}
!279 = distinct !{!279, !280, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv: argument 0"}
!280 = distinct !{!280, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv"}
!281 = distinct !{!281, !113, !114}
!282 = !{!76, !70, i64 16}
!283 = distinct !{!283, !113, !114}
!284 = !{!285}
!285 = distinct !{!285, !286, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!286 = distinct !{!286, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!287 = !{!172, !70, i64 16}
!288 = !{!172, !67, i64 0}
!289 = distinct !{!289, !113, !114}
!290 = distinct !{!290, !113, !114}
!291 = distinct !{!291, !113, !114}
!292 = distinct !{!292, !113, !114}
!293 = distinct !{!293, !113, !114}
!294 = distinct !{!294, !113, !114}
!295 = distinct !{!295, !113, !114}
!296 = distinct !{!296, !113, !114}
!297 = !{!298}
!298 = distinct !{!298, !299, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!299 = distinct !{!299, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!300 = !{!301}
!301 = distinct !{!301, !302, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEmmEv: argument 0"}
!302 = distinct !{!302, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEmmEv"}
!303 = !{i64 0, i64 1, !304, i64 8, i64 8, !191}
!304 = !{!66, !66, i64 0}
!305 = !{!306}
!306 = distinct !{!306, !307, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!307 = distinct !{!307, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!308 = !{!309}
!309 = distinct !{!309, !310, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!310 = distinct !{!310, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!311 = !{!312}
!312 = distinct !{!312, !313, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEmmEv: argument 0"}
!313 = distinct !{!313, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEmmEv"}
!314 = !{!315}
!315 = distinct !{!315, !316, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!316 = distinct !{!316, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!317 = !{!318}
!318 = distinct !{!318, !319, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEmmEv: argument 0"}
!319 = distinct !{!319, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEmmEv"}
!320 = !{!321}
!321 = distinct !{!321, !322, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!322 = distinct !{!322, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!323 = !{!324}
!324 = distinct !{!324, !325, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEmmEv: argument 0"}
!325 = distinct !{!325, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEmmEv"}
!326 = distinct !{!326, !113, !114}
!327 = distinct !{!327, !113, !114}
!328 = distinct !{!328, !113, !114}
!329 = distinct !{!329, !113, !114}
!330 = distinct !{!330, !113, !114}
!331 = distinct !{!331, !113, !114}
!332 = !{!333}
!333 = distinct !{!333, !334, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv: argument 0"}
!334 = distinct !{!334, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv"}
!335 = !{!336}
!336 = distinct !{!336, !337, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!337 = distinct !{!337, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!338 = distinct !{!338, !113, !114}
!339 = !{!340}
!340 = distinct !{!340, !341, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!341 = distinct !{!341, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!342 = !{i64 0, i64 8, !191, i64 8, i64 1, !304}
!343 = distinct !{!343, !113, !114}
!344 = distinct !{!344, !113, !114}
!345 = distinct !{!345, !113, !114}
!346 = distinct !{!346, !113, !114}
!347 = distinct !{!347, !113, !114}
!348 = !{!"XercesParserLiaison.cpp;_GLOBAL__sub_I_XercesParserLiaison.cpp"}
