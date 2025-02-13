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
%"class.xalanc_1_10::TracerEvent" = type { ptr, ptr, ptr }
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

$_ZN11xalanc_1_1010Stylesheet20getNamespacesHandlerEv = comdat any

$_ZN11xalanc_1_1010Stylesheet13getNamespacesEv = comdat any

$_ZNK11xalanc_1_1010Stylesheet19getXSLTNamespaceURIEv = comdat any

$_ZNK11xalanc_1_1010Stylesheet31getCurrentIncludeBaseIdentifierEv = comdat any

$_ZN11xalanc_1_1024XPathConstructionContext16getMemoryManagerEv = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv = comdat any

$_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement9hasParamsEv = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement12hasVariablesEv = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement17hasDirectTemplateEv = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement18hasSingleTextChildEv = comdat any

$_ZN11xalanc_1_106assignERNS_14XalanDOMStringEPKtj = comdat any

$_ZNK11xalanc_1_1015ElemTextLiteral7getTextEv = comdat any

$_ZNK11xalanc_1_1015ElemTextLiteral9getLengthEv = comdat any

$_ZN11xalanc_1_107reserveERNS_14XalanDOMStringEj = comdat any

$_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE = comdat any

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

$_ZNK11xalanc_1_1019ElemTemplateElement23getFinishedConstructionEv = comdat any

$_ZNK11xalanc_1_1010Stylesheet30getNamespaceForPrefixFromStackERKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement20getNamespacesHandlerEv = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy6getURIEv = comdat any

$_ZN11xalanc_1_1012XalanLocatorC2Ev = comdat any

$_ZNK11xalanc_1_1014XalanDOMString4sizeEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE5emptyEv = comdat any

$_ZNK11xalanc_1_1010Stylesheet17getBaseIdentifierEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE4backEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_ = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE = comdat any

$_ZN11xalanc_1_1014XalanDOMString6assignEPKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6assignEPKtj = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

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

$_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_ = comdat any

$_ZN11xercesc_2_77LocatorC2Ev = comdat any

$_ZN11xercesc_2_77LocatorD2Ev = comdat any

$_ZN11xalanc_1_1012XalanLocatorD0Ev = comdat any

$_ZN11xercesc_2_77LocatorD0Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZTSN11xalanc_1_1012XalanLocatorE = comdat any

$_ZTSN11xercesc_2_77LocatorE = comdat any

$_ZTIN11xercesc_2_77LocatorE = comdat any

$_ZTIN11xalanc_1_1012XalanLocatorE = comdat any

$_ZTVN11xalanc_1_1012XalanLocatorE = comdat any

$_ZTVN11xercesc_2_77LocatorE = comdat any

@_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE = dso_local global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZN11xalanc_1_1019ElemTemplateElement12s_emptyQNameE = dso_local global %"class.xalanc_1_10::XalanQNameByReference" zeroinitializer, align 8
@_ZTVN11xalanc_1_1019ElemTemplateElementE = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1019ElemTemplateElementE, ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev, ptr @_ZN11xalanc_1_1019ElemTemplateElementD0Ev, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv, ptr @__cxa_pure_virtual, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb, ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8getXPathEj, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi, ptr @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_] }, align 8
@_ZN11xalanc_1_109Constants16ATTRVAL_PRESERVEE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants15ATTRVAL_DEFAULTE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants32ELEMNAME_SORT_WITH_PREFIX_STRINGE = external local_unnamed_addr constant ptr, align 8
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr
@_ZN11xalanc_1_109Constants33ATTRNAME_EXTENSIONELEMENTPREFIXESE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants32ATTRNAME_EXCLUDE_RESULT_PREFIXESE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices11s_XMLStringE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices17s_XMLNamespaceURIE = external local_unnamed_addr constant ptr, align 8
@_ZTVN11xalanc_1_1019ElemTemplateElement12LocatorProxyE = dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1019ElemTemplateElement12LocatorProxyE, ptr @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyD2Ev, ptr @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyD0Ev, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy11getPublicIdEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy11getSystemIdEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy13getLineNumberEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy15getColumnNumberEv] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1019ElemTemplateElementE = dso_local constant [37 x i8] c"N11xalanc_1_1019ElemTemplateElementE\00", align 1
@_ZTIN11xalanc_1_1014PrefixResolverE = external constant ptr
@_ZTIN11xalanc_1_1019ElemTemplateElementE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1019ElemTemplateElementE, ptr @_ZTIN11xalanc_1_1014PrefixResolverE }, align 8
@_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE = dso_local constant [51 x i8] c"N11xalanc_1_1019ElemTemplateElement12LocatorProxyE\00", align 1
@_ZTSN11xalanc_1_1012XalanLocatorE = linkonce_odr dso_local constant [30 x i8] c"N11xalanc_1_1012XalanLocatorE\00", comdat, align 1
@_ZTSN11xercesc_2_77LocatorE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77LocatorE\00", comdat, align 1
@_ZTIN11xercesc_2_77LocatorE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77LocatorE }, comdat, align 8
@_ZTIN11xalanc_1_1012XalanLocatorE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1012XalanLocatorE, ptr @_ZTIN11xercesc_2_77LocatorE }, comdat, align 8
@_ZTIN11xalanc_1_1019ElemTemplateElement12LocatorProxyE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE, ptr @_ZTIN11xalanc_1_1012XalanLocatorE }, align 8
@_ZTVN11xalanc_1_1012XalanLocatorE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1012XalanLocatorE, ptr @_ZN11xercesc_2_77LocatorD2Ev, ptr @_ZN11xalanc_1_1012XalanLocatorD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_77LocatorE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_77LocatorE, ptr @_ZN11xercesc_2_77LocatorD2Ev, ptr @_ZN11xercesc_2_77LocatorD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_ElemTemplateElement.cpp, ptr null }]

@_ZN11xalanc_1_1019ElemTemplateElementD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev
@_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyC1EllRKNS_14XalanDOMStringE = dso_local unnamed_addr alias void (ptr, i64, i64, ptr), ptr @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyC2EllRKNS_14XalanDOMStringE
@_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyD2Ev

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #1 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #19
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE, ptr nonnull @__dso_handle) #20
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #3 comdat align 2 !prof !211 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #21
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.1() unnamed_addr #1 section ".text.startup" {
  tail call void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xalanc_1_1019ElemTemplateElement12s_emptyQNameE, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE) #19
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev, ptr nonnull @_ZN11xalanc_1_1019ElemTemplateElement12s_emptyQNameE, ptr nonnull @__dso_handle) #20
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !212 {
  tail call void @_ZN11xalanc_1_1014PrefixResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_1019ElemTemplateElementE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !213
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  store ptr %2, ptr %7, align 8, !tbaa !216
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 2
  %9 = tail call noundef nonnull align 8 dereferenceable(232) ptr @_ZN11xalanc_1_1010Stylesheet20getNamespacesHandlerEv(ptr noundef nonnull align 8 dereferenceable(1504) %2) #19
  %10 = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN11xalanc_1_1010Stylesheet13getNamespacesEv(ptr noundef nonnull align 8 dereferenceable(1504) %2) #19
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1010Stylesheet19getXSLTNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(1504) %2) #19
  invoke void @_ZN11xalanc_1_1017NamespacesHandlerC1ERNS_29StylesheetConstructionContextERKS0_RKNS_10XalanDequeINS5_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS6_EEEENS7_IS9_EEEERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(232) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(232) %9, ptr noundef nonnull align 8 dereferenceable(80) %10, ptr noundef nonnull align 8 dereferenceable(36) %11) #19
          to label %12 unwind label %27

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 3
  store i32 %5, ptr %13, align 8, !tbaa !219
  %14 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 5
  %15 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 9
  %16 = sext i32 %3 to i64
  %17 = sext i32 %4 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, i8 0, i64 32, i1 false)
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1010Stylesheet31getCurrentIncludeBaseIdentifierEv(ptr noundef nonnull align 8 dereferenceable(1504) %2) #19
          to label %19 unwind label %29

19:                                               ; preds = %12
  %20 = load ptr, ptr %1, align 8, !tbaa !213
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef nonnull align 8 dereferenceable(36) ptr %22(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %18) #19
          to label %24 unwind label %29

24:                                               ; preds = %19
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyC2EllRKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef %16, i64 noundef %17, ptr noundef nonnull align 8 dereferenceable(36) %23) #19
          to label %25 unwind label %29

25:                                               ; preds = %24
  %26 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  store i16 16, ptr %26, align 8, !tbaa !238
  ret void

27:                                               ; preds = %6
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %31

29:                                               ; preds = %24, %19, %12
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1017NamespacesHandlerD1Ev(ptr noundef nonnull align 8 dereferenceable(232) %8) #21
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %28, %27 ]
  tail call void @_ZN11xalanc_1_1014PrefixResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #21
  resume { ptr, i32 } %32
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014PrefixResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(232) ptr @_ZN11xalanc_1_1010Stylesheet20getNamespacesHandlerEv(ptr noundef nonnull align 8 dereferenceable(1504) %0) local_unnamed_addr #3 comdat align 2 !prof !212 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 30
  ret ptr %2
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN11xalanc_1_1010Stylesheet13getNamespacesEv(ptr noundef nonnull align 8 dereferenceable(1504) %0) local_unnamed_addr #3 comdat align 2 !prof !239 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 8
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1010Stylesheet19getXSLTNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(1504) %0) local_unnamed_addr #3 comdat align 2 !prof !240 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 5
  ret ptr %2
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017NamespacesHandlerC1ERNS_29StylesheetConstructionContextERKS0_RKNS_10XalanDequeINS5_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS6_EEEENS7_IS9_EEEERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1010Stylesheet31getCurrentIncludeBaseIdentifierEv(ptr noundef nonnull align 8 dereferenceable(1504) %0) local_unnamed_addr #6 comdat align 2 !prof !212 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 13
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  br i1 %3, label %4, label %6, !prof !241

4:                                                ; preds = %1
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1010Stylesheet17getBaseIdentifierEv(ptr noundef nonnull align 8 dereferenceable(1504) %0) #19
  br label %8

6:                                                ; preds = %1
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi ptr [ %5, %4 ], [ %7, %6 ]
  ret ptr %9
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017NamespacesHandlerD1Ev(ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1014PrefixResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiRKNS_14XalanDOMStringEii(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef %5, i32 noundef %6) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !242 {
  tail call void @_ZN11xalanc_1_1014PrefixResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_1019ElemTemplateElementE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !213
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  store ptr %2, ptr %8, align 8, !tbaa !216
  %9 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 2
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1024XPathConstructionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #19
  invoke void @_ZN11xalanc_1_1017NamespacesHandlerC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(232) %9, ptr noundef nonnull align 8 dereferenceable(8) %10) #19
          to label %11 unwind label %24

11:                                               ; preds = %7
  %12 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 3
  store i32 %3, ptr %12, align 8, !tbaa !219
  %13 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 0, i64 32, i1 false)
  %14 = load ptr, ptr %1, align 8, !tbaa !213
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef nonnull align 8 dereferenceable(36) ptr %16(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %4) #19
          to label %18 unwind label %26

18:                                               ; preds = %11
  %19 = sext i32 %6 to i64
  %20 = sext i32 %5 to i64
  %21 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 9
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyC2EllRKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef %20, i64 noundef %19, ptr noundef nonnull align 8 dereferenceable(36) %17) #19
          to label %22 unwind label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  store i16 16, ptr %23, align 8, !tbaa !238
  ret void

24:                                               ; preds = %7
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %28

26:                                               ; preds = %18, %11
  %27 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1017NamespacesHandlerD1Ev(ptr noundef nonnull align 8 dereferenceable(232) %9) #21
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi { ptr, i32 } [ %27, %26 ], [ %25, %24 ]
  tail call void @_ZN11xalanc_1_1014PrefixResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #21
  resume { ptr, i32 } %29
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1024XPathConstructionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !243 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !244
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017NamespacesHandlerC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) unnamed_addr #3 align 2 !prof !246 {
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_1019ElemTemplateElementE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !213
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 9
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #21
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1017NamespacesHandlerD1Ev(ptr noundef nonnull align 8 dereferenceable(232) %3) #21
  tail call void @_ZN11xalanc_1_1014PrefixResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #21
  ret void
}

