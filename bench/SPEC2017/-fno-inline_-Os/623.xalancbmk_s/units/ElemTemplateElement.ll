; ModuleID = 'ElemTemplateElement.cpp'
source_filename = "ElemTemplateElement.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanQNameByReference" = type { %"class.xalanc_1_10::XalanQName", ptr, ptr }
%"class.xalanc_1_10::XalanQName" = type { ptr }
%"class.xalanc_1_10::ElemTemplateElement" = type <{ %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::NamespacesHandler", i32, [4 x i8], ptr, ptr, ptr, %union.anon, %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", i16, [6 x i8] }>
%"class.xalanc_1_10::PrefixResolver" = type { ptr }
%"class.xalanc_1_10::NamespacesHandler" = type { %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanVector.1", %"class.xalanc_1_10::XalanVector.2", %"class.xalanc_1_10::XalanMap" }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap" = type { %"struct.xalanc_1_10::DOMStringPointerHashFunction", %"struct.xalanc_1_10::pointer_equal", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanVector.3", i64, i64 }
%"struct.xalanc_1_10::DOMStringPointerHashFunction" = type { i8 }
%"struct.xalanc_1_10::pointer_equal" = type { i8 }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%union.anon = type { ptr }
%"class.xalanc_1_10::ElemTemplateElement::LocatorProxy" = type { %"class.xalanc_1_10::XalanLocator", i64, i64, ptr }
%"class.xalanc_1_10::XalanLocator" = type { %"class.xercesc_2_7::Locator" }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xalanc_1_10::TracerEvent" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::Stylesheet" = type { %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanVector.4", %"class.xalanc_1_10::XalanVector.5", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanVector.6", i64, %"class.xalanc_1_10::XalanDeque", %"class.xalanc_1_10::XalanDeque.8", i8, %"class.xalanc_1_10::XalanMap.10", ptr, %"class.xalanc_1_10::XalanVector.15", %"class.xalanc_1_10::XalanMap.16", %"class.xalanc_1_10::XalanVector.21", double, %"class.xalanc_1_10::XalanMap.22", %"struct.xalanc_1_10::XalanMapIterator", %"class.xalanc_1_10::XalanVector.25", %"class.xalanc_1_10::XalanMap.22", %"struct.xalanc_1_10::XalanMapIterator", %"class.xalanc_1_10::XalanVector.25", %"class.xalanc_1_10::XalanVector.25", %"class.xalanc_1_10::XalanVector.25", %"class.xalanc_1_10::XalanVector.25", %"class.xalanc_1_10::XalanVector.25", %"class.xalanc_1_10::XalanVector.25", i64, %"class.xalanc_1_10::XalanVector.26", %"class.xalanc_1_10::NamespacesHandler" }
%"class.xalanc_1_10::XalanVector.4" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.5" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.6" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDeque" = type { ptr, i64, %"class.xalanc_1_10::XalanVector.7", %"class.xalanc_1_10::XalanVector.7" }
%"class.xalanc_1_10::XalanVector.7" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDeque.8" = type { ptr, i64, %"class.xalanc_1_10::XalanVector.9", %"class.xalanc_1_10::XalanVector.9" }
%"class.xalanc_1_10::XalanVector.9" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.10" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.13", %"class.xalanc_1_10::XalanList.13", %"class.xalanc_1_10::XalanVector.14", i64, i64 }
%"struct.xalanc_1_10::DOMStringHashFunction" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList.13" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.14" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.15" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.16" = type { %"struct.xalanc_1_10::XalanHashMemberReference", %"struct.std::equal_to.17", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.19", %"class.xalanc_1_10::XalanList.19", %"class.xalanc_1_10::XalanVector.20", i64, i64 }
%"struct.xalanc_1_10::XalanHashMemberReference" = type { i8 }
%"struct.std::equal_to.17" = type { i8 }
%"class.xalanc_1_10::XalanList.19" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.20" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.21" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.22" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.23", %"class.xalanc_1_10::XalanList.23", %"class.xalanc_1_10::XalanVector.24", i64, i64 }
%"class.xalanc_1_10::XalanList.23" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.24" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanMapIterator" = type { %"struct.xalanc_1_10::XalanListIteratorBase" }
%"struct.xalanc_1_10::XalanListIteratorBase" = type { ptr }
%"class.xalanc_1_10::XalanVector.25" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.26" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathConstructionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString" = type { ptr, ptr }
%"class.xalanc_1_10::ElemTextLiteral" = type <{ %"class.xalanc_1_10::ElemTemplateElement.base", i8, [5 x i8], ptr, i32, [4 x i8] }>
%"class.xalanc_1_10::ElemTemplateElement.base" = type <{ %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::NamespacesHandler", i32, [4 x i8], ptr, ptr, ptr, %union.anon, %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", i16 }>
%"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString" = type { ptr, ptr }
%"class.xalanc_1_10::StylesheetRoot" = type { %"class.xalanc_1_10::Stylesheet", %"class.xalanc_1_10::XalanDOMString", i32, [4 x i8], %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", i8, [7 x i8], %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", i32, %"class.xalanc_1_10::XalanVector.27", i8, %"class.xalanc_1_10::XalanVector.15", ptr, ptr, ptr, i8, i8, i32, i8, i64, %"class.xalanc_1_10::XalanMap.28" }
%"class.xalanc_1_10::XalanVector.27" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.28" = type { %"struct.xalanc_1_10::XalanHashMemberPointer", %"struct.xalanc_1_10::pointer_equal.29", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.31", %"class.xalanc_1_10::XalanList.31", %"class.xalanc_1_10::XalanVector.32", i64, i64 }
%"struct.xalanc_1_10::XalanHashMemberPointer" = type { i8 }
%"struct.xalanc_1_10::pointer_equal.29" = type { i8 }
%"class.xalanc_1_10::XalanList.31" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.32" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ElemCallTemplate" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr, ptr }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1010Stylesheet20getNamespacesHandlerEv = comdat any

$_ZN11xalanc_1_1010Stylesheet13getNamespacesEv = comdat any

$_ZNK11xalanc_1_1010Stylesheet19getXSLTNamespaceURIEv = comdat any

$_ZNK11xalanc_1_1010Stylesheet31getCurrentIncludeBaseIdentifierEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE5emptyEv = comdat any

$_ZNK11xalanc_1_1010Stylesheet17getBaseIdentifierEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE4backEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1024XPathConstructionContext16getMemoryManagerEv = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv = comdat any

$_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_ = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement9hasParamsEv = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement12hasVariablesEv = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement17hasDirectTemplateEv = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement18hasSingleTextChildEv = comdat any

$_ZN11xalanc_1_106assignERNS_14XalanDOMStringEPKtj = comdat any

$_ZNK11xalanc_1_1015ElemTextLiteral7getTextEv = comdat any

$_ZNK11xalanc_1_1015ElemTextLiteral9getLengthEv = comdat any

$_ZN11xalanc_1_107reserveERNS_14XalanDOMStringEj = comdat any

$_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1014XalanDOMString6assignEPKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6assignEPKtj = comdat any

$_ZN11xalanc_1_1014XalanDOMString6appendEPKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString7reserveEj = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZSt4copyIPKtPtET0_T_S4_S3_ = comdat any

$_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_ = comdat any

$_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZSt12__miter_baseIPKtET_S2_ = comdat any

$_ZSt12__niter_wrapIPtET_RKS1_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPKtET_S2_ = comdat any

$_ZSt12__niter_baseIPtET_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPtET_S1_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString6lengthEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString4sizeEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_ = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev = comdat any

$_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringC2ERS0_ = comdat any

$_ZNK11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedString3getEv = comdat any

$_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv = comdat any

$_ZNK11xalanc_1_1010Stylesheet17getStylesheetRootEv = comdat any

$_ZNK11xalanc_1_1014StylesheetRoot14getDefaultRuleEv = comdat any

$_ZNK11xalanc_1_1014StylesheetRoot18getDefaultTextRuleEv = comdat any

$_ZNK11xalanc_1_1014StylesheetRoot18getDefaultRootRuleEv = comdat any

$_ZN11xalanc_1_1011toCharArrayERKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement11hasChildrenEv = comdat any

$_ZNK11xalanc_1_1016ElemCallTemplate11getTemplateEv = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement21canGenerateAttributesEv = comdat any

$_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_ = comdat any

$_ZNK11xalanc_1_1010Stylesheet13getNamespacesEv = comdat any

$_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_ = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement23getFinishedConstructionEv = comdat any

$_ZNK11xalanc_1_1010Stylesheet30getNamespaceForPrefixFromStackERKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement20getNamespacesHandlerEv = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy6getURIEv = comdat any

$_ZN11xalanc_1_1012XalanLocatorC2Ev = comdat any

$_ZN11xercesc_2_77LocatorC2Ev = comdat any

$_ZN11xercesc_2_77LocatorD2Ev = comdat any

$_ZN11xalanc_1_1012XalanLocatorD0Ev = comdat any

$_ZN11xercesc_2_77LocatorD0Ev = comdat any

$_ZTSN11xalanc_1_1012XalanLocatorE = comdat any

$_ZTSN11xercesc_2_77LocatorE = comdat any

$_ZTIN11xercesc_2_77LocatorE = comdat any

$_ZTIN11xalanc_1_1012XalanLocatorE = comdat any

$_ZTVN11xalanc_1_1012XalanLocatorE = comdat any

$_ZTVN11xercesc_2_77LocatorE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xalanc_1_1019ElemTemplateElementE = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1019ElemTemplateElementE, ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev, ptr @_ZN11xalanc_1_1019ElemTemplateElementD0Ev, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv, ptr @__cxa_pure_virtual, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb, ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8getXPathEj, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi, ptr @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1019ElemTemplateElementE = dso_local constant [37 x i8] c"N11xalanc_1_1019ElemTemplateElementE\00", align 1
@_ZTIN11xalanc_1_1014PrefixResolverE = external constant ptr
@_ZTIN11xalanc_1_1019ElemTemplateElementE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1019ElemTemplateElementE, ptr @_ZTIN11xalanc_1_1014PrefixResolverE }, align 8
@_ZTVN11xalanc_1_1019ElemTemplateElement12LocatorProxyE = dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1019ElemTemplateElement12LocatorProxyE, ptr @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyD2Ev, ptr @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyD0Ev, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy11getPublicIdEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy11getSystemIdEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy13getLineNumberEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy15getColumnNumberEv] }, align 8
@_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE = dso_local constant [51 x i8] c"N11xalanc_1_1019ElemTemplateElement12LocatorProxyE\00", align 1
@_ZTSN11xalanc_1_1012XalanLocatorE = linkonce_odr dso_local constant [30 x i8] c"N11xalanc_1_1012XalanLocatorE\00", comdat, align 1
@_ZTSN11xercesc_2_77LocatorE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77LocatorE\00", comdat, align 1
@_ZTIN11xercesc_2_77LocatorE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77LocatorE }, comdat, align 8
@_ZTIN11xalanc_1_1012XalanLocatorE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1012XalanLocatorE, ptr @_ZTIN11xercesc_2_77LocatorE }, comdat, align 8
@_ZTIN11xalanc_1_1019ElemTemplateElement12LocatorProxyE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE, ptr @_ZTIN11xalanc_1_1012XalanLocatorE }, align 8
@_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE = dso_local global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZN11xalanc_1_1019ElemTemplateElement12s_emptyQNameE = dso_local global %"class.xalanc_1_10::XalanQNameByReference" zeroinitializer, align 8
@_ZN11xalanc_1_109Constants16ATTRVAL_PRESERVEE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants15ATTRVAL_DEFAULTE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@_ZN11xalanc_1_109Constants32ELEMNAME_SORT_WITH_PREFIX_STRINGE = external local_unnamed_addr constant ptr, align 8
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr
@_ZN11xalanc_1_109Constants33ATTRNAME_EXTENSIONELEMENTPREFIXESE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants32ATTRNAME_EXCLUDE_RESULT_PREFIXESE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices11s_XMLStringE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices17s_XMLNamespaceURIE = external local_unnamed_addr constant ptr, align 8
@_ZTVN11xalanc_1_1012XalanLocatorE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1012XalanLocatorE, ptr @_ZN11xercesc_2_77LocatorD2Ev, ptr @_ZN11xalanc_1_1012XalanLocatorD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_77LocatorE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_77LocatorE, ptr @_ZN11xercesc_2_77LocatorD2Ev, ptr @_ZN11xercesc_2_77LocatorD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_ElemTemplateElement.cpp, ptr null }]

@_ZN11xalanc_1_1019ElemTemplateElementD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev
@_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyC1EllRKNS_14XalanDOMStringE = dso_local unnamed_addr alias void (ptr, i64, i64, ptr), ptr @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyC2EllRKNS_14XalanDOMStringE
@_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyD2Ev

