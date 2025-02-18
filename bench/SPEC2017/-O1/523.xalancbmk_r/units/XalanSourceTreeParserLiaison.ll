; ModuleID = 'XalanSourceTreeParserLiaison.cpp'
source_filename = "XalanSourceTreeParserLiaison.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanSourceTreeParserLiaison" = type { %"class.xalanc_1_10::XMLParserLiaison", %"class.xalanc_1_10::XercesParserLiaison", %"class.xalanc_1_10::XalanMap.1", i8, ptr }
%"class.xalanc_1_10::XMLParserLiaison" = type { ptr }
%"class.xalanc_1_10::XercesParserLiaison" = type { %"class.xalanc_1_10::XMLParserLiaison", %"class.xercesc_2_7::ErrorHandler", i32, i8, i8, i8, i8, ptr, ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanMap", i8, i8, i8, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ErrorHandler" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap" = type { %"class.xalanc_1_10::XalanHasher", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanVector.0", i64, i64 }
%"class.xalanc_1_10::XalanHasher" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.1" = type { %"class.xalanc_1_10::XalanHasher", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.2", %"class.xalanc_1_10::XalanList.2", %"class.xalanc_1_10::XalanVector.3", i64, i64 }
%"class.xalanc_1_10::XalanList.2" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node" = type { %"struct.xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry", ptr, ptr }
%"struct.xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry" = type <{ ptr, i8, [7 x i8] }>
%"struct.std::pair" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector.40" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanSourceTreeContentHandler" = type <{ %"class.xercesc_2_7::ContentHandler", %"class.xercesc_2_7::DTDHandler", %"class.xercesc_2_7::LexicalHandler", ptr, ptr, %"class.xalanc_1_10::XalanVector.37", ptr, %"class.xalanc_1_10::XalanVector.38", i8, [7 x i8], %"class.xalanc_1_10::XalanDOMString", i8, [7 x i8] }>
%"class.xercesc_2_7::ContentHandler" = type { ptr }
%"class.xercesc_2_7::DTDHandler" = type { ptr }
%"class.xercesc_2_7::LexicalHandler" = type { ptr }
%"class.xalanc_1_10::XalanVector.37" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.38" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanMapIterator" = type { %"struct.xalanc_1_10::XalanListIteratorBase" }
%"struct.xalanc_1_10::XalanListIteratorBase" = type { ptr }

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE5clearEv = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE5eraseERKS3_ = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEEixERKS3_ = comdat any

$_ZN11xalanc_1_1028XalanSourceTreeParserLiaison16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE15doRemoveEntriesEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS3_S5_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS8_5EntryEEENS_9XalanListISH_E4NodeEEEEE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE4findERKS3_ = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE14compactBucketsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE6insertEPSH_PKSH_SN_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE13doCreateEntryERKS3_PKS5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_mRKSK_ = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE6rehashEv = comdat any

$_ZNK11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5emptyEv = comdat any

$_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE9push_backERKSA_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_PKSK_SQ_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEC2ERKSN_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEaSERKSK_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEC2EmRKSK_RN11xercesc_2_713MemoryManagerE = comdat any

@_ZN11xalanc_1_1028XalanSourceTreeParserLiaison18s_validationStringE = dso_local constant [39 x i16] [i16 104, i16 116, i16 116, i16 112, i16 58, i16 47, i16 47, i16 120, i16 109, i16 108, i16 46, i16 111, i16 114, i16 103, i16 47, i16 115, i16 97, i16 120, i16 47, i16 102, i16 101, i16 97, i16 116, i16 117, i16 114, i16 101, i16 115, i16 47, i16 118, i16 97, i16 108, i16 105, i16 100, i16 97, i16 116, i16 105, i16 111, i16 110, i16 0], align 16
@_ZN11xalanc_1_1028XalanSourceTreeParserLiaison25s_dynamicValidationStringE = dso_local constant [50 x i16] [i16 104, i16 116, i16 116, i16 112, i16 58, i16 47, i16 47, i16 97, i16 112, i16 97, i16 99, i16 104, i16 101, i16 46, i16 111, i16 114, i16 103, i16 47, i16 120, i16 109, i16 108, i16 47, i16 102, i16 101, i16 97, i16 116, i16 117, i16 114, i16 101, i16 115, i16 47, i16 118, i16 97, i16 108, i16 105, i16 100, i16 97, i16 116, i16 105, i16 111, i16 110, i16 47, i16 100, i16 121, i16 110, i16 97, i16 109, i16 105, i16 99, i16 0], align 16
@_ZN11xalanc_1_1028XalanSourceTreeParserLiaison18s_namespacesStringE = dso_local constant [39 x i16] [i16 104, i16 116, i16 116, i16 112, i16 58, i16 47, i16 47, i16 120, i16 109, i16 108, i16 46, i16 111, i16 114, i16 103, i16 47, i16 115, i16 97, i16 120, i16 47, i16 102, i16 101, i16 97, i16 116, i16 117, i16 114, i16 101, i16 115, i16 47, i16 110, i16 97, i16 109, i16 101, i16 115, i16 112, i16 97, i16 99, i16 101, i16 115, i16 0], align 16
@_ZN11xalanc_1_1028XalanSourceTreeParserLiaison25s_namespacePrefixesStringE = dso_local constant [47 x i16] [i16 104, i16 116, i16 116, i16 112, i16 58, i16 47, i16 47, i16 120, i16 109, i16 108, i16 46, i16 111, i16 114, i16 103, i16 47, i16 115, i16 97, i16 120, i16 47, i16 102, i16 101, i16 97, i16 116, i16 117, i16 114, i16 101, i16 115, i16 47, i16 110, i16 97, i16 109, i16 101, i16 115, i16 112, i16 97, i16 99, i16 101, i16 45, i16 112, i16 114, i16 101, i16 102, i16 105, i16 120, i16 101, i16 115, i16 0], align 16
@_ZN11xalanc_1_1028XalanSourceTreeParserLiaison14s_schemaStringE = dso_local constant [49 x i16] [i16 104, i16 116, i16 116, i16 112, i16 58, i16 47, i16 47, i16 97, i16 112, i16 97, i16 99, i16 104, i16 101, i16 46, i16 111, i16 114, i16 103, i16 47, i16 120, i16 109, i16 108, i16 47, i16 102, i16 101, i16 97, i16 116, i16 117, i16 114, i16 101, i16 115, i16 47, i16 118, i16 97, i16 108, i16 105, i16 100, i16 97, i16 116, i16 105, i16 111, i16 110, i16 47, i16 115, i16 99, i16 104, i16 101, i16 109, i16 97, i16 0], align 16
@_ZN11xalanc_1_1028XalanSourceTreeParserLiaison30s_externalSchemaLocationStringE = dso_local constant [64 x i16] [i16 104, i16 116, i16 116, i16 112, i16 58, i16 47, i16 47, i16 97, i16 112, i16 97, i16 99, i16 104, i16 101, i16 46, i16 111, i16 114, i16 103, i16 47, i16 120, i16 109, i16 108, i16 47, i16 112, i16 114, i16 111, i16 112, i16 101, i16 114, i16 116, i16 105, i16 101, i16 115, i16 47, i16 115, i16 99, i16 104, i16 101, i16 109, i16 97, i16 47, i16 101, i16 120, i16 116, i16 101, i16 114, i16 110, i16 97, i16 108, i16 45, i16 115, i16 99, i16 104, i16 101, i16 109, i16 97, i16 76, i16 111, i16 99, i16 97, i16 116, i16 105, i16 111, i16 110, i16 0], align 16
@_ZN11xalanc_1_1028XalanSourceTreeParserLiaison41s_externalNoNamespaceSchemaLocationStringE = dso_local constant [75 x i16] [i16 104, i16 116, i16 116, i16 112, i16 58, i16 47, i16 47, i16 97, i16 112, i16 97, i16 99, i16 104, i16 101, i16 46, i16 111, i16 114, i16 103, i16 47, i16 120, i16 109, i16 108, i16 47, i16 112, i16 114, i16 111, i16 112, i16 101, i16 114, i16 116, i16 105, i16 101, i16 115, i16 47, i16 115, i16 99, i16 104, i16 101, i16 109, i16 97, i16 47, i16 101, i16 120, i16 116, i16 101, i16 114, i16 110, i16 97, i16 108, i16 45, i16 110, i16 111, i16 78, i16 97, i16 109, i16 101, i16 115, i16 112, i16 97, i16 99, i16 101, i16 83, i16 99, i16 104, i16 101, i16 109, i16 97, i16 76, i16 111, i16 99, i16 97, i16 116, i16 105, i16 111, i16 110, i16 0], align 16
@_ZTVN11xalanc_1_1028XalanSourceTreeParserLiaisonE = dso_local unnamed_addr constant { [34 x ptr] } { [34 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1028XalanSourceTreeParserLiaisonE, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD2Ev, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD0Ev, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison5resetEv, ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison19getExecutionContextEv, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison16getMemoryManagerEv, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison19setExecutionContextERNS_16ExecutionContextE, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERNS1_15DocumentHandlerERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison15destroyDocumentEPNS_13XalanDocumentE, ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison9getIndentEv, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison9setIndentEi, ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison16getUseValidationEv, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison16setUseValidationEb, ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison20getParserDescriptionERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison17getEntityResolverEv, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison17setEntityResolverEPN11xercesc_2_714EntityResolverE, ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison15getErrorHandlerEv, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison15setErrorHandlerEPN11xercesc_2_712ErrorHandlerE, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERNS1_14ContentHandlerERKNS_14XalanDOMStringEPNS1_10DTDHandlerEPNS1_14LexicalHandlerE, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison16createDOMFactoryEv, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison15destroyDocumentEPN11xercesc_2_711DOMDocumentE, ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison29getIncludeIgnorableWhitespaceEv, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison29setIncludeIgnorableWhitespaceEb, ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison15getDoNamespacesEv, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison15setDoNamespacesEb, ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison24getExitOnFirstFatalErrorEv, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison24setExitOnFirstFatalErrorEb, ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison25getExternalSchemaLocationEv, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison25setExternalSchemaLocationEPKt, ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison36getExternalNoNamespaceSchemaLocationEv, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison36setExternalNoNamespaceSchemaLocationEPKt, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison12createReaderEv] }, align 8
@.str = private unnamed_addr constant [16 x i8] c"XalanSourceTree\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1028XalanSourceTreeParserLiaisonE = dso_local constant [46 x i8] c"N11xalanc_1_1028XalanSourceTreeParserLiaisonE\00", align 1
@_ZTIN11xalanc_1_1016XMLParserLiaisonE = external constant ptr
@_ZTIN11xalanc_1_1028XalanSourceTreeParserLiaisonE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1028XalanSourceTreeParserLiaisonE, ptr @_ZTIN11xalanc_1_1016XMLParserLiaisonE }, align 8

@_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonC1ERNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonC2ERNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat !prof !94 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonC2ERNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  tail call void @_ZN11xalanc_1_1016XMLParserLiaisonC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [34 x ptr] }, ptr @_ZTVN11xalanc_1_1028XalanSourceTreeParserLiaisonE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !95
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1019XercesParserLiaisonC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(288) %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %5 unwind label %19

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !98
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2, i32 3
  store float 7.500000e-01, ptr %7, align 8, !tbaa !108
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2, i32 4
  store i64 29, ptr %8, align 8, !tbaa !109
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2, i32 5
  store i64 0, ptr %9, align 8, !tbaa !110
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2, i32 6
  store ptr %2, ptr %10, align 8, !tbaa !111
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2, i32 6, i32 1
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  store ptr %2, ptr %12, align 8, !tbaa !111
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2, i32 7, i32 1
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  store ptr %2, ptr %14, align 8, !tbaa !112
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2, i32 8, i32 1
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 0, i64 32, i1 false)
  store i64 50, ptr %16, align 8, !tbaa !113
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 3
  store i8 1, ptr %17, align 8, !tbaa !114
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 4
  store ptr null, ptr %18, align 8, !tbaa !126
  ret void

19:                                               ; preds = %3
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1016XMLParserLiaisonD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  resume { ptr, i32 } %20
}

declare void @_ZN11xalanc_1_1016XMLParserLiaisonC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare void @_ZN11xalanc_1_1019XercesParserLiaisonC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1019XercesParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(288)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1016XMLParserLiaisonD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !127 {
  tail call void @_ZN11xalanc_1_1016XMLParserLiaisonC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [34 x ptr] }, ptr @_ZTVN11xalanc_1_1028XalanSourceTreeParserLiaisonE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !95
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1019XercesParserLiaisonC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(288) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %4 unwind label %18, !prof !128

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2, i32 2
  store ptr %1, ptr %5, align 8, !tbaa !98
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2, i32 3
  store float 7.500000e-01, ptr %6, align 8, !tbaa !108
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2, i32 4
  store i64 29, ptr %7, align 8, !tbaa !109
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2, i32 5
  store i64 0, ptr %8, align 8, !tbaa !110
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2, i32 6
  store ptr %1, ptr %9, align 8, !tbaa !111
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2, i32 6, i32 1
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  store ptr %1, ptr %11, align 8, !tbaa !111
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2, i32 7, i32 1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  store ptr %1, ptr %13, align 8, !tbaa !112
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2, i32 8, i32 1
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, i8 0, i64 32, i1 false)
  store i64 50, ptr %15, align 8, !tbaa !113
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 3
  store i8 1, ptr %16, align 8, !tbaa !114
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 4
  store ptr null, ptr %17, align 8, !tbaa !126
  ret void

18:                                               ; preds = %2
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1016XMLParserLiaisonD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  resume { ptr, i32 } %19
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD2Ev(ptr noundef nonnull align 8 dereferenceable(448) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !127 {
  store ptr getelementptr inbounds ({ [34 x ptr] }, ptr @_ZTVN11xalanc_1_1028XalanSourceTreeParserLiaisonE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !95
  invoke void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison5resetEv(ptr noundef nonnull align 8 dereferenceable(448) %0)
          to label %2 unwind label %13, !prof !128

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !126
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !129

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !95
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4) #13, !prof !130
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %11) #13
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1019XercesParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(288) %12) #13
  tail call void @_ZN11xalanc_1_1016XMLParserLiaisonD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  ret void

13:                                               ; preds = %1
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #14
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !127 {
  invoke void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
          to label %2 unwind label %53, !prof !128

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 8, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !131
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %47, label %6, !prof !129

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 7
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 7, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !132, !noalias !133
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20, !prof !136

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 8, !tbaa !111, !noalias !133
  %13 = load ptr, ptr %12, align 8, !tbaa !95, !noalias !133
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !133
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 32)
          to label %17 unwind label %53

17:                                               ; preds = %11
  store ptr %16, ptr %8, align 8, !tbaa !132, !noalias !133
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %18, align 8, !tbaa !137, !noalias !133
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %19, align 8, !tbaa !140, !noalias !133
  br label %20

20:                                               ; preds = %6, %17
  %21 = load ptr, ptr %8, align 8, !tbaa !132, !noalias !133
  br label %22

22:                                               ; preds = %40, %20
  %23 = phi ptr [ %21, %20 ], [ %25, %40 ]
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !137, !noalias !141
  %26 = load ptr, ptr %8, align 8, !tbaa !132, !noalias !142
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %37, !prof !145