; Function Attrs: mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElementD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 {
  tail call void @llvm.trap() #22
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv(ptr noundef nonnull readnone align 8 dereferenceable(322) %0) unnamed_addr #9 align 2 !prof !247 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 9
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 !prof !248 {
  ret i1 false
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(322) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #6 align 2 !prof !248 {
  %6 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !249
  %8 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1010Stylesheet8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(1504) %7, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #19
  ret i1 %8
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1010Stylesheet8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #6 align 2 !prof !250 {
  %7 = tail call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
  %8 = load ptr, ptr %0, align 8, !tbaa !213
  %9 = getelementptr inbounds ptr, ptr %8, i64 4
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
  %12 = load ptr, ptr %5, align 8, !tbaa !213
  %13 = getelementptr inbounds ptr, ptr %12, i64 28
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef zeroext i1 %14(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(1504) %7, ptr noundef %11) #19
  br i1 %15, label %16, label %31, !prof !251

16:                                               ; preds = %6
  %17 = load ptr, ptr %3, align 8, !tbaa !213
  %18 = getelementptr inbounds ptr, ptr %17, i64 5
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) #19
  %21 = load ptr, ptr @_ZN11xalanc_1_109Constants16ATTRVAL_PRESERVEE, align 8, !tbaa !216
  %22 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(36) %21) #19
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %25 = load i16, ptr %24, align 8, !tbaa !238
  %26 = or i16 %25, 64
  store i16 %26, ptr %24, align 8, !tbaa !238
  br label %31

27:                                               ; preds = %16
  %28 = load ptr, ptr @_ZN11xalanc_1_109Constants15ATTRVAL_DEFAULTE, align 8, !tbaa !216
  %29 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(36) %28) #19
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_S6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef 65, ptr noundef %1, ptr noundef %2, ptr noundef %20) #19
  br label %31

31:                                               ; preds = %23, %30, %27, %6
  ret i1 %15
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #3 comdat align 2 !prof !252 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !249
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #6 comdat !prof !253 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %0) #19
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_S6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !248 {
  %7 = alloca %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #20
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %1) #19
  %8 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #19
  %9 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %8, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef null) #19
          to label %10 unwind label %20

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !213
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
          to label %15 unwind label %20

15:                                               ; preds = %10
  %16 = load ptr, ptr %1, align 8, !tbaa !213
  %17 = getelementptr inbounds ptr, ptr %16, i64 7
  %18 = load ptr, ptr %17, align 8
  invoke void %18(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef null, ptr noundef %14) #19
          to label %19 unwind label %20

19:                                               ; preds = %15
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #20
  ret void

20:                                               ; preds = %15, %10, %6
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #20
  resume { ptr, i32 } %21
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #6 align 2 !prof !248 {
  %2 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) #19
  ret i1 %2
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !254 {
  %3 = alloca %"class.xalanc_1_10::TracerEvent", align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !213
  %5 = getelementptr inbounds ptr, ptr %4, i64 137
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i64 %6(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %16, label %9, !prof !255

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call void @_ZN11xalanc_1_1011TracerEventC1ERKNS_26StylesheetExecutionContextERKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(322) %0) #19
  %10 = load ptr, ptr %1, align 8, !tbaa !213
  %11 = getelementptr inbounds ptr, ptr %10, i64 139
  %12 = load ptr, ptr %11, align 8
  invoke void %12(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3) #19
          to label %13 unwind label %14

13:                                               ; preds = %9
  call void @_ZN11xalanc_1_1011TracerEventD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  br label %16

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011TracerEventD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  resume { ptr, i32 } %15

16:                                               ; preds = %13, %2
  ret ptr null
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1011TracerEventC1ERKNS_26StylesheetExecutionContextERKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1011TracerEventD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement10endElementERNS_26StylesheetExecutionContextE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #9 align 2 !prof !256 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 align 2 !prof !257 {
  %3 = load ptr, ptr %0, align 8, !tbaa !213
  %4 = getelementptr inbounds ptr, ptr %3, i64 30
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
  %7 = load ptr, ptr %1, align 8, !tbaa !213
  %8 = getelementptr inbounds ptr, ptr %7, i64 134
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %6) #19
  br label %10

10:                                               ; preds = %17, %2
  %11 = phi ptr [ %0, %2 ], [ %18, %17 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !213
  %13 = getelementptr inbounds ptr, ptr %12, i64 6
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(322) %11, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17, !prof !258

17:                                               ; preds = %28, %10
  %18 = phi ptr [ %15, %10 ], [ %37, %28 ]
  br label %10, !llvm.loop !259

19:                                               ; preds = %10
  %20 = load ptr, ptr %11, align 8, !tbaa !213
  %21 = getelementptr inbounds ptr, ptr %20, i64 7
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(322) %11, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %23 = load ptr, ptr %11, align 8, !tbaa !213
  %24 = getelementptr inbounds ptr, ptr %23, i64 10
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(322) %11, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %27 = icmp eq ptr %26, %6
  br i1 %27, label %52, label %28, !prof !261

28:                                               ; preds = %19, %39
  %29 = phi ptr [ %43, %39 ], [ %11, %19 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !213
  %31 = getelementptr inbounds ptr, ptr %30, i64 10
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(322) %29, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %34 = load ptr, ptr %33, align 8, !tbaa !213
  %35 = getelementptr inbounds ptr, ptr %34, i64 24
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(322) %33, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %29) #19
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %17, !prof !262, !llvm.loop !259

39:                                               ; preds = %28
  %40 = load ptr, ptr %29, align 8, !tbaa !213
  %41 = getelementptr inbounds ptr, ptr %40, i64 10
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(322) %29, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %44 = load ptr, ptr %43, align 8, !tbaa !213
  %45 = getelementptr inbounds ptr, ptr %44, i64 7
  %46 = load ptr, ptr %45, align 8
  tail call void %46(ptr noundef nonnull align 8 dereferenceable(322) %43, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %47 = load ptr, ptr %43, align 8, !tbaa !213
  %48 = getelementptr inbounds ptr, ptr %47, i64 10
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(322) %43, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %51 = icmp eq ptr %50, %6
  br i1 %51, label %52, label %28, !prof !263, !llvm.loop !264

52:                                               ; preds = %19, %39
  %53 = load ptr, ptr %1, align 8, !tbaa !213
  %54 = getelementptr inbounds ptr, ptr %53, i64 135
  %55 = load ptr, ptr %54, align 8
  tail call void %55(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 align 2 !prof !248 {
  %3 = load ptr, ptr %0, align 8, !tbaa !213
  %4 = getelementptr inbounds ptr, ptr %3, i64 19
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %16, %8 ], [ %6, %2 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !213
  %11 = getelementptr inbounds ptr, ptr %10, i64 8
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(322) %9, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %13 = load ptr, ptr %0, align 8, !tbaa !213
  %14 = getelementptr inbounds ptr, ptr %13, i64 24
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %9) #19
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %8, !llvm.loop !265

18:                                               ; preds = %8, %2
  %19 = load ptr, ptr %0, align 8, !tbaa !213
  %20 = getelementptr inbounds ptr, ptr %19, i64 20
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 align 2 !prof !266 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement9hasParamsEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
  br i1 %3, label %6, label %4, !prof !267

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement12hasVariablesEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
  br i1 %5, label %6, label %10, !prof !268

6:                                                ; preds = %4, %2
  %7 = load ptr, ptr %1, align 8, !tbaa !213
  %8 = getelementptr inbounds ptr, ptr %7, i64 93
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %0) #19
  br label %10

10:                                               ; preds = %6, %4
  %11 = load ptr, ptr %0, align 8, !tbaa !213
  %12 = getelementptr inbounds ptr, ptr %11, i64 25
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement9hasParamsEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #6 comdat align 2 !prof !269 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef 1) #19
  ret i1 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement12hasVariablesEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #3 comdat align 2 !prof !270 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef 4) #19
  ret i1 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 align 2 !prof !266 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement9hasParamsEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
  br i1 %3, label %12, label %4, !prof !267

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement12hasVariablesEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
  br i1 %5, label %12, label %6, !prof !268

6:                                                ; preds = %4
  %7 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement17hasDirectTemplateEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
  br i1 %7, label %8, label %17, !prof !271

8:                                                ; preds = %6
  %9 = load ptr, ptr %1, align 8, !tbaa !213
  %10 = getelementptr inbounds ptr, ptr %9, i64 135
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  br label %12

12:                                               ; preds = %2, %4, %8
  %13 = phi i64 [ 86, %8 ], [ 94, %4 ], [ 94, %2 ]
  %14 = load ptr, ptr %1, align 8, !tbaa !213
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  br label %17

17:                                               ; preds = %12, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement17hasDirectTemplateEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #3 comdat align 2 !prof !272 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef 8) #19
  ret i1 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement21beginChildrenToStringERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #6 align 2 !prof !273 {
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement18hasSingleTextChildEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
  br i1 %4, label %5, label %12, !prof !274

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !275
  %8 = tail call noundef ptr @_ZNK11xalanc_1_1015ElemTextLiteral7getTextEv(ptr noundef nonnull align 8 dereferenceable(340) %7) #19
  %9 = load ptr, ptr %6, align 8, !tbaa !275
  %10 = tail call noundef i32 @_ZNK11xalanc_1_1015ElemTextLiteral9getLengthEv(ptr noundef nonnull align 8 dereferenceable(340) %9) #19
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_106assignERNS_14XalanDOMStringEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %8, i32 noundef %10) #19
  br label %22

12:                                               ; preds = %3
  %13 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %2) #19
  %14 = add i32 %13, 1024
  tail call void @_ZN11xalanc_1_107reserveERNS_14XalanDOMStringEj(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef %14) #19
  %15 = load ptr, ptr %1, align 8, !tbaa !213
  %16 = getelementptr inbounds ptr, ptr %15, i64 112
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) #19
  %18 = load ptr, ptr %0, align 8, !tbaa !213
  %19 = getelementptr inbounds ptr, ptr %18, i64 19
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  br label %22

22:                                               ; preds = %12, %5
  %23 = phi ptr [ null, %5 ], [ %21, %12 ]
  ret ptr %23
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement18hasSingleTextChildEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #3 comdat align 2 !prof !276 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef 2) #19
  ret i1 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_106assignERNS_14XalanDOMStringEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 comdat !prof !277 {
  %4 = icmp eq i32 %2, -1
  br i1 %4, label %5, label %7, !prof !278

5:                                                ; preds = %3
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #19
  br label %9

7:                                                ; preds = %3
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %2) #19
  br label %9

9:                                                ; preds = %7, %5
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1015ElemTextLiteral7getTextEv(ptr noundef nonnull align 8 dereferenceable(340) %0) local_unnamed_addr #3 comdat align 2 !prof !248 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTextLiteral", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !279
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1015ElemTextLiteral9getLengthEv(ptr noundef nonnull align 8 dereferenceable(340) %0) local_unnamed_addr #3 comdat align 2 !prof !248 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTextLiteral", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !282
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_107reserveERNS_14XalanDOMStringEj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1) local_unnamed_addr #6 comdat !prof !283 {
  tail call void @_ZN11xalanc_1_1014XalanDOMString7reserveEj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #6 comdat !prof !284 {
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #19
  ret i32 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement19endChildrenToStringERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 align 2 !prof !273 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement18hasSingleTextChildEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
  br i1 %3, label %11, label %4, !prof !274

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !213
  %6 = getelementptr inbounds ptr, ptr %5, i64 20
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %8 = load ptr, ptr %1, align 8, !tbaa !213
  %9 = getelementptr inbounds ptr, ptr %8, i64 113
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  br label %11

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #6 align 2 !prof !285 {
  %3 = load ptr, ptr %0, align 8, !tbaa !213
  %4 = getelementptr inbounds ptr, ptr %3, i64 30
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement5errorERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !248 {
  %4 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %5 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #19
  %6 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef %2) #19
          to label %7 unwind label %22

7:                                                ; preds = %3
  %8 = load ptr, ptr %1, align 8, !tbaa !213
  %9 = getelementptr inbounds ptr, ptr %8, i64 6
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
          to label %12 unwind label %22

