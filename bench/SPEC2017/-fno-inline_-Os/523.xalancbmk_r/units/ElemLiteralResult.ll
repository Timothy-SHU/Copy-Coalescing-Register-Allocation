; ModuleID = 'ElemLiteralResult.cpp'
source_filename = "ElemLiteralResult.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.3", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ElemLiteralResult" = type <{ %"class.xalanc_1_10::ElemUse", ptr, ptr, i32, [4 x i8] }>
%"class.xalanc_1_10::ElemUse" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr, i64 }
%"class.xalanc_1_10::ElemTemplateElement.base" = type <{ %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::NamespacesHandler", i32, [4 x i8], ptr, ptr, ptr, %union.anon, %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", i16 }>
%"class.xalanc_1_10::PrefixResolver" = type { ptr }
%"class.xalanc_1_10::NamespacesHandler" = type { %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanVector.1", %"class.xalanc_1_10::XalanMap" }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap" = type { %"struct.xalanc_1_10::DOMStringPointerHashFunction", %"struct.xalanc_1_10::pointer_equal", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanVector.2", i64, i64 }
%"struct.xalanc_1_10::DOMStringPointerHashFunction" = type { i8 }
%"struct.xalanc_1_10::pointer_equal" = type { i8 }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%union.anon = type { ptr }
%"class.xalanc_1_10::ElemTemplateElement::LocatorProxy" = type { %"class.xalanc_1_10::XalanLocator", i64, i64, ptr }
%"class.xalanc_1_10::XalanLocator" = type { %"class.xercesc_2_7::Locator" }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString" = type { ptr, ptr }
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
%"class.xalanc_1_10::ElemTemplateElement" = type <{ %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::NamespacesHandler", i32, [4 x i8], ptr, ptr, ptr, %union.anon, %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", i16, [6 x i8] }>
%"class.xalanc_1_10::AVTPrefixChecker" = type <{ %"class.xalanc_1_10::NamespacesHandler::PrefixChecker", ptr, i32, [4 x i8] }>
%"class.xalanc_1_10::NamespacesHandler::PrefixChecker" = type { ptr }
%"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString" = type { ptr, ptr }
%"class.xalanc_1_10::AVT" = type { ptr, ptr, i64, ptr, i32, ptr }

$_ZN11xalanc_1_1019ElemTemplateElement9hasPrefixEb = comdat any

$_ZN11xalanc_1_107indexOfEPKtt = comdat any

$_ZN11xalanc_1_106lengthEPKt = comdat any

$_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringC2ERS0_ = comdat any

$_ZNK11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedString3getEv = comdat any

$_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_ = comdat any

$_ZNK11xalanc_1_1010Stylesheet19getXSLTNamespaceURIEv = comdat any

$_ZN11xalanc_1_1014XalanDOMString6assignEPKtj = comdat any

$_ZN11xalanc_1_1010Stylesheet18setXSLTVerDeclaredEd = comdat any

$_ZN11xalanc_1_1024XPathConstructionContext16getMemoryManagerEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement20getNamespacesHandlerEv = comdat any

$_ZNK11xalanc_1_1017NamespacesHandler29getNamespaceDeclarationsCountEv = comdat any

$_ZN11xalanc_1_1019ElemTemplateElement21canGenerateAttributesEb = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement21canGenerateAttributesEv = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement11hasChildrenEv = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement18hasSingleTextChildEv = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv = comdat any

$_ZN11xalanc_1_1016AVTPrefixCheckerC2EPPKNS_3AVTEj = comdat any

$_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement9hasPrefixEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_ = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv = comdat any

$_ZNK11xalanc_1_103AVT7getNameEv = comdat any

$_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1014XalanDOMString5clearEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev = comdat any

$_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1010startsWithEPKtRKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv = comdat any

$_ZNK11xalanc_1_1010Stylesheet30getNamespaceForPrefixFromStackERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1019ElemTemplateElement7setFlagENS0_6eFlagsEb = comdat any

$_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_ = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$__clang_call_terminate = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE = comdat any

$_ZN11xalanc_1_1016AVTPrefixCheckerD0Ev = comdat any

$_ZNK11xalanc_1_1016AVTPrefixChecker8isActiveERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_107indexOfERKNS_14XalanDOMStringEt = comdat any

$_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1014XalanDOMString6lengthEv = comdat any

$_ZN11xalanc_1_1010startsWithERKNS_14XalanDOMStringES2_ = comdat any

$_ZNK11xalanc_1_1014XalanDOMString4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZSt4copyIPtS0_ET0_T_S2_S1_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_ = comdat any

$_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPtET_S1_ = comdat any

$_ZSt12__niter_wrapIPtET_RKS1_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__niter_baseIPtET_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_ = comdat any

$_ZTVN11xalanc_1_1016AVTPrefixCheckerE = comdat any

$_ZTSN11xalanc_1_1016AVTPrefixCheckerE = comdat any

$_ZTIN11xalanc_1_1016AVTPrefixCheckerE = comdat any

@_ZTVN11xalanc_1_1017ElemLiteralResultE = dso_local unnamed_addr constant { [41 x ptr] } { [41 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1017ElemLiteralResultE, ptr @_ZN11xalanc_1_1017ElemLiteralResultD2Ev, ptr @_ZN11xalanc_1_1017ElemLiteralResultD0Ev, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, ptr @_ZNK11xalanc_1_1017ElemLiteralResult8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_1017ElemLiteralResult12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1017ElemLiteralResult10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv, ptr @_ZNK11xalanc_1_1017ElemLiteralResult14getElementNameEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb, ptr @_ZN11xalanc_1_1017ElemLiteralResult16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv, ptr @_ZNK11xalanc_1_107ElemUse25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_107ElemUse26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8getXPathEj, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi, ptr @_ZN11xalanc_1_1017ElemLiteralResult26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_, ptr @_ZNK11xalanc_1_1017ElemLiteralResult12evaluateAVTsERNS_26StylesheetExecutionContextE] }, align 8
@_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants16ATTRNAME_VERSIONE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE = external global %"class.xalanc_1_10::XalanDOMString", align 8
@_ZN11xalanc_1_1011DOMServices27s_XMLNamespaceWithSeparatorE = external local_unnamed_addr constant ptr, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1017ElemLiteralResultE = dso_local constant [35 x i8] c"N11xalanc_1_1017ElemLiteralResultE\00", align 1
@_ZTIN11xalanc_1_107ElemUseE = external constant ptr
@_ZTIN11xalanc_1_1017ElemLiteralResultE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1017ElemLiteralResultE, ptr @_ZTIN11xalanc_1_107ElemUseE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@_ZTVN11xalanc_1_1016AVTPrefixCheckerE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1016AVTPrefixCheckerE, ptr @_ZN11xalanc_1_1017NamespacesHandler13PrefixCheckerD2Ev, ptr @_ZN11xalanc_1_1016AVTPrefixCheckerD0Ev, ptr @_ZNK11xalanc_1_1016AVTPrefixChecker8isActiveERKNS_14XalanDOMStringE] }, comdat, align 8
@_ZTSN11xalanc_1_1016AVTPrefixCheckerE = linkonce_odr dso_local constant [34 x i8] c"N11xalanc_1_1016AVTPrefixCheckerE\00", comdat, align 1
@_ZTIN11xalanc_1_1017NamespacesHandler13PrefixCheckerE = external constant ptr
@_ZTIN11xalanc_1_1016AVTPrefixCheckerE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1016AVTPrefixCheckerE, ptr @_ZTIN11xalanc_1_1017NamespacesHandler13PrefixCheckerE }, comdat, align 8