28:                                               ; preds = %22
  %29 = load ptr, ptr %7, align 8, !tbaa !111, !noalias !142
  %30 = load ptr, ptr %29, align 8, !tbaa !95, !noalias !142
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8, !noalias !142
  %33 = invoke noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %29, i64 noundef 32)
          to label %34 unwind label %51

34:                                               ; preds = %28
  store ptr %33, ptr %8, align 8, !tbaa !132, !noalias !142
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %33, i64 0, i32 2
  store ptr %33, ptr %35, align 8, !tbaa !137, !noalias !142
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %33, i64 0, i32 1
  store ptr %33, ptr %36, align 8, !tbaa !140, !noalias !142
  br label %37

37:                                               ; preds = %22, %34
  %38 = load ptr, ptr %8, align 8, !tbaa !132, !noalias !142
  %39 = icmp eq ptr %25, %38
  br i1 %39, label %47, label %40, !prof !129

40:                                               ; preds = %37
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 2
  %42 = load ptr, ptr %25, align 8, !tbaa !146
  %43 = load ptr, ptr %41, align 8, !tbaa !98
  %44 = load ptr, ptr %43, align 8, !tbaa !95
  %45 = getelementptr inbounds ptr, ptr %44, i64 3
  %46 = load ptr, ptr %45, align 8
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef %42)
          to label %22 unwind label %51, !prof !147, !llvm.loop !148

47:                                               ; preds = %37, %2
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %48) #13
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %49) #13
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %50) #13
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
  tail call void @__clang_call_terminate(ptr %57) #14
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD0Ev(ptr noundef nonnull align 8 dereferenceable(448) %0) unnamed_addr #5 align 2 !prof !94 {
  tail call void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD2Ev(ptr noundef nonnull align 8 dereferenceable(448) %0) #13
  tail call void @_ZdlPv(ptr noundef %0) #15
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison5resetEv(ptr noundef nonnull align 8 dereferenceable(448) %0) unnamed_addr #2 align 2 !prof !127 {
  %2 = load ptr, ptr %0, align 8, !tbaa !95
  %3 = getelementptr inbounds ptr, ptr %2, i64 4
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr %4(ptr noundef nonnull align 8 dereferenceable(448) %0), !prof !151
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2, i32 6, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !132, !noalias !152
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %18, !prof !129

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !111, !noalias !152
  %12 = load ptr, ptr %11, align 8, !tbaa !95, !noalias !152
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8, !noalias !152
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef 32), !prof !157, !noalias !152
  store ptr %15, ptr %6, align 8, !tbaa !132, !noalias !152
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %15, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !137, !noalias !152
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %15, i64 0, i32 1
  store ptr %15, ptr %17, align 8, !tbaa !140, !noalias !152
  br label %18

18:                                               ; preds = %1, %9
  %19 = load ptr, ptr %6, align 8, !tbaa !132, !noalias !152
  br label %20

20:                                               ; preds = %41, %18
  %21 = phi ptr [ %19, %18 ], [ %23, %41 ]
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !137, !noalias !141
  %24 = load ptr, ptr %6, align 8, !tbaa !132, !noalias !158
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %35, !prof !163

26:                                               ; preds = %20
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !111, !noalias !158
  %29 = load ptr, ptr %28, align 8, !tbaa !95, !noalias !158
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8, !noalias !158
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %28, i64 noundef 32), !noalias !158
  store ptr %32, ptr %6, align 8, !tbaa !132, !noalias !158
  %33 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %32, i64 0, i32 2
  store ptr %32, ptr %33, align 8, !tbaa !137, !noalias !158
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %32, i64 0, i32 1
  store ptr %32, ptr %34, align 8, !tbaa !140, !noalias !158
  br label %35

35:                                               ; preds = %20, %26
  %36 = load ptr, ptr %6, align 8, !tbaa !132, !noalias !158
  %37 = icmp eq ptr %23, %36
  br i1 %37, label %38, label %41, !prof !164

38:                                               ; preds = %35
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(136) %39)
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1019XercesParserLiaison5resetEv(ptr noundef nonnull align 8 dereferenceable(288) %40)
  ret void

41:                                               ; preds = %35
  %42 = load ptr, ptr %23, align 8, !tbaa !146
  %43 = getelementptr inbounds %"struct.std::pair", ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !165
  %45 = load ptr, ptr %44, align 8, !tbaa !95
  %46 = load ptr, ptr %45, align 8
  tail call void %46(ptr noundef nonnull align 8 dereferenceable(1056) %44) #13, !prof !167
  %47 = load ptr, ptr %23, align 8, !tbaa !146
  %48 = getelementptr inbounds %"struct.std::pair", ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !165
  %50 = load ptr, ptr %5, align 8, !tbaa !95
  %51 = getelementptr inbounds ptr, ptr %50, i64 3
  %52 = load ptr, ptr %51, align 8
  tail call void %52(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %49), !prof !147
  %53 = load ptr, ptr %23, align 8, !tbaa !146
  %54 = getelementptr inbounds %"struct.std::pair", ptr %53, i64 0, i32 1
  store ptr null, ptr %54, align 8, !tbaa !165
  br label %20, !llvm.loop !168
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #2 comdat align 2 !prof !127 {
  tail call void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 8, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !169
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 8, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !131
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %3, i64 %5
  %7 = icmp eq i64 %5, 0
  br i1 %7, label %17, label %8, !prof !170

8:                                                ; preds = %1, %14
  %9 = phi ptr [ %15, %14 ], [ %3, %1 ]
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !171
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %14, label %13, !prof !173

13:                                               ; preds = %8
  store i64 0, ptr %10, align 8, !tbaa !171
  br label %14

14:                                               ; preds = %13, %8
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %9, i64 1
  %16 = icmp eq ptr %15, %6
  br i1 %16, label %17, label %8, !prof !174, !llvm.loop !175

17:                                               ; preds = %14, %1
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 9
  store i64 0, ptr %18, align 8, !tbaa !176
  ret void
}

declare void @_ZN11xalanc_1_1019XercesParserLiaison5resetEv(ptr noundef nonnull align 8 dereferenceable(288)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison19getExecutionContextEv(ptr noundef nonnull align 8 dereferenceable(448) %0) unnamed_addr #2 align 2 !prof !94 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1019XercesParserLiaison19getExecutionContextEv(ptr noundef nonnull align 8 dereferenceable(288) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xalanc_1_1019XercesParserLiaison19getExecutionContextEv(ptr noundef nonnull align 8 dereferenceable(288)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison19setExecutionContextERNS_16ExecutionContextE(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull align 1 %1) unnamed_addr #2 align 2 !prof !177 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1019XercesParserLiaison19setExecutionContextERNS_16ExecutionContextE(ptr noundef nonnull align 8 dereferenceable(288) %3, ptr noundef nonnull align 1 %1)
  ret void
}

declare void @_ZN11xalanc_1_1019XercesParserLiaison19setExecutionContextERNS_16ExecutionContextE(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef nonnull align 1) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERNS1_15DocumentHandlerERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(36) %3) unnamed_addr #2 align 2 !prof !177 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1019XercesParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERNS1_15DocumentHandlerERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(288) %5, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(36) %3)
  ret void
}

declare void @_ZN11xalanc_1_1019XercesParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERNS1_15DocumentHandlerERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison12ensureReaderEv(ptr noundef nonnull align 8 dereferenceable(448) %0) local_unnamed_addr #2 align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !126
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %10, !prof !178

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !95
  %7 = getelementptr inbounds ptr, ptr %6, i64 31
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(448) %0), !prof !179
  store ptr %9, ptr %2, align 8, !tbaa !126
  br label %10

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 1
  %12 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019XercesParserLiaison16getUseValidationEv(ptr noundef nonnull align 8 dereferenceable(288) %11)
  %13 = load ptr, ptr %2, align 8, !tbaa !126
  %14 = load ptr, ptr %13, align 8, !tbaa !95
  %15 = getelementptr inbounds ptr, ptr %14, i64 12
  %16 = load ptr, ptr %15, align 8
  br i1 %12, label %22, label %17, !prof !178

17:                                               ; preds = %10
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison18s_validationStringE, i1 noundef zeroext false)
  %18 = load ptr, ptr %2, align 8, !tbaa !126
  %19 = load ptr, ptr %18, align 8, !tbaa !95
  %20 = getelementptr inbounds ptr, ptr %19, i64 12
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison14s_schemaStringE, i1 noundef zeroext false)
  br label %27

22:                                               ; preds = %10
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison25s_dynamicValidationStringE, i1 noundef zeroext true), !prof !180
  %23 = load ptr, ptr %2, align 8, !tbaa !126
  %24 = load ptr, ptr %23, align 8, !tbaa !95
  %25 = getelementptr inbounds ptr, ptr %24, i64 12
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison14s_schemaStringE, i1 noundef zeroext true), !prof !180
  br label %27

27:                                               ; preds = %22, %17
  %28 = load ptr, ptr %0, align 8, !tbaa !95
  %29 = getelementptr inbounds ptr, ptr %28, i64 16
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(448) %0), !prof !181
  %32 = icmp eq ptr %31, null
  %33 = load ptr, ptr %2, align 8, !tbaa !126
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 1, i32 1
  %35 = select i1 %32, ptr %34, ptr %31, !prof !178
  %36 = load ptr, ptr %33, align 8, !tbaa !95
  %37 = getelementptr inbounds ptr, ptr %36, i64 11
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %35)
  %39 = load ptr, ptr %2, align 8, !tbaa !126
  %40 = load ptr, ptr %0, align 8, !tbaa !95
  %41 = getelementptr inbounds ptr, ptr %40, i64 14
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(448) %0), !prof !182
  %44 = load ptr, ptr %39, align 8, !tbaa !95
  %45 = getelementptr inbounds ptr, ptr %44, i64 10
  %46 = load ptr, ptr %45, align 8
  tail call void %46(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %43), !prof !183
  %47 = load ptr, ptr %0, align 8, !tbaa !95
  %48 = getelementptr inbounds ptr, ptr %47, i64 27
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(448) %0), !prof !184
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52, !prof !178

52:                                               ; preds = %27
  %53 = load ptr, ptr %2, align 8, !tbaa !126
  %54 = load ptr, ptr %53, align 8, !tbaa !95
  %55 = getelementptr inbounds ptr, ptr %54, i64 13
  %56 = load ptr, ptr %55, align 8
  tail call void %56(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef nonnull @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison30s_externalSchemaLocationStringE, ptr noundef nonnull %50)
  br label %57

57:                                               ; preds = %52, %27
  %58 = load ptr, ptr %0, align 8, !tbaa !95
  %59 = getelementptr inbounds ptr, ptr %58, i64 29
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(448) %0), !prof !185
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63, !prof !178

63:                                               ; preds = %57
  %64 = load ptr, ptr %2, align 8, !tbaa !126
  %65 = load ptr, ptr %64, align 8, !tbaa !95
  %66 = getelementptr inbounds ptr, ptr %65, i64 13
  %67 = load ptr, ptr %66, align 8
  tail call void %67(ptr noundef nonnull align 8 dereferenceable(8) %64, ptr noundef nonnull @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison41s_externalNoNamespaceSchemaLocationStringE, ptr noundef nonnull %61)
  br label %68

68:                                               ; preds = %63, %57
  ret void
}

declare noundef zeroext i1 @_ZNK11xalanc_1_1019XercesParserLiaison16getUseValidationEv(ptr noundef nonnull align 8 dereferenceable(288)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %4 = alloca %"class.xalanc_1_10::XalanSourceTreeContentHandler", align 8
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %4) #13
  %5 = load ptr, ptr %0, align 8, !tbaa !95
  %6 = getelementptr inbounds ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr %7(ptr noundef nonnull align 8 dereferenceable(448) %0), !prof !186
  %9 = tail call noundef ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison29createXalanSourceTreeDocumentEv(ptr noundef nonnull align 8 dereferenceable(448) %0)
  call void @_ZN11xalanc_1_1029XalanSourceTreeContentHandlerC1ERN11xercesc_2_713MemoryManagerEPNS_23XalanSourceTreeDocumentEb(ptr noundef nonnull align 8 dereferenceable(161) %4, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %9, i1 noundef zeroext true)
  %10 = getelementptr inbounds i8, ptr %4, i64 8
  %11 = getelementptr inbounds i8, ptr %4, i64 16
  %12 = load ptr, ptr %0, align 8, !tbaa !95
  %13 = getelementptr inbounds ptr, ptr %12, i64 18
  %14 = load ptr, ptr %13, align 8
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %10, ptr noundef nonnull %11)
          to label %15 unwind label %18, !prof !187

15:                                               ; preds = %3
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeContentHandler", ptr %4, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !188
  call void @_ZN11xalanc_1_1029XalanSourceTreeContentHandlerD1Ev(ptr noundef nonnull align 8 dereferenceable(161) %4) #13
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %4) #13
  ret ptr %17

18:                                               ; preds = %3
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1029XalanSourceTreeContentHandlerD1Ev(ptr noundef nonnull align 8 dereferenceable(161) %4) #13
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %4) #13
  resume { ptr, i32 } %19
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison29createXalanSourceTreeDocumentEv(ptr noundef nonnull align 8 dereferenceable(448) %0) local_unnamed_addr #2 align 2 !prof !177 {
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !95
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr %5(ptr noundef nonnull align 8 dereferenceable(448) %0), !prof !186
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 3
  %8 = load i8, ptr %7, align 8, !tbaa !114, !range !195, !noundef !141
  %9 = icmp ne i8 %8, 0
  %10 = tail call noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument6createERN11xercesc_2_713MemoryManagerEbmmmmmm(ptr noundef nonnull align 8 dereferenceable(8) %6, i1 noundef zeroext %9, i64 noundef 32, i64 noundef 101, i64 noundef 15, i64 noundef 32, i64 noundef 997, i64 noundef 15)
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store ptr %10, ptr %2, align 8, !tbaa !196
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEEixERKS3_(ptr noundef nonnull align 8 dereferenceable(136) %11, ptr noundef nonnull align 8 dereferenceable(8) %2)
  store ptr %10, ptr %12, align 8, !tbaa !196
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret ptr %10
}

declare void @_ZN11xalanc_1_1029XalanSourceTreeContentHandlerC1ERN11xercesc_2_713MemoryManagerEPNS_23XalanSourceTreeDocumentEb(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i1 noundef zeroext) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1029XalanSourceTreeContentHandlerD1Ev(ptr noundef nonnull align 8 dereferenceable(161)) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison15destroyDocumentEPNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !94 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !196
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison11mapDocumentEPKNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef %1)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2
  %8 = call noundef i64 @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE5eraseERKS3_(ptr noundef nonnull align 8 dereferenceable(136) %7, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %9 = load ptr, ptr %3, align 8, !tbaa !196
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %9, align 8, !tbaa !95
  %13 = load ptr, ptr %12, align 8
  call void %13(ptr noundef nonnull align 8 dereferenceable(8) %9) #13
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !98
  %16 = load ptr, ptr %3, align 8, !tbaa !196
  %17 = load ptr, ptr %15, align 8, !tbaa !95
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  call void %19(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %16)
  br label %23

20:                                               ; preds = %2
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %3, align 8, !tbaa !196
  tail call void @_ZN11xalanc_1_1019XercesParserLiaison15destroyDocumentEPNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(288) %21, ptr noundef %22)
  br label %23