12:                                               ; preds = %7
  %13 = load ptr, ptr %0, align 8, !tbaa !213
  %14 = getelementptr inbounds ptr, ptr %13, i64 4
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
          to label %17 unwind label %22

17:                                               ; preds = %12
  %18 = load ptr, ptr %1, align 8, !tbaa !213
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef %11, ptr noundef %16) #19
          to label %21 unwind label %22

21:                                               ; preds = %17
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  ret void

22:                                               ; preds = %17, %12, %7, %3
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  resume { ptr, i32 } %23
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat align 2 !prof !286 {
  store ptr %1, ptr %0, align 8, !tbaa !287
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %1, align 8, !tbaa !213
  %5 = getelementptr inbounds ptr, ptr %4, i64 23
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  store ptr %7, ptr %3, align 8, !tbaa !289
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !290 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !289
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !291 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !289
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !292

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !287
  %7 = load ptr, ptr %6, align 8, !tbaa !213
  %8 = getelementptr inbounds ptr, ptr %7, i64 24
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(36) %3) #19
          to label %11 unwind label %12

11:                                               ; preds = %5, %1
  ret void

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #22
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement5errorERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !248 {
  %5 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %6 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #19
  %7 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %6, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) #19
          to label %8 unwind label %23

8:                                                ; preds = %4
  %9 = load ptr, ptr %1, align 8, !tbaa !213
  %10 = getelementptr inbounds ptr, ptr %9, i64 6
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
          to label %13 unwind label %23

13:                                               ; preds = %8
  %14 = load ptr, ptr %0, align 8, !tbaa !213
  %15 = getelementptr inbounds ptr, ptr %14, i64 4
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
          to label %18 unwind label %23

18:                                               ; preds = %13
  %19 = load ptr, ptr %1, align 8, !tbaa !213
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef %12, ptr noundef %17) #19
          to label %22 unwind label %23

22:                                               ; preds = %18
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  ret void

23:                                               ; preds = %18, %13, %8, %4
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  resume { ptr, i32 } %24
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement5errorERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesEPKN11xercesc_2_77LocatorE(ptr nocapture noundef nonnull readnone align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !248 {
  %5 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %6 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #19
  %7 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %6, i32 noundef %2) #19
          to label %8 unwind label %18

8:                                                ; preds = %4
  %9 = load ptr, ptr %1, align 8, !tbaa !213
  %10 = getelementptr inbounds ptr, ptr %9, i64 6
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
          to label %13 unwind label %18

13:                                               ; preds = %8
  %14 = load ptr, ptr %1, align 8, !tbaa !213
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef %12, ptr noundef %3) #19
          to label %17 unwind label %18

17:                                               ; preds = %13
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  ret void

18:                                               ; preds = %13, %8, %4
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement4warnERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !248 {
  %4 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %5 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #19
  %6 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef %2) #19
          to label %7 unwind label %22

7:                                                ; preds = %3
  %8 = load ptr, ptr %1, align 8, !tbaa !213
  %9 = getelementptr inbounds ptr, ptr %8, i64 6
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
          to label %12 unwind label %22

12:                                               ; preds = %7
  %13 = load ptr, ptr %0, align 8, !tbaa !213
  %14 = getelementptr inbounds ptr, ptr %13, i64 4
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
          to label %17 unwind label %22

17:                                               ; preds = %12
  %18 = load ptr, ptr %1, align 8, !tbaa !213
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef %11, ptr noundef %16) #19
          to label %21 unwind label %22

21:                                               ; preds = %17
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  ret void

22:                                               ; preds = %17, %12, %7, %3
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  resume { ptr, i32 } %23
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement4warnERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesEPKN11xercesc_2_77LocatorE(ptr nocapture noundef nonnull readnone align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !248 {
  %5 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %6 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #19
  %7 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %6, i32 noundef %2) #19
          to label %8 unwind label %18

8:                                                ; preds = %4
  %9 = load ptr, ptr %1, align 8, !tbaa !213
  %10 = getelementptr inbounds ptr, ptr %9, i64 6
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
          to label %13 unwind label %18

13:                                               ; preds = %8
  %14 = load ptr, ptr %1, align 8, !tbaa !213
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef %12, ptr noundef %3) #19
          to label %17 unwind label %18

17:                                               ; preds = %13
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  ret void

18:                                               ; preds = %13, %8, %4
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1019ElemTemplateElement4warnERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !248 {
  %5 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %6 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #19
  %7 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %6, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) #19
          to label %8 unwind label %23

8:                                                ; preds = %4
  %9 = load ptr, ptr %1, align 8, !tbaa !213
  %10 = getelementptr inbounds ptr, ptr %9, i64 6
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
          to label %13 unwind label %23

13:                                               ; preds = %8
  %14 = load ptr, ptr %0, align 8, !tbaa !213
  %15 = getelementptr inbounds ptr, ptr %14, i64 4
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
          to label %18 unwind label %23

18:                                               ; preds = %13
  %19 = load ptr, ptr %1, align 8, !tbaa !213
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef %12, ptr noundef %17) #19
          to label %22 unwind label %23

22:                                               ; preds = %18
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  ret void

23:                                               ; preds = %18, %13, %8, %4
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  resume { ptr, i32 } %24
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement4warnERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_S6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !248 {
  %7 = alloca %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #20
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %1) #19
  %8 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #19
  %9 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %8, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef null) #19
          to label %10 unwind label %20

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !213
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
          to label %15 unwind label %20

15:                                               ; preds = %10
  %16 = load ptr, ptr %1, align 8, !tbaa !213
  %17 = getelementptr inbounds ptr, ptr %16, i64 8
  %18 = load ptr, ptr %17, align 8
  invoke void %18(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef null, ptr noundef %14) #19
          to label %19 unwind label %20

19:                                               ; preds = %15
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #20
  ret void

20:                                               ; preds = %15, %10, %6
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #20
  resume { ptr, i32 } %21
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #6 comdat align 2 !prof !293 {
  store ptr %1, ptr %0, align 8, !tbaa !294
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %1, align 8, !tbaa !213
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(16) %1) #19
  store ptr %7, ptr %3, align 8, !tbaa !296
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !293 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !296
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !293 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !296
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !297

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !294
  %7 = load ptr, ptr %6, align 8, !tbaa !213
  %8 = getelementptr inbounds ptr, ptr %7, i64 6
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(36) %3) #19
          to label %11 unwind label %12

11:                                               ; preds = %5, %1
  ret void

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #22
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !248 {
  %4 = alloca %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1) #19
  %5 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #19
  %6 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef %2) #19
          to label %7 unwind label %17

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !213
  %9 = getelementptr inbounds ptr, ptr %8, i64 4
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
          to label %12 unwind label %17

12:                                               ; preds = %7
  %13 = load ptr, ptr %1, align 8, !tbaa !213
  %14 = getelementptr inbounds ptr, ptr %13, i64 7
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef null, ptr noundef %11) #19
          to label %16 unwind label %17

16:                                               ; preds = %12
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  ret void

17:                                               ; preds = %12, %7, %3
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringEPKN11xercesc_2_77LocatorE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !248 {
  %6 = alloca %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %1) #19
  %7 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #19
  %8 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) #19
          to label %9 unwind label %14

9:                                                ; preds = %5
  %10 = load ptr, ptr %1, align 8, !tbaa !213
  %11 = getelementptr inbounds ptr, ptr %10, i64 7
  %12 = load ptr, ptr %11, align 8
  invoke void %12(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef null, ptr noundef %4) #19
          to label %13 unwind label %14

13:                                               ; preds = %9
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  ret void

14:                                               ; preds = %9, %5
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  resume { ptr, i32 } %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !248 {
  %5 = alloca %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %1) #19
  %6 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #19
  %7 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %6, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) #19
          to label %8 unwind label %18

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !213
  %10 = getelementptr inbounds ptr, ptr %9, i64 4
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
          to label %13 unwind label %18

13:                                               ; preds = %8
  %14 = load ptr, ptr %1, align 8, !tbaa !213
  %15 = getelementptr inbounds ptr, ptr %14, i64 7
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef null, ptr noundef %12) #19
          to label %17 unwind label %18

17:                                               ; preds = %13
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  ret void

18:                                               ; preds = %13, %8, %4
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !248 {
  %6 = alloca %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %1) #19
  %7 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #19
  %8 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %4) #19
          to label %9 unwind label %19

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !213
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
          to label %14 unwind label %19

14:                                               ; preds = %9
  %15 = load ptr, ptr %1, align 8, !tbaa !213
  %16 = getelementptr inbounds ptr, ptr %15, i64 7
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef null, ptr noundef %13) #19
          to label %18 unwind label %19

18:                                               ; preds = %14
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  ret void

19:                                               ; preds = %14, %9, %5
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  resume { ptr, i32 } %20
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !248 {
  %6 = alloca %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %1) #19
  %7 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #19
  %8 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef null, ptr noundef null) #19
          to label %9 unwind label %19

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !213
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
          to label %14 unwind label %19

14:                                               ; preds = %9
  %15 = load ptr, ptr %1, align 8, !tbaa !213
  %16 = getelementptr inbounds ptr, ptr %15, i64 7
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef null, ptr noundef %13) #19
          to label %18 unwind label %19

18:                                               ; preds = %14
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  ret void

19:                                               ; preds = %14, %9, %5
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  resume { ptr, i32 } %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 !prof !248 {
  ret ptr @_ZN11xalanc_1_1019ElemTemplateElement12s_emptyQNameE
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #9 align 2 !prof !248 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nocapture nonnull readnone align 8 %2, ptr nocapture nonnull readnone align 8 %3, ptr noundef %4) unnamed_addr #6 align 2 !prof !248 {
  %6 = load ptr, ptr @_ZN11xalanc_1_109Constants32ELEMNAME_SORT_WITH_PREFIX_STRINGE, align 8, !tbaa !216
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringEPKN11xercesc_2_77LocatorE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 75, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef %4) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb(ptr nocapture noundef nonnull align 8 dereferenceable(322) %0, i1 noundef zeroext %1) unnamed_addr #6 align 2 !prof !298 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %4 = load i16, ptr %3, align 8, !tbaa !238
  %5 = or i16 %4, 32
  store i16 %5, ptr %3, align 8, !tbaa !238
  %6 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !275
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !299

9:                                                ; preds = %10, %2
  ret void

10:                                               ; preds = %2, %10
  %11 = phi ptr [ %16, %10 ], [ %7, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !213
  %13 = getelementptr inbounds ptr, ptr %12, i64 16
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(322) %11, i1 noundef zeroext %1) #19
  %15 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %11, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !275
  %17 = icmp eq ptr %16, null
  br i1 %17, label %9, label %10, !prof !300, !llvm.loop !301
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(322) %0) unnamed_addr #11 align 2 !prof !302 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !275
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(322) %0, ptr noundef %1) unnamed_addr #12 align 2 !prof !248 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  store ptr %1, ptr %3, align 8, !tbaa !275
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(322) %0) unnamed_addr #13 align 2 !prof !303 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi ptr [ null, %1 ], [ %6, %3 ]
  %5 = phi ptr [ %2, %1 ], [ %8, %3 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !275
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %6, i64 0, i32 6
  br i1 %7, label %9, label %3, !prof !304, !llvm.loop !305

9:                                                ; preds = %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(322) %0) unnamed_addr #11 align 2 !prof !306 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !307
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(322) %0, ptr noundef %1) unnamed_addr #12 align 2 !prof !308 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 6
  store ptr %1, ptr %3, align 8, !tbaa !307
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(322) %0) unnamed_addr #11 align 2 !prof !248 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !309
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(322) %0, ptr noundef %1) unnamed_addr #12 align 2 !prof !310 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 7
  store ptr %1, ptr %3, align 8, !tbaa !309
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(322) %0) unnamed_addr #11 align 2 !prof !311 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !312
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(322) %0, ptr noundef %1) unnamed_addr #12 align 2 !prof !313 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 5
  store ptr %1, ptr %3, align 8, !tbaa !312
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull returned %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !313 {
  %3 = tail call noundef i32 @_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv(ptr noundef nonnull align 8 dereferenceable(322) %1) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !213
  %5 = getelementptr inbounds ptr, ptr %4, i64 36
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef zeroext i1 %6(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef %3) #19
  br i1 %7, label %13, label %8, !prof !314

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 16) #20
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 3) #19
          to label %10 unwind label %11

10:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #23
  unreachable

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #20
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !275
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21, !prof !315

17:                                               ; preds = %13
  store ptr %1, ptr %14, align 8, !tbaa !275
  %18 = load ptr, ptr %1, align 8, !tbaa !213
  %19 = getelementptr inbounds ptr, ptr %18, i64 29
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(322) %1, ptr noundef null) #19
  br label %32

21:                                               ; preds = %13
  %22 = load ptr, ptr %0, align 8, !tbaa !213
  %23 = getelementptr inbounds ptr, ptr %22, i64 22
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
  %26 = load ptr, ptr %25, align 8, !tbaa !213
  %27 = getelementptr inbounds ptr, ptr %26, i64 27
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(322) %25, ptr noundef nonnull %1) #19
  %29 = load ptr, ptr %1, align 8, !tbaa !213
  %30 = getelementptr inbounds ptr, ptr %29, i64 29
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(322) %1, ptr noundef nonnull %25) #19
  br label %32

32:                                               ; preds = %17, %21
  %33 = load ptr, ptr %1, align 8, !tbaa !213
  %34 = getelementptr inbounds ptr, ptr %33, i64 31
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(322) %1, ptr noundef nonnull %0) #19
  %36 = load ptr, ptr %1, align 8, !tbaa !213
  %37 = getelementptr inbounds ptr, ptr %36, i64 27
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(322) %1, ptr noundef null) #19
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #3 comdat align 2 !prof !316 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !219
  ret i32 %3
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #5

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement8getXPathEj(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #9 align 2 !prof !248 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(322) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #6 align 2 !prof !317 {
  %6 = load ptr, ptr %4, align 8, !tbaa !213
  %7 = getelementptr inbounds ptr, ptr %6, i64 4
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %10 = load ptr, ptr %0, align 8, !tbaa !213
  %11 = getelementptr inbounds ptr, ptr %10, i64 35
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(322) %2, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %9) #19
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(322) %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !317 {
  %7 = alloca %"class.xalanc_1_10::TracerEvent", align 8
  %8 = icmp eq ptr %3, null
  br i1 %8, label %9, label %45, !prof !318

9:                                                ; preds = %6
  %10 = tail call noundef i32 @_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv(ptr noundef nonnull align 8 dereferenceable(322) %2) #19
  %11 = icmp eq i32 %10, 29
  br i1 %11, label %12, label %18, !prof !319

12:                                               ; preds = %9
  %13 = load ptr, ptr %1, align 8, !tbaa !213
  %14 = getelementptr inbounds ptr, ptr %13, i64 59
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %17 = tail call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %16) #19
  br label %21

18:                                               ; preds = %9
  %19 = tail call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
  %20 = tail call noundef nonnull align 8 dereferenceable(2064) ptr @_ZNK11xalanc_1_1010Stylesheet17getStylesheetRootEv(ptr noundef nonnull align 8 dereferenceable(1504) %19) #19
  br label %21

21:                                               ; preds = %12, %18
  %22 = phi ptr [ %17, %12 ], [ %20, %18 ]
  %23 = load ptr, ptr %1, align 8, !tbaa !213
  %24 = getelementptr inbounds ptr, ptr %23, i64 56
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %27 = tail call noundef ptr @_ZNK11xalanc_1_1010Stylesheet12findTemplateERNS_26StylesheetExecutionContextEPNS_9XalanNodeENS3_8NodeTypeERKNS_10XalanQNameEb(ptr noundef nonnull align 8 dereferenceable(1504) %22, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %26, i1 noundef zeroext %11) #19
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %45, !prof !320

29:                                               ; preds = %21
  switch i32 %5, label %85 [
    i32 11, label %30
    i32 1, label %30
    i32 4, label %34
    i32 3, label %34
    i32 2, label %34
    i32 9, label %38
  ], !prof !321

30:                                               ; preds = %29, %29
  %31 = tail call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
  %32 = tail call noundef nonnull align 8 dereferenceable(2064) ptr @_ZNK11xalanc_1_1010Stylesheet17getStylesheetRootEv(ptr noundef nonnull align 8 dereferenceable(1504) %31) #19
  %33 = tail call noundef ptr @_ZNK11xalanc_1_1014StylesheetRoot14getDefaultRuleEv(ptr noundef nonnull align 8 dereferenceable(2064) %32) #19
  br label %42

34:                                               ; preds = %29, %29, %29
  %35 = tail call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
  %36 = tail call noundef nonnull align 8 dereferenceable(2064) ptr @_ZNK11xalanc_1_1010Stylesheet17getStylesheetRootEv(ptr noundef nonnull align 8 dereferenceable(1504) %35) #19
  %37 = tail call noundef ptr @_ZNK11xalanc_1_1014StylesheetRoot18getDefaultTextRuleEv(ptr noundef nonnull align 8 dereferenceable(2064) %36) #19
  br label %42

38:                                               ; preds = %29
  %39 = tail call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
  %40 = tail call noundef nonnull align 8 dereferenceable(2064) ptr @_ZNK11xalanc_1_1010Stylesheet17getStylesheetRootEv(ptr noundef nonnull align 8 dereferenceable(1504) %39) #19
  %41 = tail call noundef ptr @_ZNK11xalanc_1_1014StylesheetRoot18getDefaultRootRuleEv(ptr noundef nonnull align 8 dereferenceable(2064) %40) #19
  br label %42

42:                                               ; preds = %30, %34, %38
  %43 = phi ptr [ %41, %38 ], [ %37, %34 ], [ %33, %30 ]
  %44 = icmp eq ptr %43, null
  br i1 %44, label %85, label %45, !prof !322

45:                                               ; preds = %6, %21, %42
  %46 = phi ptr [ %43, %42 ], [ %27, %21 ], [ %3, %6 ]
  %47 = tail call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
  %48 = tail call noundef nonnull align 8 dereferenceable(2064) ptr @_ZNK11xalanc_1_1010Stylesheet17getStylesheetRootEv(ptr noundef nonnull align 8 dereferenceable(1504) %47) #19
  %49 = tail call noundef ptr @_ZNK11xalanc_1_1014StylesheetRoot18getDefaultTextRuleEv(ptr noundef nonnull align 8 dereferenceable(2064) %48) #19
  %50 = icmp eq ptr %46, %49
  br i1 %50, label %51, label %72, !prof !323

51:                                               ; preds = %45
  switch i32 %5, label %85 [
    i32 4, label %52
    i32 3, label %52
    i32 2, label %60
  ], !prof !324

52:                                               ; preds = %51, %51
  %53 = load ptr, ptr %0, align 8, !tbaa !213
  %54 = getelementptr inbounds ptr, ptr %53, i64 4
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
  %57 = load ptr, ptr %1, align 8, !tbaa !213
  %58 = getelementptr inbounds ptr, ptr %57, i64 109
  %59 = load ptr, ptr %58, align 8
  tail call void %59(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 3, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef %56) #19
  br label %85

60:                                               ; preds = %51
  %61 = load ptr, ptr %4, align 8, !tbaa !213
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  %64 = tail call noundef nonnull align 8 dereferenceable(36) ptr %63(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %65 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %64) #19
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %85, label %67

67:                                               ; preds = %60
  %68 = tail call noundef ptr @_ZN11xalanc_1_1011toCharArrayERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %64) #19
  %69 = load ptr, ptr %1, align 8, !tbaa !213
  %70 = getelementptr inbounds ptr, ptr %69, i64 103
  %71 = load ptr, ptr %70, align 8
  tail call void %71(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %68, i32 noundef 0, i32 noundef %65) #19
  br label %85

72:                                               ; preds = %45
  %73 = load ptr, ptr %1, align 8, !tbaa !213
  %74 = getelementptr inbounds ptr, ptr %73, i64 137
  %75 = load ptr, ptr %74, align 8
  %76 = tail call noundef i64 %75(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %85, label %78, !prof !325

78:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #20
  call void @_ZN11xalanc_1_1011TracerEventC1ERKNS_26StylesheetExecutionContextERKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(322) %46) #19
  %79 = load ptr, ptr %1, align 8, !tbaa !213
  %80 = getelementptr inbounds ptr, ptr %79, i64 139
  %81 = load ptr, ptr %80, align 8
  invoke void %81(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %7) #19
          to label %82 unwind label %83

82:                                               ; preds = %78
  call void @_ZN11xalanc_1_1011TracerEventD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #20
  br label %85

83:                                               ; preds = %78
  %84 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011TracerEventD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #20
  resume { ptr, i32 } %84

85:                                               ; preds = %29, %42, %52, %51, %67, %60, %72, %82
  %86 = phi ptr [ %46, %82 ], [ %46, %72 ], [ null, %60 ], [ null, %67 ], [ null, %51 ], [ null, %52 ], [ null, %42 ], [ null, %29 ]
  ret ptr %86
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(2064) ptr @_ZNK11xalanc_1_1010Stylesheet17getStylesheetRootEv(ptr noundef nonnull align 8 dereferenceable(1504) %0) local_unnamed_addr #3 comdat align 2 !prof !326 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !327
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1010Stylesheet12findTemplateERNS_26StylesheetExecutionContextEPNS_9XalanNodeENS3_8NodeTypeERKNS_10XalanQNameEb(ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014StylesheetRoot14getDefaultRuleEv(ptr noundef nonnull align 8 dereferenceable(2064) %0) local_unnamed_addr #3 comdat align 2 !prof !248 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::StylesheetRoot", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !358
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014StylesheetRoot18getDefaultTextRuleEv(ptr noundef nonnull align 8 dereferenceable(2064) %0) local_unnamed_addr #3 comdat align 2 !prof !368 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::StylesheetRoot", ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !369
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014StylesheetRoot18getDefaultRootRuleEv(ptr noundef nonnull align 8 dereferenceable(2064) %0) local_unnamed_addr #3 comdat align 2 !prof !248 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::StylesheetRoot", ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !370
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011toCharArrayERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #6 comdat !prof !371 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #19
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(232) %2) unnamed_addr #6 align 2 !prof !372 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %0, align 8, !tbaa !213
  %6 = getelementptr inbounds ptr, ptr %5, i64 37
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(232) %2, ptr noundef nonnull align 8 dereferenceable(232) %4) #19
  %8 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement11hasChildrenEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
  br i1 %8, label %9, label %74, !prof !373

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !275, !nonnull !374, !noundef !374
  %12 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  br label %16

13:                                               ; preds = %35
  %14 = load ptr, ptr %10, align 8, !tbaa !275
  %15 = tail call noundef i32 @_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv(ptr noundef nonnull align 8 dereferenceable(322) %14) #19
  switch i32 %15, label %66 [
    i32 36, label %39
    i32 14, label %50
  ], !prof !375

16:                                               ; preds = %9, %35
  %17 = phi ptr [ %11, %9 ], [ %37, %35 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !213
  %19 = getelementptr inbounds ptr, ptr %18, i64 17
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(322) %17, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(232) %4) #19
  %21 = tail call noundef i32 @_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv(ptr noundef nonnull align 8 dereferenceable(322) %17) #19
  %22 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement12hasVariablesEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
  br i1 %22, label %28, label %23, !prof !376

23:                                               ; preds = %16
  switch i32 %21, label %28 [
    i32 30, label %24
    i32 15, label %24
  ]

24:                                               ; preds = %23, %23
  %25 = load i16, ptr %12, align 8, !tbaa !238
  %26 = or i16 %25, 4
  store i16 %26, ptr %12, align 8, !tbaa !238
  %27 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement9hasParamsEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
  br label %35

28:                                               ; preds = %23, %16
  %29 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement9hasParamsEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
  %30 = icmp ne i32 %21, 0
  %31 = or i1 %30, %29
  br i1 %31, label %35, label %32, !prof !377

32:                                               ; preds = %28
  %33 = load i16, ptr %12, align 8, !tbaa !238
  %34 = or i16 %33, 1
  store i16 %34, ptr %12, align 8, !tbaa !238
  br label %35