; Function Attrs: mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElementD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 {
  tail call void @llvm.trap() #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #1 align 2 !prof !212 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement29getNamespaceForPrefixInternalERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #20
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv(ptr noundef nonnull align 8 dereferenceable(322) %0) unnamed_addr #2 align 2 !prof !213 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 9
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy6getURIEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv(ptr noundef nonnull readnone align 8 dereferenceable(322) %0) unnamed_addr #3 align 2 !prof !214 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 9
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(322) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #1 align 2 !prof !213 {
  %6 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !215
  %8 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1010Stylesheet8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(1504) %7, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #20
  ret i1 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !237 {
  %3 = alloca %"class.xalanc_1_10::TracerEvent", align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !238
  %5 = getelementptr inbounds ptr, ptr %4, i64 137
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i64 %6(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %16, label %9, !prof !240

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #21
  call void @_ZN11xalanc_1_1011TracerEventC1ERKNS_26StylesheetExecutionContextERKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(322) %0) #20
  %10 = load ptr, ptr %1, align 8, !tbaa !238
  %11 = getelementptr inbounds ptr, ptr %10, i64 139
  %12 = load ptr, ptr %11, align 8
  invoke void %12(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3) #20
          to label %13 unwind label %14

13:                                               ; preds = %9
  call void @_ZN11xalanc_1_1011TracerEventD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #21
  br label %16

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011TracerEventD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #21
  resume { ptr, i32 } %15

16:                                               ; preds = %13, %2
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement10endElementERNS_26StylesheetExecutionContextE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #3 align 2 !prof !241 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 !prof !242 {
  %3 = load ptr, ptr %0, align 8, !tbaa !238
  %4 = getelementptr inbounds ptr, ptr %3, i64 30
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
  %7 = load ptr, ptr %1, align 8, !tbaa !238
  %8 = getelementptr inbounds ptr, ptr %7, i64 134
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %6) #20
  br label %10

10:                                               ; preds = %17, %2
  %11 = phi ptr [ %0, %2 ], [ %18, %17 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !238
  %13 = getelementptr inbounds ptr, ptr %12, i64 6
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(322) %11, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17, !prof !243

17:                                               ; preds = %28, %10
  %18 = phi ptr [ %15, %10 ], [ %37, %28 ]
  br label %10, !llvm.loop !244

19:                                               ; preds = %10
  %20 = load ptr, ptr %11, align 8, !tbaa !238
  %21 = getelementptr inbounds ptr, ptr %20, i64 7
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(322) %11, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %23 = load ptr, ptr %11, align 8, !tbaa !238
  %24 = getelementptr inbounds ptr, ptr %23, i64 10
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(322) %11, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %27 = icmp eq ptr %26, %6
  br i1 %27, label %52, label %28, !prof !246

28:                                               ; preds = %19, %39
  %29 = phi ptr [ %43, %39 ], [ %11, %19 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !238
  %31 = getelementptr inbounds ptr, ptr %30, i64 10
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(322) %29, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %34 = load ptr, ptr %33, align 8, !tbaa !238
  %35 = getelementptr inbounds ptr, ptr %34, i64 24
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(322) %33, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %29) #20
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %17, !prof !247, !llvm.loop !244

39:                                               ; preds = %28
  %40 = load ptr, ptr %29, align 8, !tbaa !238
  %41 = getelementptr inbounds ptr, ptr %40, i64 10
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(322) %29, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %44 = load ptr, ptr %43, align 8, !tbaa !238
  %45 = getelementptr inbounds ptr, ptr %44, i64 7
  %46 = load ptr, ptr %45, align 8
  tail call void %46(ptr noundef nonnull align 8 dereferenceable(322) %43, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %47 = load ptr, ptr %43, align 8, !tbaa !238
  %48 = getelementptr inbounds ptr, ptr %47, i64 10
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(322) %43, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %51 = icmp eq ptr %50, %6
  br i1 %51, label %52, label %28, !prof !248, !llvm.loop !249

52:                                               ; preds = %19, %39
  %53 = load ptr, ptr %1, align 8, !tbaa !238
  %54 = getelementptr inbounds ptr, ptr %53, i64 135
  %55 = load ptr, ptr %54, align 8
  tail call void %55(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 !prof !213 {
  %3 = load ptr, ptr %0, align 8, !tbaa !238
  %4 = getelementptr inbounds ptr, ptr %3, i64 19
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %16, %8 ], [ %6, %2 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !238
  %11 = getelementptr inbounds ptr, ptr %10, i64 8
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(322) %9, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %13 = load ptr, ptr %0, align 8, !tbaa !238
  %14 = getelementptr inbounds ptr, ptr %13, i64 24
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %9) #20
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %8, !llvm.loop !250

18:                                               ; preds = %8, %2
  %19 = load ptr, ptr %0, align 8, !tbaa !238
  %20 = getelementptr inbounds ptr, ptr %19, i64 20
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #1 align 2 !prof !251 {
  %3 = load ptr, ptr %0, align 8, !tbaa !238
  %4 = getelementptr inbounds ptr, ptr %3, i64 30
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !213 {
  ret i1 false
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !213 {
  ret ptr @_ZN11xalanc_1_1019ElemTemplateElement12s_emptyQNameE
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #3 align 2 !prof !213 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE(ptr nocapture noundef nonnull readnone align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nocapture nonnull readnone align 8 %2, ptr nocapture nonnull readnone align 8 %3, ptr noundef %4) unnamed_addr #1 align 2 !prof !213 {
  %6 = load ptr, ptr @_ZN11xalanc_1_109Constants32ELEMNAME_SORT_WITH_PREFIX_STRINGE, align 8, !tbaa !252
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringEPKN11xercesc_2_77LocatorE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 75, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef %4) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb(ptr nocapture noundef nonnull align 8 dereferenceable(322) %0, i1 noundef zeroext %1) unnamed_addr #1 align 2 !prof !253 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %4 = load i16, ptr %3, align 8, !tbaa !254
  %5 = or i16 %4, 32
  store i16 %5, ptr %3, align 8, !tbaa !254
  %6 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !255
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !256

9:                                                ; preds = %10, %2
  ret void

10:                                               ; preds = %2, %10
  %11 = phi ptr [ %16, %10 ], [ %7, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !238
  %13 = getelementptr inbounds ptr, ptr %12, i64 16
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(322) %11, i1 noundef zeroext %1) #20
  %15 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %11, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !255
  %17 = icmp eq ptr %16, null
  br i1 %17, label %9, label %10, !prof !257, !llvm.loop !258
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(232) %2) unnamed_addr #1 align 2 !prof !259 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %0, align 8, !tbaa !238
  %6 = getelementptr inbounds ptr, ptr %5, i64 37
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(232) %2, ptr noundef nonnull align 8 dereferenceable(232) %4) #20
  %8 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement11hasChildrenEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
  br i1 %8, label %9, label %74, !prof !260

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !255, !nonnull !261, !noundef !261
  %12 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  br label %16

13:                                               ; preds = %35
  %14 = load ptr, ptr %10, align 8, !tbaa !255
  %15 = tail call noundef i32 @_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv(ptr noundef nonnull align 8 dereferenceable(322) %14) #20
  switch i32 %15, label %66 [
    i32 36, label %39
    i32 14, label %50
  ], !prof !262

16:                                               ; preds = %9, %35
  %17 = phi ptr [ %11, %9 ], [ %37, %35 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !238
  %19 = getelementptr inbounds ptr, ptr %18, i64 17
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(322) %17, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(232) %4) #20
  %21 = tail call noundef i32 @_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv(ptr noundef nonnull align 8 dereferenceable(322) %17) #20
  %22 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement12hasVariablesEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
  br i1 %22, label %28, label %23, !prof !263

23:                                               ; preds = %16
  switch i32 %21, label %28 [
    i32 30, label %24
    i32 15, label %24
  ]

24:                                               ; preds = %23, %23
  %25 = load i16, ptr %12, align 8, !tbaa !254
  %26 = or i16 %25, 4
  store i16 %26, ptr %12, align 8, !tbaa !254
  %27 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement9hasParamsEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
  br label %35

28:                                               ; preds = %23, %16
  %29 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement9hasParamsEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
  %30 = icmp ne i32 %21, 0
  %31 = or i1 %30, %29
  br i1 %31, label %35, label %32, !prof !264

32:                                               ; preds = %28
  %33 = load i16, ptr %12, align 8, !tbaa !254
  %34 = or i16 %33, 1
  store i16 %34, ptr %12, align 8, !tbaa !254
  br label %35

35:                                               ; preds = %24, %32, %28
  %36 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %17, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !255
  %38 = icmp eq ptr %37, null
  br i1 %38, label %13, label %16, !prof !265, !llvm.loop !266

39:                                               ; preds = %13
  %40 = load ptr, ptr %10, align 8, !tbaa !255
  %41 = load ptr, ptr %40, align 8, !tbaa !238
  %42 = getelementptr inbounds ptr, ptr %41, i64 23
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(322) %40) #20
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %66, !prof !267

46:                                               ; preds = %39
  %47 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %48 = load i16, ptr %47, align 8, !tbaa !254
  %49 = or i16 %48, 2
  store i16 %49, ptr %47, align 8, !tbaa !254
  br label %74

50:                                               ; preds = %13
  %51 = load ptr, ptr %10, align 8, !tbaa !255
  %52 = load ptr, ptr %51, align 8, !tbaa !238
  %53 = getelementptr inbounds ptr, ptr %52, i64 23
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(322) %51) #20
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %66, !prof !268

57:                                               ; preds = %50
  %58 = load ptr, ptr %10, align 8, !tbaa !255
  %59 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement9hasParamsEv(ptr noundef nonnull align 8 dereferenceable(322) %58) #20
  br i1 %59, label %74, label %60, !prof !268

60:                                               ; preds = %57
  %61 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %62 = load i16, ptr %61, align 8, !tbaa !254
  %63 = or i16 %62, 8
  store i16 %63, ptr %61, align 8, !tbaa !254
  %64 = load ptr, ptr %10, align 8, !tbaa !255
  %65 = tail call noundef ptr @_ZNK11xalanc_1_1016ElemCallTemplate11getTemplateEv(ptr noundef nonnull align 8 dereferenceable(344) %64) #20
  store ptr %65, ptr %10, align 8, !tbaa !255
  br label %74

66:                                               ; preds = %39, %13, %50
  %67 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement21canGenerateAttributesEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
  br i1 %67, label %74, label %68, !prof !269

68:                                               ; preds = %66
  %69 = icmp eq i32 %15, 35
  br i1 %69, label %74, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %72 = load i16, ptr %71, align 8, !tbaa !254
  %73 = or i16 %72, 16
  store i16 %73, ptr %71, align 8, !tbaa !254
  br label %74

74:                                               ; preds = %46, %66, %68, %70, %57, %60, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(322) %0) unnamed_addr #4 align 2 !prof !270 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !255
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 !prof !271 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement9hasParamsEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
  br i1 %3, label %6, label %4, !prof !272

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement12hasVariablesEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
  br i1 %5, label %6, label %10, !prof !273

6:                                                ; preds = %4, %2
  %7 = load ptr, ptr %1, align 8, !tbaa !238
  %8 = getelementptr inbounds ptr, ptr %7, i64 93
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %0) #20
  br label %10

10:                                               ; preds = %6, %4
  %11 = load ptr, ptr %0, align 8, !tbaa !238
  %12 = getelementptr inbounds ptr, ptr %11, i64 25
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 !prof !271 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement9hasParamsEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
  br i1 %3, label %12, label %4, !prof !272

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement12hasVariablesEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
  br i1 %5, label %12, label %6, !prof !273

6:                                                ; preds = %4
  %7 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement17hasDirectTemplateEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
  br i1 %7, label %8, label %17, !prof !274

8:                                                ; preds = %6
  %9 = load ptr, ptr %1, align 8, !tbaa !238
  %10 = getelementptr inbounds ptr, ptr %9, i64 135
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  br label %12

12:                                               ; preds = %2, %4, %8
  %13 = phi i64 [ 86, %8 ], [ 94, %4 ], [ 94, %2 ]
  %14 = load ptr, ptr %1, align 8, !tbaa !238
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  br label %17

17:                                               ; preds = %12, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(322) %0, ptr noundef %1) unnamed_addr #5 align 2 !prof !213 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  store ptr %1, ptr %3, align 8, !tbaa !255
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(322) %0) unnamed_addr #6 align 2 !prof !275 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi ptr [ null, %1 ], [ %6, %3 ]
  %5 = phi ptr [ %2, %1 ], [ %8, %3 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !255
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %6, i64 0, i32 6
  br i1 %7, label %9, label %3, !prof !276, !llvm.loop !277

9:                                                ; preds = %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(322) %0) unnamed_addr #4 align 2 !prof !278 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !279
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !280 {
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement17hasDirectTemplateEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
  br i1 %4, label %17, label %5, !prof !281

5:                                                ; preds = %3, %12
  %6 = phi ptr [ %10, %12 ], [ %2, %3 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !238
  %8 = getelementptr inbounds ptr, ptr %7, i64 23
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(322) %6) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12, !prof !282

12:                                               ; preds = %5
  %13 = load ptr, ptr %0, align 8, !tbaa !238
  %14 = getelementptr inbounds ptr, ptr %13, i64 26
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef zeroext i1 %15(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %10) #20
  br i1 %16, label %17, label %5, !prof !283, !llvm.loop !284

17:                                               ; preds = %12, %5, %3
  %18 = phi ptr [ null, %3 ], [ %10, %12 ], [ null, %5 ]
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 !prof !285 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement17hasDirectTemplateEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
  br i1 %3, label %4, label %13, !prof !286

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !238
  %6 = getelementptr inbounds ptr, ptr %5, i64 85
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %8 = load ptr, ptr %1, align 8, !tbaa !238
  %9 = getelementptr inbounds ptr, ptr %8, i64 134
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %0) #20
  %11 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !255
  br label %26