23:                                               ; preds = %6, %11, %20
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison11mapDocumentEPKNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !177 {
  %3 = alloca %"struct.xalanc_1_10::XalanMapIterator", align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !196
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13, !noalias !197
  call void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE4findERKS3_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 8 dereferenceable(8) %4), !noalias !197
  %6 = load ptr, ptr %3, align 8, !tbaa !200, !noalias !197
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13, !noalias !197
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2, i32 6, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !132, !noalias !202
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19, !prof !136

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !111, !noalias !202
  %13 = load ptr, ptr %12, align 8, !tbaa !95, !noalias !202
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !202
  %16 = call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 32), !noalias !202
  store ptr %16, ptr %7, align 8, !tbaa !132, !noalias !202
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !137, !noalias !202
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !140, !noalias !202
  br label %19

19:                                               ; preds = %2, %10
  %20 = load ptr, ptr %7, align 8, !tbaa !132, !noalias !202
  %21 = icmp eq ptr %6, %20
  br i1 %21, label %26, label %22, !prof !136

22:                                               ; preds = %19
  %23 = load ptr, ptr %6, align 8, !tbaa !146
  %24 = getelementptr inbounds %"struct.std::pair", ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !165
  br label %26

26:                                               ; preds = %19, %22
  %27 = phi ptr [ %25, %22 ], [ null, %19 ]
  ret ptr %27
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE5eraseERKS3_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !94 {
  %3 = alloca %"struct.xalanc_1_10::XalanMapIterator", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanMapIterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE4findERKS3_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 6, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !132, !noalias !209
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !111, !noalias !209
  %11 = load ptr, ptr %10, align 8, !tbaa !95, !noalias !209
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8, !noalias !209
  %14 = call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 32), !noalias !209
  store ptr %14, ptr %5, align 8, !tbaa !132, !noalias !209
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %14, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !137, !noalias !209
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %14, i64 0, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !140, !noalias !209
  br label %17

17:                                               ; preds = %2, %8
  %18 = load ptr, ptr %5, align 8, !tbaa !132, !noalias !209
  %19 = load ptr, ptr %3, align 8, !tbaa !200
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  store ptr %19, ptr %4, align 8, !tbaa !200
  call void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS3_S5_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS8_5EntryEEENS_9XalanListISH_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 9
  %23 = load i64, ptr %22, align 8, !tbaa !176
  %24 = add i64 %23, 1
  store i64 %24, ptr %22, align 8, !tbaa !176
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 10
  %26 = load i64, ptr %25, align 8, !tbaa !113
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  call void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE14compactBucketsEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
  store i64 0, ptr %22, align 8, !tbaa !176
  br label %29

29:                                               ; preds = %28, %21, %17
  %30 = phi i64 [ 0, %17 ], [ 1, %21 ], [ 1, %28 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret i64 %30
}

declare void @_ZN11xalanc_1_1019XercesParserLiaison15destroyDocumentEPNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison9getIndentEv(ptr noundef nonnull align 8 dereferenceable(448) %0) unnamed_addr #2 align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xalanc_1_1019XercesParserLiaison9getIndentEv(ptr noundef nonnull align 8 dereferenceable(288) %2)
  ret i32 %3
}

declare noundef i32 @_ZNK11xalanc_1_1019XercesParserLiaison9getIndentEv(ptr noundef nonnull align 8 dereferenceable(288)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison9setIndentEi(ptr noundef nonnull align 8 dereferenceable(448) %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !94 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1019XercesParserLiaison9setIndentEi(ptr noundef nonnull align 8 dereferenceable(288) %3, i32 noundef %1)
  ret void
}

declare void @_ZN11xalanc_1_1019XercesParserLiaison9setIndentEi(ptr noundef nonnull align 8 dereferenceable(288), i32 noundef) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison16getUseValidationEv(ptr noundef nonnull align 8 dereferenceable(448) %0) unnamed_addr #2 align 2 !prof !94 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019XercesParserLiaison16getUseValidationEv(ptr noundef nonnull align 8 dereferenceable(288) %2)
  ret i1 %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison16setUseValidationEb(ptr noundef nonnull align 8 dereferenceable(448) %0, i1 noundef zeroext %1) unnamed_addr #2 align 2 !prof !127 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1019XercesParserLiaison16setUseValidationEb(ptr noundef nonnull align 8 dereferenceable(288) %3, i1 noundef zeroext %1)
  ret void
}

declare void @_ZN11xalanc_1_1019XercesParserLiaison16setUseValidationEb(ptr noundef nonnull align 8 dereferenceable(288), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison20getParserDescriptionERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull returned align 8 dereferenceable(36) %1) unnamed_addr #2 align 2 !prof !94 {
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 0, i32 noundef -1)
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef nonnull @.str)
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str, i32 noundef %3)
  ret ptr %1
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERNS1_14ContentHandlerERKNS_14XalanDOMStringEPNS1_10DTDHandlerEPNS1_14LexicalHandlerE(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nocapture nonnull readnone align 8 %3, ptr noundef %4, ptr noundef %5) unnamed_addr #2 align 2 !prof !177 {
  tail call void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison12ensureReaderEv(ptr noundef nonnull align 8 dereferenceable(448) %0)
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !126
  %9 = load ptr, ptr %8, align 8, !tbaa !95
  %10 = getelementptr inbounds ptr, ptr %9, i64 8
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %2), !prof !214
  %12 = load ptr, ptr %7, align 8, !tbaa !126
  %13 = load ptr, ptr %12, align 8, !tbaa !95
  %14 = getelementptr inbounds ptr, ptr %13, i64 9
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %4), !prof !215
  %16 = load ptr, ptr %7, align 8, !tbaa !126
  %17 = load ptr, ptr %16, align 8, !tbaa !95
  %18 = getelementptr inbounds ptr, ptr %17, i64 20
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %5), !prof !216
  %20 = load ptr, ptr %7, align 8, !tbaa !126
  %21 = load ptr, ptr %20, align 8, !tbaa !95
  %22 = getelementptr inbounds ptr, ptr %21, i64 14
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 1 %1), !prof !217
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison16createDOMFactoryEv(ptr noundef nonnull align 8 dereferenceable(448) %0) unnamed_addr #2 align 2 !prof !94 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZN11xalanc_1_1019XercesParserLiaison16createDOMFactoryEv(ptr noundef nonnull align 8 dereferenceable(288) %2)
  ret ptr %3
}

declare noundef ptr @_ZN11xalanc_1_1019XercesParserLiaison16createDOMFactoryEv(ptr noundef nonnull align 8 dereferenceable(288)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison15destroyDocumentEPN11xercesc_2_711DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !94 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1019XercesParserLiaison15destroyDocumentEPN11xercesc_2_711DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(288) %3, ptr noundef %1)
  ret void
}

declare void @_ZN11xalanc_1_1019XercesParserLiaison15destroyDocumentEPN11xercesc_2_711DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison29getIncludeIgnorableWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(448) %0) unnamed_addr #2 align 2 !prof !94 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019XercesParserLiaison29getIncludeIgnorableWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(288) %2)
  ret i1 %3
}

declare noundef zeroext i1 @_ZNK11xalanc_1_1019XercesParserLiaison29getIncludeIgnorableWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(288)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison29setIncludeIgnorableWhitespaceEb(ptr noundef nonnull align 8 dereferenceable(448) %0, i1 noundef zeroext %1) unnamed_addr #2 align 2 !prof !94 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1019XercesParserLiaison29setIncludeIgnorableWhitespaceEb(ptr noundef nonnull align 8 dereferenceable(288) %3, i1 noundef zeroext %1)
  ret void
}

declare void @_ZN11xalanc_1_1019XercesParserLiaison29setIncludeIgnorableWhitespaceEb(ptr noundef nonnull align 8 dereferenceable(288), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison15getErrorHandlerEv(ptr noundef nonnull align 8 dereferenceable(448) %0) unnamed_addr #2 align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1019XercesParserLiaison15getErrorHandlerEv(ptr noundef nonnull align 8 dereferenceable(288) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xalanc_1_1019XercesParserLiaison15getErrorHandlerEv(ptr noundef nonnull align 8 dereferenceable(288)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison15setErrorHandlerEPN11xercesc_2_712ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !127 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1019XercesParserLiaison15setErrorHandlerEPN11xercesc_2_712ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(288) %3, ptr noundef %1)
  ret void
}

declare void @_ZN11xalanc_1_1019XercesParserLiaison15setErrorHandlerEPN11xercesc_2_712ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(448) %0) unnamed_addr #2 align 2 !prof !94 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019XercesParserLiaison15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(288) %2)
  ret i1 %3
}

declare noundef zeroext i1 @_ZNK11xalanc_1_1019XercesParserLiaison15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(288)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(448) %0, i1 noundef zeroext %1) unnamed_addr #2 align 2 !prof !94 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1019XercesParserLiaison15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(288) %3, i1 noundef zeroext %1)
  ret void
}

declare void @_ZN11xalanc_1_1019XercesParserLiaison15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(288), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison24getExitOnFirstFatalErrorEv(ptr noundef nonnull align 8 dereferenceable(448) %0) unnamed_addr #2 align 2 !prof !94 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019XercesParserLiaison24getExitOnFirstFatalErrorEv(ptr noundef nonnull align 8 dereferenceable(288) %2)
  ret i1 %3
}

declare noundef zeroext i1 @_ZNK11xalanc_1_1019XercesParserLiaison24getExitOnFirstFatalErrorEv(ptr noundef nonnull align 8 dereferenceable(288)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison24setExitOnFirstFatalErrorEb(ptr noundef nonnull align 8 dereferenceable(448) %0, i1 noundef zeroext %1) unnamed_addr #2 align 2 !prof !94 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1019XercesParserLiaison24setExitOnFirstFatalErrorEb(ptr noundef nonnull align 8 dereferenceable(288) %3, i1 noundef zeroext %1)
  ret void
}

declare void @_ZN11xalanc_1_1019XercesParserLiaison24setExitOnFirstFatalErrorEb(ptr noundef nonnull align 8 dereferenceable(288), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison17getEntityResolverEv(ptr noundef nonnull align 8 dereferenceable(448) %0) unnamed_addr #2 align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1019XercesParserLiaison17getEntityResolverEv(ptr noundef nonnull align 8 dereferenceable(288) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xalanc_1_1019XercesParserLiaison17getEntityResolverEv(ptr noundef nonnull align 8 dereferenceable(288)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison17setEntityResolverEPN11xercesc_2_714EntityResolverE(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !127 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1019XercesParserLiaison17setEntityResolverEPN11xercesc_2_714EntityResolverE(ptr noundef nonnull align 8 dereferenceable(288) %3, ptr noundef %1)
  ret void
}

declare void @_ZN11xalanc_1_1019XercesParserLiaison17setEntityResolverEPN11xercesc_2_714EntityResolverE(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison25getExternalSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(448) %0) unnamed_addr #2 align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1019XercesParserLiaison25getExternalSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(288) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xalanc_1_1019XercesParserLiaison25getExternalSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(288)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison25setExternalSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !177 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1019XercesParserLiaison25setExternalSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(288) %3, ptr noundef %1)
  ret void
}

declare void @_ZN11xalanc_1_1019XercesParserLiaison25setExternalSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison36getExternalNoNamespaceSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(448) %0) unnamed_addr #2 align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1019XercesParserLiaison36getExternalNoNamespaceSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(288) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xalanc_1_1019XercesParserLiaison36getExternalNoNamespaceSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(288)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison36setExternalNoNamespaceSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !177 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1019XercesParserLiaison36setExternalNoNamespaceSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(288) %3, ptr noundef %1)
  ret void
}

declare void @_ZN11xalanc_1_1019XercesParserLiaison36setExternalNoNamespaceSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef) unnamed_addr #3

declare noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument6createERN11xercesc_2_713MemoryManagerEbmmmmmm(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEEixERKS3_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !177 {
  %3 = alloca %"struct.xalanc_1_10::XalanMapIterator", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanMapIterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE4findERKS3_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 6, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !132, !noalias !218
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17, !prof !136

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !111, !noalias !218
  %11 = load ptr, ptr %10, align 8, !tbaa !95, !noalias !218
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8, !noalias !218
  %14 = call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 32), !noalias !218
  store ptr %14, ptr %5, align 8, !tbaa !132, !noalias !218
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %14, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !137, !noalias !218
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %14, i64 0, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !140, !noalias !218
  br label %17

17:                                               ; preds = %2, %8
  %18 = load ptr, ptr %5, align 8, !tbaa !132, !noalias !218
  %19 = load ptr, ptr %3, align 8, !tbaa !200
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %23, !prof !178

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE13doCreateEntryERKS3_PKS5_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null)
  %22 = load ptr, ptr %4, align 8, !tbaa !200
  store ptr %22, ptr %3, align 8, !tbaa !200
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %23

23:                                               ; preds = %21, %17
  %24 = load ptr, ptr %3, align 8, !tbaa !200
  %25 = load ptr, ptr %24, align 8, !tbaa !146
  %26 = getelementptr inbounds %"struct.std::pair", ptr %25, i64 0, i32 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret ptr %26
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison12createReaderEv(ptr noundef nonnull align 8 dereferenceable(448) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %2 = load ptr, ptr %0, align 8, !tbaa !95
  %3 = getelementptr inbounds ptr, ptr %2, i64 4
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr %4(ptr noundef nonnull align 8 dereferenceable(448) %0), !prof !186
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 248, ptr noundef nonnull %5)
  invoke void @_ZN11xercesc_2_717SAX2XMLReaderImplC1EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(248) %6, ptr noundef nonnull %5, ptr noundef null)
          to label %11 unwind label %9, !prof !178

7:                                                ; preds = %20, %9
  %8 = phi { ptr, i32 } [ %10, %9 ], [ %21, %20 ]
  resume { ptr, i32 } %8

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %6, ptr noundef nonnull %5) #13
  br label %7

11:                                               ; preds = %1
  %12 = load ptr, ptr %6, align 8, !tbaa !95
  %13 = getelementptr inbounds ptr, ptr %12, i64 12
  %14 = load ptr, ptr %13, align 8
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison18s_namespacesStringE, i1 noundef zeroext true)
          to label %15 unwind label %20, !prof !180

15:                                               ; preds = %11
  %16 = load ptr, ptr %6, align 8, !tbaa !95
  %17 = getelementptr inbounds ptr, ptr %16, i64 12
  %18 = load ptr, ptr %17, align 8
  invoke void %18(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison25s_namespacePrefixesStringE, i1 noundef zeroext true)
          to label %19 unwind label %20, !prof !180

19:                                               ; preds = %15
  ret ptr %6

20:                                               ; preds = %15, %11
  %21 = landingpad { ptr, i32 }
          cleanup
  %22 = load ptr, ptr %6, align 8, !tbaa !95
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(8) %6) #13
  br label %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(448) %0) unnamed_addr #2 comdat align 2 !prof !223 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeParserLiaison", ptr %0, i64 0, i32 2, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  ret ptr %3
}

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_717SAX2XMLReaderImplC1EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !224 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.2", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !132
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5, !prof !225

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !137, !noalias !226
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %7, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !132, !noalias !229
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21, !prof !232

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !111, !noalias !229
  %14 = load ptr, ptr %13, align 8, !tbaa !95, !noalias !229
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !229
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32)
          to label %18 unwind label %53