@_ZN11xalanc_1_1017ElemLiteralResultC1ERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListEii = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i32, i32), ptr @_ZN11xalanc_1_1017ElemLiteralResultC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListEii
@_ZN11xalanc_1_1017ElemLiteralResultC1ERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListEiii = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i32, i32, i32), ptr @_ZN11xalanc_1_1017ElemLiteralResultC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListEiii
@_ZN11xalanc_1_1017ElemLiteralResultD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1017ElemLiteralResultD2Ev

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1017ElemLiteralResultC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(364) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %5, i32 noundef %6) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !155 {
  tail call void @_ZN11xalanc_1_107ElemUseC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, i32 noundef %5, i32 noundef %6, i32 noundef 35) #9
  store ptr getelementptr inbounds ({ [41 x ptr] }, ptr @_ZTVN11xalanc_1_1017ElemLiteralResultE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !156
  %8 = load ptr, ptr %1, align 8, !tbaa !156
  %9 = getelementptr inbounds ptr, ptr %8, i64 4
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef nonnull align 8 dereferenceable(36) ptr %10(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %3, i32 noundef -1) #9
          to label %12 unwind label %17

12:                                               ; preds = %7
  %13 = getelementptr inbounds %"class.xalanc_1_10::ElemLiteralResult", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !159
  %14 = getelementptr inbounds %"class.xalanc_1_10::ElemLiteralResult", ptr %0, i64 0, i32 2
  store ptr null, ptr %14, align 8, !tbaa !162
  %15 = getelementptr inbounds %"class.xalanc_1_10::ElemLiteralResult", ptr %0, i64 0, i32 3
  store i32 0, ptr %15, align 8, !tbaa !183
  invoke void @_ZN11xalanc_1_1017ElemLiteralResult4initERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(364) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %16 unwind label %17

16:                                               ; preds = %12
  ret void

17:                                               ; preds = %12, %7
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_107ElemUseD2Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) #10
  resume { ptr, i32 } %18
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107ElemUseC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(344), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1017ElemLiteralResult4initERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(364) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !155 {
  %6 = alloca %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", align 8
  %7 = tail call noundef i32 @_ZN11xalanc_1_107indexOfEPKtt(ptr noundef %3, i16 noundef zeroext 58) #9
  %8 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %3) #9
  %9 = icmp ult i32 %7, %8
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement9hasPrefixEb(ptr noundef nonnull align 8 dereferenceable(322) %0, i1 noundef zeroext %9) #9
  %10 = load ptr, ptr %4, align 8, !tbaa !156
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  %14 = zext i32 %13 to i64
  %15 = load ptr, ptr %1, align 8, !tbaa !156
  %16 = getelementptr inbounds ptr, ptr %15, i64 38
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %14) #9
  %19 = getelementptr inbounds %"class.xalanc_1_10::ElemLiteralResult", ptr %0, i64 0, i32 2
  store ptr %18, ptr %19, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %1) #9
  %20 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #9
  %21 = icmp eq i32 %13, 0
  br i1 %21, label %22, label %23, !prof !184

22:                                               ; preds = %121, %5
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret void

23:                                               ; preds = %5, %121
  %24 = phi i32 [ %122, %121 ], [ 0, %5 ]
  %25 = load ptr, ptr %4, align 8, !tbaa !156
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %24) #9
          to label %29 unwind label %44

29:                                               ; preds = %23
  %30 = call noundef i32 @_ZN11xalanc_1_107indexOfEPKtt(ptr noundef %28, i16 noundef zeroext 58) #9
  %31 = call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %28) #9
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %84, !prof !185

33:                                               ; preds = %29
  %34 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_109substringEPKtRNS_14XalanDOMStringEjj(ptr noundef %28, ptr noundef nonnull align 8 dereferenceable(36) %20, i32 noundef 0, i32 noundef %30) #9
          to label %35 unwind label %46

35:                                               ; preds = %33
  %36 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8
  %37 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %20, ptr noundef nonnull align 8 dereferenceable(36) %36) #9
          to label %38 unwind label %46

38:                                               ; preds = %35
  br i1 %37, label %121, label %39

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement29getNamespaceForPrefixInternalERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(36) %20) #9
          to label %41 unwind label %48

41:                                               ; preds = %39
  %42 = icmp eq ptr %40, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 27, ptr noundef nonnull align 8 dereferenceable(36) %20) #9
          to label %84 unwind label %48

44:                                               ; preds = %23
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %124

46:                                               ; preds = %109, %104, %99, %93, %90, %88, %84, %35, %33
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %124

48:                                               ; preds = %69, %66, %61, %54, %50, %43, %39
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %124

50:                                               ; preds = %41
  %51 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1010Stylesheet19getXSLTNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(1504) %2) #9
  %52 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %40, ptr noundef nonnull align 8 dereferenceable(36) %51) #9
          to label %53 unwind label %48

53:                                               ; preds = %50
  br i1 %52, label %54, label %84

54:                                               ; preds = %53
  %55 = zext i32 %30 to i64
  %56 = getelementptr inbounds i16, ptr %28, i64 %55
  %57 = getelementptr inbounds i16, ptr %56, i64 1
  %58 = xor i32 %30, -1
  %59 = add i32 %31, %58
  %60 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %20, ptr noundef nonnull %57, i32 noundef %59) #9
          to label %61 unwind label %48

61:                                               ; preds = %54
  %62 = load ptr, ptr %4, align 8, !tbaa !156
  %63 = getelementptr inbounds ptr, ptr %62, i64 5
  %64 = load ptr, ptr %63, align 8
  %65 = invoke noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %24) #9
          to label %66 unwind label %48

66:                                               ; preds = %61
  %67 = invoke noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement20processPrefixControlERNS_29StylesheetConstructionContextERKNS_10StylesheetERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(36) %20, ptr noundef %65) #9
          to label %68 unwind label %48

68:                                               ; preds = %66
  br i1 %67, label %121, label %69

69:                                               ; preds = %68
  %70 = load ptr, ptr @_ZN11xalanc_1_109Constants16ATTRNAME_VERSIONE, align 8
  %71 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %20, ptr noundef nonnull align 8 dereferenceable(36) %70) #9
          to label %72 unwind label %48

72:                                               ; preds = %69
  br i1 %71, label %73, label %84

73:                                               ; preds = %72
  %74 = load ptr, ptr %4, align 8, !tbaa !156
  %75 = getelementptr inbounds ptr, ptr %74, i64 5
  %76 = load ptr, ptr %75, align 8
  %77 = invoke noundef ptr %76(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %24) #9
          to label %78 unwind label %82

78:                                               ; preds = %73
  %79 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1024XPathConstructionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #9
  %80 = invoke noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef %77, ptr noundef nonnull align 8 dereferenceable(8) %79) #9
          to label %81 unwind label %82

81:                                               ; preds = %78
  call void @_ZN11xalanc_1_1010Stylesheet18setXSLTVerDeclaredEd(ptr noundef nonnull align 8 dereferenceable(1504) %2, double noundef %80) #9
  br label %84

82:                                               ; preds = %78, %73
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %124

84:                                               ; preds = %53, %72, %81, %43, %29
  %85 = getelementptr inbounds %"class.xalanc_1_10::ElemLiteralResult", ptr %0, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !186
  %87 = invoke noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %86) #9
          to label %88 unwind label %46

88:                                               ; preds = %84
  %89 = invoke noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %87, ptr noundef %28, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %24, ptr noundef nonnull align 8 dereferenceable(16) %1) #9
          to label %90 unwind label %46

90:                                               ; preds = %88
  %91 = invoke noundef zeroext i1 @_ZN11xalanc_1_107ElemUse23processUseAttributeSetsERNS_29StylesheetConstructionContextEPKtRKN11xercesc_2_713AttributeListEi(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %28, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %24) #9
          to label %92 unwind label %46

92:                                               ; preds = %90
  br i1 %91, label %121, label %93, !prof !185

93:                                               ; preds = %92
  %94 = load ptr, ptr %0, align 8, !tbaa !156
  %95 = getelementptr inbounds ptr, ptr %94, i64 5
  %96 = load ptr, ptr %95, align 8
  %97 = invoke noundef zeroext i1 %96(ptr noundef nonnull align 8 dereferenceable(364) %0, ptr noundef %28, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %24, ptr noundef nonnull align 8 dereferenceable(16) %1) #9
          to label %98 unwind label %46

98:                                               ; preds = %93
  br i1 %97, label %99, label %121, !prof !187