13:                                               ; preds = %2
  %14 = load ptr, ptr %0, align 8, !tbaa !238
  %15 = getelementptr inbounds ptr, ptr %14, i64 18
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19, !prof !287

19:                                               ; preds = %13
  %20 = load ptr, ptr %0, align 8, !tbaa !238
  %21 = getelementptr inbounds ptr, ptr %20, i64 26
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef zeroext i1 %22(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %17) #20
  br i1 %23, label %26, label %24, !prof !288

24:                                               ; preds = %19
  %25 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %17) #20
  br label %26

26:                                               ; preds = %13, %19, %24, %4
  %27 = phi ptr [ %12, %4 ], [ %17, %19 ], [ %25, %24 ], [ null, %13 ]
  ret ptr %27
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture readnone %2) unnamed_addr #3 align 2 !prof !289 {
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(322) %0, ptr noundef %1) unnamed_addr #5 align 2 !prof !290 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 6
  store ptr %1, ptr %3, align 8, !tbaa !279
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(322) %0) unnamed_addr #4 align 2 !prof !213 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !291
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(322) %0, ptr noundef %1) unnamed_addr #5 align 2 !prof !292 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 7
  store ptr %1, ptr %3, align 8, !tbaa !291
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(322) %0) unnamed_addr #4 align 2 !prof !293 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !294
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(322) %0, ptr noundef %1) unnamed_addr #5 align 2 !prof !295 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 5
  store ptr %1, ptr %3, align 8, !tbaa !294
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull returned %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !295 {
  %3 = tail call noundef i32 @_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv(ptr noundef nonnull align 8 dereferenceable(322) %1) #20
  %4 = load ptr, ptr %0, align 8, !tbaa !238
  %5 = getelementptr inbounds ptr, ptr %4, i64 36
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef zeroext i1 %6(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef %3) #20
  br i1 %7, label %13, label %8, !prof !296

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 3) #20
          to label %10 unwind label %11

10:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #23
  unreachable

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #21
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !255
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21, !prof !297

17:                                               ; preds = %13
  store ptr %1, ptr %14, align 8, !tbaa !255
  %18 = load ptr, ptr %1, align 8, !tbaa !238
  %19 = getelementptr inbounds ptr, ptr %18, i64 29
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(322) %1, ptr noundef null) #20
  br label %32

21:                                               ; preds = %13
  %22 = load ptr, ptr %0, align 8, !tbaa !238
  %23 = getelementptr inbounds ptr, ptr %22, i64 22
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
  %26 = load ptr, ptr %25, align 8, !tbaa !238
  %27 = getelementptr inbounds ptr, ptr %26, i64 27
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(322) %25, ptr noundef nonnull %1) #20
  %29 = load ptr, ptr %1, align 8, !tbaa !238
  %30 = getelementptr inbounds ptr, ptr %29, i64 29
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(322) %1, ptr noundef nonnull %25) #20
  br label %32

32:                                               ; preds = %17, %21
  %33 = load ptr, ptr %1, align 8, !tbaa !238
  %34 = getelementptr inbounds ptr, ptr %33, i64 31
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(322) %1, ptr noundef nonnull %0) #20
  %36 = load ptr, ptr %1, align 8, !tbaa !238
  %37 = getelementptr inbounds ptr, ptr %36, i64 27
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(322) %1, ptr noundef null) #20
  ret ptr %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement8getXPathEj(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #3 align 2 !prof !213 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(322) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 align 2 !prof !298 {
  %6 = load ptr, ptr %4, align 8, !tbaa !238
  %7 = getelementptr inbounds ptr, ptr %6, i64 4
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %10 = load ptr, ptr %0, align 8, !tbaa !238
  %11 = getelementptr inbounds ptr, ptr %10, i64 35
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(322) %2, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %9) #20
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(322) %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !298 {
  %7 = alloca %"class.xalanc_1_10::TracerEvent", align 8
  %8 = icmp eq ptr %3, null
  br i1 %8, label %9, label %45, !prof !299

9:                                                ; preds = %6
  %10 = tail call noundef i32 @_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv(ptr noundef nonnull align 8 dereferenceable(322) %2) #20
  %11 = icmp eq i32 %10, 29
  br i1 %11, label %12, label %18, !prof !300

12:                                               ; preds = %9
  %13 = load ptr, ptr %1, align 8, !tbaa !238
  %14 = getelementptr inbounds ptr, ptr %13, i64 59
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %17 = tail call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %16) #20
  br label %21

18:                                               ; preds = %9
  %19 = tail call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
  %20 = tail call noundef nonnull align 8 dereferenceable(2064) ptr @_ZNK11xalanc_1_1010Stylesheet17getStylesheetRootEv(ptr noundef nonnull align 8 dereferenceable(1504) %19) #20
  br label %21

21:                                               ; preds = %12, %18
  %22 = phi ptr [ %17, %12 ], [ %20, %18 ]
  %23 = load ptr, ptr %1, align 8, !tbaa !238
  %24 = getelementptr inbounds ptr, ptr %23, i64 56
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %27 = tail call noundef ptr @_ZNK11xalanc_1_1010Stylesheet12findTemplateERNS_26StylesheetExecutionContextEPNS_9XalanNodeENS3_8NodeTypeERKNS_10XalanQNameEb(ptr noundef nonnull align 8 dereferenceable(1504) %22, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %26, i1 noundef zeroext %11) #20
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %45, !prof !301

29:                                               ; preds = %21
  switch i32 %5, label %85 [
    i32 11, label %30
    i32 1, label %30
    i32 4, label %34
    i32 3, label %34
    i32 2, label %34
    i32 9, label %38
  ], !prof !302

30:                                               ; preds = %29, %29
  %31 = tail call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
  %32 = tail call noundef nonnull align 8 dereferenceable(2064) ptr @_ZNK11xalanc_1_1010Stylesheet17getStylesheetRootEv(ptr noundef nonnull align 8 dereferenceable(1504) %31) #20
  %33 = tail call noundef ptr @_ZNK11xalanc_1_1014StylesheetRoot14getDefaultRuleEv(ptr noundef nonnull align 8 dereferenceable(2064) %32) #20
  br label %42

34:                                               ; preds = %29, %29, %29
  %35 = tail call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
  %36 = tail call noundef nonnull align 8 dereferenceable(2064) ptr @_ZNK11xalanc_1_1010Stylesheet17getStylesheetRootEv(ptr noundef nonnull align 8 dereferenceable(1504) %35) #20
  %37 = tail call noundef ptr @_ZNK11xalanc_1_1014StylesheetRoot18getDefaultTextRuleEv(ptr noundef nonnull align 8 dereferenceable(2064) %36) #20
  br label %42

38:                                               ; preds = %29
  %39 = tail call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
  %40 = tail call noundef nonnull align 8 dereferenceable(2064) ptr @_ZNK11xalanc_1_1010Stylesheet17getStylesheetRootEv(ptr noundef nonnull align 8 dereferenceable(1504) %39) #20
  %41 = tail call noundef ptr @_ZNK11xalanc_1_1014StylesheetRoot18getDefaultRootRuleEv(ptr noundef nonnull align 8 dereferenceable(2064) %40) #20
  br label %42

42:                                               ; preds = %30, %34, %38
  %43 = phi ptr [ %41, %38 ], [ %37, %34 ], [ %33, %30 ]
  %44 = icmp eq ptr %43, null
  br i1 %44, label %85, label %45, !prof !303

45:                                               ; preds = %6, %21, %42
  %46 = phi ptr [ %43, %42 ], [ %27, %21 ], [ %3, %6 ]
  %47 = tail call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
  %48 = tail call noundef nonnull align 8 dereferenceable(2064) ptr @_ZNK11xalanc_1_1010Stylesheet17getStylesheetRootEv(ptr noundef nonnull align 8 dereferenceable(1504) %47) #20
  %49 = tail call noundef ptr @_ZNK11xalanc_1_1014StylesheetRoot18getDefaultTextRuleEv(ptr noundef nonnull align 8 dereferenceable(2064) %48) #20
  %50 = icmp eq ptr %46, %49
  br i1 %50, label %51, label %72, !prof !304

51:                                               ; preds = %45
  switch i32 %5, label %85 [
    i32 4, label %52
    i32 3, label %52
    i32 2, label %60
  ], !prof !305

52:                                               ; preds = %51, %51
  %53 = load ptr, ptr %0, align 8, !tbaa !238
  %54 = getelementptr inbounds ptr, ptr %53, i64 4
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
  %57 = load ptr, ptr %1, align 8, !tbaa !238
  %58 = getelementptr inbounds ptr, ptr %57, i64 109
  %59 = load ptr, ptr %58, align 8
  tail call void %59(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 3, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef %56) #20
  br label %85

60:                                               ; preds = %51
  %61 = load ptr, ptr %4, align 8, !tbaa !238
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  %64 = tail call noundef nonnull align 8 dereferenceable(36) ptr %63(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %65 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %64) #20
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %85, label %67

67:                                               ; preds = %60
  %68 = tail call noundef ptr @_ZN11xalanc_1_1011toCharArrayERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %64) #20
  %69 = load ptr, ptr %1, align 8, !tbaa !238
  %70 = getelementptr inbounds ptr, ptr %69, i64 103
  %71 = load ptr, ptr %70, align 8
  tail call void %71(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %68, i32 noundef 0, i32 noundef %65) #20
  br label %85

72:                                               ; preds = %45
  %73 = load ptr, ptr %1, align 8, !tbaa !238
  %74 = getelementptr inbounds ptr, ptr %73, i64 137
  %75 = load ptr, ptr %74, align 8
  %76 = tail call noundef i64 %75(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %85, label %78, !prof !306

78:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #21
  call void @_ZN11xalanc_1_1011TracerEventC1ERKNS_26StylesheetExecutionContextERKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(322) %46) #20
  %79 = load ptr, ptr %1, align 8, !tbaa !238
  %80 = getelementptr inbounds ptr, ptr %79, i64 139
  %81 = load ptr, ptr %80, align 8
  invoke void %81(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %7) #20
          to label %82 unwind label %83

82:                                               ; preds = %78
  call void @_ZN11xalanc_1_1011TracerEventD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #21
  br label %85

83:                                               ; preds = %78
  %84 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011TracerEventD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #21
  resume { ptr, i32 } %84

85:                                               ; preds = %29, %42, %52, %51, %67, %60, %72, %82
  %86 = phi ptr [ %46, %82 ], [ %46, %72 ], [ null, %60 ], [ null, %67 ], [ null, %51 ], [ null, %52 ], [ null, %42 ], [ null, %29 ]
  ret ptr %86
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #3 align 2 !prof !307 {
  ret i1 true
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(232) %2, ptr noundef nonnull align 8 dereferenceable(232) %3) unnamed_addr #1 align 2 !prof !308 {
  %5 = load ptr, ptr %0, align 8, !tbaa !238
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr %7(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
  tail call void @_ZN11xalanc_1_1017NamespacesHandler16postConstructionERNS_29StylesheetConstructionContextEbRKNS_14XalanDOMStringEPKS0_PKNS0_13PrefixCheckerE(ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull %2, ptr noundef null) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 align 2 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #22
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy11getPublicIdEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !213 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy11getSystemIdEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 !prof !213 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !309
  %4 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %3) #20
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !309
  %8 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %7) #20
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy13getLineNumberEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #4 align 2 !prof !213 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !310
  ret i64 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy15getColumnNumberEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #4 align 2 !prof !213 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !311
  ret i64 %3
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #8 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #20
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE, ptr nonnull @__dso_handle) #21
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #9

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #2 comdat align 2 !prof !312 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #22
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !313 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !314
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !316

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #20
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !317
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #20
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !318 {
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #21
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !319 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !320

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #20
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !321, !llvm.loop !322

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !323 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !317
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !324 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !319 {
  %3 = load ptr, ptr %0, align 8, !tbaa !325
  %4 = load ptr, ptr %3, align 8, !tbaa !238
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #2 comdat align 2 !prof !326 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !327 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !317
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !328
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.1() unnamed_addr #8 section ".text.startup" {
  tail call void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xalanc_1_1019ElemTemplateElement12s_emptyQNameE, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE) #20
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev, ptr nonnull @_ZN11xalanc_1_1019ElemTemplateElement12s_emptyQNameE, ptr nonnull @__dso_handle) #21
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #9

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #12

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !329 {
  tail call void @_ZN11xalanc_1_1014PrefixResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_1019ElemTemplateElementE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !238
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  store ptr %2, ptr %7, align 8, !tbaa !252
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 2
  %9 = tail call noundef nonnull align 8 dereferenceable(232) ptr @_ZN11xalanc_1_1010Stylesheet20getNamespacesHandlerEv(ptr noundef nonnull align 8 dereferenceable(1504) %2) #20
  %10 = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN11xalanc_1_1010Stylesheet13getNamespacesEv(ptr noundef nonnull align 8 dereferenceable(1504) %2) #20
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1010Stylesheet19getXSLTNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(1504) %2) #20
  invoke void @_ZN11xalanc_1_1017NamespacesHandlerC1ERNS_29StylesheetConstructionContextERKS0_RKNS_10XalanDequeINS5_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS6_EEEENS7_IS9_EEEERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(232) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(232) %9, ptr noundef nonnull align 8 dereferenceable(80) %10, ptr noundef nonnull align 8 dereferenceable(36) %11) #20
          to label %12 unwind label %27

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 3
  store i32 %5, ptr %13, align 8, !tbaa !330
  %14 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 5
  %15 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 9
  %16 = sext i32 %3 to i64
  %17 = sext i32 %4 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, i8 0, i64 32, i1 false)
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1010Stylesheet31getCurrentIncludeBaseIdentifierEv(ptr noundef nonnull align 8 dereferenceable(1504) %2) #20
          to label %19 unwind label %29