18:                                               ; preds = %12
  store ptr %17, ptr %2, align 8, !tbaa !132, !noalias !229
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !137, !noalias !229
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !140, !noalias !229
  br label %21

21:                                               ; preds = %8, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !132, !noalias !229
  %23 = icmp eq ptr %9, %22
  br i1 %23, label %31, label %24, !prof !233

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !137, !noalias !234
  %27 = load ptr, ptr %0, align 8, !tbaa !111
  %28 = load ptr, ptr %27, align 8, !tbaa !95
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %9)
          to label %8 unwind label %53, !prof !147, !llvm.loop !237

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanList.2", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !238
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37, !prof !239

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !137
  %40 = load ptr, ptr %0, align 8, !tbaa !111
  %41 = load ptr, ptr %40, align 8, !tbaa !95
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %35)
          to label %34 unwind label %51

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !132
  %46 = load ptr, ptr %0, align 8, !tbaa !111
  %47 = load ptr, ptr %46, align 8, !tbaa !95
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %45)
          to label %50 unwind label %55, !prof !240

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
  tail call void @__clang_call_terminate(ptr %59) #14
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #2 comdat align 2 !prof !224 {
  %2 = alloca %"struct.xalanc_1_10::XalanMapIterator", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !110
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %26, label %6, !prof !233

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 6, i32 1
  br label %8

8:                                                ; preds = %6, %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %9 = load ptr, ptr %7, align 8, !tbaa !132, !noalias !244
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20, !prof !136

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !111, !noalias !244
  %14 = load ptr, ptr %13, align 8, !tbaa !95, !noalias !244
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !244
  %17 = call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32), !noalias !244
  store ptr %17, ptr %7, align 8, !tbaa !132, !noalias !244
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !137, !noalias !244
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %19, align 8, !tbaa !140, !noalias !244
  br label %20

20:                                               ; preds = %8, %11
  %21 = load ptr, ptr %7, align 8, !tbaa !132, !noalias !244
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !137, !noalias !244
  store ptr %23, ptr %2, align 8, !tbaa !200, !alias.scope !241
  call void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS3_S5_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS8_5EntryEEENS_9XalanListISH_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  %24 = load i64, ptr %3, align 8, !tbaa !110
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %8, !prof !178, !llvm.loop !247

26:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !248 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !249
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %22, label %5, !prof !164

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !169
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !131
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %16, label %12, !prof !170

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %14, %12 ], [ %7, %5 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #13
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %13, i64 1
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %16, label %12, !prof !250, !llvm.loop !251

16:                                               ; preds = %12, %5
  %17 = load ptr, ptr %6, align 8, !tbaa !169
  %18 = load ptr, ptr %0, align 8, !tbaa !112
  %19 = load ptr, ptr %18, align 8, !tbaa !95
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %17)
          to label %22 unwind label %23, !prof !147

22:                                               ; preds = %16, %1
  ret void

23:                                               ; preds = %16
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #14
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS3_S5_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS8_5EntryEEENS_9XalanListISH_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !177 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 7, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !132, !noalias !252
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %15, !prof !136

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !111, !noalias !252
  %9 = load ptr, ptr %8, align 8, !tbaa !95, !noalias !252
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !252
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 32), !noalias !252
  store ptr %12, ptr %3, align 8, !tbaa !132, !noalias !252
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !137, !noalias !252
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !140, !noalias !252
  br label %15

15:                                               ; preds = %2, %6
  %16 = load ptr, ptr %3, align 8, !tbaa !132, !noalias !252
  %17 = load ptr, ptr %1, align 8, !tbaa !200
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %31, label %19, !prof !136

19:                                               ; preds = %15
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !137
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %17, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !140
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %23, i64 0, i32 2
  store ptr %21, ptr %24, align 8, !tbaa !137
  %25 = load ptr, ptr %20, align 8, !tbaa !137
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %25, i64 0, i32 1
  store ptr %23, ptr %26, align 8, !tbaa !140
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %16, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !140
  store ptr %28, ptr %22, align 8, !tbaa !140
  store ptr %16, ptr %20, align 8, !tbaa !137
  %29 = load ptr, ptr %27, align 8, !tbaa !140
  %30 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %29, i64 0, i32 2
  store ptr %17, ptr %30, align 8, !tbaa !137
  store ptr %17, ptr %27, align 8, !tbaa !140
  br label %31

31:                                               ; preds = %15, %19
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry", ptr %17, i64 0, i32 1
  store i8 1, ptr %32, align 8, !tbaa !255
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 5
  %34 = load i64, ptr %33, align 8, !tbaa !110
  %35 = add i64 %34, -1
  store i64 %35, ptr %33, align 8, !tbaa !110
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !256 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !257
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !173

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !258
  %8 = load ptr, ptr %0, align 8, !tbaa !259
  %9 = load ptr, ptr %8, align 8, !tbaa !95
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !147

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #14
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE4findERKS3_(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanMapIterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 !prof !127 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !110
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %47, label %7, !prof !129

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 8, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !131
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi i64 [ 0, %7 ], [ %18, %10 ]
  %12 = phi i64 [ 0, %7 ], [ %17, %10 ]
  %13 = shl i64 %12, 1
  %14 = getelementptr inbounds i8, ptr %2, i64 %11
  %15 = load i8, ptr %14, align 1, !tbaa !260
  %16 = sext i8 %15 to i64
  %17 = xor i64 %13, %16
  %18 = add nuw nsw i64 %11, 1
  %19 = icmp eq i64 %18, 8
  br i1 %19, label %20, label %10, !prof !261, !llvm.loop !262

20:                                               ; preds = %10
  %21 = urem i64 %17, %9
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 8, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !169
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %23, i64 %21, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !258
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %23, i64 %21, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !171
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %25, i64 %27
  %29 = icmp eq i64 %27, 0
  br i1 %29, label %47, label %30, !prof !136

30:                                               ; preds = %20
  %31 = load ptr, ptr %2, align 8
  br label %32

32:                                               ; preds = %30, %44
  %33 = phi i1 [ %29, %30 ], [ %46, %44 ]
  %34 = phi ptr [ %25, %30 ], [ %45, %44 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !200
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry", ptr %35, i64 0, i32 1
  %37 = load i8, ptr %36, align 8, !tbaa !255, !range !195, !noundef !141
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %44, !prof !178

39:                                               ; preds = %32
  %40 = load ptr, ptr %35, align 8, !tbaa !146
  %41 = load ptr, ptr %40, align 8, !tbaa !196
  %42 = icmp eq ptr %31, %41
  br i1 %42, label %43, label %44, !prof !178

43:                                               ; preds = %39
  store ptr %35, ptr %0, align 8, !tbaa !200
  br i1 %33, label %47, label %62, !prof !136

44:                                               ; preds = %39, %32
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %34, i64 1
  %46 = icmp eq ptr %45, %28
  br i1 %46, label %47, label %32, !prof !136, !llvm.loop !263

47:                                               ; preds = %44, %20, %43, %3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 6, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !132, !noalias !267
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %60, !prof !178

51:                                               ; preds = %47
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !111, !noalias !267
  %54 = load ptr, ptr %53, align 8, !tbaa !95, !noalias !267
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8, !noalias !267
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %53, i64 noundef 32), !prof !157, !noalias !267
  store ptr %57, ptr %48, align 8, !tbaa !132, !noalias !267
  %58 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %57, i64 0, i32 2
  store ptr %57, ptr %58, align 8, !tbaa !137, !noalias !267
  %59 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %57, i64 0, i32 1
  store ptr %57, ptr %59, align 8, !tbaa !140, !noalias !267
  br label %60

60:                                               ; preds = %47, %51
  %61 = load ptr, ptr %48, align 8, !tbaa !132, !noalias !267
  store ptr %61, ptr %0, align 8, !tbaa !200, !alias.scope !264
  br label %62

62:                                               ; preds = %43, %60
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE14compactBucketsEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  %2 = alloca %"class.xalanc_1_10::XalanVector.40", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 8, i32 3
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 8, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !131
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !tbaa !169
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %2, i64 0, i32 1
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %2, i64 0, i32 2
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %2, i64 0, i32 3
  br label %14

13:                                               ; preds = %72, %1
  ret void

14:                                               ; preds = %7, %72
  %15 = phi ptr [ %8, %7 ], [ %73, %72 ]
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !258
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %15, i64 0, i32 1
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
  %27 = load ptr, ptr %25, align 8, !tbaa !200
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry", ptr %27, i64 0, i32 1
  %29 = load i8, ptr %28, align 8, !tbaa !255, !range !195, !noundef !141
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
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %25, ptr nonnull align 8 %31, i64 %35, i1 false), !tbaa !200
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
  br i1 %44, label %45, label %23, !llvm.loop !270

45:                                               ; preds = %40, %14
  %46 = phi i64 [ %19, %14 ], [ %41, %40 ]
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %15, i64 0, i32 2
  %48 = load i64, ptr %47, align 8, !tbaa !257
  %49 = sub i64 %48, %46
  %50 = icmp ugt i64 %49, %46
  br i1 %50, label %51, label %72

51:                                               ; preds = %45
  %52 = icmp eq i64 %46, 0
  %53 = select i1 %52, i64 5, i64 %49
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #13
  %54 = load ptr, ptr %9, align 8, !tbaa !98
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %54, i64 noundef %53)
  %55 = load ptr, ptr %15, align 8, !tbaa !259
  %56 = load i64, ptr %18, align 8, !tbaa !171
  %57 = load i64, ptr %47, align 8, !tbaa !257
  %58 = load ptr, ptr %16, align 8, !tbaa !258
  %59 = load ptr, ptr %2, align 8, !tbaa !259
  store ptr %59, ptr %15, align 8, !tbaa !259
  %60 = load i64, ptr %10, align 8, !tbaa !171
  store i64 %60, ptr %18, align 8, !tbaa !171
  %61 = load i64, ptr %11, align 8, !tbaa !257
  store i64 %61, ptr %47, align 8, !tbaa !257
  %62 = load ptr, ptr %12, align 8, !tbaa !258
  store ptr %62, ptr %16, align 8, !tbaa !258
  store ptr %55, ptr %2, align 8, !tbaa !259
  store i64 %56, ptr %10, align 8, !tbaa !171
  store i64 %57, ptr %11, align 8, !tbaa !257
  store ptr %58, ptr %12, align 8, !tbaa !258
  %63 = icmp eq i64 %57, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %51
  %65 = load ptr, ptr %55, align 8, !tbaa !95
  %66 = getelementptr inbounds ptr, ptr %65, i64 3
  %67 = load ptr, ptr %66, align 8
  invoke void %67(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef %58)
          to label %71 unwind label %68

68:                                               ; preds = %64
  %69 = landingpad { ptr, i32 }
          catch ptr null
  %70 = extractvalue { ptr, i32 } %69, 0
  call void @__clang_call_terminate(ptr %70) #14
  unreachable

71:                                               ; preds = %51, %64
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #13
  br label %72

72:                                               ; preds = %71, %45
  %73 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %15, i64 1
  %74 = load ptr, ptr %3, align 8, !tbaa !169
  %75 = load i64, ptr %4, align 8, !tbaa !131
  %76 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %74, i64 %75
  %77 = icmp eq ptr %73, %76
  br i1 %77, label %13, label %14, !llvm.loop !271
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !272 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.40", align 8
  store ptr %2, ptr %0, align 8, !tbaa !259
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !171
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !273

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !259
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !171
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !257
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !95
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !258
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !258
  %24 = load i64, ptr %9, align 8, !tbaa !171
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE6insertEPSH_PKSH_SN_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !259
  %28 = load i64, ptr %6, align 8, !tbaa !171
  %29 = load i64, ptr %7, align 8, !tbaa !257
  %30 = load ptr, ptr %8, align 8, !tbaa !258
  %31 = load ptr, ptr %5, align 8, !tbaa !259
  store ptr %31, ptr %0, align 8, !tbaa !259
  %32 = load i64, ptr %14, align 8, !tbaa !171
  store i64 %32, ptr %6, align 8, !tbaa !171
  %33 = load i64, ptr %15, align 8, !tbaa !257
  store i64 %33, ptr %7, align 8, !tbaa !257
  %34 = load ptr, ptr %21, align 8, !tbaa !258
  store ptr %34, ptr %8, align 8, !tbaa !258
  store ptr %27, ptr %5, align 8, !tbaa !259
  store i64 %28, ptr %14, align 8, !tbaa !171
  store i64 %29, ptr %15, align 8, !tbaa !257
  store ptr %30, ptr %21, align 8, !tbaa !258
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !95
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #14
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !257
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !258
  %50 = load ptr, ptr %5, align 8, !tbaa !259
  %51 = load ptr, ptr %50, align 8, !tbaa !95
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #14
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !274

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !95
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !157
  store ptr %65, ptr %8, align 8, !tbaa !258
  store i64 %3, ptr %7, align 8, !tbaa !257
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE6insertEPSH_PKSH_SN_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.40", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %161, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !171
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !258
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !257
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %161, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !258
  %28 = load i64, ptr %12, align 8, !tbaa !171
  %29 = getelementptr %"struct.xalanc_1_10::XalanListIteratorBase", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !200
  store ptr %34, ptr %32, align 8, !tbaa !200
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %160, label %30, !llvm.loop !275

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %42 = load ptr, ptr %0, align 8, !tbaa !259
  store ptr %42, ptr %5, align 8, !tbaa !259
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !171
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !257
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !95
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !258
  %51 = load i64, ptr %43, align 8, !tbaa !171
  %52 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !258
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE6insertEPSH_PKSH_SN_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !258
  %56 = load i64, ptr %43, align 8, !tbaa !171
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE6insertEPSH_PKSH_SN_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !258
  %60 = load i64, ptr %43, align 8, !tbaa !171
  %61 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !258
  %63 = load i64, ptr %12, align 8, !tbaa !171
  %64 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE6insertEPSH_PKSH_SN_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !259
  %67 = load i64, ptr %12, align 8, !tbaa !171
  %68 = load i64, ptr %19, align 8, !tbaa !257
  %69 = load ptr, ptr %15, align 8, !tbaa !258
  %70 = load ptr, ptr %5, align 8, !tbaa !259
  store ptr %70, ptr %0, align 8, !tbaa !259
  %71 = load i64, ptr %43, align 8, !tbaa !171
  store i64 %71, ptr %12, align 8, !tbaa !171
  %72 = load i64, ptr %44, align 8, !tbaa !257
  store i64 %72, ptr %19, align 8, !tbaa !257
  %73 = load ptr, ptr %50, align 8, !tbaa !258
  store ptr %73, ptr %15, align 8, !tbaa !258
  store ptr %66, ptr %5, align 8, !tbaa !259
  store i64 %67, ptr %43, align 8, !tbaa !171
  store i64 %68, ptr %44, align 8, !tbaa !257
  store ptr %69, ptr %50, align 8, !tbaa !258
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !95
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #14
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %161

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !257
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !258
  %89 = load ptr, ptr %5, align 8, !tbaa !259
  %90 = load ptr, ptr %89, align 8, !tbaa !95
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #14
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !276

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !277

115:                                              ; preds = %111, %105
  %116 = ashr exact i64 %100, 3
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %161