99:                                               ; preds = %98
  %100 = load ptr, ptr %0, align 8, !tbaa !156
  %101 = getelementptr inbounds ptr, ptr %100, i64 4
  %102 = load ptr, ptr %101, align 8
  %103 = invoke noundef ptr %102(ptr noundef nonnull align 8 dereferenceable(322) %0) #9
          to label %104 unwind label %46

104:                                              ; preds = %99
  %105 = load ptr, ptr %4, align 8, !tbaa !156
  %106 = getelementptr inbounds ptr, ptr %105, i64 5
  %107 = load ptr, ptr %106, align 8
  %108 = invoke noundef ptr %107(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %24) #9
          to label %109 unwind label %46

109:                                              ; preds = %104
  %110 = load ptr, ptr %1, align 8, !tbaa !156
  %111 = getelementptr inbounds ptr, ptr %110, i64 35
  %112 = load ptr, ptr %111, align 8
  %113 = invoke noundef ptr %112(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %103, ptr noundef %28, ptr noundef %108, ptr noundef nonnull align 8 dereferenceable(8) %0) #9
          to label %114 unwind label %46

114:                                              ; preds = %109
  %115 = getelementptr inbounds %"class.xalanc_1_10::ElemLiteralResult", ptr %0, i64 0, i32 3
  %116 = load ptr, ptr %19, align 8, !tbaa !162
  %117 = load i32, ptr %115, align 8, !tbaa !183
  %118 = add i32 %117, 1
  store i32 %118, ptr %115, align 8, !tbaa !183
  %119 = zext i32 %117 to i64
  %120 = getelementptr inbounds ptr, ptr %116, i64 %119
  store ptr %113, ptr %120, align 8, !tbaa !159
  br label %121

121:                                              ; preds = %68, %38, %92, %98, %114
  %122 = add nuw i32 %24, 1
  %123 = icmp eq i32 %122, %13
  br i1 %123, label %22, label %23, !prof !188, !llvm.loop !189

124:                                              ; preds = %46, %82, %48, %44
  %125 = phi { ptr, i32 } [ %45, %44 ], [ %47, %46 ], [ %49, %48 ], [ %83, %82 ]
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  resume { ptr, i32 } %125
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_107ElemUseD2Ev(ptr noundef nonnull align 8 dereferenceable(344)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1017ElemLiteralResultC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListEiii(ptr noundef nonnull align 8 dereferenceable(364) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !191 {
  tail call void @_ZN11xalanc_1_107ElemUseC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, i32 noundef %5, i32 noundef %6, i32 noundef %7) #9
  store ptr getelementptr inbounds ({ [41 x ptr] }, ptr @_ZTVN11xalanc_1_1017ElemLiteralResultE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !156
  %9 = load ptr, ptr %1, align 8, !tbaa !156
  %10 = getelementptr inbounds ptr, ptr %9, i64 4
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef nonnull align 8 dereferenceable(36) ptr %11(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %3, i32 noundef -1) #9
          to label %13 unwind label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.xalanc_1_10::ElemLiteralResult", ptr %0, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !159
  %15 = getelementptr inbounds %"class.xalanc_1_10::ElemLiteralResult", ptr %0, i64 0, i32 2
  store ptr null, ptr %15, align 8, !tbaa !162
  %16 = getelementptr inbounds %"class.xalanc_1_10::ElemLiteralResult", ptr %0, i64 0, i32 3
  store i32 0, ptr %16, align 8, !tbaa !183
  invoke void @_ZN11xalanc_1_1017ElemLiteralResult4initERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(364) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %17 unwind label %18

17:                                               ; preds = %13
  ret void

18:                                               ; preds = %13, %8
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_107ElemUseD2Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) #10
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019ElemTemplateElement9hasPrefixEb(ptr noundef nonnull align 8 dereferenceable(322) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !155 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement7setFlagENS0_6eFlagsEb(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef 256, i1 noundef zeroext %1) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_107indexOfEPKtt(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #4 comdat !prof !192 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %9, %3 ]
  %5 = load i16, ptr %4, align 2, !tbaa !193
  %6 = icmp eq i16 %5, %1
  %7 = icmp eq i16 %5, 0
  %8 = or i1 %6, %7
  %9 = getelementptr inbounds i16, ptr %4, i64 1
  br i1 %8, label %10, label %3, !prof !194, !llvm.loop !195

10:                                               ; preds = %3
  %11 = ptrtoint ptr %4 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 1
  %15 = trunc i64 %14 to i32
  ret i32 %15
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %0) local_unnamed_addr #4 comdat !prof !196 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ]
  %4 = load i16, ptr %3, align 2, !tbaa !193
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds i16, ptr %3, i64 1
  br i1 %5, label %7, label %2, !prof !197, !llvm.loop !198

7:                                                ; preds = %2
  %8 = ptrtoint ptr %3 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = lshr exact i64 %10, 1
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 !prof !199 {
  store ptr %1, ptr %0, align 8, !tbaa !200
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %1, align 8, !tbaa !156
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(16) %1) #9
  store ptr %7, ptr %3, align 8, !tbaa !202
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 !prof !199 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !202
  ret ptr %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_109substringEPKtRNS_14XalanDOMStringEjj(ptr noundef, ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat !prof !203 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #9
  ret i1 %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement29getNamespaceForPrefixInternalERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1010Stylesheet19getXSLTNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(1504) %0) local_unnamed_addr #4 comdat align 2 !prof !204 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 5
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !205 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1) #9
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %2) #9
  ret ptr %4
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement20processPrefixControlERNS_29StylesheetConstructionContextERKNS_10StylesheetERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010Stylesheet18setXSLTVerDeclaredEd(ptr noundef nonnull align 8 dereferenceable(1504) %0, double noundef %1) local_unnamed_addr #4 comdat align 2 !prof !206 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 16
  store double %1, ptr %3, align 8, !tbaa !207
  ret void
}

; Function Attrs: optsize
declare noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1024XPathConstructionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 !prof !239 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !240
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !242 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  br i1 %2, label %5, label %3, !prof !243

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #9
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_107ElemUse23processUseAttributeSetsERNS_29StylesheetConstructionContextEPKtRKN11xercesc_2_713AttributeListEi(ptr noundef nonnull align 8 dereferenceable(344), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !199 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !202
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !244

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !200
  %7 = load ptr, ptr %6, align 8, !tbaa !156
  %8 = getelementptr inbounds ptr, ptr %7, i64 6
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(36) %3) #9
          to label %11 unwind label %12

11:                                               ; preds = %5, %1
  ret void

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1017ElemLiteralResultD2Ev(ptr noundef nonnull align 8 dereferenceable(364) %0) unnamed_addr #4 align 2 !prof !155 {
  tail call void @_ZN11xalanc_1_107ElemUseD2Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1017ElemLiteralResultD0Ev(ptr noundef nonnull align 8 dereferenceable(364) %0) unnamed_addr #4 align 2 {
  tail call void @_ZN11xalanc_1_1017ElemLiteralResultD2Ev(ptr noundef nonnull align 8 dereferenceable(364) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017ElemLiteralResult14getElementNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(364) %0) unnamed_addr #6 align 2 !prof !245 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemLiteralResult", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !186
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1017ElemLiteralResult16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(364) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(232) %2) unnamed_addr #1 align 2 !prof !155 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemLiteralResult", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !183
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12, !prof !246

7:                                                ; preds = %3
  %8 = tail call noundef nonnull align 8 dereferenceable(232) ptr @_ZNK11xalanc_1_1019ElemTemplateElement20getNamespacesHandlerEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #9
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1017NamespacesHandler29getNamespaceDeclarationsCountEv(ptr noundef nonnull align 8 dereferenceable(232) %8) #9
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12, !prof !247

11:                                               ; preds = %7
  br label %12

12:                                               ; preds = %3, %7, %11
  %13 = phi i1 [ false, %11 ], [ true, %7 ], [ true, %3 ]
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement21canGenerateAttributesEb(ptr noundef nonnull align 8 dereferenceable(322) %0, i1 noundef zeroext %13) #9
  tail call void @_ZN11xalanc_1_107ElemUse16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(232) %2) #9
  %14 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement21canGenerateAttributesEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #9
  br i1 %14, label %27, label %15, !prof !248