35:                                               ; preds = %24, %32, %28
  %36 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %17, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !275
  %38 = icmp eq ptr %37, null
  br i1 %38, label %13, label %16, !prof !378, !llvm.loop !379

39:                                               ; preds = %13
  %40 = load ptr, ptr %10, align 8, !tbaa !275
  %41 = load ptr, ptr %40, align 8, !tbaa !213
  %42 = getelementptr inbounds ptr, ptr %41, i64 23
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(322) %40) #19
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %66, !prof !380

46:                                               ; preds = %39
  %47 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %48 = load i16, ptr %47, align 8, !tbaa !238
  %49 = or i16 %48, 2
  store i16 %49, ptr %47, align 8, !tbaa !238
  br label %74

50:                                               ; preds = %13
  %51 = load ptr, ptr %10, align 8, !tbaa !275
  %52 = load ptr, ptr %51, align 8, !tbaa !213
  %53 = getelementptr inbounds ptr, ptr %52, i64 23
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(322) %51) #19
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %66, !prof !381

57:                                               ; preds = %50
  %58 = load ptr, ptr %10, align 8, !tbaa !275
  %59 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement9hasParamsEv(ptr noundef nonnull align 8 dereferenceable(322) %58) #19
  br i1 %59, label %74, label %60, !prof !381

60:                                               ; preds = %57
  %61 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %62 = load i16, ptr %61, align 8, !tbaa !238
  %63 = or i16 %62, 8
  store i16 %63, ptr %61, align 8, !tbaa !238
  %64 = load ptr, ptr %10, align 8, !tbaa !275
  %65 = tail call noundef ptr @_ZNK11xalanc_1_1016ElemCallTemplate11getTemplateEv(ptr noundef nonnull align 8 dereferenceable(344) %64) #19
  store ptr %65, ptr %10, align 8, !tbaa !275
  br label %74

66:                                               ; preds = %39, %13, %50
  %67 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement21canGenerateAttributesEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
  br i1 %67, label %74, label %68, !prof !382

68:                                               ; preds = %66
  %69 = icmp eq i32 %15, 35
  br i1 %69, label %74, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %72 = load i16, ptr %71, align 8, !tbaa !238
  %73 = or i16 %72, 16
  store i16 %73, ptr %71, align 8, !tbaa !238
  br label %74

74:                                               ; preds = %46, %66, %68, %70, %57, %60, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement11hasChildrenEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #3 comdat align 2 !prof !383 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !275
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1016ElemCallTemplate11getTemplateEv(ptr noundef nonnull align 8 dereferenceable(344) %0) local_unnamed_addr #3 comdat align 2 !prof !248 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemCallTemplate", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !384
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement21canGenerateAttributesEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #3 comdat align 2 !prof !386 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef 16) #19
  ret i1 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(232) %2, ptr noundef nonnull align 8 dereferenceable(232) %3) unnamed_addr #6 align 2 !prof !387 {
  %5 = load ptr, ptr %0, align 8, !tbaa !213
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr %7(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
  tail call void @_ZN11xalanc_1_1017NamespacesHandler16postConstructionERNS_29StylesheetConstructionContextEbRKNS_14XalanDOMStringEPKS0_PKNS0_13PrefixCheckerE(ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull %2, ptr noundef null) #19
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017NamespacesHandler16postConstructionERNS_29StylesheetConstructionContextEbRKNS_14XalanDOMStringEPKS0_PKNS0_13PrefixCheckerE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #6 align 2 !prof !388 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement29getNamespaceForPrefixInternalERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #19
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement29getNamespaceForPrefixInternalERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #6 align 2 !prof !388 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement23getFinishedConstructionEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
  br i1 %3, label %7, label %4, !prof !389

4:                                                ; preds = %2
  %5 = tail call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1010Stylesheet30getNamespaceForPrefixFromStackERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1504) %5, ptr noundef nonnull align 8 dereferenceable(36) %1) #19
  br label %29

7:                                                ; preds = %2
  %8 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices11s_XMLStringE, align 8, !tbaa !216
  %9 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %8) #19
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices17s_XMLNamespaceURIE, align 8, !tbaa !216
  br label %29

12:                                               ; preds = %7
  %13 = tail call noundef nonnull align 8 dereferenceable(232) ptr @_ZNK11xalanc_1_1019ElemTemplateElement20getNamespacesHandlerEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
  %14 = tail call noundef ptr @_ZNK11xalanc_1_1017NamespacesHandler12getNamespaceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(232) %13, ptr noundef nonnull align 8 dereferenceable(36) %1) #19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !312
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement29getNamespaceForPrefixInternalERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %18, ptr noundef nonnull align 8 dereferenceable(36) %1) #19
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %16, %20
  %24 = tail call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
  %25 = load ptr, ptr %24, align 8, !tbaa !213
  %26 = getelementptr inbounds ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(1504) %24, ptr noundef nonnull align 8 dereferenceable(36) %1) #19
  br label %29

29:                                               ; preds = %10, %20, %23, %12, %4
  %30 = phi ptr [ %6, %4 ], [ %11, %10 ], [ %28, %23 ], [ %21, %20 ], [ %14, %12 ]
  ret ptr %30
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement20processPrefixControlERNS_29StylesheetConstructionContextERKNS_10StylesheetERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef %4) local_unnamed_addr #6 align 2 !prof !248 {
  %6 = load ptr, ptr @_ZN11xalanc_1_109Constants33ATTRNAME_EXTENSIONELEMENTPREFIXESE, align 8, !tbaa !216
  %7 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %6) #19
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 2
  %10 = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK11xalanc_1_1010Stylesheet13getNamespacesEv(ptr noundef nonnull align 8 dereferenceable(1504) %2) #19
  tail call void @_ZN11xalanc_1_1017NamespacesHandler31processExtensionElementPrefixesERNS_29StylesheetConstructionContextEPKtRKNS_10XalanDequeINS5_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS6_EEEENS7_IS9_EEEE(ptr noundef nonnull align 8 dereferenceable(232) %9, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(80) %10) #19
  br label %17

11:                                               ; preds = %5
  %12 = load ptr, ptr @_ZN11xalanc_1_109Constants32ATTRNAME_EXCLUDE_RESULT_PREFIXESE, align 8, !tbaa !216
  %13 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %12) #19
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 2
  %16 = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK11xalanc_1_1010Stylesheet13getNamespacesEv(ptr noundef nonnull align 8 dereferenceable(1504) %2) #19
  tail call void @_ZN11xalanc_1_1017NamespacesHandler28processExcludeResultPrefixesERNS_29StylesheetConstructionContextEPKtRKNS_10XalanDequeINS5_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS6_EEEENS7_IS9_EEEE(ptr noundef nonnull align 8 dereferenceable(232) %15, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(80) %16) #19
  br label %17

17:                                               ; preds = %11, %14, %8
  %18 = phi i1 [ true, %8 ], [ true, %14 ], [ false, %11 ]
  ret i1 %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #6 comdat !prof !390 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #19
  ret i1 %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017NamespacesHandler31processExtensionElementPrefixesERNS_29StylesheetConstructionContextEPKtRKNS_10XalanDequeINS5_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS6_EEEENS7_IS9_EEEE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZNK11xalanc_1_1010Stylesheet13getNamespacesEv(ptr noundef nonnull align 8 dereferenceable(1504) %0) local_unnamed_addr #3 comdat align 2 !prof !391 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 8
  ret ptr %2
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017NamespacesHandler28processExcludeResultPrefixesERNS_29StylesheetConstructionContextEPKtRKNS_10XalanDequeINS5_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS6_EEEENS7_IS9_EEEE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement23getFinishedConstructionEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #3 comdat align 2 !prof !388 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef 128) #19
  ret i1 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1010Stylesheet30getNamespaceForPrefixFromStackERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1504) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #6 comdat align 2 !prof !392 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 8
  %4 = tail call noundef ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS1_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(36) %1) #19
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(232) ptr @_ZNK11xalanc_1_1019ElemTemplateElement20getNamespacesHandlerEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #3 comdat align 2 !prof !393 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1017NamespacesHandler12getNamespaceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv(ptr noundef nonnull align 8 dereferenceable(322) %0) unnamed_addr #3 align 2 !prof !248 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 9
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy6getURIEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy6getURIEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !248 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !394
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyC2EllRKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) unnamed_addr #6 align 2 !prof !246 {
  tail call void @_ZN11xalanc_1_1012XalanLocatorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1019ElemTemplateElement12LocatorProxyE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !213
  %5 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", ptr %0, i64 0, i32 1
  store i64 %1, ptr %5, align 8, !tbaa !395
  %6 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", ptr %0, i64 0, i32 2
  store i64 %2, ptr %6, align 8, !tbaa !396
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", ptr %0, i64 0, i32 3
  store ptr %3, ptr %7, align 8, !tbaa !216
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1012XalanLocatorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !246 {
  tail call void @_ZN11xercesc_2_77LocatorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1012XalanLocatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !213
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 !prof !246 {
  tail call void @_ZN11xercesc_2_77LocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #21
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy13getLineNumberEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #11 align 2 !prof !248 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !395
  ret i64 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy15getColumnNumberEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #11 align 2 !prof !248 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !396
  ret i64 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy11getPublicIdEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 !prof !248 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy11getSystemIdEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #6 align 2 !prof !248 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !394
  %4 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %3) #19
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !394
  %8 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %7) #19
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #3 comdat align 2 !prof !397 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #19
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !398
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #6 comdat align 2 !prof !399 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #19
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  br i1 %2, label %5, label %3, !prof !400

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #19
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #9 align 2 !prof !401 {
  ret i1 true
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #6 align 2 !prof !402 {
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement17hasDirectTemplateEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
  br i1 %4, label %17, label %5, !prof !403

5:                                                ; preds = %3, %12
  %6 = phi ptr [ %10, %12 ], [ %2, %3 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !213
  %8 = getelementptr inbounds ptr, ptr %7, i64 23
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(322) %6) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12, !prof !404

12:                                               ; preds = %5
  %13 = load ptr, ptr %0, align 8, !tbaa !213
  %14 = getelementptr inbounds ptr, ptr %13, i64 26
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef zeroext i1 %15(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %10) #19
  br i1 %16, label %17, label %5, !prof !405, !llvm.loop !406

17:                                               ; preds = %12, %5, %3
  %18 = phi ptr [ null, %3 ], [ %10, %12 ], [ null, %5 ]
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 align 2 !prof !407 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement17hasDirectTemplateEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
  br i1 %3, label %4, label %13, !prof !408

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !213
  %6 = getelementptr inbounds ptr, ptr %5, i64 85
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %8 = load ptr, ptr %1, align 8, !tbaa !213
  %9 = getelementptr inbounds ptr, ptr %8, i64 134
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %0) #19
  %11 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !275
  br label %26

13:                                               ; preds = %2
  %14 = load ptr, ptr %0, align 8, !tbaa !213
  %15 = getelementptr inbounds ptr, ptr %14, i64 18
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(322) %0) #19
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19, !prof !409

19:                                               ; preds = %13
  %20 = load ptr, ptr %0, align 8, !tbaa !213
  %21 = getelementptr inbounds ptr, ptr %20, i64 26
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef zeroext i1 %22(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %17) #19
  br i1 %23, label %26, label %24, !prof !410

24:                                               ; preds = %19
  %25 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %17) #19
  br label %26