118:                                              ; preds = %115, %118
  %119 = phi i64 [ %125, %118 ], [ %116, %115 ]
  %120 = phi ptr [ %124, %118 ], [ %1, %115 ]
  %121 = phi ptr [ %123, %118 ], [ %2, %115 ]
  %122 = load ptr, ptr %121, align 8, !tbaa !200
  store ptr %122, ptr %120, align 8, !tbaa !200
  %123 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %121, i64 1
  %124 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %120, i64 1
  %125 = add nsw i64 %119, -1
  %126 = icmp sgt i64 %119, 1
  br i1 %126, label %118, label %161, !llvm.loop !278

127:                                              ; preds = %97
  %128 = sub nsw i64 0, %9
  %129 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %17, i64 %128
  %130 = icmp eq ptr %3, %2
  br i1 %130, label %135, label %131

131:                                              ; preds = %127, %131
  %132 = phi ptr [ %133, %131 ], [ %129, %127 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %132)
  %133 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %132, i64 1
  %134 = icmp eq ptr %133, %17
  br i1 %134, label %135, label %131, !llvm.loop !279

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
  %148 = load ptr, ptr %146, align 8, !tbaa !200
  store ptr %148, ptr %147, align 8, !tbaa !200
  %149 = add nsw i64 %143, -1
  %150 = icmp sgt i64 %143, 1
  br i1 %150, label %142, label %140, !llvm.loop !280

151:                                              ; preds = %140, %151
  %152 = phi i64 [ %158, %151 ], [ %9, %140 ]
  %153 = phi ptr [ %157, %151 ], [ %1, %140 ]
  %154 = phi ptr [ %156, %151 ], [ %2, %140 ]
  %155 = load ptr, ptr %154, align 8, !tbaa !200
  store ptr %155, ptr %153, align 8, !tbaa !200
  %156 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %154, i64 1
  %157 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %153, i64 1
  %158 = add nsw i64 %152, -1
  %159 = icmp sgt i64 %152, 1
  br i1 %159, label %151, label %161, !llvm.loop !278

160:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !171
  br label %161

161:                                              ; preds = %118, %151, %115, %140, %24, %160, %82, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !127 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.40", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !171
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !257
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !129

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !258
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !200
  store ptr %13, ptr %12, align 8, !tbaa !200
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !171
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !178
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %21 = load ptr, ptr %0, align 8, !tbaa !259
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44, !prof !178

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !259
  %24 = load i64, ptr %4, align 8, !tbaa !171
  %25 = load i64, ptr %6, align 8, !tbaa !257
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !258
  %28 = load ptr, ptr %3, align 8, !tbaa !259
  store ptr %28, ptr %0, align 8, !tbaa !259
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !171
  store i64 %30, ptr %4, align 8, !tbaa !171
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !257
  store i64 %32, ptr %6, align 8, !tbaa !257
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !258
  store ptr %34, ptr %26, align 8, !tbaa !258
  store ptr %23, ptr %3, align 8, !tbaa !259
  store i64 %24, ptr %29, align 8, !tbaa !171
  store i64 %25, ptr %31, align 8, !tbaa !257
  store ptr %27, ptr %33, align 8, !tbaa !258
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36, !prof !178

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !95
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #14
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !257
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !258
  %52 = load ptr, ptr %3, align 8, !tbaa !259
  %53 = load ptr, ptr %52, align 8, !tbaa !95
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #14
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.40", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %4 = load ptr, ptr %0, align 8, !tbaa !259
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !259
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !171
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !257
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !258
  %12 = load ptr, ptr %3, align 8, !tbaa !259
  store ptr %12, ptr %0, align 8, !tbaa !259
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !171
  store i64 %14, ptr %6, align 8, !tbaa !171
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !257
  store i64 %16, ptr %8, align 8, !tbaa !257
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !258
  store ptr %18, ptr %10, align 8, !tbaa !258
  store ptr %5, ptr %3, align 8, !tbaa !259
  store i64 %7, ptr %13, align 8, !tbaa !171
  store i64 %9, ptr %15, align 8, !tbaa !257
  store ptr %11, ptr %17, align 8, !tbaa !258
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !95
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #14
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE13doCreateEntryERKS3_PKS5_(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanMapIterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.40", align 8
  %6 = alloca %"struct.xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry", align 8
  %7 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 8, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !131
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %49, !prof !178

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 8
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 8, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !169
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 4
  %16 = load i64, ptr %15, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !98
  store ptr %18, ptr %5, align 8, !tbaa !259
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %5, i64 0, i32 1
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %5, i64 0, i32 2
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %5, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_mRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %14, i64 noundef %16, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %22 unwind label %35, !prof !178

22:                                               ; preds = %11
  %23 = load i64, ptr %20, align 8, !tbaa !257
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %34, label %25, !prof !178

25:                                               ; preds = %22
  %26 = load ptr, ptr %21, align 8, !tbaa !258
  %27 = load ptr, ptr %5, align 8, !tbaa !259
  %28 = load ptr, ptr %27, align 8, !tbaa !95
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %26)
          to label %34 unwind label %31

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #14
  unreachable

34:                                               ; preds = %22, %25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %49

35:                                               ; preds = %11
  %36 = landingpad { ptr, i32 }
          cleanup
  %37 = load i64, ptr %20, align 8, !tbaa !257
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %21, align 8, !tbaa !258
  %41 = load ptr, ptr %5, align 8, !tbaa !259
  %42 = load ptr, ptr %41, align 8, !tbaa !95
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef %40)
          to label %48 unwind label %45

45:                                               ; preds = %39
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  call void @__clang_call_terminate(ptr %47) #14
  unreachable

48:                                               ; preds = %35, %39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  resume { ptr, i32 } %36

49:                                               ; preds = %34, %4
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 3
  %51 = load float, ptr %50, align 8, !tbaa !108
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 5
  %53 = load i64, ptr %52, align 8, !tbaa !110
  %54 = uitofp i64 %53 to float
  %55 = fmul float %51, %54
  %56 = fptoui float %55 to i64
  %57 = load i64, ptr %8, align 8, !tbaa !131
  %58 = icmp ult i64 %57, %56
  br i1 %58, label %59, label %60, !prof !136

59:                                               ; preds = %49
  call void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(136) %1)
  br label %60

60:                                               ; preds = %59, %49
  %61 = load i64, ptr %8, align 8, !tbaa !131
  br label %62

62:                                               ; preds = %60, %62
  %63 = phi i64 [ 0, %60 ], [ %70, %62 ]
  %64 = phi i64 [ 0, %60 ], [ %69, %62 ]
  %65 = shl i64 %64, 1
  %66 = getelementptr inbounds i8, ptr %2, i64 %63
  %67 = load i8, ptr %66, align 1, !tbaa !260
  %68 = sext i8 %67 to i64
  %69 = xor i64 %65, %68
  %70 = add nuw nsw i64 %63, 1
  %71 = icmp eq i64 %70, 8
  br i1 %71, label %72, label %62, !prof !261, !llvm.loop !262

72:                                               ; preds = %62
  %73 = urem i64 %69, %61
  %74 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 7
  %75 = call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %74)
  br i1 %75, label %76, label %84, !prof !178

76:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  %77 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !98
  %79 = load ptr, ptr %78, align 8, !tbaa !95
  %80 = getelementptr inbounds ptr, ptr %79, i64 2
  %81 = load ptr, ptr %80, align 8
  %82 = call noundef ptr %81(ptr noundef nonnull align 8 dereferenceable(8) %78, i64 noundef 16), !prof !157
  store ptr %82, ptr %6, align 8, !tbaa !146
  %83 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry", ptr %6, i64 0, i32 1
  store i8 0, ptr %83, align 8, !tbaa !255
  call void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE9push_backERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %74, ptr noundef nonnull align 8 dereferenceable(9) %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  br label %84

84:                                               ; preds = %76, %72
  %85 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 7, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !132, !noalias !281
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %96, !prof !136

88:                                               ; preds = %84
  %89 = load ptr, ptr %74, align 8, !tbaa !111, !noalias !281
  %90 = load ptr, ptr %89, align 8, !tbaa !95, !noalias !281
  %91 = getelementptr inbounds ptr, ptr %90, i64 2
  %92 = load ptr, ptr %91, align 8, !noalias !281
  %93 = call noundef ptr %92(ptr noundef nonnull align 8 dereferenceable(8) %89, i64 noundef 32), !noalias !281
  store ptr %93, ptr %85, align 8, !tbaa !132, !noalias !281
  %94 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %93, i64 0, i32 2
  store ptr %93, ptr %94, align 8, !tbaa !137, !noalias !281
  %95 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %93, i64 0, i32 1
  store ptr %93, ptr %95, align 8, !tbaa !140, !noalias !281
  br label %96

96:                                               ; preds = %84, %88
  %97 = load ptr, ptr %85, align 8, !tbaa !132, !noalias !281
  %98 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !140, !noalias !284
  %100 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry", ptr %99, i64 0, i32 1
  store i8 0, ptr %100, align 8, !tbaa !255
  %101 = load ptr, ptr %99, align 8, !tbaa !146
  %102 = load ptr, ptr %2, align 8, !tbaa !196
  store ptr %102, ptr %101, align 8, !tbaa !196
  %103 = icmp eq ptr %3, null
  br i1 %103, label %108, label %104, !prof !178

104:                                              ; preds = %96
  %105 = load ptr, ptr %99, align 8, !tbaa !146
  %106 = getelementptr inbounds %"struct.std::pair", ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %3, align 8, !tbaa !196
  store ptr %107, ptr %106, align 8, !tbaa !196
  br label %108

108:                                              ; preds = %96, %104
  %109 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 6
  %110 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 6, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !132, !noalias !287
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %121, !prof !136

113:                                              ; preds = %108
  %114 = load ptr, ptr %109, align 8, !tbaa !111, !noalias !287
  %115 = load ptr, ptr %114, align 8, !tbaa !95, !noalias !287
  %116 = getelementptr inbounds ptr, ptr %115, i64 2
  %117 = load ptr, ptr %116, align 8, !noalias !287
  %118 = call noundef ptr %117(ptr noundef nonnull align 8 dereferenceable(8) %114, i64 noundef 32), !noalias !287
  store ptr %118, ptr %110, align 8, !tbaa !132, !noalias !287
  %119 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %118, i64 0, i32 2
  store ptr %118, ptr %119, align 8, !tbaa !137, !noalias !287
  %120 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %118, i64 0, i32 1
  store ptr %118, ptr %120, align 8, !tbaa !140, !noalias !287
  br label %121

121:                                              ; preds = %108, %113
  %122 = load ptr, ptr %110, align 8, !tbaa !132, !noalias !287
  %123 = load ptr, ptr %85, align 8, !tbaa !132, !noalias !290
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %133, !prof !136

125:                                              ; preds = %121
  %126 = load ptr, ptr %74, align 8, !tbaa !111, !noalias !290
  %127 = load ptr, ptr %126, align 8, !tbaa !95, !noalias !290
  %128 = getelementptr inbounds ptr, ptr %127, i64 2
  %129 = load ptr, ptr %128, align 8, !noalias !290
  %130 = call noundef ptr %129(ptr noundef nonnull align 8 dereferenceable(8) %126, i64 noundef 32), !noalias !290
  store ptr %130, ptr %85, align 8, !tbaa !132, !noalias !290
  %131 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %130, i64 0, i32 2
  store ptr %130, ptr %131, align 8, !tbaa !137, !noalias !290
  %132 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %130, i64 0, i32 1
  store ptr %130, ptr %132, align 8, !tbaa !140, !noalias !290
  br label %133

133:                                              ; preds = %121, %125
  %134 = load ptr, ptr %85, align 8, !tbaa !132, !noalias !290
  %135 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %134, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !140, !noalias !293
  %137 = icmp eq ptr %122, %136
  br i1 %137, label %150, label %138, !prof !136

138:                                              ; preds = %133
  %139 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %136, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !137
  %141 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %136, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !140
  %143 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %142, i64 0, i32 2
  store ptr %140, ptr %143, align 8, !tbaa !137
  %144 = load ptr, ptr %139, align 8, !tbaa !137
  %145 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %144, i64 0, i32 1
  store ptr %142, ptr %145, align 8, !tbaa !140
  %146 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %122, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !140
  store ptr %147, ptr %141, align 8, !tbaa !140
  store ptr %122, ptr %139, align 8, !tbaa !137
  %148 = load ptr, ptr %146, align 8, !tbaa !140
  %149 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %148, i64 0, i32 2
  store ptr %136, ptr %149, align 8, !tbaa !137
  store ptr %136, ptr %146, align 8, !tbaa !140
  br label %150

150:                                              ; preds = %133, %138
  %151 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %1, i64 0, i32 8, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !169
  %153 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %152, i64 %73
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  %154 = load ptr, ptr %110, align 8, !tbaa !132, !noalias !296
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %164, !prof !136

156:                                              ; preds = %150
  %157 = load ptr, ptr %109, align 8, !tbaa !111, !noalias !296
  %158 = load ptr, ptr %157, align 8, !tbaa !95, !noalias !296
  %159 = getelementptr inbounds ptr, ptr %158, i64 2
  %160 = load ptr, ptr %159, align 8, !noalias !296
  %161 = call noundef ptr %160(ptr noundef nonnull align 8 dereferenceable(8) %157, i64 noundef 32), !noalias !296
  store ptr %161, ptr %110, align 8, !tbaa !132, !noalias !296
  %162 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %161, i64 0, i32 2
  store ptr %161, ptr %162, align 8, !tbaa !137, !noalias !296
  %163 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %161, i64 0, i32 1
  store ptr %161, ptr %163, align 8, !tbaa !140, !noalias !296
  br label %164

164:                                              ; preds = %150, %156
  %165 = load ptr, ptr %110, align 8, !tbaa !132, !noalias !296
  call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %166 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %165, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !140, !noalias !299
  store ptr %167, ptr %7, align 8, !tbaa !200, !alias.scope !299
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %153, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  %168 = load i64, ptr %52, align 8, !tbaa !110
  %169 = add i64 %168, 1
  store i64 %169, ptr %52, align 8, !tbaa !110
  %170 = load ptr, ptr %110, align 8, !tbaa !132, !noalias !302
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %180, !prof !136

172:                                              ; preds = %164
  %173 = load ptr, ptr %109, align 8, !tbaa !111, !noalias !302
  %174 = load ptr, ptr %173, align 8, !tbaa !95, !noalias !302
  %175 = getelementptr inbounds ptr, ptr %174, i64 2
  %176 = load ptr, ptr %175, align 8, !noalias !302
  %177 = call noundef ptr %176(ptr noundef nonnull align 8 dereferenceable(8) %173, i64 noundef 32), !noalias !302
  store ptr %177, ptr %110, align 8, !tbaa !132, !noalias !302
  %178 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %177, i64 0, i32 2
  store ptr %177, ptr %178, align 8, !tbaa !137, !noalias !302
  %179 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %177, i64 0, i32 1
  store ptr %177, ptr %179, align 8, !tbaa !140, !noalias !302
  br label %180

180:                                              ; preds = %164, %172
  %181 = load ptr, ptr %110, align 8, !tbaa !132, !noalias !302
  %182 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %181, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !140, !noalias !305
  store ptr %183, ptr %0, align 8, !tbaa !200
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_mRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !131
  %8 = add i64 %7, %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !169
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %10, i64 %7
  %12 = icmp eq ptr %11, %1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !249
  br i1 %12, label %15, label %33, !prof !178