15:                                               ; preds = %12
  %16 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement11hasChildrenEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #9
  br i1 %16, label %17, label %27

17:                                               ; preds = %15
  %18 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement18hasSingleTextChildEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #9
  br i1 %18, label %27, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %0, align 8, !tbaa !156
  %21 = getelementptr inbounds ptr, ptr %20, i64 18
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(322) %0) #9
  %24 = tail call noundef i32 @_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv(ptr noundef nonnull align 8 dereferenceable(322) %23) #9
  %25 = icmp eq i32 %24, 35
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement21canGenerateAttributesEb(ptr noundef nonnull align 8 dereferenceable(322) %0, i1 noundef zeroext true) #9
  br label %27

27:                                               ; preds = %15, %26, %19, %17, %12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(232) ptr @_ZNK11xalanc_1_1019ElemTemplateElement20getNamespacesHandlerEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #4 comdat align 2 !prof !249 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1017NamespacesHandler29getNamespaceDeclarationsCountEv(ptr noundef nonnull align 8 dereferenceable(232) %0) local_unnamed_addr #1 comdat align 2 !prof !250 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 1
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #9
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019ElemTemplateElement21canGenerateAttributesEb(ptr noundef nonnull align 8 dereferenceable(322) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !155 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement7setFlagENS0_6eFlagsEb(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef 16, i1 noundef zeroext %1) #9
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107ElemUse16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(344), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement21canGenerateAttributesEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #1 comdat align 2 !prof !251 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef 16) #9
  ret i1 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement11hasChildrenEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #4 comdat align 2 !prof !252 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !253
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement18hasSingleTextChildEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #4 comdat align 2 !prof !254 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef 2) #9
  ret i1 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #4 comdat align 2 !prof !255 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !256
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1017ElemLiteralResult26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_(ptr noundef nonnull align 8 dereferenceable(364) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(232) %2, ptr noundef nonnull align 8 dereferenceable(232) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !155 {
  %5 = alloca %"class.xalanc_1_10::AVTPrefixChecker", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %6 = getelementptr inbounds %"class.xalanc_1_10::ElemLiteralResult", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !162
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemLiteralResult", ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !183
  call void @_ZN11xalanc_1_1016AVTPrefixCheckerC2EPPKNS_3AVTEj(ptr noundef nonnull align 8 dereferenceable(20) %5, ptr noundef %7, i32 noundef %9) #9
  %10 = load ptr, ptr %0, align 8, !tbaa !156
  %11 = getelementptr inbounds ptr, ptr %10, i64 12
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef nonnull align 8 dereferenceable(36) ptr %12(ptr noundef nonnull align 8 dereferenceable(364) %0) #9
          to label %14 unwind label %16

14:                                               ; preds = %4
  invoke void @_ZN11xalanc_1_1017NamespacesHandler16postConstructionERNS_29StylesheetConstructionContextEbRKNS_14XalanDOMStringEPKS0_PKNS0_13PrefixCheckerE(ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(36) %13, ptr noundef nonnull %2, ptr noundef nonnull %5) #9
          to label %15 unwind label %16

15:                                               ; preds = %14
  call void @_ZN11xalanc_1_1017NamespacesHandler13PrefixCheckerD2Ev(ptr noundef nonnull align 8 dereferenceable(20) %5) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  ret void

16:                                               ; preds = %14, %4
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1017NamespacesHandler13PrefixCheckerD2Ev(ptr noundef nonnull align 8 dereferenceable(20) %5) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1016AVTPrefixCheckerC2EPPKNS_3AVTEj(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 !prof !155 {
  tail call void @_ZN11xalanc_1_1017NamespacesHandler13PrefixCheckerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1016AVTPrefixCheckerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !156
  %4 = getelementptr inbounds %"class.xalanc_1_10::AVTPrefixChecker", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !257
  %5 = getelementptr inbounds %"class.xalanc_1_10::AVTPrefixChecker", ptr %0, i64 0, i32 2
  store i32 %2, ptr %5, align 8, !tbaa !260
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017NamespacesHandler16postConstructionERNS_29StylesheetConstructionContextEbRKNS_14XalanDOMStringEPKS0_PKNS0_13PrefixCheckerE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017NamespacesHandler13PrefixCheckerD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017ElemLiteralResult12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(364) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 !prof !261 {
  %3 = load ptr, ptr %0, align 8, !tbaa !156
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr %5(ptr noundef nonnull align 8 dereferenceable(364) %0) #9
  %7 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %6) #9
  %8 = load ptr, ptr %1, align 8, !tbaa !156
  %9 = getelementptr inbounds ptr, ptr %8, i64 101
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %7) #9
  %11 = tail call noundef ptr @_ZNK11xalanc_1_107ElemUse12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %12 = tail call noundef nonnull align 8 dereferenceable(232) ptr @_ZNK11xalanc_1_1019ElemTemplateElement20getNamespacesHandlerEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #9
  tail call void @_ZNK11xalanc_1_1017NamespacesHandler22outputResultNamespacesERNS_26StylesheetExecutionContextEb(ptr noundef nonnull align 8 dereferenceable(232) %12, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext false) #9
  %13 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement9hasPrefixEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #9
  br i1 %13, label %31, label %14, !prof !262

14:                                               ; preds = %2
  %15 = load ptr, ptr %1, align 8, !tbaa !156
  %16 = getelementptr inbounds ptr, ptr %15, i64 72
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE) #9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20, !prof !263

20:                                               ; preds = %14
  %21 = tail call noundef ptr @_ZNK11xalanc_1_1017NamespacesHandler12getNamespaceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(232) %12, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef nonnull align 8 dereferenceable(36) %21) #9
  br i1 %24, label %31, label %25

25:                                               ; preds = %23, %20
  %26 = phi ptr [ @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE, %20 ], [ %21, %23 ]
  %27 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8, !tbaa !159
  %28 = load ptr, ptr %1, align 8, !tbaa !156
  %29 = getelementptr inbounds ptr, ptr %28, i64 68
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %27, ptr noundef nonnull align 8 dereferenceable(36) %26) #9
  br label %31

31:                                               ; preds = %25, %14, %23, %2
  %32 = load ptr, ptr %0, align 8, !tbaa !156
  %33 = getelementptr inbounds ptr, ptr %32, i64 19
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  ret ptr %35
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat !prof !264 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  ret ptr %2
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_107ElemUse12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1017NamespacesHandler22outputResultNamespacesERNS_26StylesheetExecutionContextEb(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement9hasPrefixEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #4 comdat align 2 !prof !261 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef 256) #9
  ret i1 %2
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1017NamespacesHandler12getNamespaceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1017ElemLiteralResult10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(364) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 !prof !261 {
  %3 = load ptr, ptr %0, align 8, !tbaa !156
  %4 = getelementptr inbounds ptr, ptr %3, i64 20
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %6 = load ptr, ptr %0, align 8, !tbaa !156
  %7 = getelementptr inbounds ptr, ptr %6, i64 12
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr %8(ptr noundef nonnull align 8 dereferenceable(364) %0) #9
  %10 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %9) #9
  %11 = load ptr, ptr %1, align 8, !tbaa !156
  %12 = getelementptr inbounds ptr, ptr %11, i64 102
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %10) #9
  tail call void @_ZNK11xalanc_1_107ElemUse10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_107ElemUse10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1017ElemLiteralResult12evaluateAVTsERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(364) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  %3 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemLiteralResult", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !183
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %32, label %7, !prof !265

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %8 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #9
  %9 = load i32, ptr %4, align 8, !tbaa !183
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11, !prof !266

11:                                               ; preds = %7
  %12 = getelementptr inbounds %"class.xalanc_1_10::ElemLiteralResult", ptr %0, i64 0, i32 2
  br label %14

13:                                               ; preds = %25, %7
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br label %32

14:                                               ; preds = %11, %25
  %15 = phi i64 [ 0, %11 ], [ %26, %25 ]
  %16 = load ptr, ptr %12, align 8, !tbaa !162
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !159
  %19 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_103AVT7getNameEv(ptr noundef nonnull align 8 dereferenceable(48) %18) #9
  invoke void @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #9
          to label %20 unwind label %30

20:                                               ; preds = %14
  %21 = load ptr, ptr %1, align 8, !tbaa !156
  %22 = getelementptr inbounds ptr, ptr %21, i64 68
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %19, ptr noundef nonnull align 8 dereferenceable(36) %8) #9
          to label %24 unwind label %30