19:                                               ; preds = %12
  %20 = load ptr, ptr %1, align 8, !tbaa !238
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef nonnull align 8 dereferenceable(36) ptr %22(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %18) #20
          to label %24 unwind label %29

24:                                               ; preds = %19
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyC2EllRKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef %16, i64 noundef %17, ptr noundef nonnull align 8 dereferenceable(36) %23) #20
          to label %25 unwind label %29

25:                                               ; preds = %24
  %26 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  store i16 16, ptr %26, align 8, !tbaa !254
  ret void

27:                                               ; preds = %6
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %31

29:                                               ; preds = %24, %19, %12
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1017NamespacesHandlerD1Ev(ptr noundef nonnull align 8 dereferenceable(232) %8) #22
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %28, %27 ]
  tail call void @_ZN11xalanc_1_1014PrefixResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #22
  resume { ptr, i32 } %32
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014PrefixResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(232) ptr @_ZN11xalanc_1_1010Stylesheet20getNamespacesHandlerEv(ptr noundef nonnull align 8 dereferenceable(1504) %0) local_unnamed_addr #2 comdat align 2 !prof !329 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 30
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN11xalanc_1_1010Stylesheet13getNamespacesEv(ptr noundef nonnull align 8 dereferenceable(1504) %0) local_unnamed_addr #2 comdat align 2 !prof !331 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 8
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1010Stylesheet19getXSLTNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(1504) %0) local_unnamed_addr #2 comdat align 2 !prof !332 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 5
  ret ptr %2
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017NamespacesHandlerC1ERNS_29StylesheetConstructionContextERKS0_RKNS_10XalanDequeINS5_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS6_EEEENS7_IS9_EEEERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1010Stylesheet31getCurrentIncludeBaseIdentifierEv(ptr noundef nonnull align 8 dereferenceable(1504) %0) local_unnamed_addr #1 comdat align 2 !prof !329 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 13
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  br i1 %3, label %4, label %6, !prof !333

4:                                                ; preds = %1
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1010Stylesheet17getBaseIdentifierEv(ptr noundef nonnull align 8 dereferenceable(1504) %0) #20
  br label %8

6:                                                ; preds = %1
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi ptr [ %5, %4 ], [ %7, %6 ]
  ret ptr %9
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017NamespacesHandlerD1Ev(ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #12

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1014PrefixResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #12

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !334 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !335
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1010Stylesheet17getBaseIdentifierEv(ptr noundef nonnull align 8 dereferenceable(1504) %0) local_unnamed_addr #2 comdat align 2 !prof !337 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !329 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !338
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !335
  %6 = getelementptr %"class.xalanc_1_10::XalanDOMString", ptr %3, i64 %5
  %7 = getelementptr %"class.xalanc_1_10::XalanDOMString", ptr %6, i64 -1
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !339 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiRKNS_14XalanDOMStringEii(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef %5, i32 noundef %6) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !340 {
  tail call void @_ZN11xalanc_1_1014PrefixResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_1019ElemTemplateElementE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !238
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  store ptr %2, ptr %8, align 8, !tbaa !252
  %9 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 2
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1024XPathConstructionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #20
  invoke void @_ZN11xalanc_1_1017NamespacesHandlerC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(232) %9, ptr noundef nonnull align 8 dereferenceable(8) %10) #20
          to label %11 unwind label %24

11:                                               ; preds = %7
  %12 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 3
  store i32 %3, ptr %12, align 8, !tbaa !330
  %13 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 0, i64 32, i1 false)
  %14 = load ptr, ptr %1, align 8, !tbaa !238
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef nonnull align 8 dereferenceable(36) ptr %16(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %4) #20
          to label %18 unwind label %26

18:                                               ; preds = %11
  %19 = sext i32 %6 to i64
  %20 = sext i32 %5 to i64
  %21 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 9
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyC2EllRKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef %20, i64 noundef %19, ptr noundef nonnull align 8 dereferenceable(36) %17) #20
          to label %22 unwind label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  store i16 16, ptr %23, align 8, !tbaa !254
  ret void

24:                                               ; preds = %7
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %28

26:                                               ; preds = %18, %11
  %27 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1017NamespacesHandlerD1Ev(ptr noundef nonnull align 8 dereferenceable(232) %9) #22
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi { ptr, i32 } [ %27, %26 ], [ %25, %24 ]
  tail call void @_ZN11xalanc_1_1014PrefixResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #22
  resume { ptr, i32 } %29
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1024XPathConstructionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !341 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !342
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017NamespacesHandlerC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) unnamed_addr #2 align 2 !prof !344 {
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_1019ElemTemplateElementE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !238
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 9
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #22
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1017NamespacesHandlerD1Ev(ptr noundef nonnull align 8 dereferenceable(232) %3) #22
  tail call void @_ZN11xalanc_1_1014PrefixResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #22
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1010Stylesheet8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #1 align 2 !prof !345 {
  %7 = tail call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
  %8 = load ptr, ptr %0, align 8, !tbaa !238
  %9 = getelementptr inbounds ptr, ptr %8, i64 4
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
  %12 = load ptr, ptr %5, align 8, !tbaa !238
  %13 = getelementptr inbounds ptr, ptr %12, i64 28
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef zeroext i1 %14(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(1504) %7, ptr noundef %11) #20
  br i1 %15, label %16, label %31, !prof !346

16:                                               ; preds = %6
  %17 = load ptr, ptr %3, align 8, !tbaa !238
  %18 = getelementptr inbounds ptr, ptr %17, i64 5
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) #20
  %21 = load ptr, ptr @_ZN11xalanc_1_109Constants16ATTRVAL_PRESERVEE, align 8, !tbaa !252
  %22 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(36) %21) #20
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %25 = load i16, ptr %24, align 8, !tbaa !254
  %26 = or i16 %25, 64
  store i16 %26, ptr %24, align 8, !tbaa !254
  br label %31

27:                                               ; preds = %16
  %28 = load ptr, ptr @_ZN11xalanc_1_109Constants15ATTRVAL_DEFAULTE, align 8, !tbaa !252
  %29 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(36) %28) #20
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_S6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef 65, ptr noundef %1, ptr noundef %2, ptr noundef %20) #20
  br label %31

31:                                               ; preds = %23, %30, %27, %6
  ret i1 %15
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #2 comdat align 2 !prof !347 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !215
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat !prof !348 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %0) #20
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_S6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !213 {
  %7 = alloca %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #21
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %1) #20
  %8 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #20
  %9 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %8, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef null) #20
          to label %10 unwind label %20

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !238
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
          to label %15 unwind label %20

15:                                               ; preds = %10
  %16 = load ptr, ptr %1, align 8, !tbaa !238
  %17 = getelementptr inbounds ptr, ptr %16, i64 7
  %18 = load ptr, ptr %17, align 8
  invoke void %18(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef null, ptr noundef %14) #20
          to label %19 unwind label %20

19:                                               ; preds = %15
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #21
  ret void

20:                                               ; preds = %15, %10, %6
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #21
  resume { ptr, i32 } %21
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !348 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #20
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !348 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #20
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_(ptr noundef %3, ptr noundef %1) #20
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !349 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %0) #20
  %4 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1) #20
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %0, i32 noundef %3, ptr noundef %1, i32 noundef %4) #20
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !350 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #20
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  br i1 %2, label %5, label %3, !prof !351

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #20
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !352 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !353 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !328
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !354 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !317
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 align 2 !prof !213 {
  %2 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) #20
  ret i1 %2
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #9

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1011TracerEventC1ERKNS_26StylesheetExecutionContextERKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #9

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1011TracerEventD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #12

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement9hasParamsEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #1 comdat align 2 !prof !355 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef 1) #20
  ret i1 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement12hasVariablesEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #2 comdat align 2 !prof !356 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef 4) #20
  ret i1 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !357 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %4 = load i16, ptr %3, align 8, !tbaa !254
  %5 = zext i16 %4 to i32
  %6 = and i32 %5, %1
  %7 = icmp ne i32 %6, 0
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement17hasDirectTemplateEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #2 comdat align 2 !prof !358 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef 8) #20
  ret i1 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement21beginChildrenToStringERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #1 align 2 !prof !359 {
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement18hasSingleTextChildEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
  br i1 %4, label %5, label %12, !prof !360

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !255
  %8 = tail call noundef ptr @_ZNK11xalanc_1_1015ElemTextLiteral7getTextEv(ptr noundef nonnull align 8 dereferenceable(340) %7) #20
  %9 = load ptr, ptr %6, align 8, !tbaa !255
  %10 = tail call noundef i32 @_ZNK11xalanc_1_1015ElemTextLiteral9getLengthEv(ptr noundef nonnull align 8 dereferenceable(340) %9) #20
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_106assignERNS_14XalanDOMStringEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %8, i32 noundef %10) #20
  br label %22

12:                                               ; preds = %3
  %13 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %2) #20
  %14 = add i32 %13, 1024
  tail call void @_ZN11xalanc_1_107reserveERNS_14XalanDOMStringEj(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef %14) #20
  %15 = load ptr, ptr %1, align 8, !tbaa !238
  %16 = getelementptr inbounds ptr, ptr %15, i64 112
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) #20
  %18 = load ptr, ptr %0, align 8, !tbaa !238
  %19 = getelementptr inbounds ptr, ptr %18, i64 19
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  br label %22

22:                                               ; preds = %12, %5
  %23 = phi ptr [ null, %5 ], [ %21, %12 ]
  ret ptr %23
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement18hasSingleTextChildEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #2 comdat align 2 !prof !361 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef 2) #20
  ret i1 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_106assignERNS_14XalanDOMStringEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat !prof !362 {
  %4 = icmp eq i32 %2, -1
  br i1 %4, label %5, label %7, !prof !363

5:                                                ; preds = %3
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #20
  br label %9

7:                                                ; preds = %3
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %2) #20
  br label %9

9:                                                ; preds = %7, %5
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1015ElemTextLiteral7getTextEv(ptr noundef nonnull align 8 dereferenceable(340) %0) local_unnamed_addr #2 comdat align 2 !prof !213 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTextLiteral", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !364
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1015ElemTextLiteral9getLengthEv(ptr noundef nonnull align 8 dereferenceable(340) %0) local_unnamed_addr #2 comdat align 2 !prof !213 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTextLiteral", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !367
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_107reserveERNS_14XalanDOMStringEj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1) local_unnamed_addr #1 comdat !prof !368 {
  tail call void @_ZN11xalanc_1_1014XalanDOMString7reserveEj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat !prof !369 {
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #20
  ret i32 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !370 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #20
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1) #20
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #20
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #20
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !371 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #20
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1) #20
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #20
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %2) #20
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !372 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1) #20
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %3) #20
  ret ptr %4
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMString7reserveEj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !373 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #20
  %3 = add i32 %1, 1
  %4 = zext i32 %3 to i64
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %4) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !374 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !314
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7, !prof !375

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #20
  br label %7