15:                                               ; preds = %4
  %16 = icmp ult i64 %14, %8
  br i1 %16, label %17, label %18, !prof !178

17:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8)
  br label %18

18:                                               ; preds = %15, %17
  %19 = icmp eq i64 %2, 0
  br i1 %19, label %126, label %20, !prof !170

20:                                               ; preds = %18
  %21 = load ptr, ptr %9, align 8, !tbaa !169
  %22 = load i64, ptr %6, align 8, !tbaa !131
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %21, i64 %22
  br label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %28, %24 ], [ %23, %20 ]
  %26 = phi i64 [ %31, %24 ], [ 0, %20 ]
  %27 = load ptr, ptr %0, align 8, !tbaa !112
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef 0)
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %25, i64 1
  %29 = load i64, ptr %6, align 8, !tbaa !131
  %30 = add i64 %29, 1
  store i64 %30, ptr %6, align 8, !tbaa !131
  %31 = add nuw i64 %26, 1
  %32 = icmp eq i64 %31, %2
  br i1 %32, label %126, label %24, !prof !250, !llvm.loop !308

33:                                               ; preds = %4
  %34 = icmp ugt i64 %8, %14
  br i1 %34, label %35, label %70

35:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %36 = load ptr, ptr %0, align 8, !tbaa !112
  store ptr %36, ptr %5, align 8, !tbaa !112
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  store i64 0, ptr %37, align 8, !tbaa !131
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  store i64 %8, ptr %38, align 8, !tbaa !249
  %39 = shl i64 %8, 5
  %40 = load ptr, ptr %36, align 8, !tbaa !95
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %36, i64 noundef %39)
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  store ptr %43, ptr %44, align 8, !tbaa !169
  %45 = load i64, ptr %37, align 8, !tbaa !131
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %43, i64 %45
  %47 = load ptr, ptr %9, align 8, !tbaa !169
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_PKSK_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %46, ptr noundef %47, ptr noundef %1)
          to label %48 unwind label %68

48:                                               ; preds = %35
  %49 = load ptr, ptr %44, align 8, !tbaa !169
  %50 = load i64, ptr %37, align 8, !tbaa !131
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %49, i64 %50
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_mRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %51, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %52 unwind label %68

52:                                               ; preds = %48
  %53 = load ptr, ptr %44, align 8, !tbaa !169
  %54 = load i64, ptr %37, align 8, !tbaa !131
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %53, i64 %54
  %56 = load ptr, ptr %9, align 8, !tbaa !169
  %57 = load i64, ptr %6, align 8, !tbaa !131
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %56, i64 %57
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_PKSK_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %55, ptr noundef %1, ptr noundef %58)
          to label %59 unwind label %68

59:                                               ; preds = %52
  %60 = load ptr, ptr %0, align 8, !tbaa !112
  %61 = load i64, ptr %6, align 8, !tbaa !131
  %62 = load i64, ptr %13, align 8, !tbaa !249
  %63 = load ptr, ptr %9, align 8, !tbaa !169
  %64 = load ptr, ptr %5, align 8, !tbaa !112
  store ptr %64, ptr %0, align 8, !tbaa !112
  %65 = load i64, ptr %37, align 8, !tbaa !131
  store i64 %65, ptr %6, align 8, !tbaa !131
  %66 = load i64, ptr %38, align 8, !tbaa !249
  store i64 %66, ptr %13, align 8, !tbaa !249
  %67 = load ptr, ptr %44, align 8, !tbaa !169
  store ptr %67, ptr %9, align 8, !tbaa !169
  store ptr %60, ptr %5, align 8, !tbaa !112
  store i64 %61, ptr %37, align 8, !tbaa !131
  store i64 %62, ptr %38, align 8, !tbaa !249
  store ptr %63, ptr %44, align 8, !tbaa !169
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %126

68:                                               ; preds = %52, %48, %35
  %69 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %83 = add nuw i64 %82, 1
  %84 = icmp eq i64 %83, %77
  br i1 %84, label %79, label %81, !llvm.loop !309

85:                                               ; preds = %87, %79
  %86 = icmp eq ptr %11, %1
  br i1 %86, label %126, label %91

87:                                               ; preds = %79, %87
  %88 = phi ptr [ %89, %87 ], [ %1, %79 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %88)
  %89 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %88, i64 1
  %90 = icmp eq ptr %89, %11
  br i1 %90, label %85, label %87, !llvm.loop !310

91:                                               ; preds = %85, %91
  %92 = phi ptr [ %94, %91 ], [ %1, %85 ]
  %93 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEaSERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %92, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %94 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %92, i64 1
  %95 = icmp eq ptr %94, %11
  br i1 %95, label %126, label %91, !llvm.loop !311

96:                                               ; preds = %70
  %97 = sub i64 0, %2
  %98 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %11, i64 %97
  %99 = icmp eq i64 %2, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96, %100
  %101 = phi ptr [ %102, %100 ], [ %98, %96 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %101)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %101, i64 1
  %103 = icmp eq ptr %102, %11
  br i1 %103, label %104, label %100, !llvm.loop !312

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
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %112, i64 -1
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %111, i64 -1
  %115 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEaSERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %114, ptr noundef nonnull align 8 dereferenceable(32) %113)
  %116 = add nsw i64 %110, -1
  %117 = icmp sgt i64 %110, 1
  br i1 %117, label %109, label %118, !llvm.loop !313

118:                                              ; preds = %109, %104
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %1, i64 %2
  %120 = icmp eq i64 %2, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %118, %121
  %122 = phi ptr [ %124, %121 ], [ %1, %118 ]
  %123 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEaSERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %122, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %124 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %122, i64 1
  %125 = icmp eq ptr %124, %119
  br i1 %125, label %126, label %121, !llvm.loop !311

126:                                              ; preds = %91, %121, %24, %85, %118, %18, %59
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  %2 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %3 = alloca %"class.xalanc_1_10::XalanVector.40", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !110
  %7 = uitofp i64 %6 to double
  %8 = fmul double %7, 1.600000e+00
  %9 = fptoui double %8 to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !98
  store ptr %11, ptr %3, align 8, !tbaa !259
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %3, i64 0, i32 1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %3, i64 0, i32 2
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %3, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEC2EmRKSK_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %9, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %15 unwind label %79

15:                                               ; preds = %1
  %16 = load i64, ptr %13, align 8, !tbaa !257
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %14, align 8, !tbaa !258
  %20 = load ptr, ptr %3, align 8, !tbaa !259
  %21 = load ptr, ptr %20, align 8, !tbaa !95
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %19)
          to label %27 unwind label %24

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #14
  unreachable

27:                                               ; preds = %15, %18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 6
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 6, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !132, !noalias !314
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load ptr, ptr %28, align 8, !tbaa !111, !noalias !314
  %34 = load ptr, ptr %33, align 8, !tbaa !95, !noalias !314
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8, !noalias !314
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 32)
          to label %38 unwind label %93

38:                                               ; preds = %32
  store ptr %37, ptr %29, align 8, !tbaa !132, !noalias !314
  %39 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %37, i64 0, i32 2
  store ptr %37, ptr %39, align 8, !tbaa !137, !noalias !314
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %37, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !140, !noalias !314
  br label %41

41:                                               ; preds = %27, %38
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %2, i64 0, i32 3
  br label %43

43:                                               ; preds = %75, %41
  %44 = phi ptr [ %29, %41 ], [ %4, %75 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !196, !noalias !141
  %46 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !137, !noalias !141
  store ptr %47, ptr %4, align 8, !tbaa !200
  %48 = load ptr, ptr %29, align 8, !tbaa !132, !noalias !317
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load ptr, ptr %28, align 8, !tbaa !111, !noalias !317
  %52 = load ptr, ptr %51, align 8, !tbaa !95, !noalias !317
  %53 = getelementptr inbounds ptr, ptr %52, i64 2
  %54 = load ptr, ptr %53, align 8, !noalias !317
  %55 = invoke noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %51, i64 noundef 32)
          to label %56 unwind label %95

56:                                               ; preds = %50
  store ptr %55, ptr %29, align 8, !tbaa !132, !noalias !317
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %55, i64 0, i32 2
  store ptr %55, ptr %57, align 8, !tbaa !137, !noalias !317
  %58 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %55, i64 0, i32 1
  store ptr %55, ptr %58, align 8, !tbaa !140, !noalias !317
  br label %59

59:                                               ; preds = %43, %56
  %60 = load ptr, ptr %29, align 8, !tbaa !132, !noalias !317
  %61 = load ptr, ptr %4, align 8, !tbaa !200
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %99, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %61, align 8, !tbaa !146
  br label %65

65:                                               ; preds = %63, %65
  %66 = phi i64 [ 0, %63 ], [ %73, %65 ]
  %67 = phi i64 [ 0, %63 ], [ %72, %65 ]
  %68 = shl i64 %67, 1
  %69 = getelementptr inbounds i8, ptr %64, i64 %66
  %70 = load i8, ptr %69, align 1, !tbaa !260
  %71 = sext i8 %70 to i64
  %72 = xor i64 %68, %71
  %73 = add nuw nsw i64 %66, 1
  %74 = icmp eq i64 %73, 8
  br i1 %74, label %75, label %65, !llvm.loop !262

75:                                               ; preds = %65
  %76 = urem i64 %72, %9
  %77 = load ptr, ptr %42, align 8, !tbaa !169
  %78 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %77, i64 %76
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %78, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %43 unwind label %97, !llvm.loop !320

79:                                               ; preds = %1
  %80 = landingpad { ptr, i32 }
          cleanup
  %81 = load i64, ptr %13, align 8, !tbaa !257
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %14, align 8, !tbaa !258
  %85 = load ptr, ptr %3, align 8, !tbaa !259
  %86 = load ptr, ptr %85, align 8, !tbaa !95
  %87 = getelementptr inbounds ptr, ptr %86, i64 3
  %88 = load ptr, ptr %87, align 8
  invoke void %88(ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef %84)
          to label %92 unwind label %89

89:                                               ; preds = %83
  %90 = landingpad { ptr, i32 }
          catch ptr null
  %91 = extractvalue { ptr, i32 } %90, 0
  call void @__clang_call_terminate(ptr %91) #14
  unreachable

92:                                               ; preds = %79, %83
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
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
  %100 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 8
  %101 = load ptr, ptr %100, align 8, !tbaa !112
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 8, i32 1
  %103 = load i64, ptr %102, align 8, !tbaa !131
  %104 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 8, i32 2
  %105 = load i64, ptr %104, align 8, !tbaa !249
  %106 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.1", ptr %0, i64 0, i32 8, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !169
  %108 = load ptr, ptr %2, align 8, !tbaa !112
  store ptr %108, ptr %100, align 8, !tbaa !112
  %109 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %2, i64 0, i32 1
  %110 = load i64, ptr %109, align 8, !tbaa !131
  store i64 %110, ptr %102, align 8, !tbaa !131
  %111 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %2, i64 0, i32 2
  %112 = load i64, ptr %111, align 8, !tbaa !249
  store i64 %112, ptr %104, align 8, !tbaa !249
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %2, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !169
  store ptr %114, ptr %106, align 8, !tbaa !169
  store ptr %101, ptr %2, align 8, !tbaa !112
  store i64 %103, ptr %109, align 8, !tbaa !131
  store i64 %105, ptr %111, align 8, !tbaa !249
  store ptr %107, ptr %113, align 8, !tbaa !169
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #13
  ret void

115:                                              ; preds = %97, %95, %93
  %116 = phi { ptr, i32 } [ %96, %95 ], [ %94, %93 ], [ %98, %97 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  br label %117

117:                                              ; preds = %115, %92
  %118 = phi { ptr, i32 } [ %116, %115 ], [ %80, %92 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #13
  resume { ptr, i32 } %118
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.2", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !132
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !178

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !111
  %7 = load ptr, ptr %6, align 8, !tbaa !95
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 32), !prof !157
  store ptr %10, ptr %2, align 8, !tbaa !132
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !137
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !140
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !132
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !137
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %26, !prof !136

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !111
  %20 = load ptr, ptr %19, align 8, !tbaa !95
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 32)
  store ptr %23, ptr %2, align 8, !tbaa !132
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %23, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !137
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %23, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !140
  br label %26

26:                                               ; preds = %13, %18
  %27 = load ptr, ptr %2, align 8, !tbaa !132
  %28 = icmp eq ptr %16, %27
  ret i1 %28
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE9push_backERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #2 comdat align 2 !prof !177 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList.2", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !132, !noalias !321
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !136

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !111, !noalias !321
  %8 = load ptr, ptr %7, align 8, !tbaa !95, !noalias !321
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !321
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 32), !noalias !321
  store ptr %11, ptr %3, align 8, !tbaa !132, !noalias !321
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !137, !noalias !321
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !140, !noalias !321
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !132, !noalias !321
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanList.2", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !238
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19, !prof !178

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !137
  br label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %0, align 8, !tbaa !111
  %24 = load ptr, ptr %23, align 8, !tbaa !95
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 32), !prof !157
  store ptr %27, ptr %16, align 8, !tbaa !238
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi ptr [ %17, %19 ], [ %27, %22 ]
  %30 = phi ptr [ %21, %19 ], [ null, %22 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !324
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %29, i64 0, i32 1
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %15, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !140
  store ptr %33, ptr %31, align 8, !tbaa !196
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %29, i64 0, i32 2
  store ptr %15, ptr %34, align 8, !tbaa !196
  %35 = load ptr, ptr %32, align 8, !tbaa !140
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDocument *, xalanc_1_10::XalanSourceTreeDocument *>::Entry>::Node", ptr %35, i64 0, i32 2
  store ptr %29, ptr %36, align 8, !tbaa !137
  store ptr %29, ptr %32, align 8, !tbaa !140
  store ptr %30, ptr %16, align 8, !tbaa !238
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_PKSK_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 5
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %139, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !131
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !169
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !249
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %139, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !169
  %28 = load i64, ptr %12, align 8, !tbaa !131
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %34, %30 ], [ %29, %26 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !112
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 0)
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %32, i64 1
  %35 = load i64, ptr %12, align 8, !tbaa !131
  %36 = add i64 %35, 1
  store i64 %36, ptr %12, align 8, !tbaa !131
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %139, label %30, !llvm.loop !326

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %76

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %42 = load ptr, ptr %0, align 8, !tbaa !112
  store ptr %42, ptr %5, align 8, !tbaa !112
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !131
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !249
  %45 = shl i64 %14, 5
  %46 = load ptr, ptr %42, align 8, !tbaa !95
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !169
  %51 = load i64, ptr %43, align 8, !tbaa !131
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !169
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_PKSK_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %74

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !169
  %56 = load i64, ptr %43, align 8, !tbaa !131
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_PKSK_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %74

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !169
  %60 = load i64, ptr %43, align 8, !tbaa !131
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !169
  %63 = load i64, ptr %12, align 8, !tbaa !131
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_PKSK_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %74

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !112
  %67 = load i64, ptr %12, align 8, !tbaa !131
  %68 = load i64, ptr %19, align 8, !tbaa !249
  %69 = load ptr, ptr %15, align 8, !tbaa !169
  %70 = load ptr, ptr %5, align 8, !tbaa !112
  store ptr %70, ptr %0, align 8, !tbaa !112
  %71 = load i64, ptr %43, align 8, !tbaa !131
  store i64 %71, ptr %12, align 8, !tbaa !131
  %72 = load i64, ptr %44, align 8, !tbaa !249
  store i64 %72, ptr %19, align 8, !tbaa !249
  %73 = load ptr, ptr %50, align 8, !tbaa !169
  store ptr %73, ptr %15, align 8, !tbaa !169
  store ptr %66, ptr %5, align 8, !tbaa !112
  store i64 %67, ptr %43, align 8, !tbaa !131
  store i64 %68, ptr %44, align 8, !tbaa !249
  store ptr %69, ptr %50, align 8, !tbaa !169
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %139