24:                                               ; preds = %20
  invoke void @_ZN11xalanc_1_1014XalanDOMString5clearEv(ptr noundef nonnull align 8 dereferenceable(36) %8) #9
          to label %25 unwind label %30

25:                                               ; preds = %24
  %26 = add nuw nsw i64 %15, 1
  %27 = load i32, ptr %4, align 8, !tbaa !183
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %14, label %13, !prof !266, !llvm.loop !267

30:                                               ; preds = %24, %20, %14
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  resume { ptr, i32 } %31

32:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 !prof !268 {
  store ptr %1, ptr %0, align 8, !tbaa !269
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %1, align 8, !tbaa !156
  %5 = getelementptr inbounds ptr, ptr %4, i64 23
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  store ptr %7, ptr %3, align 8, !tbaa !271
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 !prof !272 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !271
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_103AVT7getNameEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !273 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !274
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 !prof !276 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !277
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !278

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !279
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %6, i32 noundef %10) #9
  br label %13

12:                                               ; preds = %4
  tail call void @_ZNK11xalanc_1_103AVT10doEvaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #9
  br label %13

13:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMString5clearEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !280 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %3 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %4 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #9
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !281
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !282 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !271
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !283

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !269
  %7 = load ptr, ptr %6, align 8, !tbaa !156
  %8 = getelementptr inbounds ptr, ptr %7, i64 24
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(36) %3) #9
          to label %11 unwind label %12

11:                                               ; preds = %5, %1
  ret void

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1017ElemLiteralResult8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(364) %0, ptr noundef %1, ptr nocapture nonnull readnone align 8 %2, i32 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !284 {
  %6 = alloca %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", align 8
  %7 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8, !tbaa !159
  %8 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %7) #9
  br i1 %8, label %41, label %9, !prof !185

9:                                                ; preds = %5
  %10 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices27s_XMLNamespaceWithSeparatorE, align 8, !tbaa !159
  %11 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtRKNS_14XalanDOMStringE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %10) #9
  br i1 %11, label %41, label %12, !prof !285

12:                                               ; preds = %9
  %13 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %1) #9
  %14 = tail call noundef i32 @_ZN11xalanc_1_107indexOfEPKtt(ptr noundef %1, i16 noundef zeroext 58) #9
  %15 = icmp ult i32 %14, %13
  br i1 %15, label %16, label %41, !prof !185

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %4) #9
  %17 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #9
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %17, ptr noundef %1, i32 noundef %14) #9
          to label %19 unwind label %33

19:                                               ; preds = %16
  %20 = call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #9
  %21 = invoke noundef ptr @_ZNK11xalanc_1_1010Stylesheet30getNamespaceForPrefixFromStackERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1504) %20, ptr noundef nonnull align 8 dereferenceable(36) %17) #9
          to label %22 unwind label %35

22:                                               ; preds = %19
  %23 = icmp eq ptr %21, null
  br i1 %23, label %37, label %24

24:                                               ; preds = %22
  %25 = load ptr, ptr %4, align 8, !tbaa !156
  %26 = getelementptr inbounds ptr, ptr %25, i64 17
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef nonnull align 8 dereferenceable(36) ptr %27(ptr noundef nonnull align 8 dereferenceable(16) %4) #9
          to label %29 unwind label %35

29:                                               ; preds = %24
  %30 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %21, ptr noundef nonnull align 8 dereferenceable(36) %28) #9
          to label %31 unwind label %35

31:                                               ; preds = %29
  %32 = xor i1 %30, true
  br label %37

33:                                               ; preds = %16
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %39

35:                                               ; preds = %29, %24, %19
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %39

37:                                               ; preds = %31, %22
  %38 = phi i1 [ false, %22 ], [ %32, %31 ]
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  br label %41

39:                                               ; preds = %35, %33
  %40 = phi { ptr, i32 } [ %36, %35 ], [ %34, %33 ]
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  resume { ptr, i32 } %40

41:                                               ; preds = %5, %37, %12, %9
  %42 = phi i1 [ true, %9 ], [ %38, %37 ], [ true, %12 ], [ true, %5 ]
  ret i1 %42
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat !prof !286 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %0) #9
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtRKNS_14XalanDOMStringE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat !prof !287 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %0) #9
  %4 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %1) #9
  %5 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %1) #9
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef %0, i32 noundef %3, ptr noundef %4, i32 noundef %5) #9
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #4 comdat align 2 !prof !288 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !289
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1010Stylesheet30getNamespaceForPrefixFromStackERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1504) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat align 2 !prof !290 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 8
  %4 = tail call noundef ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS1_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(36) %1) #9
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb(ptr noundef nonnull align 8 dereferenceable(322), i1 noundef zeroext) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_107ElemUse25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(344), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_107ElemUse26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement8getXPathEj(ptr noundef nonnull align 8 dereferenceable(322), i32 noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi(ptr noundef nonnull align 8 dereferenceable(322), i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019ElemTemplateElement7setFlagENS0_6eFlagsEb(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #4 comdat align 2 !prof !291 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %5 = load i16, ptr %4, align 8, !tbaa !292
  %6 = trunc i32 %1 to i16
  %7 = xor i16 %6, -1
  %8 = and i16 %5, %7
  %9 = or i16 %5, %6
  %10 = select i1 %2, i16 %9, i16 %8, !prof !293
  store i16 %10, ptr %4, align 8, !tbaa !292
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat !prof !294 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #9
  ret i1 %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat align 2 !prof !295 {
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !296 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !297
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !298 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !299
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !300 {
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !250 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !301
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !302 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !303 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %4 = load i16, ptr %3, align 8, !tbaa !292
  %5 = zext i16 %4 to i32
  %6 = and i32 %5, %1
  %7 = icmp ne i32 %6, 0
  ret i1 %7
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017NamespacesHandler13PrefixCheckerC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1016AVTPrefixCheckerD0Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xalanc_1_1017NamespacesHandler13PrefixCheckerD2Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1016AVTPrefixChecker8isActiveERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #1 comdat align 2 !prof !155 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::AVTPrefixChecker", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !260
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %27, label %6, !prof !184

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::AVTPrefixChecker", ptr %0, i64 0, i32 1
  br label %8

8:                                                ; preds = %6, %22
  %9 = phi i64 [ 0, %6 ], [ %23, %22 ]
  %10 = load ptr, ptr %7, align 8, !tbaa !257
  %11 = getelementptr inbounds ptr, ptr %10, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !159
  %13 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_103AVT7getNameEv(ptr noundef nonnull align 8 dereferenceable(48) %12) #9
  %14 = tail call noundef i32 @_ZN11xalanc_1_107indexOfERKNS_14XalanDOMStringEt(ptr noundef nonnull align 8 dereferenceable(36) %13, i16 noundef zeroext 58) #9
  %15 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %13) #9
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %22, label %17, !prof !187

17:                                               ; preds = %8
  %18 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #9
  %19 = icmp eq i32 %18, %14
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010startsWithERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %13, ptr noundef nonnull align 8 dereferenceable(36) %1) #9
  br i1 %21, label %27, label %22

22:                                               ; preds = %8, %20, %17
  %23 = add nuw nsw i64 %9, 1
  %24 = load i32, ptr %3, align 8, !tbaa !260
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %8, label %27, !prof !304, !llvm.loop !305

27:                                               ; preds = %22, %20, %2
  %28 = phi i1 [ false, %2 ], [ true, %20 ], [ false, %22 ]
  ret i1 %28
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_107indexOfERKNS_14XalanDOMStringEt(ptr noundef nonnull align 8 dereferenceable(36) %0, i16 noundef zeroext %1) local_unnamed_addr #1 comdat !prof !306 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5, !prof !307

5:                                                ; preds = %2
  %6 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  %7 = tail call noundef i32 @_ZN11xalanc_1_107indexOfEPKtt(ptr noundef %6, i16 noundef zeroext %1) #9
  br label %8

8:                                                ; preds = %2, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %2 ]
  ret i32 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat !prof !308 {
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  ret i32 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !309 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  ret i32 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1010startsWithERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat !prof !310 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  %4 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  %5 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %1) #9
  %6 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %1) #9
  %7 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) #9
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat align 2 !prof !311 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !281
  ret i32 %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_103AVT10doEvaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !312 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %9, label %5, !prof !313