7:                                                ; preds = %6, %2
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !376 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %4 = load ptr, ptr %0, align 8, !tbaa !325
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #20
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !377 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !325
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !328
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !378

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #20
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #20
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #20
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #20
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #20
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !379

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #20
  store ptr %24, ptr %8, align 8, !tbaa !317
  store i64 %3, ptr %7, align 8, !tbaa !314
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 !prof !380 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  %3 = load ptr, ptr %0, align 8, !tbaa !325
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !317
  %7 = load ptr, ptr %1, align 8, !tbaa !325
  store ptr %7, ptr %0, align 8, !tbaa !325
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !381
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !317
  store ptr %11, ptr %5, align 8, !tbaa !317
  store ptr %3, ptr %1, align 8, !tbaa !325
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !381
  store <2 x i64> %9, ptr %4, align 8, !tbaa !381
  store <2 x i64> %12, ptr %8, align 8, !tbaa !381
  store ptr %6, ptr %10, align 8, !tbaa !317
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !382 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 !prof !383 {
  store ptr %1, ptr %0, align 8, !tbaa !325
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !328
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !314
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !384

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #20
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !317
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !385 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #20
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8, !prof !386

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28, !prof !387

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #20
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16, !prof !388

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !325
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 2 dereferenceable(2) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #20
  %23 = getelementptr inbounds i16, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !328
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !328
  %26 = getelementptr inbounds i16, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !prof !389, !llvm.loop !390

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47, !prof !391

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %32 = load ptr, ptr %0, align 8, !tbaa !325
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #20
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #20
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #20
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #20
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #20
  %50 = icmp ugt i64 %49, %6
  br i1 %50, label %66, label %51, !prof !392

51:                                               ; preds = %47
  %52 = getelementptr inbounds i16, ptr %2, i64 %49
  %53 = icmp eq ptr %52, %3
  br i1 %53, label %54, label %56, !prof !393

54:                                               ; preds = %56, %51
  %55 = icmp eq ptr %48, %1
  br i1 %55, label %64, label %60, !prof !393

56:                                               ; preds = %51, %56
  %57 = phi ptr [ %58, %56 ], [ %52, %51 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %57) #20
  %58 = getelementptr inbounds i16, ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !prof !394, !llvm.loop !395

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %61) #20
  %62 = getelementptr inbounds i16, ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !prof !396, !llvm.loop !397

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #20
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds i16, ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %72) #20
  %73 = getelementptr inbounds i16, ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !398

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds i16, ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #20
  %78 = tail call noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #20
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !399 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !317
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !399 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !319 {
  %3 = shl i64 %1, 1
  %4 = load ptr, ptr %0, align 8, !tbaa !325
  %5 = load ptr, ptr %4, align 8, !tbaa !238
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #20
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !400 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #20
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !401 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !328
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !402 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6, !prof !403

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #20
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 !prof !326 {
  %4 = load i16, ptr %1, align 2, !tbaa !404
  store i16 %4, ptr %0, align 2, !tbaa !404
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !405 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !314
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !406 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !328
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !314
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !407

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  %11 = load ptr, ptr %0, align 8, !tbaa !325
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #20
  %13 = load i64, ptr %4, align 8, !tbaa !328
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !328
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %21 = load ptr, ptr %0, align 8, !tbaa !325
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1) #20
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !408 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %0) #20
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %1) #20
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #20
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !213 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) #20
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %1) #20
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #20
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !400 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !252
  call void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %4 = call noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #20
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !400 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 1
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat !prof !400 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #15

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !408 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !252
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %0) #22
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %1) #22
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #22
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #20
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #20
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !409 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !410 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !408 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !409 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !411 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !408 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !410 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !412

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %2, ptr align 2 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #16

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !213 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !252
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) #22
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %1) #22
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #22
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #20
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #20
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !413 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !213 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !213 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !213 {
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !399 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !317
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !328
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !414 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #20
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #20
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !415 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #20
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !416
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement19endChildrenToStringERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 align 2 !prof !359 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement18hasSingleTextChildEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
  br i1 %3, label %11, label %4, !prof !360

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !238
  %6 = getelementptr inbounds ptr, ptr %5, i64 20
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %8 = load ptr, ptr %1, align 8, !tbaa !238
  %9 = getelementptr inbounds ptr, ptr %8, i64 113
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  br label %11

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement5errorERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !213 {
  %4 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %5 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #20
  %6 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef %2) #20
          to label %7 unwind label %22

7:                                                ; preds = %3
  %8 = load ptr, ptr %1, align 8, !tbaa !238
  %9 = getelementptr inbounds ptr, ptr %8, i64 6
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
          to label %12 unwind label %22

12:                                               ; preds = %7
  %13 = load ptr, ptr %0, align 8, !tbaa !238
  %14 = getelementptr inbounds ptr, ptr %13, i64 4
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
          to label %17 unwind label %22

17:                                               ; preds = %12
  %18 = load ptr, ptr %1, align 8, !tbaa !238
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef %11, ptr noundef %16) #20
          to label %21 unwind label %22

21:                                               ; preds = %17
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  ret void

22:                                               ; preds = %17, %12, %7, %3
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  resume { ptr, i32 } %23
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 !prof !418 {
  store ptr %1, ptr %0, align 8, !tbaa !419
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %1, align 8, !tbaa !238
  %5 = getelementptr inbounds ptr, ptr %4, i64 23
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  store ptr %7, ptr %3, align 8, !tbaa !421
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !422 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !421
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !423 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !421
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !424

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !419
  %7 = load ptr, ptr %6, align 8, !tbaa !238
  %8 = getelementptr inbounds ptr, ptr %7, i64 24
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(36) %3) #20
          to label %11 unwind label %12

11:                                               ; preds = %5, %1
  ret void

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement5errorERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !213 {
  %5 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %6 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #20
  %7 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %6, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) #20
          to label %8 unwind label %23

8:                                                ; preds = %4
  %9 = load ptr, ptr %1, align 8, !tbaa !238
  %10 = getelementptr inbounds ptr, ptr %9, i64 6
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
          to label %13 unwind label %23

13:                                               ; preds = %8
  %14 = load ptr, ptr %0, align 8, !tbaa !238
  %15 = getelementptr inbounds ptr, ptr %14, i64 4
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
          to label %18 unwind label %23

18:                                               ; preds = %13
  %19 = load ptr, ptr %1, align 8, !tbaa !238
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef %12, ptr noundef %17) #20
          to label %22 unwind label %23

22:                                               ; preds = %18
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  ret void

23:                                               ; preds = %18, %13, %8, %4
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  resume { ptr, i32 } %24
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement5errorERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesEPKN11xercesc_2_77LocatorE(ptr nocapture noundef nonnull readnone align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !213 {
  %5 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %6 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #20
  %7 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %6, i32 noundef %2) #20
          to label %8 unwind label %18

8:                                                ; preds = %4
  %9 = load ptr, ptr %1, align 8, !tbaa !238
  %10 = getelementptr inbounds ptr, ptr %9, i64 6
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
          to label %13 unwind label %18

13:                                               ; preds = %8
  %14 = load ptr, ptr %1, align 8, !tbaa !238
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef %12, ptr noundef %3) #20
          to label %17 unwind label %18

17:                                               ; preds = %13
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  ret void

18:                                               ; preds = %13, %8, %4
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement4warnERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !213 {
  %4 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %5 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #20
  %6 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef %2) #20
          to label %7 unwind label %22

7:                                                ; preds = %3
  %8 = load ptr, ptr %1, align 8, !tbaa !238
  %9 = getelementptr inbounds ptr, ptr %8, i64 6
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
          to label %12 unwind label %22

12:                                               ; preds = %7
  %13 = load ptr, ptr %0, align 8, !tbaa !238
  %14 = getelementptr inbounds ptr, ptr %13, i64 4
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
          to label %17 unwind label %22

17:                                               ; preds = %12
  %18 = load ptr, ptr %1, align 8, !tbaa !238
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef %11, ptr noundef %16) #20
          to label %21 unwind label %22

21:                                               ; preds = %17
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  ret void

22:                                               ; preds = %17, %12, %7, %3
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  resume { ptr, i32 } %23
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement4warnERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesEPKN11xercesc_2_77LocatorE(ptr nocapture noundef nonnull readnone align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !213 {
  %5 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %6 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #20
  %7 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %6, i32 noundef %2) #20
          to label %8 unwind label %18

8:                                                ; preds = %4
  %9 = load ptr, ptr %1, align 8, !tbaa !238
  %10 = getelementptr inbounds ptr, ptr %9, i64 6
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
          to label %13 unwind label %18

13:                                               ; preds = %8
  %14 = load ptr, ptr %1, align 8, !tbaa !238
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef %12, ptr noundef %3) #20
          to label %17 unwind label %18

17:                                               ; preds = %13
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  ret void

18:                                               ; preds = %13, %8, %4
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement4warnERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !213 {
  %5 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %6 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #20
  %7 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %6, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) #20
          to label %8 unwind label %23

8:                                                ; preds = %4
  %9 = load ptr, ptr %1, align 8, !tbaa !238
  %10 = getelementptr inbounds ptr, ptr %9, i64 6
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
          to label %13 unwind label %23

13:                                               ; preds = %8
  %14 = load ptr, ptr %0, align 8, !tbaa !238
  %15 = getelementptr inbounds ptr, ptr %14, i64 4
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
          to label %18 unwind label %23

18:                                               ; preds = %13
  %19 = load ptr, ptr %1, align 8, !tbaa !238
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef %12, ptr noundef %17) #20
          to label %22 unwind label %23

22:                                               ; preds = %18
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  ret void

23:                                               ; preds = %18, %13, %8, %4
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  resume { ptr, i32 } %24
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement4warnERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_S6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !213 {
  %7 = alloca %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #21
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %1) #20
  %8 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #20
  %9 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %8, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef null) #20
          to label %10 unwind label %20

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !238
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
          to label %15 unwind label %20

15:                                               ; preds = %10
  %16 = load ptr, ptr %1, align 8, !tbaa !238
  %17 = getelementptr inbounds ptr, ptr %16, i64 8
  %18 = load ptr, ptr %17, align 8
  invoke void %18(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef null, ptr noundef %14) #20
          to label %19 unwind label %20

19:                                               ; preds = %15
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #21
  ret void

20:                                               ; preds = %15, %10, %6
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #21
  resume { ptr, i32 } %21
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 !prof !425 {
  store ptr %1, ptr %0, align 8, !tbaa !426
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %1, align 8, !tbaa !238
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(16) %1) #20
  store ptr %7, ptr %3, align 8, !tbaa !428
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !425 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !428
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !425 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !428
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !429

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !426
  %7 = load ptr, ptr %6, align 8, !tbaa !238
  %8 = getelementptr inbounds ptr, ptr %7, i64 6
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(36) %3) #20
          to label %11 unwind label %12

11:                                               ; preds = %5, %1
  ret void

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !213 {
  %4 = alloca %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1) #20
  %5 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #20
  %6 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef %2) #20
          to label %7 unwind label %17

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !238
  %9 = getelementptr inbounds ptr, ptr %8, i64 4
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
          to label %12 unwind label %17

12:                                               ; preds = %7
  %13 = load ptr, ptr %1, align 8, !tbaa !238
  %14 = getelementptr inbounds ptr, ptr %13, i64 7
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef null, ptr noundef %11) #20
          to label %16 unwind label %17

16:                                               ; preds = %12
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  ret void

17:                                               ; preds = %12, %7, %3
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringEPKN11xercesc_2_77LocatorE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !213 {
  %6 = alloca %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #21
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %1) #20
  %7 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #20
  %8 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) #20
          to label %9 unwind label %14

9:                                                ; preds = %5
  %10 = load ptr, ptr %1, align 8, !tbaa !238
  %11 = getelementptr inbounds ptr, ptr %10, i64 7
  %12 = load ptr, ptr %11, align 8
  invoke void %12(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef null, ptr noundef %4) #20
          to label %13 unwind label %14

13:                                               ; preds = %9
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  ret void

14:                                               ; preds = %9, %5
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  resume { ptr, i32 } %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !213 {
  %5 = alloca %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %1) #20
  %6 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #20
  %7 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %6, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) #20
          to label %8 unwind label %18

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !238
  %10 = getelementptr inbounds ptr, ptr %9, i64 4
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
          to label %13 unwind label %18

13:                                               ; preds = %8
  %14 = load ptr, ptr %1, align 8, !tbaa !238
  %15 = getelementptr inbounds ptr, ptr %14, i64 7
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef null, ptr noundef %12) #20
          to label %17 unwind label %18

17:                                               ; preds = %13
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  ret void

18:                                               ; preds = %13, %8, %4
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !213 {
  %6 = alloca %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #21
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %1) #20
  %7 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #20
  %8 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %4) #20
          to label %9 unwind label %19

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !238
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
          to label %14 unwind label %19

14:                                               ; preds = %9
  %15 = load ptr, ptr %1, align 8, !tbaa !238
  %16 = getelementptr inbounds ptr, ptr %15, i64 7
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef null, ptr noundef %13) #20
          to label %18 unwind label %19

18:                                               ; preds = %14
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  ret void