74:                                               ; preds = %58, %54, %41
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %87)
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %87, i64 1
  %89 = icmp eq ptr %88, %3
  br i1 %89, label %84, label %86, !llvm.loop !327

90:                                               ; preds = %84, %90
  %91 = phi ptr [ %92, %90 ], [ %1, %84 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %91)
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %91, i64 1
  %93 = icmp eq ptr %92, %17
  br i1 %93, label %94, label %90, !llvm.loop !328

94:                                               ; preds = %90, %84
  %95 = ashr exact i64 %79, 5
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %139

97:                                               ; preds = %94, %97
  %98 = phi i64 [ %104, %97 ], [ %95, %94 ]
  %99 = phi ptr [ %103, %97 ], [ %1, %94 ]
  %100 = phi ptr [ %102, %97 ], [ %2, %94 ]
  %101 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEaSERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %99, ptr noundef nonnull align 8 dereferenceable(32) %100)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %100, i64 1
  %103 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %99, i64 1
  %104 = add nsw i64 %98, -1
  %105 = icmp sgt i64 %98, 1
  br i1 %105, label %97, label %139, !llvm.loop !329

106:                                              ; preds = %76
  %107 = sub nsw i64 0, %9
  %108 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %17, i64 %107
  %109 = icmp eq ptr %3, %2
  br i1 %109, label %114, label %110

110:                                              ; preds = %106, %110
  %111 = phi ptr [ %112, %110 ], [ %108, %106 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %111)
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %111, i64 1
  %113 = icmp eq ptr %112, %17
  br i1 %113, label %114, label %110, !llvm.loop !330

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
  %125 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %124, i64 -1
  %126 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %123, i64 -1
  %127 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEaSERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %126, ptr noundef nonnull align 8 dereferenceable(32) %125)
  %128 = add nsw i64 %122, -1
  %129 = icmp sgt i64 %122, 1
  br i1 %129, label %121, label %119, !llvm.loop !313

130:                                              ; preds = %119, %130
  %131 = phi i64 [ %137, %130 ], [ %9, %119 ]
  %132 = phi ptr [ %136, %130 ], [ %1, %119 ]
  %133 = phi ptr [ %135, %130 ], [ %2, %119 ]
  %134 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEaSERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %132, ptr noundef nonnull align 8 dereferenceable(32) %133)
  %135 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %133, i64 1
  %136 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %132, i64 1
  %137 = add nsw i64 %131, -1
  %138 = icmp sgt i64 %131, 1
  br i1 %138, label %130, label %139, !llvm.loop !329

139:                                              ; preds = %97, %130, %30, %94, %119, %24, %65, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !131
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !249
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !169
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %11, i64 %5
  %13 = load ptr, ptr %0, align 8, !tbaa !112
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 0)
  %14 = load i64, ptr %4, align 8, !tbaa !131
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !131
  br label %38

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %22 = load ptr, ptr %0, align 8, !tbaa !112
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEC2ERKSN_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %23 unwind label %36

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !112
  %25 = load i64, ptr %4, align 8, !tbaa !131
  %26 = load i64, ptr %6, align 8, !tbaa !249
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !169
  %29 = load ptr, ptr %3, align 8, !tbaa !112
  store ptr %29, ptr %0, align 8, !tbaa !112
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !131
  store i64 %31, ptr %4, align 8, !tbaa !131
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !249
  store i64 %33, ptr %6, align 8, !tbaa !249
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !169
  store ptr %35, ptr %27, align 8, !tbaa !169
  store ptr %24, ptr %3, align 8, !tbaa !112
  store i64 %25, ptr %30, align 8, !tbaa !131
  store i64 %26, ptr %32, align 8, !tbaa !249
  store ptr %28, ptr %34, align 8, !tbaa !169
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  br label %38

36:                                               ; preds = %16
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  resume { ptr, i32 } %37

38:                                               ; preds = %23, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %4 = load ptr, ptr %0, align 8, !tbaa !112
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEC2ERKSN_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !112
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !131
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !249
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !169
  %12 = load ptr, ptr %3, align 8, !tbaa !112
  store ptr %12, ptr %0, align 8, !tbaa !112
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !131
  store i64 %14, ptr %6, align 8, !tbaa !131
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !249
  store i64 %16, ptr %8, align 8, !tbaa !249
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !169
  store ptr %18, ptr %10, align 8, !tbaa !169
  store ptr %5, ptr %3, align 8, !tbaa !112
  store i64 %7, ptr %13, align 8, !tbaa !131
  store i64 %9, ptr %15, align 8, !tbaa !249
  store ptr %11, ptr %17, align 8, !tbaa !169
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEC2ERKSN_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  store ptr %2, ptr %0, align 8, !tbaa !112
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !131
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %37, label %12, !prof !178

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !112
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !131
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !249
  %16 = shl i64 %13, 5
  %17 = load ptr, ptr %2, align 8, !tbaa !95
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !169
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !169
  %24 = load i64, ptr %9, align 8, !tbaa !131
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_PKSK_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %35

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !112
  %28 = load i64, ptr %6, align 8, !tbaa !131
  %29 = load i64, ptr %7, align 8, !tbaa !249
  %30 = load ptr, ptr %8, align 8, !tbaa !169
  %31 = load ptr, ptr %5, align 8, !tbaa !112
  store ptr %31, ptr %0, align 8, !tbaa !112
  %32 = load i64, ptr %14, align 8, !tbaa !131
  store i64 %32, ptr %6, align 8, !tbaa !131
  %33 = load i64, ptr %15, align 8, !tbaa !249
  store i64 %33, ptr %7, align 8, !tbaa !249
  %34 = load ptr, ptr %21, align 8, !tbaa !169
  store ptr %34, ptr %8, align 8, !tbaa !169
  store ptr %27, ptr %5, align 8, !tbaa !112
  store i64 %28, ptr %14, align 8, !tbaa !131
  store i64 %29, ptr %15, align 8, !tbaa !249
  store ptr %30, ptr %21, align 8, !tbaa !169
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %45

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  resume { ptr, i32 } %36

37:                                               ; preds = %4
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %45, label %39, !prof !136

39:                                               ; preds = %37
  %40 = shl i64 %3, 5
  %41 = load ptr, ptr %2, align 8, !tbaa !95
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40), !prof !157
  store ptr %44, ptr %8, align 8, !tbaa !169
  store i64 %3, ptr %7, align 8, !tbaa !249
  br label %45

45:                                               ; preds = %37, %39, %26
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEaSERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.40", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %73, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !257
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !171
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %12 = load ptr, ptr %0, align 8, !tbaa !259
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !259
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !171
  %16 = load i64, ptr %6, align 8, !tbaa !257
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !258
  %19 = load ptr, ptr %3, align 8, !tbaa !259
  store ptr %19, ptr %0, align 8, !tbaa !259
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !171
  store i64 %21, ptr %14, align 8, !tbaa !171
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !257
  store i64 %23, ptr %6, align 8, !tbaa !257
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !258
  store ptr %25, ptr %17, align 8, !tbaa !258
  store ptr %13, ptr %3, align 8, !tbaa !259
  store i64 %15, ptr %20, align 8, !tbaa !171
  store i64 %16, ptr %22, align 8, !tbaa !257
  store ptr %18, ptr %24, align 8, !tbaa !258
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !95
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #14
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  br label %73

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !258
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !171
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53

44:                                               ; preds = %42
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !258
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE6insertEPSH_PKSH_SN_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !171
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !171
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !258
  %56 = ptrtoint ptr %54 to i64
  %57 = ptrtoint ptr %55 to i64
  %58 = sub i64 %56, %57
  %59 = ashr exact i64 %58, 3
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %53
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.40", ptr %0, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !258
  br label %64