5:                                                ; preds = %3
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %7 = tail call noundef ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_(ptr noundef %2, ptr noundef %6, ptr noundef %1) #9
  %8 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #9
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8) #9
  br label %9

9:                                                ; preds = %5, %3
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !314 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !299
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !315 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !316 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) #9
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %1) #9
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #9
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !316 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %8, label %4, !prof !317

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %6, %4 ], [ %1, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %6 = add i64 %5, -1
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %4, !prof !318, !llvm.loop !319

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !320 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #9
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !316 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !159
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) #10
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %1) #10
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #10
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #9
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #9
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #4 comdat !prof !321 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !322 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !316 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #4 comdat !prof !323 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !316 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !322 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !324

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %2, ptr align 2 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !325 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !297
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !297
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !299
  %7 = getelementptr inbounds i16, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %7) #9
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #4 comdat align 2 !prof !326 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !320 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !159
  call void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  %4 = call noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #9
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !320 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 1
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat !prof !320 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !327 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !299
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !297
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !286 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #9
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !286 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_(ptr noundef %3, ptr noundef %1) #9
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !328 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %0) #9
  %4 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1) #9
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %0, i32 noundef %3, ptr noundef %1, i32 noundef %4) #9
  ret i1 %5
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS1_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!154}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153}
!35 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResultC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_107ElemUseC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, i64 188}
!36 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResultC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1017ElemLiteralResult4initERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListE, i64 188}
!37 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResult4initERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_107indexOfEPKtt, i64 201}
!38 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResult4initERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_106lengthEPKt, i64 201}
!39 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResult4initERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1019ElemTemplateElement9hasPrefixEb, i64 188}
!40 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResult4initERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringC2ERS0_, i64 188}
!41 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResult4initERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListE, ptr @_ZNK11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedString3getEv, i64 188}
!42 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResult4initERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev, i64 188}
!43 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResult4initERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_109substringEPKtRNS_14XalanDOMStringEjj, i64 1}
!44 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResult4initERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_, i64 1}
!45 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResult4initERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListE, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 12}
!46 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResult4initERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, i64 12}
!47 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResult4initERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_107ElemUse23processUseAttributeSetsERNS_29StylesheetConstructionContextEPKtRKN11xercesc_2_713AttributeListEi, i64 12}
!48 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement9hasPrefixEb, ptr @_ZN11xalanc_1_1019ElemTemplateElement7setFlagENS0_6eFlagsEb, i64 188}
!49 = !{ptr @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_, ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_, i64 4704705}
!50 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 89933972}
!51 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 44966986}
!52 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 44966986}
!53 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!54 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!55 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!56 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResultD2Ev, ptr @_ZN11xalanc_1_107ElemUseD2Ev, i64 188}
!57 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResult16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20getNamespacesHandlerEv, i64 175}
!58 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResult16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1017NamespacesHandler29getNamespaceDeclarationsCountEv, i64 175}
!59 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResult16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZN11xalanc_1_1019ElemTemplateElement21canGenerateAttributesEb, i64 188}
!60 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResult16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZN11xalanc_1_107ElemUse16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, i64 188}
!61 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResult16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21canGenerateAttributesEv, i64 188}
!62 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResult16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement11hasChildrenEv, i64 1}
!63 = !{ptr @_ZNK11xalanc_1_1017NamespacesHandler29getNamespaceDeclarationsCountEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, i64 176}
!64 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement21canGenerateAttributesEb, ptr @_ZN11xalanc_1_1019ElemTemplateElement7setFlagENS0_6eFlagsEb, i64 188}
!65 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement21canGenerateAttributesEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE, i64 336}
!66 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement18hasSingleTextChildEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE, i64 80124}
!67 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResult26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_, ptr @_ZN11xalanc_1_1016AVTPrefixCheckerC2EPPKNS_3AVTEj, i64 188}
!68 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResult26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_, ptr @_ZN11xalanc_1_1017NamespacesHandler16postConstructionERNS_29StylesheetConstructionContextEbRKNS_14XalanDOMStringEPKS0_PKNS0_13PrefixCheckerE, i64 188}
!69 = !{ptr @_ZN11xalanc_1_1017ElemLiteralResult26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_, ptr @_ZN11xalanc_1_1017NamespacesHandler13PrefixCheckerD2Ev, i64 188}
!70 = !{ptr @_ZN11xalanc_1_1016AVTPrefixCheckerC2EPPKNS_3AVTEj, ptr @_ZN11xalanc_1_1017NamespacesHandler13PrefixCheckerC2Ev, i64 188}
!71 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE, i64 1048804}
!72 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_107ElemUse12startElementERNS_26StylesheetExecutionContextE, i64 1048804}
!73 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20getNamespacesHandlerEv, i64 1048804}
!74 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1017NamespacesHandler22outputResultNamespacesERNS_26StylesheetExecutionContextEb, i64 1048804}
!75 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement9hasPrefixEv, i64 1048804}
!76 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1017NamespacesHandler12getNamespaceERKNS_14XalanDOMStringE, i64 1}
!77 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_, i64 1}
!78 = !{ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 12093723}
!79 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement9hasPrefixEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE, i64 1048804}
!80 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult10endElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE, i64 1048804}
!81 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_107ElemUse10endElementERNS_26StylesheetExecutionContextE, i64 1048804}
!82 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult12evaluateAVTsERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_, i64 35028}
!83 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult12evaluateAVTsERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv, i64 35028}
!84 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult12evaluateAVTsERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev, i64 35028}
!85 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult12evaluateAVTsERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_103AVT7getNameEv, i64 35028}
!86 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult12evaluateAVTsERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE, i64 35028}
!87 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult12evaluateAVTsERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, i64 35028}
!88 = !{ptr @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj, i64 197104}
!89 = !{ptr @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_103AVT10doEvaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE, i64 1}
!90 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 96538440}
!91 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 48269220}
!92 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 48269220}
!93 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, i64 48269220}
!94 = !{ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev, ptr @__clang_call_terminate, i64 64}
!95 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE, i64 12}
!96 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZN11xalanc_1_1010startsWithEPKtRKNS_14XalanDOMStringE, i64 11}
!97 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZN11xalanc_1_106lengthEPKt, i64 11}
!98 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZN11xalanc_1_107indexOfEPKtt, i64 11}
!99 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringC2ERS0_, i64 1}
!100 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedString3getEv, i64 1}
!101 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj, i64 1}
!102 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv, i64 1}
!103 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_1010Stylesheet30getNamespaceForPrefixFromStackERKNS_14XalanDOMStringE, i64 1}
!104 = !{ptr @_ZNK11xalanc_1_1017ElemLiteralResult8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev, i64 1}
!105 = !{ptr @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt, i64 1899}
!106 = !{ptr @_ZN11xalanc_1_1010startsWithEPKtRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_106lengthEPKt, i64 402062}
!107 = !{ptr @_ZN11xalanc_1_1010startsWithEPKtRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE, i64 402062}
!108 = !{ptr @_ZN11xalanc_1_1010startsWithEPKtRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, i64 402062}
!109 = !{ptr @_ZN11xalanc_1_1010startsWithEPKtRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1010startsWithEPKtjS1_j, i64 402062}
!110 = !{ptr @_ZNK11xalanc_1_1010Stylesheet30getNamespaceForPrefixFromStackERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS1_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEERKNS_14XalanDOMStringE, i64 555}
!111 = !{ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_, i64 555646850}
!112 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!113 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 176}
!114 = !{ptr @_ZNK11xalanc_1_1016AVTPrefixChecker8isActiveERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_103AVT7getNameEv, i64 13}
!115 = !{ptr @_ZNK11xalanc_1_1016AVTPrefixChecker8isActiveERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_107indexOfERKNS_14XalanDOMStringEt, i64 13}
!116 = !{ptr @_ZNK11xalanc_1_1016AVTPrefixChecker8isActiveERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, i64 13}
!117 = !{ptr @_ZNK11xalanc_1_1016AVTPrefixChecker8isActiveERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, i64 1}
!118 = !{ptr @_ZN11xalanc_1_107indexOfERKNS_14XalanDOMStringEt, ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, i64 40512}
!119 = !{ptr @_ZN11xalanc_1_107indexOfERKNS_14XalanDOMStringEt, ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE, i64 40510}
!120 = !{ptr @_ZN11xalanc_1_107indexOfERKNS_14XalanDOMStringEt, ptr @_ZN11xalanc_1_107indexOfEPKtt, i64 40510}
!121 = !{ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, i64 66708619}
!122 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 230527004}
!123 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, i64 230527004}
!124 = !{ptr @_ZN11xalanc_1_1010startsWithERKNS_14XalanDOMStringES2_, ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE, i64 700810}
!125 = !{ptr @_ZN11xalanc_1_1010startsWithERKNS_14XalanDOMStringES2_, ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, i64 700810}
!126 = !{ptr @_ZN11xalanc_1_1010startsWithERKNS_14XalanDOMStringES2_, ptr @_ZN11xalanc_1_1010startsWithEPKtjS1_j, i64 350405}
!127 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 1414337980}
!128 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 241572884}
!129 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 28158502}
!130 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_, i64 28158502}
!131 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, i64 28158502}
!132 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm, i64 28158502}
!133 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!134 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!135 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!136 = !{ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_, ptr @_ZSt12__miter_baseIPtET_S1_, i64 56317002}
!137 = !{ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_, ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, i64 28158501}
!138 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, i64 1279868488}
!139 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 185895030}
!140 = !{ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt12__niter_baseIPtET_S1_, i64 84475503}
!141 = !{ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_, i64 28158501}
!142 = !{ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_, i64 28158501}
!143 = !{ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_, i64 28158501}
!144 = !{ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_, i64 28158501}
!145 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 2689195952}
!146 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 1344597976}
!147 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 185895030}
!148 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 185895030}
!149 = !{ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, i64 1899}
!150 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 1899}
!151 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, i64 1899}
!152 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 807446}
!153 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 403723}
!154 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!155 = !{!"function_entry_count", i64 188}
!156 = !{!157, !157, i64 0}
!157 = !{!"vtable pointer", !158, i64 0}
!158 = !{!"Simple C++ TBAA"}
!159 = !{!160, !160, i64 0}
!160 = !{!"any pointer", !161, i64 0}
!161 = !{!"omnipotent char", !158, i64 0}
!162 = !{!163, !160, i64 352}
!163 = !{!"_ZTSN11xalanc_1_1017ElemLiteralResultE", !164, i64 0, !160, i64 344, !160, i64 352, !178, i64 360}
!164 = !{!"_ZTSN11xalanc_1_107ElemUseE", !165, i64 0, !160, i64 328, !169, i64 336}
!165 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !166, i64 0, !160, i64 8, !167, i64 16, !178, i64 248, !160, i64 256, !160, i64 264, !160, i64 272, !161, i64 280, !179, i64 288, !182, i64 320}
!166 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!167 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !168, i64 0, !170, i64 32, !171, i64 64, !172, i64 96}
!168 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !160, i64 0, !169, i64 8, !169, i64 16, !160, i64 24}
!169 = !{!"long", !161, i64 0}
!170 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !160, i64 0, !169, i64 8, !169, i64 16, !160, i64 24}
!171 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !160, i64 0, !169, i64 8, !169, i64 16, !160, i64 24}
!172 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !173, i64 0, !174, i64 1, !160, i64 8, !175, i64 16, !169, i64 24, !169, i64 32, !176, i64 40, !176, i64 64, !177, i64 88, !169, i64 120, !169, i64 128}
!173 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!174 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!175 = !{!"float", !161, i64 0}
!176 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !160, i64 0, !160, i64 8, !160, i64 16}
!177 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !160, i64 0, !169, i64 8, !169, i64 16, !160, i64 24}
!178 = !{!"int", !161, i64 0}
!179 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !180, i64 0, !169, i64 8, !169, i64 16, !160, i64 24}
!180 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !181, i64 0}
!181 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!182 = !{!"short", !161, i64 0}
!183 = !{!163, !178, i64 360}
!184 = !{!"branch_weights", i32 176, i32 13}
!185 = !{!"branch_weights", i32 1, i32 13}
!186 = !{!163, !160, i64 344}
!187 = !{!"branch_weights", i32 13, i32 1}
!188 = !{!"branch_weights", i32 13, i32 0}
!189 = distinct !{!189, !190}
!190 = !{!"llvm.loop.mustprogress"}
!191 = !{!"function_entry_count", i64 0}
!192 = !{!"function_entry_count", i64 1963805}
!193 = !{!182, !182, i64 0}
!194 = !{!"branch_weights", i32 575723407, i32 -2055876360}
!195 = distinct !{!195, !190}
!196 = !{!"function_entry_count", i64 21552397}
!197 = !{!"branch_weights", i32 21552398, i32 128560690}
!198 = distinct !{!198, !190}
!199 = !{!"function_entry_count", i64 1769}
!200 = !{!201, !160, i64 0}
!201 = !{!"_ZTSN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringE", !160, i64 0, !160, i64 8}
!202 = !{!201, !160, i64 8}
!203 = !{!"function_entry_count", i64 4704705}
!204 = !{!"function_entry_count", i64 597}
!205 = !{!"function_entry_count", i64 44966986}
!206 = !{!"function_entry_count", i64 1}
!207 = !{!208, !231, i64 712}
!208 = !{!"_ZTSN11xalanc_1_1010StylesheetE", !166, i64 0, !160, i64 8, !209, i64 16, !211, i64 56, !212, i64 88, !209, i64 120, !213, i64 160, !169, i64 192, !214, i64 200, !216, i64 280, !218, i64 360, !219, i64 368, !160, i64 504, !224, i64 512, !225, i64 544, !230, i64 680, !231, i64 712, !232, i64 720, !235, i64 856, !237, i64 864, !232, i64 896, !235, i64 1032, !237, i64 1040, !237, i64 1072, !237, i64 1104, !237, i64 1136, !237, i64 1168, !237, i64 1200, !169, i64 1232, !238, i64 1240, !167, i64 1272}
!209 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !210, i64 0, !178, i64 32}
!210 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !160, i64 0, !169, i64 8, !169, i64 16, !160, i64 24}
!211 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14KeyDeclarationENS_31MemoryManagedConstructionTraitsIS1_EEEE", !160, i64 0, !169, i64 8, !169, i64 16, !160, i64 24}
!212 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_20XalanSpaceNodeTesterENS_31MemoryManagedConstructionTraitsIS1_EEEE", !160, i64 0, !169, i64 8, !169, i64 16, !160, i64 24}
!213 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_10StylesheetENS_31MemoryManagedConstructionTraitsIS2_EEEE", !160, i64 0, !169, i64 8, !169, i64 16, !160, i64 24}
!214 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS0_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEENS2_IS4_EEEE", !160, i64 0, !169, i64 8, !215, i64 16, !215, i64 48}
!215 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_10XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEENS_31MemoryManagedConstructionTraitsIS8_EEEE", !160, i64 0, !169, i64 8, !169, i64 16, !160, i64 24}
!216 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEE", !160, i64 0, !169, i64 8, !217, i64 16, !217, i64 48}
!217 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEENS_31MemoryManagedConstructionTraitsIS5_EEEE", !160, i64 0, !169, i64 8, !169, i64 16, !160, i64 24}
!218 = !{!"bool", !161, i64 0}
!219 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS1_EEEE", !220, i64 0, !221, i64 1, !160, i64 8, !175, i64 16, !169, i64 24, !169, i64 32, !222, i64 40, !222, i64 64, !223, i64 88, !169, i64 120, !169, i64 128}
!220 = !{!"_ZTSN11xalanc_1_1021DOMStringHashFunctionE"}
!221 = !{!"_ZTSSt8equal_toIN11xalanc_1_1014XalanDOMStringEE"}
!222 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !160, i64 0, !160, i64 8, !160, i64 16}
!223 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !160, i64 0, !169, i64 8, !169, i64 16, !160, i64 24}
!224 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEE", !160, i64 0, !169, i64 8, !169, i64 16, !160, i64 24}
!225 = !{!"_ZTSN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS1_EEEE", !226, i64 0, !227, i64 1, !160, i64 8, !175, i64 16, !169, i64 24, !169, i64 32, !228, i64 40, !228, i64 64, !229, i64 88, !169, i64 120, !169, i64 128}
!226 = !{!"_ZTSN11xalanc_1_1024XalanHashMemberReferenceINS_10XalanQNameEEE"}
!227 = !{!"_ZTSSt8equal_toIN11xalanc_1_1010XalanQNameEE"}
!228 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !160, i64 0, !160, i64 8, !160, i64 16}
!229 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEEE", !160, i64 0, !169, i64 8, !169, i64 16, !160, i64 24}
!230 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEEE", !160, i64 0, !169, i64 8, !169, i64 16, !160, i64 24}
!231 = !{!"double", !161, i64 0}
!232 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS5_EEEENS_17XalanMapKeyTraitsIS1_EEEE", !220, i64 0, !221, i64 1, !160, i64 8, !175, i64 16, !169, i64 24, !169, i64 32, !233, i64 40, !233, i64 64, !234, i64 88, !169, i64 120, !169, i64 128}
!233 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS6_EEEENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !160, i64 0, !160, i64 8, !160, i64 16}
!234 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS0_IPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISE_E4NodeEEENS8_ISJ_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEEE", !160, i64 0, !169, i64 8, !169, i64 16, !160, i64 24}
!235 = !{!"_ZTSN11xalanc_1_1016XalanMapIteratorINS_27XalanMapConstIteratorTraitsISt4pairIKNS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS8_EEEEEEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIS3_SB_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISK_E4NodeEEEEE", !236, i64 0}
!236 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISE_E4NodeEEE", !160, i64 0}
!237 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS3_EEEE", !160, i64 0, !169, i64 8, !169, i64 16, !160, i64 24}
!238 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_17ElemDecimalFormatENS_31MemoryManagedConstructionTraitsIS2_EEEE", !160, i64 0, !169, i64 8, !169, i64 16, !160, i64 24}
!239 = !{!"function_entry_count", i64 2273}
!240 = !{!241, !160, i64 8}
!241 = !{!"_ZTSN11xalanc_1_1024XPathConstructionContextE", !160, i64 8}
!242 = !{!"function_entry_count", i64 967143541}
!243 = !{!"branch_weights", i32 403628487, i32 563515056}
!244 = !{!"branch_weights", i32 1, i32 1770}
!245 = !{!"function_entry_count", i64 2097796}
!246 = !{!"branch_weights", i32 177, i32 13}
!247 = !{!"branch_weights", i32 1, i32 177}
!248 = !{!"branch_weights", i32 189, i32 1}
!249 = !{!"function_entry_count", i64 1048980}
!250 = !{!"function_entry_count", i64 176}
!251 = !{!"function_entry_count", i64 336}
!252 = !{!"function_entry_count", i64 60135}
!253 = !{!161, !161, i64 0}
!254 = !{!"function_entry_count", i64 80124}
!255 = !{!"function_entry_count", i64 46114577}
!256 = !{!165, !178, i64 248}
!257 = !{!258, !160, i64 8}
!258 = !{!"_ZTSN11xalanc_1_1016AVTPrefixCheckerE", !259, i64 0, !160, i64 8, !178, i64 16}
!259 = !{!"_ZTSN11xalanc_1_1017NamespacesHandler13PrefixCheckerE"}
!260 = !{!258, !178, i64 16}
!261 = !{!"function_entry_count", i64 1048804}
!262 = !{!"branch_weights", i32 1, i32 1048805}
!263 = !{!"branch_weights", i32 1048805, i32 1}
!264 = !{!"function_entry_count", i64 12093723}
!265 = !{!"branch_weights", i32 1013778, i32 35028}
!266 = !{!"branch_weights", i32 1, i32 35027}
!267 = distinct !{!267, !190}
!268 = !{!"function_entry_count", i64 67594463}
!269 = !{!270, !160, i64 0}
!270 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringE", !160, i64 0, !160, i64 8}
!271 = !{!270, !160, i64 8}
!272 = !{!"function_entry_count", i64 201578993}
!273 = !{!"function_entry_count", i64 35039}
!274 = !{!275, !160, i64 40}
!275 = !{!"_ZTSN11xalanc_1_103AVTE", !160, i64 8, !169, i64 16, !160, i64 24, !178, i64 32, !160, i64 40}
!276 = !{!"function_entry_count", i64 197105}
!277 = !{!275, !160, i64 24}
!278 = !{!"branch_weights", i32 1, i32 197106}
!279 = !{!275, !178, i64 32}
!280 = !{!"function_entry_count", i64 48269220}
!281 = !{!209, !178, i64 32}
!282 = !{!"function_entry_count", i64 134708288}
!283 = !{!"branch_weights", i32 67113826, i32 67594464}
!284 = !{!"function_entry_count", i64 12}
!285 = !{!"branch_weights", i32 0, i32 -2147483648}
!286 = !{!"function_entry_count", i64 1899}
!287 = !{!"function_entry_count", i64 402062}
!288 = !{!"function_entry_count", i64 962142}
!289 = !{!165, !160, i64 8}
!290 = !{!"function_entry_count", i64 555}
!291 = !{!"function_entry_count", i64 1646}
!292 = !{!165, !182, i64 320}
!293 = !{!"branch_weights", i32 596, i32 1052}
!294 = !{!"function_entry_count", i64 555646850}
!295 = !{!"function_entry_count", i64 3070433834}
!296 = !{!"function_entry_count", i64 1083116306}
!297 = !{!210, !169, i64 8}
!298 = !{!"function_entry_count", i64 565220908}
!299 = !{!210, !160, i64 24}
!300 = !{!"function_entry_count", i64 6521798493}
!301 = !{!170, !169, i64 8}
!302 = !{!"function_entry_count", i64 3157260}
!303 = !{!"function_entry_count", i64 417098446}
!304 = !{!"branch_weights", i32 0, i32 13}
!305 = distinct !{!305, !190}
!306 = !{!"function_entry_count", i64 40512}
!307 = !{!"branch_weights", i32 2, i32 40512}
!308 = !{!"function_entry_count", i64 66708619}
!309 = !{!"function_entry_count", i64 230527004}
!310 = !{!"function_entry_count", i64 350405}
!311 = !{!"function_entry_count", i64 1414337980}
!312 = !{!"function_entry_count", i64 120786442}
!313 = !{!"branch_weights", i32 92627942, i32 28158502}
!314 = !{!"function_entry_count", i64 227375739}
!315 = !{!"function_entry_count", i64 568333389}
!316 = !{!"function_entry_count", i64 28158501}
!317 = !{!"branch_weights", i32 1, i32 28158501}
!318 = !{!"branch_weights", i32 28158501, i32 1251710038}
!319 = distinct !{!319, !190}
!320 = !{!"function_entry_count", i64 185895030}
!321 = !{!"function_entry_count", i64 56317002}
!322 = !{!"function_entry_count", i64 30109074}
!323 = !{!"function_entry_count", i64 86426076}
!324 = !{!"branch_weights", i32 28199083, i32 1909993}
!325 = !{!"function_entry_count", i64 1344597976}
!326 = !{!"function_entry_count", i64 30137156660}
!327 = !{!"function_entry_count", i64 825654971}
!328 = !{!"function_entry_count", i64 403723}