26:                                               ; preds = %13, %19, %24, %4
  %27 = phi ptr [ %12, %4 ], [ %17, %19 ], [ %25, %24 ], [ null, %13 ]
  ret ptr %27
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture readnone %2) unnamed_addr #9 align 2 !prof !411 {
  ret i1 true
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !412 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !413
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !414

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #19
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !415
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #19
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #22
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !416 {
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #14 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #20
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !417 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !418

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #19
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !419, !llvm.loop !420

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !421 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !415
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !422 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !417 {
  %3 = load ptr, ptr %0, align 8, !tbaa !423
  %4 = load ptr, ptr %3, align 8, !tbaa !213
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #3 comdat align 2 !prof !424 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !425 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !415
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !426
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !427 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !428
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1010Stylesheet17getBaseIdentifierEv(ptr noundef nonnull align 8 dereferenceable(1504) %0) local_unnamed_addr #3 comdat align 2 !prof !429 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !212 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !430
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !428
  %6 = getelementptr %"class.xalanc_1_10::XalanDOMString", ptr %3, i64 %5
  %7 = getelementptr %"class.xalanc_1_10::XalanDOMString", ptr %6, i64 -1
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !431 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !253 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #19
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !253 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #19
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_(ptr noundef %3, ptr noundef %1) #19
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !432 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %0) #19
  %4 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1) #19
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %0, i32 noundef %3, ptr noundef %1, i32 noundef %4) #19
  ret i1 %5
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !433 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %4 = load i16, ptr %3, align 8, !tbaa !238
  %5 = zext i16 %4 to i32
  %6 = and i32 %5, %1
  %7 = icmp ne i32 %6, 0
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !434 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #19
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1) #19
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #19
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #19
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 comdat align 2 !prof !435 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #19
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1) #19
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #19
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %2) #19
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #3 comdat align 2 !prof !436 {
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !437 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1) #19
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %3) #19
  ret ptr %4
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMString7reserveEj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !438 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #19
  %3 = add i32 %1, 1
  %4 = zext i32 %3 to i64
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %4) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !439 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !413
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7, !prof !440

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #19
  br label %7

7:                                                ; preds = %6, %2
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !441 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %4 = load ptr, ptr %0, align 8, !tbaa !423
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #19
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !442 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !423
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !426
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !443

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #19
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #19
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #19
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #19
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #19
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !444

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #19
  store ptr %24, ptr %8, align 8, !tbaa !415
  store i64 %3, ptr %7, align 8, !tbaa !413
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 !prof !445 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !423
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !415
  %7 = load ptr, ptr %1, align 8, !tbaa !423
  store ptr %7, ptr %0, align 8, !tbaa !423
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !446
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !415
  store ptr %11, ptr %5, align 8, !tbaa !415
  store ptr %3, ptr %1, align 8, !tbaa !423
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !446
  store <2 x i64> %9, ptr %4, align 8, !tbaa !446
  store <2 x i64> %12, ptr %8, align 8, !tbaa !446
  store ptr %6, ptr %10, align 8, !tbaa !415
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 !prof !447 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #6 comdat align 2 !prof !448 {
  store ptr %1, ptr %0, align 8, !tbaa !423
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !426
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !413
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !449

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #19
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !415
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !450 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #19
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8, !prof !451

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28, !prof !452

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #19
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16, !prof !453

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !423
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 2 dereferenceable(2) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #19
  %23 = getelementptr inbounds i16, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !426
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !426
  %26 = getelementptr inbounds i16, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !prof !454, !llvm.loop !455

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47, !prof !456

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %32 = load ptr, ptr %0, align 8, !tbaa !423
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #19
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #19
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #19
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #19
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #19
  %50 = icmp ugt i64 %49, %6
  br i1 %50, label %66, label %51, !prof !457

51:                                               ; preds = %47
  %52 = getelementptr inbounds i16, ptr %2, i64 %49
  %53 = icmp eq ptr %52, %3
  br i1 %53, label %54, label %56, !prof !458

54:                                               ; preds = %56, %51
  %55 = icmp eq ptr %48, %1
  br i1 %55, label %64, label %60, !prof !458