64:                                               ; preds = %61, %64
  %65 = phi i64 [ %71, %64 ], [ %59, %61 ]
  %66 = phi ptr [ %70, %64 ], [ %63, %61 ]
  %67 = phi ptr [ %69, %64 ], [ %55, %61 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !200
  store ptr %68, ptr %66, align 8, !tbaa !200
  %69 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %67, i64 1
  %70 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %66, i64 1
  %71 = add nsw i64 %65, -1
  %72 = icmp sgt i64 %65, 1
  br i1 %72, label %64, label %73, !llvm.loop !278

73:                                               ; preds = %64, %53, %34, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEC2EmRKSK_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  store ptr %3, ptr %0, align 8, !tbaa !112
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  store ptr %3, ptr %5, align 8, !tbaa !112
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_mRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef null, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %8 unwind label %21

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %0, align 8, !tbaa !112
  %14 = load i64, ptr %6, align 8, !tbaa !131
  %15 = load i64, ptr %12, align 8, !tbaa !249
  %16 = load ptr, ptr %11, align 8, !tbaa !169
  %17 = load ptr, ptr %5, align 8, !tbaa !112
  store ptr %17, ptr %0, align 8, !tbaa !112
  %18 = load i64, ptr %7, align 8, !tbaa !131
  store i64 %18, ptr %6, align 8, !tbaa !131
  %19 = load i64, ptr %10, align 8, !tbaa !249
  store i64 %19, ptr %12, align 8, !tbaa !249
  %20 = load ptr, ptr %9, align 8, !tbaa !169
  store ptr %20, ptr %11, align 8, !tbaa !169
  store ptr %13, ptr %5, align 8, !tbaa !112
  store i64 %14, ptr %7, align 8, !tbaa !131
  store i64 %15, ptr %10, align 8, !tbaa !249
  store ptr %16, ptr %9, align 8, !tbaa !169
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  ret void

21:                                               ; preds = %4
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  resume { ptr, i32 } %22
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!93}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92}
!35 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1016XMLParserLiaisonC2Ev, i64 2}
!36 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019XercesParserLiaisonC1ERN11xercesc_2_713MemoryManagerE, i64 2}
!37 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD2Ev, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison5resetEv, i64 2}
!38 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD2Ev, ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEED2Ev, i64 2}
!39 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD2Ev, ptr @_ZN11xalanc_1_1019XercesParserLiaisonD1Ev, i64 2}
!40 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD2Ev, ptr @_ZN11xalanc_1_1016XMLParserLiaisonD2Ev, i64 2}
!41 = !{ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEED2Ev, ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE15doRemoveEntriesEv, i64 2}
!42 = !{ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev, i64 2}
!43 = !{ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEED2Ev, ptr @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEED2Ev, i64 4}
!44 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison5resetEv, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison16getMemoryManagerEv, i64 2}
!45 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison5resetEv, ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE5clearEv, i64 2}
!46 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison5resetEv, ptr @_ZN11xalanc_1_1019XercesParserLiaison5resetEv, i64 2}
!47 = !{ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE5clearEv, ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE15doRemoveEntriesEv, i64 2}
!48 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison19setExecutionContextERNS_16ExecutionContextE, ptr @_ZN11xalanc_1_1019XercesParserLiaison19setExecutionContextERNS_16ExecutionContextE, i64 1}
!49 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERNS1_15DocumentHandlerERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1019XercesParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERNS1_15DocumentHandlerERKNS_14XalanDOMStringE, i64 1}
!50 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison12ensureReaderEv, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison12createReaderEv, i64 1}
!51 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison12ensureReaderEv, ptr @_ZNK11xalanc_1_1019XercesParserLiaison16getUseValidationEv, i64 1}
!52 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison12ensureReaderEv, ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison15getErrorHandlerEv, i64 1}
!53 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison12ensureReaderEv, ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison17getEntityResolverEv, i64 1}
!54 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison12ensureReaderEv, ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison25getExternalSchemaLocationEv, i64 1}
!55 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison12ensureReaderEv, ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison36getExternalNoNamespaceSchemaLocationEv, i64 1}
!56 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison16getMemoryManagerEv, i64 1}
!57 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison29createXalanSourceTreeDocumentEv, i64 1}
!58 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1029XalanSourceTreeContentHandlerC1ERN11xercesc_2_713MemoryManagerEPNS_23XalanSourceTreeDocumentEb, i64 1}
!59 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERNS1_14ContentHandlerERKNS_14XalanDOMStringEPNS1_10DTDHandlerEPNS1_14LexicalHandlerE, i64 1}
!60 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1029XalanSourceTreeContentHandlerD1Ev, i64 1}
!61 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison29createXalanSourceTreeDocumentEv, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison16getMemoryManagerEv, i64 1}
!62 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison29createXalanSourceTreeDocumentEv, ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument6createERN11xercesc_2_713MemoryManagerEbmmmmmm, i64 1}
!63 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison29createXalanSourceTreeDocumentEv, ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEEixERKS3_, i64 1}
!64 = !{ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison11mapDocumentEPKNS_13XalanDocumentE, ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE4findERKS3_, i64 1}
!65 = !{ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison9getIndentEv, ptr @_ZNK11xalanc_1_1019XercesParserLiaison9getIndentEv, i64 1}
!66 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison16setUseValidationEb, ptr @_ZN11xalanc_1_1019XercesParserLiaison16setUseValidationEb, i64 2}
!67 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERNS1_14ContentHandlerERKNS_14XalanDOMStringEPNS1_10DTDHandlerEPNS1_14LexicalHandlerE, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison12ensureReaderEv, i64 1}
!68 = !{ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison15getErrorHandlerEv, ptr @_ZNK11xalanc_1_1019XercesParserLiaison15getErrorHandlerEv, i64 1}
!69 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison15setErrorHandlerEPN11xercesc_2_712ErrorHandlerE, ptr @_ZN11xalanc_1_1019XercesParserLiaison15setErrorHandlerEPN11xercesc_2_712ErrorHandlerE, i64 2}
!70 = !{ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison17getEntityResolverEv, ptr @_ZNK11xalanc_1_1019XercesParserLiaison17getEntityResolverEv, i64 1}
!71 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison17setEntityResolverEPN11xercesc_2_714EntityResolverE, ptr @_ZN11xalanc_1_1019XercesParserLiaison17setEntityResolverEPN11xercesc_2_714EntityResolverE, i64 2}
!72 = !{ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison25getExternalSchemaLocationEv, ptr @_ZNK11xalanc_1_1019XercesParserLiaison25getExternalSchemaLocationEv, i64 1}
!73 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison25setExternalSchemaLocationEPKt, ptr @_ZN11xalanc_1_1019XercesParserLiaison25setExternalSchemaLocationEPKt, i64 1}
!74 = !{ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison36getExternalNoNamespaceSchemaLocationEv, ptr @_ZNK11xalanc_1_1019XercesParserLiaison36getExternalNoNamespaceSchemaLocationEv, i64 1}
!75 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison36setExternalNoNamespaceSchemaLocationEPKt, ptr @_ZN11xalanc_1_1019XercesParserLiaison36setExternalNoNamespaceSchemaLocationEPKt, i64 1}
!76 = !{ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEEixERKS3_, ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE4findERKS3_, i64 1}
!77 = !{ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEEixERKS3_, ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE13doCreateEntryERKS3_PKS5_, i64 1}
!78 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison12createReaderEv, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison16getMemoryManagerEv, i64 1}
!79 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison12createReaderEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 1}
!80 = !{ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison12createReaderEv, ptr @_ZN11xercesc_2_717SAX2XMLReaderImplC1EPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, i64 1}
!81 = !{ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE15doRemoveEntriesEv, ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS3_S5_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS8_5EntryEEENS_9XalanListISH_E4NodeEEEEE, i64 1}
!82 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEED2Ev, i64 29}
!83 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_, ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm, i64 1}
!84 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_, ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_, i64 1}
!85 = !{ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE13doCreateEntryERKS3_PKS5_, ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_mRKSK_, i64 1}
!86 = !{ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE13doCreateEntryERKS3_PKS5_, ptr @_ZNK11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5emptyEv, i64 1}
!87 = !{ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE13doCreateEntryERKS3_PKS5_, ptr @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE9push_backERKSA_, i64 1}
!88 = !{ptr @_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE13doCreateEntryERKS3_PKS5_, ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_, i64 1}
!89 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_mRKSK_, ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE9doReserveEm, i64 1}
!90 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_mRKSK_, ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm, i64 29}
!91 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEC2ERKSN_RN11xercesc_2_713MemoryManagerEm, i64 1}
!92 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev, i64 1}
!93 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!94 = !{!"function_entry_count", i64 0}
!95 = !{!96, !96, i64 0}
!96 = !{!"vtable pointer", !97, i64 0}
!97 = !{!"Simple C++ TBAA"}
!98 = !{!99, !102, i64 8}
!99 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEEE", !100, i64 0, !101, i64 1, !102, i64 8, !104, i64 16, !105, i64 24, !105, i64 32, !106, i64 40, !106, i64 64, !107, i64 88, !105, i64 120, !105, i64 128}
!100 = !{!"_ZTSN11xalanc_1_1011XalanHasherIPKNS_13XalanDocumentEEE"}
!101 = !{!"_ZTSSt8equal_toIPKN11xalanc_1_1013XalanDocumentEE"}
!102 = !{!"any pointer", !103, i64 0}
!103 = !{!"omnipotent char", !97, i64 0}
!104 = !{!"float", !103, i64 0}
!105 = !{!"long", !103, i64 0}
!106 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !102, i64 0, !102, i64 8, !102, i64 16}
!107 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEE", !102, i64 0, !105, i64 8, !105, i64 16, !102, i64 24}
!108 = !{!99, !104, i64 16}
!109 = !{!99, !105, i64 24}
!110 = !{!99, !105, i64 32}
!111 = !{!106, !102, i64 0}
!112 = !{!107, !102, i64 0}
!113 = !{!99, !105, i64 128}
!114 = !{!115, !120, i64 432}
!115 = !{!"_ZTSN11xalanc_1_1028XalanSourceTreeParserLiaisonE", !116, i64 0, !117, i64 8, !99, i64 296, !120, i64 432, !102, i64 440}
!116 = !{!"_ZTSN11xalanc_1_1016XMLParserLiaisonE"}
!117 = !{!"_ZTSN11xalanc_1_1019XercesParserLiaisonE", !116, i64 0, !118, i64 8, !119, i64 16, !120, i64 20, !120, i64 21, !120, i64 22, !120, i64 23, !102, i64 24, !102, i64 32, !121, i64 40, !121, i64 80, !123, i64 120, !120, i64 256, !120, i64 257, !120, i64 258, !120, i64 259, !102, i64 264, !102, i64 272, !102, i64 280}
!118 = !{!"_ZTSN11xercesc_2_712ErrorHandlerE"}
!119 = !{!"int", !103, i64 0}
!120 = !{!"bool", !103, i64 0}
!121 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !122, i64 0, !119, i64 32}
!122 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !102, i64 0, !105, i64 8, !105, i64 16, !102, i64 24}
!123 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEEE", !100, i64 0, !101, i64 1, !102, i64 8, !104, i64 16, !105, i64 24, !105, i64 32, !124, i64 40, !124, i64 64, !125, i64 88, !105, i64 120, !105, i64 128}
!124 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !102, i64 0, !102, i64 8, !102, i64 16}
!125 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEE", !102, i64 0, !105, i64 8, !105, i64 16, !102, i64 24}
!126 = !{!115, !102, i64 440}
!127 = !{!"function_entry_count", i64 2}
!128 = !{!"branch_weights", i32 2, i32 0}
!129 = !{!"branch_weights", i32 1, i32 1}
!130 = !{!"VP", i32 0, i64 1, i64 -7094552155482814685, i64 1}
!131 = !{!107, !105, i64 8}
!132 = !{!106, !102, i64 8}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv: argument 0"}
!135 = distinct !{!135, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv"}
!136 = !{!"branch_weights", i32 0, i32 1}
!137 = !{!138, !102, i64 24}
!138 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE4NodeE", !139, i64 0, !102, i64 16, !102, i64 24}
!139 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE5EntryE", !102, i64 0, !120, i64 8}
!140 = !{!138, !102, i64 16}
!141 = !{}
!142 = !{!143}
!143 = distinct !{!143, !144, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!144 = distinct !{!144, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!145 = !{!"branch_weights", i32 0, i32 2}
!146 = !{!139, !102, i64 0}
!147 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!148 = distinct !{!148, !149, !150}
!149 = !{!"llvm.loop.mustprogress"}
!150 = !{!"llvm.loop.unroll.disable"}
!151 = !{!"VP", i32 0, i64 2, i64 -6545804599405096072, i64 2}
!152 = !{!153, !155}
!153 = distinct !{!153, !154, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv: argument 0"}
!154 = distinct !{!154, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv"}
!155 = distinct !{!155, !156, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE5beginEv: argument 0"}
!156 = distinct !{!156, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE5beginEv"}
!157 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!158 = !{!159, !161}
!159 = distinct !{!159, !160, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!160 = distinct !{!160, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!161 = distinct !{!161, !162, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE3endEv: argument 0"}
!162 = distinct !{!162, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE3endEv"}
!163 = !{!"branch_weights", i32 0, i32 3}
!164 = !{!"branch_weights", i32 2, i32 1}
!165 = !{!166, !102, i64 8}
!166 = !{!"_ZTSSt4pairIKPKN11xalanc_1_1013XalanDocumentEPNS0_23XalanSourceTreeDocumentEE", !102, i64 0, !102, i64 8}
!167 = !{!"VP", i32 0, i64 1, i64 5828056571917611531, i64 1}
!168 = distinct !{!168, !149, !150}
!169 = !{!107, !102, i64 24}
!170 = !{!"branch_weights", i32 1, i32 127}
!171 = !{!172, !105, i64 8}
!172 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEE", !102, i64 0, !105, i64 8, !105, i64 16, !102, i64 24}
!173 = !{!"branch_weights", i32 28, i32 1}
!174 = !{!"branch_weights", i32 127, i32 1729}
!175 = distinct !{!175, !149, !150}
!176 = !{!99, !105, i64 120}
!177 = !{!"function_entry_count", i64 1}
!178 = !{!"branch_weights", i32 1, i32 0}
!179 = !{!"VP", i32 0, i64 1, i64 7628608090439886450, i64 1}
!180 = !{!"VP", i32 0, i64 1, i64 -4754814850092455589, i64 1}
!181 = !{!"VP", i32 0, i64 1, i64 7570617993136639242, i64 1}
!182 = !{!"VP", i32 0, i64 1, i64 7851282755481018684, i64 1}
!183 = !{!"VP", i32 0, i64 1, i64 -6609462149415823750, i64 1}
!184 = !{!"VP", i32 0, i64 1, i64 4709528416169837986, i64 1}
!185 = !{!"VP", i32 0, i64 1, i64 -8671909829167658592, i64 1}
!186 = !{!"VP", i32 0, i64 1, i64 -6545804599405096072, i64 1}
!187 = !{!"VP", i32 0, i64 1, i64 8148620324794952472, i64 1}
!188 = !{!189, !102, i64 24}
!189 = !{!"_ZTSN11xalanc_1_1029XalanSourceTreeContentHandlerE", !190, i64 0, !191, i64 8, !192, i64 16, !102, i64 24, !102, i64 32, !193, i64 40, !102, i64 72, !194, i64 80, !120, i64 112, !121, i64 120, !120, i64 160}
!190 = !{!"_ZTSN11xercesc_2_714ContentHandlerE"}
!191 = !{!"_ZTSN11xercesc_2_710DTDHandlerE"}
!192 = !{!"_ZTSN11xercesc_2_714LexicalHandlerE"}
!193 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEE", !102, i64 0, !105, i64 8, !105, i64 16, !102, i64 24}
!194 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEE", !102, i64 0, !105, i64 8, !105, i64 16, !102, i64 24}
!195 = !{i8 0, i8 2}
!196 = !{!102, !102, i64 0}
!197 = !{!198}
!198 = distinct !{!198, !199, !"_ZNK11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE4findERKS3_: argument 0"}
!199 = distinct !{!199, !"_ZNK11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE4findERKS3_"}
!200 = !{!201, !102, i64 0}
!201 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEE", !102, i64 0}
!202 = !{!203, !205, !207}
!203 = distinct !{!203, !204, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!204 = distinct !{!204, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!205 = distinct !{!205, !206, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE3endEv: argument 0"}
!206 = distinct !{!206, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE3endEv"}
!207 = distinct !{!207, !208, !"_ZNK11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE3endEv: argument 0"}
!208 = distinct !{!208, !"_ZNK11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE3endEv"}
!209 = !{!210, !212}
!210 = distinct !{!210, !211, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!211 = distinct !{!211, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!212 = distinct !{!212, !213, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE3endEv: argument 0"}
!213 = distinct !{!213, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE3endEv"}
!214 = !{!"VP", i32 0, i64 1, i64 -3189190270770692834, i64 1}
!215 = !{!"VP", i32 0, i64 1, i64 -4877416277459747062, i64 1}
!216 = !{!"VP", i32 0, i64 1, i64 1274333850611187003, i64 1}
!217 = !{!"VP", i32 0, i64 1, i64 -2796115109740621878, i64 1}
!218 = !{!219, !221}
!219 = distinct !{!219, !220, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!220 = distinct !{!220, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!221 = distinct !{!221, !222, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE3endEv: argument 0"}
!222 = distinct !{!222, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE3endEv"}
!223 = !{!"function_entry_count", i64 5}
!224 = !{!"function_entry_count", i64 4}
!225 = !{!"branch_weights", i32 1, i32 3}
!226 = !{!227}
!227 = distinct !{!227, !228, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv: argument 0"}
!228 = distinct !{!228, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv"}
!229 = !{!230}
!230 = distinct !{!230, !231, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!231 = distinct !{!231, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!232 = !{!"branch_weights", i32 0, i32 4}
!233 = !{!"branch_weights", i32 3, i32 1}
!234 = !{!235}
!235 = distinct !{!235, !236, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEppEi: argument 0"}
!236 = distinct !{!236, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEppEi"}
!237 = distinct !{!237, !149, !150}
!238 = !{!106, !102, i64 16}
!239 = !{!"branch_weights", i32 3, i32 0}
!240 = !{!"VP", i32 0, i64 3, i64 -7405368087501025645, i64 3}
!241 = !{!242}
!242 = distinct !{!242, !243, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE5beginEv: argument 0"}
!243 = distinct !{!243, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE5beginEv"}
!244 = !{!245, !242}
!245 = distinct !{!245, !246, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv: argument 0"}
!246 = distinct !{!246, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv"}
!247 = distinct !{!247, !149, !150}
!248 = !{!"function_entry_count", i64 3}
!249 = !{!107, !105, i64 16}
!250 = !{!"branch_weights", i32 127, i32 3585}
!251 = distinct !{!251, !149, !150}
!252 = !{!253}
!253 = distinct !{!253, !254, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!254 = distinct !{!254, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!255 = !{!139, !120, i64 8}
!256 = !{!"function_entry_count", i64 29}
!257 = !{!172, !105, i64 16}
!258 = !{!172, !102, i64 24}
!259 = !{!172, !102, i64 0}
!260 = !{!103, !103, i64 0}
!261 = !{!"branch_weights", i32 1, i32 7}
!262 = distinct !{!262, !149, !150}
!263 = distinct !{!263, !149, !150}
!264 = !{!265}
!265 = distinct !{!265, !266, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE3endEv: argument 0"}
!266 = distinct !{!266, !"_ZN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEE3endEv"}
!267 = !{!268, !265}
!268 = distinct !{!268, !269, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!269 = distinct !{!269, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!270 = distinct !{!270, !149, !150}
!271 = distinct !{!271, !149, !150}
!272 = !{!"function_entry_count", i64 30}
!273 = !{!"branch_weights", i32 30, i32 0}
!274 = !{!"branch_weights", i32 29, i32 1}
!275 = distinct !{!275, !149, !150}
!276 = distinct !{!276, !149, !150}
!277 = distinct !{!277, !149, !150}
!278 = distinct !{!278, !149, !150}
!279 = distinct !{!279, !149, !150}
!280 = distinct !{!280, !149, !150}
!281 = !{!282}
!282 = distinct !{!282, !283, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!283 = distinct !{!283, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!284 = !{!285}
!285 = distinct !{!285, !286, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEmmEv: argument 0"}
!286 = distinct !{!286, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEmmEv"}
!287 = !{!288}
!288 = distinct !{!288, !289, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!289 = distinct !{!289, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!290 = !{!291}
!291 = distinct !{!291, !292, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!292 = distinct !{!292, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!293 = !{!294}
!294 = distinct !{!294, !295, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEmmEv: argument 0"}
!295 = distinct !{!295, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEmmEv"}
!296 = !{!297}
!297 = distinct !{!297, !298, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!298 = distinct !{!298, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!299 = !{!300}
!300 = distinct !{!300, !301, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEmmEv: argument 0"}
!301 = distinct !{!301, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEmmEv"}
!302 = !{!303}
!303 = distinct !{!303, !304, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!304 = distinct !{!304, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!305 = !{!306}
!306 = distinct !{!306, !307, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEmmEv: argument 0"}
!307 = distinct !{!307, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEmmEv"}
!308 = distinct !{!308, !149, !150}
!309 = distinct !{!309, !149, !150}
!310 = distinct !{!310, !149, !150}
!311 = distinct !{!311, !149, !150}
!312 = distinct !{!312, !149, !150}
!313 = distinct !{!313, !149, !150}
!314 = !{!315}
!315 = distinct !{!315, !316, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv: argument 0"}
!316 = distinct !{!316, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv"}
!317 = !{!318}
!318 = distinct !{!318, !319, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!319 = distinct !{!319, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!320 = distinct !{!320, !149, !150}
!321 = !{!322}
!322 = distinct !{!322, !323, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!323 = distinct !{!323, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!324 = !{i64 0, i64 8, !196, i64 8, i64 1, !325}
!325 = !{!120, !120, i64 0}
!326 = distinct !{!326, !149, !150}
!327 = distinct !{!327, !149, !150}
!328 = distinct !{!328, !149, !150}
!329 = distinct !{!329, !149, !150}
!330 = distinct !{!330, !149, !150}