19:                                               ; preds = %14, %9, %5
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  resume { ptr, i32 } %20
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !213 {
  %6 = alloca %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #21
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %1) #20
  %7 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #20
  %8 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef null, ptr noundef null) #20
          to label %9 unwind label %19

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !238
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
          to label %14 unwind label %19

14:                                               ; preds = %9
  %15 = load ptr, ptr %1, align 8, !tbaa !238
  %16 = getelementptr inbounds ptr, ptr %15, i64 7
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef null, ptr noundef %13) #20
          to label %18 unwind label %19

18:                                               ; preds = %14
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  ret void

19:                                               ; preds = %14, %9, %5
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  resume { ptr, i32 } %20
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #2 comdat align 2 !prof !430 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !330
  ret i32 %3
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #9

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #12

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(2064) ptr @_ZNK11xalanc_1_1010Stylesheet17getStylesheetRootEv(ptr noundef nonnull align 8 dereferenceable(1504) %0) local_unnamed_addr #2 comdat align 2 !prof !431 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !432
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1010Stylesheet12findTemplateERNS_26StylesheetExecutionContextEPNS_9XalanNodeENS3_8NodeTypeERKNS_10XalanQNameEb(ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014StylesheetRoot14getDefaultRuleEv(ptr noundef nonnull align 8 dereferenceable(2064) %0) local_unnamed_addr #2 comdat align 2 !prof !213 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::StylesheetRoot", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !460
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014StylesheetRoot18getDefaultTextRuleEv(ptr noundef nonnull align 8 dereferenceable(2064) %0) local_unnamed_addr #2 comdat align 2 !prof !470 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::StylesheetRoot", ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !471
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014StylesheetRoot18getDefaultRootRuleEv(ptr noundef nonnull align 8 dereferenceable(2064) %0) local_unnamed_addr #2 comdat align 2 !prof !213 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::StylesheetRoot", ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !472
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011toCharArrayERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat !prof !473 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #20
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement11hasChildrenEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #2 comdat align 2 !prof !474 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !255
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1016ElemCallTemplate11getTemplateEv(ptr noundef nonnull align 8 dereferenceable(344) %0) local_unnamed_addr #2 comdat align 2 !prof !213 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemCallTemplate", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !475
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement21canGenerateAttributesEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #2 comdat align 2 !prof !477 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef 16) #20
  ret i1 %2
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017NamespacesHandler16postConstructionERNS_29StylesheetConstructionContextEbRKNS_14XalanDOMStringEPKS0_PKNS0_13PrefixCheckerE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement29getNamespaceForPrefixInternalERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 align 2 !prof !212 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement23getFinishedConstructionEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
  br i1 %3, label %7, label %4, !prof !478

4:                                                ; preds = %2
  %5 = tail call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1010Stylesheet30getNamespaceForPrefixFromStackERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1504) %5, ptr noundef nonnull align 8 dereferenceable(36) %1) #20
  br label %29

7:                                                ; preds = %2
  %8 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices11s_XMLStringE, align 8, !tbaa !252
  %9 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %8) #20
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices17s_XMLNamespaceURIE, align 8, !tbaa !252
  br label %29

12:                                               ; preds = %7
  %13 = tail call noundef nonnull align 8 dereferenceable(232) ptr @_ZNK11xalanc_1_1019ElemTemplateElement20getNamespacesHandlerEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
  %14 = tail call noundef ptr @_ZNK11xalanc_1_1017NamespacesHandler12getNamespaceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(232) %13, ptr noundef nonnull align 8 dereferenceable(36) %1) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !294
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement29getNamespaceForPrefixInternalERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %18, ptr noundef nonnull align 8 dereferenceable(36) %1) #20
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %16, %20
  %24 = tail call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #20
  %25 = load ptr, ptr %24, align 8, !tbaa !238
  %26 = getelementptr inbounds ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(1504) %24, ptr noundef nonnull align 8 dereferenceable(36) %1) #20
  br label %29

29:                                               ; preds = %10, %20, %23, %12, %4
  %30 = phi ptr [ %6, %4 ], [ %11, %10 ], [ %28, %23 ], [ %21, %20 ], [ %14, %12 ]
  ret ptr %30
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement20processPrefixControlERNS_29StylesheetConstructionContextERKNS_10StylesheetERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef %4) local_unnamed_addr #1 align 2 !prof !213 {
  %6 = load ptr, ptr @_ZN11xalanc_1_109Constants33ATTRNAME_EXTENSIONELEMENTPREFIXESE, align 8, !tbaa !252
  %7 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %6) #20
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 2
  %10 = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK11xalanc_1_1010Stylesheet13getNamespacesEv(ptr noundef nonnull align 8 dereferenceable(1504) %2) #20
  tail call void @_ZN11xalanc_1_1017NamespacesHandler31processExtensionElementPrefixesERNS_29StylesheetConstructionContextEPKtRKNS_10XalanDequeINS5_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS6_EEEENS7_IS9_EEEE(ptr noundef nonnull align 8 dereferenceable(232) %9, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(80) %10) #20
  br label %17

11:                                               ; preds = %5
  %12 = load ptr, ptr @_ZN11xalanc_1_109Constants32ATTRNAME_EXCLUDE_RESULT_PREFIXESE, align 8, !tbaa !252
  %13 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %12) #20
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 2
  %16 = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK11xalanc_1_1010Stylesheet13getNamespacesEv(ptr noundef nonnull align 8 dereferenceable(1504) %2) #20
  tail call void @_ZN11xalanc_1_1017NamespacesHandler28processExcludeResultPrefixesERNS_29StylesheetConstructionContextEPKtRKNS_10XalanDequeINS5_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS6_EEEENS7_IS9_EEEE(ptr noundef nonnull align 8 dereferenceable(232) %15, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(80) %16) #20
  br label %17