56:                                               ; preds = %51, %56
  %57 = phi ptr [ %58, %56 ], [ %52, %51 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %57) #19
  %58 = getelementptr inbounds i16, ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !prof !459, !llvm.loop !460

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %61) #19
  %62 = getelementptr inbounds i16, ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !prof !461, !llvm.loop !462

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #19
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds i16, ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %72) #19
  %73 = getelementptr inbounds i16, ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !463

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds i16, ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #19
  %78 = tail call noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #19
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !464 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !415
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !464 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !417 {
  %3 = shl i64 %1, 1
  %4 = load ptr, ptr %0, align 8, !tbaa !423
  %5 = load ptr, ptr %4, align 8, !tbaa !213
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #19
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !465 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #19
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !466 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !426
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !467 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6, !prof !468

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #19
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 !prof !424 {
  %4 = load i16, ptr %1, align 2, !tbaa !469
  store i16 %4, ptr %0, align 2, !tbaa !469
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !470 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !413
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !471 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !426
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !413
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !472

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  %11 = load ptr, ptr %0, align 8, !tbaa !423
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #19
  %13 = load i64, ptr %4, align 8, !tbaa !426
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !426
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %21 = load ptr, ptr %0, align 8, !tbaa !423
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #19
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1) #19
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !473 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %0) #19
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %1) #19
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #19
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !248 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) #19
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %1) #19
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #19
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !465 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !216
  call void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %4 = call noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #19
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat !prof !465 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 1
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat !prof !465 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #15

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !473 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !216
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %0) #21
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %1) #21
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #21
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #19
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #19
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %0) local_unnamed_addr #3 comdat !prof !474 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #3 comdat !prof !475 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !473 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %0) local_unnamed_addr #3 comdat !prof !474 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #3 comdat !prof !476 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !473 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !475 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !477

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
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !248 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !216
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) #21
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %1) #21
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #21
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #19
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #19
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #3 comdat !prof !478 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !248 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !248 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !248 {
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
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !464 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !415
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !426
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #6 comdat align 2 !prof !479 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #19
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #19
  ret i32 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #6 comdat !prof !480 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #19
  ret i1 %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS1_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77LocatorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !481 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_77LocatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !213
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77LocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !481 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1012XalanLocatorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
  tail call void @llvm.trap() #22
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77LocatorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
  tail call void @llvm.trap() #22
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !482 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !426
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !483 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !415
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_ElemTemplateElement.cpp() #1 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  tail call fastcc void @__cxx_global_var_init.1()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { optsize }
attributes #20 = { nounwind }
attributes #21 = { nounwind optsize }
attributes #22 = { noreturn nounwind }
attributes #23 = { noreturn }
attributes #24 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!210}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209}
!35 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!36 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, ptr @_ZN11xalanc_1_1014PrefixResolverC2Ev, i64 395}
!37 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, ptr @_ZN11xalanc_1_1010Stylesheet20getNamespacesHandlerEv, i64 395}
!38 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, ptr @_ZN11xalanc_1_1010Stylesheet13getNamespacesEv, i64 395}
!39 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, ptr @_ZNK11xalanc_1_1010Stylesheet19getXSLTNamespaceURIEv, i64 395}
!40 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, ptr @_ZN11xalanc_1_1017NamespacesHandlerC1ERNS_29StylesheetConstructionContextERKS0_RKNS_10XalanDequeINS5_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS6_EEEENS7_IS9_EEEERKNS_14XalanDOMStringE, i64 395}
!41 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, ptr @_ZNK11xalanc_1_1010Stylesheet31getCurrentIncludeBaseIdentifierEv, i64 395}
!42 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, ptr @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyC2EllRKNS_14XalanDOMStringE, i64 395}
!43 = !{ptr @_ZNK11xalanc_1_1010Stylesheet31getCurrentIncludeBaseIdentifierEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE5emptyEv, i64 395}
!44 = !{ptr @_ZNK11xalanc_1_1010Stylesheet31getCurrentIncludeBaseIdentifierEv, ptr @_ZNK11xalanc_1_1010Stylesheet17getBaseIdentifierEv, i64 1}
!45 = !{ptr @_ZNK11xalanc_1_1010Stylesheet31getCurrentIncludeBaseIdentifierEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE4backEv, i64 394}
!46 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiRKNS_14XalanDOMStringEii, ptr @_ZN11xalanc_1_1014PrefixResolverC2Ev, i64 455}
!47 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiRKNS_14XalanDOMStringEii, ptr @_ZN11xalanc_1_1024XPathConstructionContext16getMemoryManagerEv, i64 455}
!48 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiRKNS_14XalanDOMStringEii, ptr @_ZN11xalanc_1_1017NamespacesHandlerC1ERN11xercesc_2_713MemoryManagerE, i64 455}
!49 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiRKNS_14XalanDOMStringEii, ptr @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyC2EllRKNS_14XalanDOMStringE, i64 455}
!50 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev, ptr @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyD2Ev, i64 850}
!51 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev, ptr @_ZN11xalanc_1_1017NamespacesHandlerD1Ev, i64 850}
!52 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev, ptr @_ZN11xalanc_1_1014PrefixResolverD2Ev, i64 850}
!53 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv, i64 12}
!54 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE, i64 1}
!55 = !{ptr @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt, i64 1899}
!56 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1011TracerEventC1ERKNS_26StylesheetExecutionContextERKNS_19ElemTemplateElementE, i64 1}
!57 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1011TracerEventD1Ev, i64 1}
!58 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement9hasParamsEv, i64 46307078}
!59 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12hasVariablesEv, i64 46307077}
!60 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement9hasParamsEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE, i64 92614564}
!61 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement12hasVariablesEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE, i64 92614562}
!62 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement9hasParamsEv, i64 46307078}
!63 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12hasVariablesEv, i64 46307077}
!64 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17hasDirectTemplateEv, i64 23887976}
!65 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement17hasDirectTemplateEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE, i64 229314010}
!66 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement21beginChildrenToStringERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18hasSingleTextChildEv, i64 40062}
!67 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement21beginChildrenToStringERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1015ElemTextLiteral7getTextEv, i64 1}
!68 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement21beginChildrenToStringERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1015ElemTextLiteral9getLengthEv, i64 1}
!69 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement21beginChildrenToStringERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_106assignERNS_14XalanDOMStringEPKtj, i64 1}
!70 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement21beginChildrenToStringERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, i64 40061}
!71 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement21beginChildrenToStringERNS_26StylesheetExecutionContextERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_107reserveERNS_14XalanDOMStringEj, i64 40061}
!72 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement18hasSingleTextChildEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE, i64 80124}
!73 = !{ptr @_ZN11xalanc_1_106assignERNS_14XalanDOMStringEPKtj, ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, i64 159}
!74 = !{ptr @_ZN11xalanc_1_106assignERNS_14XalanDOMStringEPKtj, ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj, i64 44748363}
!75 = !{ptr @_ZN11xalanc_1_107reserveERNS_14XalanDOMStringEj, ptr @_ZN11xalanc_1_1014XalanDOMString7reserveEj, i64 77696}
!76 = !{ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, i64 66708619}
!77 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement19endChildrenToStringERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18hasSingleTextChildEv, i64 40062}
!78 = !{ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev, ptr @__clang_call_terminate, i64 64}
!79 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv, i64 409}
!80 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @__cxa_allocate_exception, i64 1}
!81 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE, i64 1}
!82 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv, i64 397106}
!83 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv, i64 961931}
!84 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1010Stylesheet17getStylesheetRootEv, i64 961930}
!85 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1010Stylesheet12findTemplateERNS_26StylesheetExecutionContextEPNS_9XalanNodeENS3_8NodeTypeERKNS_10XalanQNameEb, i64 397106}
!86 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1014StylesheetRoot14getDefaultRuleEv, i64 2}
!87 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1014StylesheetRoot18getDefaultTextRuleEv, i64 564822}
!88 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1014StylesheetRoot18getDefaultRootRuleEv, i64 1}
!89 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, i64 1}
!90 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZN11xalanc_1_1011toCharArrayERKNS_14XalanDOMStringE, i64 1}
!91 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZN11xalanc_1_1011TracerEventC1ERKNS_26StylesheetExecutionContextERKNS_19ElemTemplateElementE, i64 1}
!92 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZN11xalanc_1_1011TracerEventD1Ev, i64 1}
!93 = !{ptr @_ZN11xalanc_1_1011toCharArrayERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 45868073}
!94 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement11hasChildrenEv, i64 433}
!95 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv, i64 623}
!96 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12hasVariablesEv, i64 407}
!97 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement9hasParamsEv, i64 409}
!98 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1016ElemCallTemplate11getTemplateEv, i64 1}
!99 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21canGenerateAttributesEv, i64 148}
!100 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement21canGenerateAttributesEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE, i64 336}
!101 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_, ptr @_ZN11xalanc_1_1017NamespacesHandler16postConstructionERNS_29StylesheetConstructionContextEbRKNS_14XalanDOMStringEPKS0_PKNS0_13PrefixCheckerE, i64 245}
!102 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement29getNamespaceForPrefixInternalERKNS_14XalanDOMStringE, i64 165}
!103 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement29getNamespaceForPrefixInternalERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement23getFinishedConstructionEv, i64 165}
!104 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement29getNamespaceForPrefixInternalERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv, i64 164}
!105 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement29getNamespaceForPrefixInternalERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1010Stylesheet30getNamespaceForPrefixFromStackERKNS_14XalanDOMStringE, i64 164}
!106 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement29getNamespaceForPrefixInternalERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_, i64 1}
!107 = !{ptr @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_, ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_, i64 4704705}
!108 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement23getFinishedConstructionEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE, i64 165}
!109 = !{ptr @_ZNK11xalanc_1_1010Stylesheet30getNamespaceForPrefixFromStackERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS1_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEERKNS_14XalanDOMStringE, i64 555}
!110 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyC2EllRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1012XalanLocatorC2Ev, i64 850}
!111 = !{ptr @_ZN11xalanc_1_1012XalanLocatorC2Ev, ptr @_ZN11xercesc_2_77LocatorC2Ev, i64 850}
!112 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement12LocatorProxyD2Ev, ptr @_ZN11xercesc_2_77LocatorD2Ev, i64 850}
!113 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 1414337980}
!114 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!115 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!116 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!117 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17hasDirectTemplateEv, i64 136276664}
!118 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17hasDirectTemplateEv, i64 68726179}
!119 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_, i64 1}
!120 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!121 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!122 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!123 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!124 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!125 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!126 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!127 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!128 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!129 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!130 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 2082773}
!131 = !{ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, i64 1899}
!132 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 1899}
!133 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, i64 1899}
!134 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 807446}
!135 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 403723}
!136 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 2169010}
!137 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 1084505}
!138 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, i64 1084505}
!139 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 89933972}
!140 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 44966986}
!141 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 44966986}
!142 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 1179818}
!143 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 1179818}
!144 = !{ptr @_ZN11xalanc_1_1014XalanDOMString7reserveEj, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 77704}
!145 = !{ptr @_ZN11xalanc_1_1014XalanDOMString7reserveEj, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm, i64 77704}
!146 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 141227382}
!147 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 64551564}
!148 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 129103172}
!149 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 64551586}
!150 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 64551586}
!151 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 64551586}
!152 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm, i64 19}
!153 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 19}
!154 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 19}
!155 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 19}
!156 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 19}
!157 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 19}
!158 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 19}
!159 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 19}
!160 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm, i64 64551584}
!161 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 64551608}
!162 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 170601494}
!163 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm, i64 1}
!164 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 64147281}
!165 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 311655952}
!166 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, i64 157736530}
!167 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv, i64 155828045}
!168 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 240731456}
!169 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, i64 133170775}
!170 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE, i64 30012996397}
!171 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, i64 22657270}
!172 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 20748786}
!173 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 20748766}
!174 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246159}
!175 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 20748647}
!176 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 20748786}
!177 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614809}
!178 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, i64 1908484}
!179 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_, i64 1}
!180 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 82509}
!181 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 82509}
!182 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 82509}
!183 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 185895030}
!184 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 156073599}
!185 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, i64 133170778}
!186 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 22}
!187 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 133170778}
!188 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 155828047}
!189 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 248301304}
!190 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 124150651}
!191 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE, i64 124150651}
!192 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 1}
!193 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 1}
!194 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 1}
!195 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 1}
!196 = !{ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, ptr @_ZSt12__miter_baseIPKtET_S2_, i64 3901146}
!197 = !{ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!198 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 185895030}
!199 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 185895030}
!200 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_baseIPKtET_S2_, i64 3901146}
!201 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_baseIPtET_S1_, i64 1950573}
!202 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!203 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_, i64 1950573}
!204 = !{ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!205 = !{ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_, i64 1950573}
!206 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 230527004}
!207 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, i64 230527004}
!208 = !{ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_, i64 555646850}
!209 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!210 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!211 = !{!"function_entry_count", i64 43398227}
!212 = !{!"function_entry_count", i64 395}
!213 = !{!214, !214, i64 0}
!214 = !{!"vtable pointer", !215, i64 0}
!215 = !{!"Simple C++ TBAA"}
!216 = !{!217, !217, i64 0}
!217 = !{!"any pointer", !218, i64 0}
!218 = !{!"omnipotent char", !215, i64 0}
!219 = !{!220, !233, i64 248}
!220 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !221, i64 0, !217, i64 8, !222, i64 16, !233, i64 248, !217, i64 256, !217, i64 264, !217, i64 272, !218, i64 280, !234, i64 288, !237, i64 320}
!221 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!222 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !223, i64 0, !225, i64 32, !226, i64 64, !227, i64 96}
!223 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !217, i64 0, !224, i64 8, !224, i64 16, !217, i64 24}
!224 = !{!"long", !218, i64 0}
!225 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !217, i64 0, !224, i64 8, !224, i64 16, !217, i64 24}
!226 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !217, i64 0, !224, i64 8, !224, i64 16, !217, i64 24}
!227 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !228, i64 0, !229, i64 1, !217, i64 8, !230, i64 16, !224, i64 24, !224, i64 32, !231, i64 40, !231, i64 64, !232, i64 88, !224, i64 120, !224, i64 128}
!228 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!229 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!230 = !{!"float", !218, i64 0}
!231 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !217, i64 0, !217, i64 8, !217, i64 16}
!232 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !217, i64 0, !224, i64 8, !224, i64 16, !217, i64 24}
!233 = !{!"int", !218, i64 0}
!234 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !235, i64 0, !224, i64 8, !224, i64 16, !217, i64 24}
!235 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !236, i64 0}
!236 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!237 = !{!"short", !218, i64 0}
!238 = !{!220, !237, i64 320}
!239 = !{!"function_entry_count", i64 416}
!240 = !{!"function_entry_count", i64 597}
!241 = !{!"branch_weights", i32 1, i32 396}
!242 = !{!"function_entry_count", i64 455}
!243 = !{!"function_entry_count", i64 2273}
!244 = !{!245, !217, i64 8}
!245 = !{!"_ZTSN11xalanc_1_1024XPathConstructionContextE", !217, i64 8}
!246 = !{!"function_entry_count", i64 850}
!247 = !{!"function_entry_count", i64 168057}
!248 = !{!"function_entry_count", i64 0}
!249 = !{!220, !217, i64 8}
!250 = !{!"function_entry_count", i64 12}
!251 = !{!"branch_weights", i32 1, i32 13}
!252 = !{!"function_entry_count", i64 962142}
!253 = !{!"function_entry_count", i64 1899}
!254 = !{!"function_entry_count", i64 135898737}
!255 = !{!"branch_weights", i32 135898738, i32 1}
!256 = !{!"function_entry_count", i64 23581092}
!257 = !{!"function_entry_count", i64 1}
!258 = !{!"branch_weights", i32 181720133, i32 1}
!259 = distinct !{!259, !260}
!260 = !{!"llvm.loop.mustprogress"}
!261 = !{!"branch_weights", i32 1, i32 31}
!262 = !{!"branch_weights", i32 90891623, i32 90828512}
!263 = !{!"branch_weights", i32 31, i32 -1387445183}
!264 = distinct !{!264, !260}
!265 = distinct !{!265, !260}
!266 = !{!"function_entry_count", i64 46307078}
!267 = !{!"branch_weights", i32 1, i32 46307079}
!268 = !{!"branch_weights", i32 22419102, i32 23887978}
!269 = !{!"function_entry_count", i64 92614564}
!270 = !{!"function_entry_count", i64 92614562}
!271 = !{!"branch_weights", i32 1, i32 23887978}
!272 = !{!"function_entry_count", i64 229314010}
!273 = !{!"function_entry_count", i64 40062}
!274 = !{!"branch_weights", i32 1, i32 40063}
!275 = !{!218, !218, i64 0}
!276 = !{!"function_entry_count", i64 80124}
!277 = !{!"function_entry_count", i64 44748522}
!278 = !{!"branch_weights", i32 159, i32 44748365}
!279 = !{!280, !217, i64 328}
!280 = !{!"_ZTSN11xalanc_1_1015ElemTextLiteralE", !220, i64 0, !281, i64 322, !217, i64 328, !233, i64 336}
!281 = !{!"bool", !218, i64 0}
!282 = !{!280, !233, i64 336}
!283 = !{!"function_entry_count", i64 77696}
!284 = !{!"function_entry_count", i64 66708619}
!285 = !{!"function_entry_count", i64 386423474}
!286 = !{!"function_entry_count", i64 67594463}
!287 = !{!288, !217, i64 0}
!288 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringE", !217, i64 0, !217, i64 8}
!289 = !{!288, !217, i64 8}
!290 = !{!"function_entry_count", i64 201578993}
!291 = !{!"function_entry_count", i64 134708288}
!292 = !{!"branch_weights", i32 67113826, i32 67594464}
!293 = !{!"function_entry_count", i64 1769}
!294 = !{!295, !217, i64 0}
!295 = !{!"_ZTSN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringE", !217, i64 0, !217, i64 8}
!296 = !{!295, !217, i64 8}
!297 = !{!"branch_weights", i32 1, i32 1770}
!298 = !{!"function_entry_count", i64 6}
!299 = !{!"branch_weights", i32 3, i32 4}
!300 = !{!"branch_weights", i32 4, i32 0}
!301 = distinct !{!301, !260}
!302 = !{!"function_entry_count", i64 91482242}
!303 = !{!"function_entry_count", i64 559}
!304 = !{!"branch_weights", i32 560, i32 1720}
!305 = distinct !{!305, !260}
!306 = !{!"function_entry_count", i64 159027556}
!307 = !{!220, !217, i64 264}
!308 = !{!"function_entry_count", i64 651}
!309 = !{!220, !217, i64 272}
!310 = !{!"function_entry_count", i64 435}
!311 = !{!"function_entry_count", i64 386518941}
!312 = !{!220, !217, i64 256}
!313 = !{!"function_entry_count", i64 409}
!314 = !{!"branch_weights", i32 410, i32 1}
!315 = !{!"branch_weights", i32 220, i32 191}
!316 = !{!"function_entry_count", i64 46114577}
!317 = !{!"function_entry_count", i64 397107}
!318 = !{!"branch_weights", i32 397108, i32 1}
!319 = !{!"branch_weights", i32 1, i32 397108}
!320 = !{!"branch_weights", i32 907002893, i32 1240480755}
!321 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 167721, i32 1, i32 1}
!322 = !{!"branch_weights", i32 1, i32 2147483647}
!323 = !{!"branch_weights", i32 167721, i32 229388}
!324 = !{!"branch_weights", i32 1, i32 1, i32 167721, i32 1}
!325 = !{!"branch_weights", i32 229388, i32 1}
!326 = !{!"function_entry_count", i64 961942}
!327 = !{!328, !217, i64 8}
!328 = !{!"_ZTSN11xalanc_1_1010StylesheetE", !221, i64 0, !217, i64 8, !329, i64 16, !331, i64 56, !332, i64 88, !329, i64 120, !333, i64 160, !224, i64 192, !334, i64 200, !336, i64 280, !281, i64 360, !338, i64 368, !217, i64 504, !343, i64 512, !344, i64 544, !349, i64 680, !350, i64 712, !351, i64 720, !354, i64 856, !356, i64 864, !351, i64 896, !354, i64 1032, !356, i64 1040, !356, i64 1072, !356, i64 1104, !356, i64 1136, !356, i64 1168, !356, i64 1200, !224, i64 1232, !357, i64 1240, !222, i64 1272}
!329 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !330, i64 0, !233, i64 32}
!330 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !217, i64 0, !224, i64 8, !224, i64 16, !217, i64 24}
!331 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14KeyDeclarationENS_31MemoryManagedConstructionTraitsIS1_EEEE", !217, i64 0, !224, i64 8, !224, i64 16, !217, i64 24}
!332 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_20XalanSpaceNodeTesterENS_31MemoryManagedConstructionTraitsIS1_EEEE", !217, i64 0, !224, i64 8, !224, i64 16, !217, i64 24}
!333 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_10StylesheetENS_31MemoryManagedConstructionTraitsIS2_EEEE", !217, i64 0, !224, i64 8, !224, i64 16, !217, i64 24}
!334 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS0_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEENS2_IS4_EEEE", !217, i64 0, !224, i64 8, !335, i64 16, !335, i64 48}
!335 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_10XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEENS_31MemoryManagedConstructionTraitsIS8_EEEE", !217, i64 0, !224, i64 8, !224, i64 16, !217, i64 24}
!336 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEE", !217, i64 0, !224, i64 8, !337, i64 16, !337, i64 48}
!337 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEENS_31MemoryManagedConstructionTraitsIS5_EEEE", !217, i64 0, !224, i64 8, !224, i64 16, !217, i64 24}
!338 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS1_EEEE", !339, i64 0, !340, i64 1, !217, i64 8, !230, i64 16, !224, i64 24, !224, i64 32, !341, i64 40, !341, i64 64, !342, i64 88, !224, i64 120, !224, i64 128}
!339 = !{!"_ZTSN11xalanc_1_1021DOMStringHashFunctionE"}
!340 = !{!"_ZTSSt8equal_toIN11xalanc_1_1014XalanDOMStringEE"}
!341 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !217, i64 0, !217, i64 8, !217, i64 16}
!342 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !217, i64 0, !224, i64 8, !224, i64 16, !217, i64 24}
!343 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEE", !217, i64 0, !224, i64 8, !224, i64 16, !217, i64 24}
!344 = !{!"_ZTSN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS1_EEEE", !345, i64 0, !346, i64 1, !217, i64 8, !230, i64 16, !224, i64 24, !224, i64 32, !347, i64 40, !347, i64 64, !348, i64 88, !224, i64 120, !224, i64 128}
!345 = !{!"_ZTSN11xalanc_1_1024XalanHashMemberReferenceINS_10XalanQNameEEE"}
!346 = !{!"_ZTSSt8equal_toIN11xalanc_1_1010XalanQNameEE"}
!347 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !217, i64 0, !217, i64 8, !217, i64 16}
!348 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEEE", !217, i64 0, !224, i64 8, !224, i64 16, !217, i64 24}
!349 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEEE", !217, i64 0, !224, i64 8, !224, i64 16, !217, i64 24}
!350 = !{!"double", !218, i64 0}
!351 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS5_EEEENS_17XalanMapKeyTraitsIS1_EEEE", !339, i64 0, !340, i64 1, !217, i64 8, !230, i64 16, !224, i64 24, !224, i64 32, !352, i64 40, !352, i64 64, !353, i64 88, !224, i64 120, !224, i64 128}
!352 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS6_EEEENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !217, i64 0, !217, i64 8, !217, i64 16}
!353 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS0_IPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISE_E4NodeEEENS8_ISJ_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEEE", !217, i64 0, !224, i64 8, !224, i64 16, !217, i64 24}
!354 = !{!"_ZTSN11xalanc_1_1016XalanMapIteratorINS_27XalanMapConstIteratorTraitsISt4pairIKNS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS8_EEEEEEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIS3_SB_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISK_E4NodeEEEEE", !355, i64 0}
!355 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISE_E4NodeEEE", !217, i64 0}
!356 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS3_EEEE", !217, i64 0, !224, i64 8, !224, i64 16, !217, i64 24}
!357 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_17ElemDecimalFormatENS_31MemoryManagedConstructionTraitsIS2_EEEE", !217, i64 0, !224, i64 8, !224, i64 16, !217, i64 24}
!358 = !{!359, !217, i64 1888}
!359 = !{!"_ZTSN11xalanc_1_1014StylesheetRootE", !328, i64 0, !329, i64 1504, !360, i64 1544, !329, i64 1552, !329, i64 1592, !329, i64 1632, !329, i64 1672, !281, i64 1712, !329, i64 1720, !329, i64 1760, !361, i64 1800, !362, i64 1808, !281, i64 1840, !343, i64 1848, !217, i64 1880, !217, i64 1888, !217, i64 1896, !281, i64 1904, !281, i64 1905, !233, i64 1908, !281, i64 1912, !224, i64 1920, !363, i64 1928}
!360 = !{!"_ZTSN11xalanc_1_1014StylesheetRoot11eIndentTypeE", !218, i64 0}
!361 = !{!"_ZTSN11xalanc_1_1017FormatterListener7eFormatE", !218, i64 0}
!362 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_10XalanQNameENS_31MemoryManagedConstructionTraitsIS3_EEEE", !217, i64 0, !224, i64 8, !224, i64 16, !217, i64 24}
!363 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_10XalanQNameENS_11XalanVectorIPNS_16ElemAttributeSetENS_31MemoryManagedConstructionTraitsIS6_EEEENS_17XalanMapKeyTraitsIS3_EEEE", !364, i64 0, !365, i64 1, !217, i64 8, !230, i64 16, !224, i64 24, !224, i64 32, !366, i64 40, !366, i64 64, !367, i64 88, !224, i64 120, !224, i64 128}
!364 = !{!"_ZTSN11xalanc_1_1022XalanHashMemberPointerINS_10XalanQNameEEE"}
!365 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_10XalanQNameEEE"}
!366 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_10XalanQNameENS_11XalanVectorIPNS_16ElemAttributeSetENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !217, i64 0, !217, i64 8, !217, i64 16}
!367 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_10XalanQNameENS0_IPNS_16ElemAttributeSetENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISF_E4NodeEEENS9_ISK_EEEENS_32ConstructWithMemoryManagerTraitsISM_EEEE", !217, i64 0, !224, i64 8, !224, i64 16, !217, i64 24}
!368 = !{!"function_entry_count", i64 564827}
!369 = !{!359, !217, i64 1880}
!370 = !{!359, !217, i64 1896}
!371 = !{!"function_entry_count", i64 45868073}
!372 = !{!"function_entry_count", i64 433}
!373 = !{!"branch_weights", i32 217, i32 218}
!374 = !{}
!375 = !{!"branch_weights", i32 21456, i32 11248, i32 432}
!376 = !{!"branch_weights", i32 9, i32 399}
!377 = !{!"branch_weights", i32 2011709948, i32 135773700}
!378 = !{!"branch_weights", i32 216, i32 191}
!379 = distinct !{!379, !260}
!380 = !{!"branch_weights", i32 67, i32 8}
!381 = !{!"branch_weights", i32 3, i32 1}
!382 = !{!"branch_weights", i32 149, i32 1}
!383 = !{!"function_entry_count", i64 60135}
!384 = !{!385, !217, i64 336}
!385 = !{!"_ZTSN11xalanc_1_1016ElemCallTemplateE", !220, i64 0, !217, i64 328, !217, i64 336}
!386 = !{!"function_entry_count", i64 336}
!387 = !{!"function_entry_count", i64 245}
!388 = !{!"function_entry_count", i64 165}
!389 = !{!"branch_weights", i32 1, i32 166}
!390 = !{!"function_entry_count", i64 4704705}
!391 = !{!"function_entry_count", i64 259}
!392 = !{!"function_entry_count", i64 555}
!393 = !{!"function_entry_count", i64 1048980}
!394 = !{!234, !217, i64 24}
!395 = !{!234, !224, i64 8}
!396 = !{!234, !224, i64 16}
!397 = !{!"function_entry_count", i64 1414337980}
!398 = !{!329, !233, i64 32}
!399 = !{!"function_entry_count", i64 967143541}
!400 = !{!"branch_weights", i32 403628487, i32 563515056}
!401 = !{!"function_entry_count", i64 351}
!402 = !{!"function_entry_count", i64 136276664}
!403 = !{!"branch_weights", i32 1, i32 136276665}
!404 = !{!"branch_weights", i32 68303308, i32 67973358}
!405 = !{!"branch_weights", i32 136276665, i32 1}
!406 = distinct !{!406, !260}
!407 = !{!"function_entry_count", i64 68726179}
!408 = !{!"branch_weights", i32 1, i32 68726180}
!409 = !{!"branch_weights", i32 262216, i32 68463965}
!410 = !{!"branch_weights", i32 68463965, i32 1}
!411 = !{!"function_entry_count", i64 136437321}
!412 = !{!"function_entry_count", i64 128698679}
!413 = !{!330, !224, i64 16}
!414 = !{!"branch_weights", i32 43398290, i32 85300391}
!415 = !{!330, !217, i64 24}
!416 = !{!"function_entry_count", i64 6521798493}
!417 = !{!"function_entry_count", i64 85300390}
!418 = !{!"branch_weights", i32 1, i32 12185770}
!419 = !{!"branch_weights", i32 12185770, i32 -193930396}
!420 = distinct !{!420, !260}
!421 = !{!"function_entry_count", i64 227375739}
!422 = !{!"function_entry_count", i64 568333389}
!423 = !{!330, !217, i64 0}
!424 = !{!"function_entry_count", i64 30137156660}
!425 = !{!"function_entry_count", i64 825654971}
!426 = !{!330, !224, i64 8}
!427 = !{!"function_entry_count", i64 2082773}
!428 = !{!343, !224, i64 8}
!429 = !{!"function_entry_count", i64 441}
!430 = !{!343, !217, i64 24}
!431 = !{!"function_entry_count", i64 3667263}
!432 = !{!"function_entry_count", i64 403723}
!433 = !{!"function_entry_count", i64 417098446}
!434 = !{!"function_entry_count", i64 1084505}
!435 = !{!"function_entry_count", i64 44966986}
!436 = !{!"function_entry_count", i64 3070433834}
!437 = !{!"function_entry_count", i64 1179818}
!438 = !{!"function_entry_count", i64 77704}
!439 = !{!"function_entry_count", i64 70613691}
!440 = !{!"branch_weights", i32 64551566, i32 6062127}
!441 = !{!"function_entry_count", i64 64551586}
!442 = !{!"function_entry_count", i64 64551608}
!443 = !{!"branch_weights", i32 64551591, i32 19}
!444 = !{!"branch_weights", i32 5, i32 64551587}
!445 = !{!"function_entry_count", i64 85300747}
!446 = !{!224, !224, i64 0}
!447 = !{!"function_entry_count", i64 18}
!448 = !{!"function_entry_count", i64 64147281}
!449 = !{!"branch_weights", i32 64147282, i32 1}
!450 = !{!"function_entry_count", i64 155828046}
!451 = !{!"branch_weights", i32 1, i32 155828047}
!452 = !{!"branch_weights", i32 133170778, i32 22657270}
!453 = !{!"branch_weights", i32 1, i32 19024396}
!454 = !{!"branch_weights", i32 19024396, i32 -26420601}
!455 = distinct !{!455, !260}
!456 = !{!"branch_weights", i32 20748787, i32 1908484}
!457 = !{!"branch_weights", i32 1, i32 1908484}
!458 = !{!"branch_weights", i32 1, i32 1908483}
!459 = !{!"branch_weights", i32 1908483, i32 49797853}
!460 = distinct !{!460, !260}
!461 = !{!"branch_weights", i32 1908483, i32 1}
!462 = distinct !{!462, !260}
!463 = distinct !{!463, !260}
!464 = !{!"function_entry_count", i64 82509}
!465 = !{!"function_entry_count", i64 185895030}
!466 = !{!"function_entry_count", i64 156073599}
!467 = !{!"function_entry_count", i64 133170778}
!468 = !{!"branch_weights", i32 22, i32 133170758}
!469 = !{!237, !237, i64 0}
!470 = !{!"function_entry_count", i64 155828047}
!471 = !{!"function_entry_count", i64 124150652}
!472 = !{!"branch_weights", i32 124150653, i32 1}
!473 = !{!"function_entry_count", i64 1950573}
!474 = !{!"function_entry_count", i64 3901146}
!475 = !{!"function_entry_count", i64 30109074}
!476 = !{!"function_entry_count", i64 86426076}
!477 = !{!"branch_weights", i32 28199083, i32 1909993}
!478 = !{!"function_entry_count", i64 56317002}
!479 = !{!"function_entry_count", i64 230527004}
!480 = !{!"function_entry_count", i64 555646850}
!481 = !{!"function_entry_count", i64 855}
!482 = !{!"function_entry_count", i64 1083116306}
!483 = !{!"function_entry_count", i64 565220908}