17:                                               ; preds = %11, %14, %8
  %18 = phi i1 [ true, %8 ], [ true, %14 ], [ false, %11 ]
  ret i1 %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat !prof !479 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #20
  ret i1 %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017NamespacesHandler31processExtensionElementPrefixesERNS_29StylesheetConstructionContextEPKtRKNS_10XalanDequeINS5_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS6_EEEENS7_IS9_EEEE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZNK11xalanc_1_1010Stylesheet13getNamespacesEv(ptr noundef nonnull align 8 dereferenceable(1504) %0) local_unnamed_addr #2 comdat align 2 !prof !480 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 8
  ret ptr %2
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017NamespacesHandler28processExcludeResultPrefixesERNS_29StylesheetConstructionContextEPKtRKNS_10XalanDequeINS5_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS6_EEEENS7_IS9_EEEE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat !prof !481 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #20
  ret i1 %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement23getFinishedConstructionEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #2 comdat align 2 !prof !212 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef 128) #20
  ret i1 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1010Stylesheet30getNamespaceForPrefixFromStackERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1504) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat align 2 !prof !482 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 8
  %4 = tail call noundef ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS1_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(36) %1) #20
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(232) ptr @_ZNK11xalanc_1_1019ElemTemplateElement20getNamespacesHandlerEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #2 comdat align 2 !prof !483 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1017NamespacesHandler12getNamespaceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #9

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS1_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy6getURIEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !213 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !309
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyC2EllRKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) unnamed_addr #1 align 2 !prof !344 {
  tail call void @_ZN11xalanc_1_1012XalanLocatorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1019ElemTemplateElement12LocatorProxyE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !238
  %5 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", ptr %0, i64 0, i32 1
  store i64 %1, ptr %5, align 8, !tbaa !310
  %6 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", ptr %0, i64 0, i32 2
  store i64 %2, ptr %6, align 8, !tbaa !311
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", ptr %0, i64 0, i32 3
  store ptr %3, ptr %7, align 8, !tbaa !252
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1012XalanLocatorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !344 {
  tail call void @_ZN11xercesc_2_77LocatorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1012XalanLocatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !238
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77LocatorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !484 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_77LocatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !238
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77LocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !484 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1012XalanLocatorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
  tail call void @llvm.trap() #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77LocatorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
  tail call void @llvm.trap() #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 align 2 !prof !344 {
  tail call void @_ZN11xercesc_2_77LocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #22
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_ElemTemplateElement.cpp() #8 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  tail call fastcc void @__cxx_global_var_init.1()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

attributes #0 = { mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { noreturn nounwind }
attributes #20 = { optsize }
attributes #21 = { nounwind }
attributes #22 = { nounwind optsize }
attributes #23 = { noreturn }
attributes #24 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!211}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210}
!36 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement29getNamespaceForPrefixInternalERKNS_14XalanDOMStringE, i64 165}
!37 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1011TracerEventC1ERKNS_26StylesheetExecutionContextERKNS_19ElemTemplateElementE, i64 1}
!38 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1011TracerEventD1Ev, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement11hasChildrenEv, i64 433}
!40 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv, i64 623}
!41 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12hasVariablesEv, i64 407}
!42 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement9hasParamsEv, i64 409}
!43 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1016ElemCallTemplate11getTemplateEv, i64 1}
!44 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21canGenerateAttributesEv, i64 148}
!45 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement9hasParamsEv, i64 46307078}
!46 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12hasVariablesEv, i64 46307077}
!47 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement9hasParamsEv, i64 46307078}
!48 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12hasVariablesEv, i64 46307077}
!49 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17hasDirectTemplateEv, i64 23887976}
!50 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17hasDirectTemplateEv, i64 136276664}
!51 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17hasDirectTemplateEv, i64 68726179}
!52 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_, i64 1}
!53 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv, i64 409}
!54 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @__cxa_allocate_exception, i64 1}
!55 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE, i64 1}
!56 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv, i64 397106}
!57 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv, i64 961931}
!58 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1010Stylesheet17getStylesheetRootEv, i64 961930}
!59 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1010Stylesheet12findTemplateERNS_26StylesheetExecutionContextEPNS_9XalanNodeENS3_8NodeTypeERKNS_10XalanQNameEb, i64 397106}
!60 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1014StylesheetRoot14getDefaultRuleEv, i64 2}
!61 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1014StylesheetRoot18getDefaultTextRuleEv, i64 564822}
!62 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1014StylesheetRoot18getDefaultRootRuleEv, i64 1}
!63 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, i64 1}
!64 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZN11xalanc_1_1011toCharArrayERKNS_14XalanDOMStringE, i64 1}
!65 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZN11xalanc_1_1011TracerEventC1ERKNS_26StylesheetExecutionContextERKNS_19ElemTemplateElementE, i64 1}
!66 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZN11xalanc_1_1011TracerEventD1Ev, i64 1}
!67 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_, ptr @_ZN11xalanc_1_1017NamespacesHandler16postConstructionERNS_29StylesheetConstructionContextEbRKNS_14XalanDOMStringEPKS0_PKNS0_13PrefixCheckerE, i64 245}
!68 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!69 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!70 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!71 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!72 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!73 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!74 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!75 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!76 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!77 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!78 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!79 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, ptr @_ZN11xalanc_1_1014PrefixResolverC2Ev, i64 395}
!80 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, ptr @_ZN11xalanc_1_1010Stylesheet20getNamespacesHandlerEv, i64 395}
!81 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, ptr @_ZN11xalanc_1_1010Stylesheet13getNamespacesEv, i64 395}
!82 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, ptr @_ZNK11xalanc_1_1010Stylesheet19getXSLTNamespaceURIEv, i64 395}
!83 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, ptr @_ZN11xalanc_1_1017NamespacesHandlerC1ERNS_29StylesheetConstructionContextERKS0_RKNS_10XalanDequeINS5_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS6_EEEENS7_IS9_EEEERKNS_14XalanDOMStringE, i64 395}
!84 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, ptr @_ZNK11xalanc_1_1010Stylesheet31getCurrentIncludeBaseIdentifierEv, i64 395}
!85 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, ptr @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyC2EllRKNS_14XalanDOMStringE, i64 395}
!86 = !{ptr @_ZNK11xalanc_1_1010Stylesheet31getCurrentIncludeBaseIdentifierEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE5emptyEv, i64 395}
!87 = !{ptr @_ZNK11xalanc_1_1010Stylesheet31getCurrentIncludeBaseIdentifierEv, ptr @_ZNK11xalanc_1_1010Stylesheet17getBaseIdentifierEv, i64 1}
!88 = !{ptr @_ZNK11xalanc_1_1010Stylesheet31getCurrentIncludeBaseIdentifierEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE4backEv, i64 394}
!89 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 2082773}
!90 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiRKNS_14XalanDOMStringEii, ptr @_ZN11xalanc_1_1014PrefixResolverC2Ev, i64 455}
!91 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiRKNS_14XalanDOMStringEii, ptr @_ZN11xalanc_1_1024XPathConstructionContext16getMemoryManagerEv, i64 455}
!92 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiRKNS_14XalanDOMStringEii, ptr @_ZN11xalanc_1_1017NamespacesHandlerC1ERN11xercesc_2_713MemoryManagerE, i64 455}
!93 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiRKNS_14XalanDOMStringEii, ptr @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyC2EllRKNS_14XalanDOMStringE, i64 455}
!94 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev, ptr @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyD2Ev, i64 850}
!95 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev, ptr @_ZN11xalanc_1_1017NamespacesHandlerD1Ev, i64 850}
!96 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev, ptr @_ZN11xalanc_1_1014PrefixResolverD2Ev, i64 850}
!97 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv, i64 12}
!98 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE, i64 1}
!99 = !{ptr @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt, i64 1899}
!100 = !{ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, i64 1899}
!101 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 1899}
!102 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, i64 1899}
!103 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 807446}
!104 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 403723}
!105 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!106 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!107 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!108 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!109 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement9hasParamsEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE, i64 92614564}
!110 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement12hasVariablesEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE, i64 92614562}
!111 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement17hasDirectTemplateEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE, i64 229314010}
!112 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement21beginChildrenToStringERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18hasSingleTextChildEv, i64 40062}
!113 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement21beginChildrenToStringERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1015ElemTextLiteral7getTextEv, i64 1}
!114 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement21beginChildrenToStringERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1015ElemTextLiteral9getLengthEv, i64 1}
!115 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement21beginChildrenToStringERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_106assignERNS_14XalanDOMStringEPKtj, i64 1}
!116 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement21beginChildrenToStringERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, i64 40061}
!117 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement21beginChildrenToStringERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_107reserveERNS_14XalanDOMStringEj, i64 40061}
!118 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement18hasSingleTextChildEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE, i64 80124}
!119 = !{ptr @_ZN11xalanc_1_106assignERNS_14XalanDOMStringEPKtj, ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, i64 159}
!120 = !{ptr @_ZN11xalanc_1_106assignERNS_14XalanDOMStringEPKtj, ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj, i64 44748363}
!121 = !{ptr @_ZN11xalanc_1_107reserveERNS_14XalanDOMStringEj, ptr @_ZN11xalanc_1_1014XalanDOMString7reserveEj, i64 77696}
!122 = !{ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, i64 66708615}
!123 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 2169010}
!124 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 1084505}
!125 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, i64 1084505}
!126 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 89933972}
!127 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 44966986}
!128 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 44966986}
!129 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 1179818}
!130 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 1179818}
!131 = !{ptr @_ZN11xalanc_1_1014XalanDOMString7reserveEj, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 77704}
!132 = !{ptr @_ZN11xalanc_1_1014XalanDOMString7reserveEj, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm, i64 77704}
!133 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 141227382}
!134 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 64551564}
!135 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 129103172}
!136 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 64551586}
!137 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 64551586}
!138 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 64551586}
!139 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm, i64 19}
!140 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 19}
!141 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 19}
!142 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 19}
!143 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 19}
!144 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 19}
!145 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 19}
!146 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 19}
!147 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm, i64 64551584}
!148 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 64551608}
!149 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 170601494}
!150 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm, i64 1}
!151 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 64147281}
!152 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 311655952}
!153 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, i64 157736530}
!154 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv, i64 155828045}
!155 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 240731456}
!156 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, i64 133170775}
!157 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE, i64 30012996397}
!158 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, i64 22657270}
!159 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 20748786}
!160 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 20748766}
!161 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246159}
!162 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 20748647}
!163 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 20748786}
!164 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614813}
!165 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, i64 1908484}
!166 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_, i64 1}
!167 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 82509}
!168 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 82509}
!169 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 82509}
!170 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 185895030}
!171 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 156073599}
!172 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, i64 133170778}
!173 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 22}
!174 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 133170778}
!175 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 155828047}
!176 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 248301312}
!177 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 124150655}
!178 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE, i64 124150655}
!179 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 1}
!180 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 1}
!181 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 1}
!182 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 1}
!183 = !{ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, ptr @_ZSt12__miter_baseIPKtET_S2_, i64 3901146}
!184 = !{ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!185 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 185895030}
!186 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 185895030}
!187 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_baseIPKtET_S2_, i64 3901146}
!188 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_baseIPtET_S1_, i64 1950573}
!189 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!190 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_, i64 1950573}
!191 = !{ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!192 = !{ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_, i64 1950573}
!193 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 230527000}
!194 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, i64 230527000}
!195 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 1414337976}
!196 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement19endChildrenToStringERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18hasSingleTextChildEv, i64 40062}
!197 = !{ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev, ptr @__clang_call_terminate, i64 64}
!198 = !{ptr @_ZN11xalanc_1_1011toCharArrayERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 45868073}
!199 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement21canGenerateAttributesEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE, i64 336}
!200 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement29getNamespaceForPrefixInternalERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement23getFinishedConstructionEv, i64 165}
!201 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement29getNamespaceForPrefixInternalERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv, i64 164}
!202 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement29getNamespaceForPrefixInternalERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1010Stylesheet30getNamespaceForPrefixFromStackERKNS_14XalanDOMStringE, i64 164}
!203 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement29getNamespaceForPrefixInternalERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_, i64 1}
!204 = !{ptr @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_, ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_, i64 4704705}
!205 = !{ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_, i64 555646850}
!206 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement23getFinishedConstructionEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE, i64 165}
!207 = !{ptr @_ZNK11xalanc_1_1010Stylesheet30getNamespaceForPrefixFromStackERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS1_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEERKNS_14XalanDOMStringE, i64 555}
!208 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyC2EllRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1012XalanLocatorC2Ev, i64 850}
!209 = !{ptr @_ZN11xalanc_1_1012XalanLocatorC2Ev, ptr @_ZN11xercesc_2_77LocatorC2Ev, i64 850}
!210 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyD2Ev, ptr @_ZN11xercesc_2_77LocatorD2Ev, i64 850}
!211 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!212 = !{!"function_entry_count", i64 165}
!213 = !{!"function_entry_count", i64 0}
!214 = !{!"function_entry_count", i64 168057}
!215 = !{!216, !218, i64 8}
!216 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !217, i64 0, !218, i64 8, !221, i64 16, !232, i64 248, !218, i64 256, !218, i64 264, !218, i64 272, !219, i64 280, !233, i64 288, !236, i64 320}
!217 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!218 = !{!"any pointer", !219, i64 0}
!219 = !{!"omnipotent char", !220, i64 0}
!220 = !{!"Simple C++ TBAA"}
!221 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !222, i64 0, !224, i64 32, !225, i64 64, !226, i64 96}
!222 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !218, i64 0, !223, i64 8, !223, i64 16, !218, i64 24}
!223 = !{!"long", !219, i64 0}
!224 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !218, i64 0, !223, i64 8, !223, i64 16, !218, i64 24}
!225 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !218, i64 0, !223, i64 8, !223, i64 16, !218, i64 24}
!226 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !227, i64 0, !228, i64 1, !218, i64 8, !229, i64 16, !223, i64 24, !223, i64 32, !230, i64 40, !230, i64 64, !231, i64 88, !223, i64 120, !223, i64 128}
!227 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!228 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!229 = !{!"float", !219, i64 0}
!230 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !218, i64 0, !218, i64 8, !218, i64 16}
!231 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !218, i64 0, !223, i64 8, !223, i64 16, !218, i64 24}
!232 = !{!"int", !219, i64 0}
!233 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !234, i64 0, !223, i64 8, !223, i64 16, !218, i64 24}
!234 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !235, i64 0}
!235 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!236 = !{!"short", !219, i64 0}
!237 = !{!"function_entry_count", i64 135898737}
!238 = !{!239, !239, i64 0}
!239 = !{!"vtable pointer", !220, i64 0}
!240 = !{!"branch_weights", i32 135898738, i32 1}
!241 = !{!"function_entry_count", i64 23581092}
!242 = !{!"function_entry_count", i64 1}
!243 = !{!"branch_weights", i32 181720133, i32 1}
!244 = distinct !{!244, !245}
!245 = !{!"llvm.loop.mustprogress"}
!246 = !{!"branch_weights", i32 1, i32 31}
!247 = !{!"branch_weights", i32 90891623, i32 90828512}
!248 = !{!"branch_weights", i32 31, i32 -1387445183}
!249 = distinct !{!249, !245}
!250 = distinct !{!250, !245}
!251 = !{!"function_entry_count", i64 386423474}
!252 = !{!218, !218, i64 0}
!253 = !{!"function_entry_count", i64 6}
!254 = !{!216, !236, i64 320}
!255 = !{!219, !219, i64 0}
!256 = !{!"branch_weights", i32 3, i32 4}
!257 = !{!"branch_weights", i32 4, i32 0}
!258 = distinct !{!258, !245}
!259 = !{!"function_entry_count", i64 433}
!260 = !{!"branch_weights", i32 217, i32 218}
!261 = !{}
!262 = !{!"branch_weights", i32 21456, i32 11248, i32 432}
!263 = !{!"branch_weights", i32 9, i32 399}
!264 = !{!"branch_weights", i32 2011709948, i32 135773700}
!265 = !{!"branch_weights", i32 216, i32 191}
!266 = distinct !{!266, !245}
!267 = !{!"branch_weights", i32 67, i32 8}
!268 = !{!"branch_weights", i32 3, i32 1}
!269 = !{!"branch_weights", i32 149, i32 1}
!270 = !{!"function_entry_count", i64 91482242}
!271 = !{!"function_entry_count", i64 46307078}
!272 = !{!"branch_weights", i32 1, i32 46307079}
!273 = !{!"branch_weights", i32 22419102, i32 23887978}
!274 = !{!"branch_weights", i32 1, i32 23887978}
!275 = !{!"function_entry_count", i64 559}
!276 = !{!"branch_weights", i32 560, i32 1720}
!277 = distinct !{!277, !245}
!278 = !{!"function_entry_count", i64 159027556}
!279 = !{!216, !218, i64 264}
!280 = !{!"function_entry_count", i64 136276664}
!281 = !{!"branch_weights", i32 1, i32 136276665}
!282 = !{!"branch_weights", i32 68303308, i32 67973358}
!283 = !{!"branch_weights", i32 136276665, i32 1}
!284 = distinct !{!284, !245}
!285 = !{!"function_entry_count", i64 68726179}
!286 = !{!"branch_weights", i32 1, i32 68726180}
!287 = !{!"branch_weights", i32 262216, i32 68463965}
!288 = !{!"branch_weights", i32 68463965, i32 1}
!289 = !{!"function_entry_count", i64 136437321}
!290 = !{!"function_entry_count", i64 651}
!291 = !{!216, !218, i64 272}
!292 = !{!"function_entry_count", i64 435}
!293 = !{!"function_entry_count", i64 386518941}
!294 = !{!216, !218, i64 256}
!295 = !{!"function_entry_count", i64 409}
!296 = !{!"branch_weights", i32 410, i32 1}
!297 = !{!"branch_weights", i32 220, i32 191}
!298 = !{!"function_entry_count", i64 397107}
!299 = !{!"branch_weights", i32 397108, i32 1}
!300 = !{!"branch_weights", i32 1, i32 397108}
!301 = !{!"branch_weights", i32 907002893, i32 1240480755}
!302 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 167721, i32 1, i32 1}
!303 = !{!"branch_weights", i32 1, i32 2147483647}
!304 = !{!"branch_weights", i32 167721, i32 229388}
!305 = !{!"branch_weights", i32 1, i32 1, i32 167721, i32 1}
!306 = !{!"branch_weights", i32 229388, i32 1}
!307 = !{!"function_entry_count", i64 351}
!308 = !{!"function_entry_count", i64 245}
!309 = !{!233, !218, i64 24}
!310 = !{!233, !223, i64 8}
!311 = !{!233, !223, i64 16}
!312 = !{!"function_entry_count", i64 43398227}
!313 = !{!"function_entry_count", i64 128698679}
!314 = !{!315, !223, i64 16}
!315 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !218, i64 0, !223, i64 8, !223, i64 16, !218, i64 24}
!316 = !{!"branch_weights", i32 43398290, i32 85300391}
!317 = !{!315, !218, i64 24}
!318 = !{!"function_entry_count", i64 6521798503}
!319 = !{!"function_entry_count", i64 85300390}
!320 = !{!"branch_weights", i32 1, i32 12185770}
!321 = !{!"branch_weights", i32 12185770, i32 -193930395}
!322 = distinct !{!322, !245}
!323 = !{!"function_entry_count", i64 227375739}
!324 = !{!"function_entry_count", i64 568333389}
!325 = !{!315, !218, i64 0}
!326 = !{!"function_entry_count", i64 30137156670}
!327 = !{!"function_entry_count", i64 825654975}
!328 = !{!315, !223, i64 8}
!329 = !{!"function_entry_count", i64 395}
!330 = !{!216, !232, i64 248}
!331 = !{!"function_entry_count", i64 416}
!332 = !{!"function_entry_count", i64 597}
!333 = !{!"branch_weights", i32 1, i32 396}
!334 = !{!"function_entry_count", i64 2082773}
!335 = !{!336, !223, i64 8}
!336 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEE", !218, i64 0, !223, i64 8, !223, i64 16, !218, i64 24}
!337 = !{!"function_entry_count", i64 441}
!338 = !{!336, !218, i64 24}
!339 = !{!"function_entry_count", i64 3667263}
!340 = !{!"function_entry_count", i64 455}
!341 = !{!"function_entry_count", i64 2273}
!342 = !{!343, !218, i64 8}
!343 = !{!"_ZTSN11xalanc_1_1024XPathConstructionContextE", !218, i64 8}
!344 = !{!"function_entry_count", i64 850}
!345 = !{!"function_entry_count", i64 12}
!346 = !{!"branch_weights", i32 1, i32 13}
!347 = !{!"function_entry_count", i64 962142}
!348 = !{!"function_entry_count", i64 1899}
!349 = !{!"function_entry_count", i64 403723}
!350 = !{!"function_entry_count", i64 967143541}
!351 = !{!"branch_weights", i32 403628487, i32 563515056}
!352 = !{!"function_entry_count", i64 3070433826}
!353 = !{!"function_entry_count", i64 1083116306}
!354 = !{!"function_entry_count", i64 565220908}
!355 = !{!"function_entry_count", i64 92614564}
!356 = !{!"function_entry_count", i64 92614562}
!357 = !{!"function_entry_count", i64 417098446}
!358 = !{!"function_entry_count", i64 229314010}
!359 = !{!"function_entry_count", i64 40062}
!360 = !{!"branch_weights", i32 1, i32 40063}
!361 = !{!"function_entry_count", i64 80124}
!362 = !{!"function_entry_count", i64 44748522}
!363 = !{!"branch_weights", i32 159, i32 44748365}
!364 = !{!365, !218, i64 328}
!365 = !{!"_ZTSN11xalanc_1_1015ElemTextLiteralE", !216, i64 0, !366, i64 322, !218, i64 328, !232, i64 336}
!366 = !{!"bool", !219, i64 0}
!367 = !{!365, !232, i64 336}
!368 = !{!"function_entry_count", i64 77696}
!369 = !{!"function_entry_count", i64 66708615}
!370 = !{!"function_entry_count", i64 1084505}
!371 = !{!"function_entry_count", i64 44966986}
!372 = !{!"function_entry_count", i64 1179818}
!373 = !{!"function_entry_count", i64 77704}
!374 = !{!"function_entry_count", i64 70613691}
!375 = !{!"branch_weights", i32 64551566, i32 6062127}
!376 = !{!"function_entry_count", i64 64551586}
!377 = !{!"function_entry_count", i64 64551608}
!378 = !{!"branch_weights", i32 64551591, i32 19}
!379 = !{!"branch_weights", i32 5, i32 64551587}
!380 = !{!"function_entry_count", i64 85300747}
!381 = !{!223, !223, i64 0}
!382 = !{!"function_entry_count", i64 18}
!383 = !{!"function_entry_count", i64 64147281}
!384 = !{!"branch_weights", i32 64147282, i32 1}
!385 = !{!"function_entry_count", i64 155828046}
!386 = !{!"branch_weights", i32 1, i32 155828047}
!387 = !{!"branch_weights", i32 133170778, i32 22657270}
!388 = !{!"branch_weights", i32 1, i32 19024396}
!389 = !{!"branch_weights", i32 19024396, i32 -26420600}
!390 = distinct !{!390, !245}
!391 = !{!"branch_weights", i32 20748787, i32 1908484}
!392 = !{!"branch_weights", i32 1, i32 1908484}
!393 = !{!"branch_weights", i32 1, i32 1908483}
!394 = !{!"branch_weights", i32 1908483, i32 49797857}
!395 = distinct !{!395, !245}
!396 = !{!"branch_weights", i32 1908483, i32 1}
!397 = distinct !{!397, !245}
!398 = distinct !{!398, !245}
!399 = !{!"function_entry_count", i64 82509}
!400 = !{!"function_entry_count", i64 185895030}
!401 = !{!"function_entry_count", i64 156073599}
!402 = !{!"function_entry_count", i64 133170778}
!403 = !{!"branch_weights", i32 22, i32 133170758}
!404 = !{!236, !236, i64 0}
!405 = !{!"function_entry_count", i64 155828047}
!406 = !{!"function_entry_count", i64 124150656}
!407 = !{!"branch_weights", i32 124150657, i32 1}
!408 = !{!"function_entry_count", i64 1950573}
!409 = !{!"function_entry_count", i64 3901146}
!410 = !{!"function_entry_count", i64 30109074}
!411 = !{!"function_entry_count", i64 86426076}
!412 = !{!"branch_weights", i32 28199083, i32 1909993}
!413 = !{!"function_entry_count", i64 56317002}
!414 = !{!"function_entry_count", i64 230527000}
!415 = !{!"function_entry_count", i64 1414337976}
!416 = !{!417, !232, i64 32}
!417 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !315, i64 0, !232, i64 32}
!418 = !{!"function_entry_count", i64 67594463}
!419 = !{!420, !218, i64 0}
!420 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringE", !218, i64 0, !218, i64 8}
!421 = !{!420, !218, i64 8}
!422 = !{!"function_entry_count", i64 201578993}
!423 = !{!"function_entry_count", i64 134708288}
!424 = !{!"branch_weights", i32 67113826, i32 67594464}
!425 = !{!"function_entry_count", i64 1769}
!426 = !{!427, !218, i64 0}
!427 = !{!"_ZTSN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringE", !218, i64 0, !218, i64 8}
!428 = !{!427, !218, i64 8}
!429 = !{!"branch_weights", i32 1, i32 1770}
!430 = !{!"function_entry_count", i64 46114577}
!431 = !{!"function_entry_count", i64 961942}
!432 = !{!433, !218, i64 8}
!433 = !{!"_ZTSN11xalanc_1_1010StylesheetE", !217, i64 0, !218, i64 8, !417, i64 16, !434, i64 56, !435, i64 88, !417, i64 120, !436, i64 160, !223, i64 192, !437, i64 200, !439, i64 280, !366, i64 360, !441, i64 368, !218, i64 504, !336, i64 512, !446, i64 544, !451, i64 680, !452, i64 712, !453, i64 720, !456, i64 856, !458, i64 864, !453, i64 896, !456, i64 1032, !458, i64 1040, !458, i64 1072, !458, i64 1104, !458, i64 1136, !458, i64 1168, !458, i64 1200, !223, i64 1232, !459, i64 1240, !221, i64 1272}
!434 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14KeyDeclarationENS_31MemoryManagedConstructionTraitsIS1_EEEE", !218, i64 0, !223, i64 8, !223, i64 16, !218, i64 24}
!435 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_20XalanSpaceNodeTesterENS_31MemoryManagedConstructionTraitsIS1_EEEE", !218, i64 0, !223, i64 8, !223, i64 16, !218, i64 24}
!436 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_10StylesheetENS_31MemoryManagedConstructionTraitsIS2_EEEE", !218, i64 0, !223, i64 8, !223, i64 16, !218, i64 24}
!437 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS0_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEENS2_IS4_EEEE", !218, i64 0, !223, i64 8, !438, i64 16, !438, i64 48}
!438 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_10XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEENS_31MemoryManagedConstructionTraitsIS8_EEEE", !218, i64 0, !223, i64 8, !223, i64 16, !218, i64 24}
!439 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEE", !218, i64 0, !223, i64 8, !440, i64 16, !440, i64 48}
!440 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEENS_31MemoryManagedConstructionTraitsIS5_EEEE", !218, i64 0, !223, i64 8, !223, i64 16, !218, i64 24}
!441 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS1_EEEE", !442, i64 0, !443, i64 1, !218, i64 8, !229, i64 16, !223, i64 24, !223, i64 32, !444, i64 40, !444, i64 64, !445, i64 88, !223, i64 120, !223, i64 128}
!442 = !{!"_ZTSN11xalanc_1_1021DOMStringHashFunctionE"}
!443 = !{!"_ZTSSt8equal_toIN11xalanc_1_1014XalanDOMStringEE"}
!444 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !218, i64 0, !218, i64 8, !218, i64 16}
!445 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !218, i64 0, !223, i64 8, !223, i64 16, !218, i64 24}
!446 = !{!"_ZTSN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS1_EEEE", !447, i64 0, !448, i64 1, !218, i64 8, !229, i64 16, !223, i64 24, !223, i64 32, !449, i64 40, !449, i64 64, !450, i64 88, !223, i64 120, !223, i64 128}
!447 = !{!"_ZTSN11xalanc_1_1024XalanHashMemberReferenceINS_10XalanQNameEEE"}
!448 = !{!"_ZTSSt8equal_toIN11xalanc_1_1010XalanQNameEE"}
!449 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !218, i64 0, !218, i64 8, !218, i64 16}
!450 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEEE", !218, i64 0, !223, i64 8, !223, i64 16, !218, i64 24}
!451 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEEE", !218, i64 0, !223, i64 8, !223, i64 16, !218, i64 24}
!452 = !{!"double", !219, i64 0}
!453 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS5_EEEENS_17XalanMapKeyTraitsIS1_EEEE", !442, i64 0, !443, i64 1, !218, i64 8, !229, i64 16, !223, i64 24, !223, i64 32, !454, i64 40, !454, i64 64, !455, i64 88, !223, i64 120, !223, i64 128}
!454 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS6_EEEENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !218, i64 0, !218, i64 8, !218, i64 16}
!455 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS0_IPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISE_E4NodeEEENS8_ISJ_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEEE", !218, i64 0, !223, i64 8, !223, i64 16, !218, i64 24}
!456 = !{!"_ZTSN11xalanc_1_1016XalanMapIteratorINS_27XalanMapConstIteratorTraitsISt4pairIKNS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS8_EEEEEEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIS3_SB_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISK_E4NodeEEEEE", !457, i64 0}
!457 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISE_E4NodeEEE", !218, i64 0}
!458 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS3_EEEE", !218, i64 0, !223, i64 8, !223, i64 16, !218, i64 24}
!459 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_17ElemDecimalFormatENS_31MemoryManagedConstructionTraitsIS2_EEEE", !218, i64 0, !223, i64 8, !223, i64 16, !218, i64 24}
!460 = !{!461, !218, i64 1888}
!461 = !{!"_ZTSN11xalanc_1_1014StylesheetRootE", !433, i64 0, !417, i64 1504, !462, i64 1544, !417, i64 1552, !417, i64 1592, !417, i64 1632, !417, i64 1672, !366, i64 1712, !417, i64 1720, !417, i64 1760, !463, i64 1800, !464, i64 1808, !366, i64 1840, !336, i64 1848, !218, i64 1880, !218, i64 1888, !218, i64 1896, !366, i64 1904, !366, i64 1905, !232, i64 1908, !366, i64 1912, !223, i64 1920, !465, i64 1928}
!462 = !{!"_ZTSN11xalanc_1_1014StylesheetRoot11eIndentTypeE", !219, i64 0}
!463 = !{!"_ZTSN11xalanc_1_1017FormatterListener7eFormatE", !219, i64 0}
!464 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_10XalanQNameENS_31MemoryManagedConstructionTraitsIS3_EEEE", !218, i64 0, !223, i64 8, !223, i64 16, !218, i64 24}
!465 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_10XalanQNameENS_11XalanVectorIPNS_16ElemAttributeSetENS_31MemoryManagedConstructionTraitsIS6_EEEENS_17XalanMapKeyTraitsIS3_EEEE", !466, i64 0, !467, i64 1, !218, i64 8, !229, i64 16, !223, i64 24, !223, i64 32, !468, i64 40, !468, i64 64, !469, i64 88, !223, i64 120, !223, i64 128}
!466 = !{!"_ZTSN11xalanc_1_1022XalanHashMemberPointerINS_10XalanQNameEEE"}
!467 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_10XalanQNameEEE"}
!468 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_10XalanQNameENS_11XalanVectorIPNS_16ElemAttributeSetENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !218, i64 0, !218, i64 8, !218, i64 16}
!469 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_10XalanQNameENS0_IPNS_16ElemAttributeSetENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISF_E4NodeEEENS9_ISK_EEEENS_32ConstructWithMemoryManagerTraitsISM_EEEE", !218, i64 0, !223, i64 8, !223, i64 16, !218, i64 24}
!470 = !{!"function_entry_count", i64 564827}
!471 = !{!461, !218, i64 1880}
!472 = !{!461, !218, i64 1896}
!473 = !{!"function_entry_count", i64 45868073}
!474 = !{!"function_entry_count", i64 60135}
!475 = !{!476, !218, i64 336}
!476 = !{!"_ZTSN11xalanc_1_1016ElemCallTemplateE", !216, i64 0, !218, i64 328, !218, i64 336}
!477 = !{!"function_entry_count", i64 336}
!478 = !{!"branch_weights", i32 1, i32 166}
!479 = !{!"function_entry_count", i64 4704705}
!480 = !{!"function_entry_count", i64 259}
!481 = !{!"function_entry_count", i64 555646850}
!482 = !{!"function_entry_count", i64 555}
!483 = !{!"function_entry_count", i64 1048980}
!484 = !{!"function_entry_count", i64 855}
