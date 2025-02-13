; ModuleID = 'ElemVariable.cpp'
source_filename = "ElemVariable.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.3", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ElemVariable" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr, ptr, i8, %"class.xalanc_1_10::XObjectPtr", ptr }
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
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
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
%"class.xalanc_1_10::ElemTemplateElement" = type <{ %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::NamespacesHandler", i32, [4 x i8], ptr, ptr, ptr, %union.anon, %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", i16, [6 x i8] }>
%"class.xalanc_1_10::SelectionEvent" = type { ptr, ptr, ptr, ptr, ptr, ptr, %"class.xalanc_1_10::XObjectPtr", i32, i8, ptr }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XPathExecutionContext::PrefixResolverSetAndRestore" = type { ptr, ptr }
%"class.xalanc_1_10::XPathExecutionContext::CurrentNodePushAndPop" = type { ptr }
%"class.xalanc_1_10::XalanVector.27" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE = comdat any

$_ZN11xalanc_1_1010XObjectPtrD2Ev = comdat any

$_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1010Stylesheet13getNamespacesEv = comdat any

$_ZNK11xalanc_1_1010XalanQName7isValidEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv = comdat any

$_ZN11xalanc_1_1010Stylesheet19setTopLevelVariableEPNS_12ElemVariableE = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv = comdat any

$_ZN11xalanc_1_1010XObjectPtraSERKS0_ = comdat any

$_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1010XObjectPtrC2ERKS0_ = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZNK11xalanc_1_1010XObjectPtr4nullEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopC2ERS0_PNS_9XalanNodeE = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_ = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_12ElemVariableEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv = comdat any

$_ZSt4copyIPKPN11xalanc_1_1012ElemVariableEPS2_ET0_T_S7_S6_ = comdat any

$_ZSt13copy_backwardIPPN11xalanc_1_1012ElemVariableES3_ET0_T_S5_S4_ = comdat any

$_ZSt8distanceIPKPN11xalanc_1_1012ElemVariableEENSt15iterator_traitsIT_E15difference_typeES6_S6_ = comdat any

$_ZSt10__distanceIPKPN11xalanc_1_1012ElemVariableEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKPN11xalanc_1_1012ElemVariableEENSt15iterator_traitsIT_E17iterator_categoryERKS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZSt13__copy_move_aILb0EPKPN11xalanc_1_1012ElemVariableEPS2_ET1_T0_S7_S6_ = comdat any

$_ZSt12__miter_baseIPKPN11xalanc_1_1012ElemVariableEET_S5_ = comdat any

$_ZSt12__niter_wrapIPPN11xalanc_1_1012ElemVariableEET_RKS4_S4_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_1012ElemVariableEPS2_ET1_T0_S7_S6_ = comdat any

$_ZSt12__niter_baseIPKPN11xalanc_1_1012ElemVariableEET_S5_ = comdat any

$_ZSt12__niter_baseIPPN11xalanc_1_1012ElemVariableEET_S4_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_1012ElemVariableEPS2_ET1_T0_S7_S6_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_1012ElemVariableEEEPT_PKS6_S9_S7_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_1012ElemVariableES3_ET1_T0_S5_S4_ = comdat any

$_ZSt12__miter_baseIPPN11xalanc_1_1012ElemVariableEET_S4_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_1012ElemVariableES3_ET1_T0_S5_S4_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_1012ElemVariableES3_ET1_T0_S5_S4_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1012ElemVariableEEEPT_PKS6_S9_S7_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_ = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreC2ERS0_PKNS_14PrefixResolverE = comdat any

$_ZNK11xalanc_1_105XPath24getInitialOpCodePositionEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev = comdat any

$_ZNK11xalanc_1_1015XPathExpression24getInitialOpCodePositionEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

@_ZTVN11xalanc_1_1012ElemVariableE = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1012ElemVariableE, ptr @_ZN11xalanc_1_1012ElemVariableD2Ev, ptr @_ZN11xalanc_1_1012ElemVariableD0Ev, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_1012ElemVariable12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1012ElemVariable10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv, ptr @_ZNK11xalanc_1_1012ElemVariable14getElementNameEv, ptr @_ZNK11xalanc_1_1012ElemVariable16getNameAttributeEv, ptr @_ZN11xalanc_1_1012ElemVariable15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb, ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv, ptr @_ZN11xalanc_1_1012ElemVariable17setParentNodeElemEPNS_19ElemTemplateElementE, ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZNK11xalanc_1_1012ElemVariable8getXPathEj, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi, ptr @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_] }, align 8
@_ZN11xalanc_1_109Constants15ATTRNAME_SELECTE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants36ELEMNAME_VARIABLE_WITH_PREFIX_STRINGE = external local_unnamed_addr constant ptr, align 8
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr
@_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE = external global %"class.xalanc_1_10::XalanDOMString", align 8
@.str = private unnamed_addr constant [7 x i8] c"select\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1012ElemVariableE = dso_local constant [30 x i8] c"N11xalanc_1_1012ElemVariableE\00", align 1
@_ZTIN11xalanc_1_1019ElemTemplateElementE = external constant ptr
@_ZTIN11xalanc_1_1012ElemVariableE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1012ElemVariableE, ptr @_ZTIN11xalanc_1_1019ElemTemplateElementE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1012ElemVariableC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i32), ptr @_ZN11xalanc_1_1012ElemVariableC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii
@_ZN11xalanc_1_1012ElemVariableC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEiii = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i32, i32), ptr @_ZN11xalanc_1_1012ElemVariableC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEiii
@_ZN11xalanc_1_1012ElemVariableD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1012ElemVariableD2Ev

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1012ElemVariableC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !109 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, i32 noundef %4, i32 noundef %5, i32 noundef 30) #13
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_1012ElemVariableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !110
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %7, i8 0, i64 17, i1 false)
  invoke void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef null) #13
          to label %9 unwind label %12

9:                                                ; preds = %6
  %10 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 5
  store ptr null, ptr %10, align 8, !tbaa !113
  invoke void @_ZN11xalanc_1_1012ElemVariable4initERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #13
          to label %11 unwind label %14

11:                                               ; preds = %9
  ret void

12:                                               ; preds = %6
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %16

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #14
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #14
  resume { ptr, i32 } %17
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !137 {
  store ptr %1, ptr %0, align 8, !tbaa !138
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %1) #13
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1012ElemVariable4initERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 align 2 !prof !139 {
  %5 = load ptr, ptr %3, align 8, !tbaa !110
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10, !prof !140

10:                                               ; preds = %4
  %11 = load ptr, ptr @_ZN11xalanc_1_109Constants15ATTRNAME_SELECTE, align 8
  br label %16

12:                                               ; preds = %73, %4
  %13 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !141
  %15 = icmp eq ptr %14, null
  br i1 %15, label %76, label %79, !prof !142

16:                                               ; preds = %10, %73
  %17 = phi i32 [ 0, %10 ], [ %74, %73 ]
  %18 = load ptr, ptr %3, align 8, !tbaa !110
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %17) #13
  %22 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %21, ptr noundef nonnull align 8 dereferenceable(36) %11) #13
  br i1 %22, label %23, label %37, !prof !143

23:                                               ; preds = %16
  %24 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %0, align 8, !tbaa !110
  %26 = getelementptr inbounds ptr, ptr %25, i64 4
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(322) %0) #13
  %29 = load ptr, ptr %3, align 8, !tbaa !110
  %30 = getelementptr inbounds ptr, ptr %29, i64 5
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %17) #13
  %33 = load ptr, ptr %1, align 8, !tbaa !110
  %34 = getelementptr inbounds ptr, ptr %33, i64 21
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %28, ptr noundef %32, ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true, i1 noundef zeroext true) #13
  store ptr %36, ptr %24, align 8, !tbaa !144
  br label %73

37:                                               ; preds = %16
  %38 = load ptr, ptr @_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE, align 8
  %39 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %21, ptr noundef nonnull align 8 dereferenceable(36) %38) #13
  br i1 %39, label %40, label %62, !prof !145

40:                                               ; preds = %37
  %41 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 1
  %42 = load ptr, ptr %3, align 8, !tbaa !110
  %43 = getelementptr inbounds ptr, ptr %42, i64 5
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %17) #13
  %46 = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN11xalanc_1_1010Stylesheet13getNamespacesEv(ptr noundef nonnull align 8 dereferenceable(1504) %2) #13
  %47 = load ptr, ptr %0, align 8, !tbaa !110
  %48 = getelementptr inbounds ptr, ptr %47, i64 4
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(322) %0) #13
  %51 = load ptr, ptr %1, align 8, !tbaa !110
  %52 = getelementptr inbounds ptr, ptr %51, i64 41
  %53 = load ptr, ptr %52, align 8
  %54 = tail call noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %45, ptr noundef nonnull align 8 dereferenceable(80) %46, ptr noundef %50, i1 noundef zeroext false) #13
  store ptr %54, ptr %41, align 8, !tbaa !141
  %55 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName7isValidEv(ptr noundef nonnull align 8 dereferenceable(8) %54) #13
  br i1 %55, label %73, label %56, !prof !145

56:                                               ; preds = %40
  %57 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %38) #13
  %58 = load ptr, ptr %3, align 8, !tbaa !110
  %59 = getelementptr inbounds ptr, ptr %58, i64 5
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %17) #13
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 62, ptr noundef %57, ptr noundef %61) #13
  br label %73

62:                                               ; preds = %37
  %63 = load ptr, ptr %0, align 8, !tbaa !110
  %64 = getelementptr inbounds ptr, ptr %63, i64 5
  %65 = load ptr, ptr %64, align 8
  %66 = tail call noundef zeroext i1 %65(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %21, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %17, ptr noundef nonnull align 8 dereferenceable(16) %1) #13
  br i1 %66, label %73, label %67

67:                                               ; preds = %62
  %68 = load ptr, ptr @_ZN11xalanc_1_109Constants36ELEMNAME_VARIABLE_WITH_PREFIX_STRINGE, align 8
  %69 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %68) #13
  %70 = tail call noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %69, ptr noundef %21, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %17, ptr noundef nonnull align 8 dereferenceable(16) %1) #13
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %68) #13
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 74, ptr noundef %72, ptr noundef %21) #13
  br label %73

73:                                               ; preds = %56, %40, %71, %67, %62, %23
  %74 = add nuw i32 %17, 1
  %75 = icmp eq i32 %74, %8
  br i1 %75, label %12, label %16, !prof !146, !llvm.loop !147

76:                                               ; preds = %12
  %77 = load ptr, ptr @_ZN11xalanc_1_109Constants36ELEMNAME_VARIABLE_WITH_PREFIX_STRINGE, align 8, !tbaa !149
  %78 = load ptr, ptr @_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE, align 8, !tbaa !149
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 63, ptr noundef nonnull align 8 dereferenceable(36) %77, ptr noundef nonnull align 8 dereferenceable(36) %78) #13
  br label %79

79:                                               ; preds = %76, %12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !150 {
  %2 = load ptr, ptr %0, align 8, !tbaa !138
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %2) #13
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #15
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1012ElemVariableC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEiii(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, i32 noundef %4, i32 noundef %5, i32 noundef %6) #13
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_1012ElemVariableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !110
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %8, i8 0, i64 17, i1 false)
  invoke void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef null) #13
          to label %10 unwind label %13

10:                                               ; preds = %7
  %11 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 5
  store ptr null, ptr %11, align 8, !tbaa !113
  invoke void @_ZN11xalanc_1_1012ElemVariable4initERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #13
          to label %12 unwind label %15

12:                                               ; preds = %10
  ret void

13:                                               ; preds = %7
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %17

15:                                               ; preds = %10
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #14
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi { ptr, i32 } [ %16, %15 ], [ %14, %13 ]
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #14
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1012ElemVariableD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %0) unnamed_addr #3 align 2 !prof !139 {
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_1012ElemVariableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !110
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1012ElemVariableD0Ev(ptr noundef nonnull align 8 dereferenceable(368) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xalanc_1_1012ElemVariableD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %0) #14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat !prof !152 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %0) #13
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN11xalanc_1_1010Stylesheet13getNamespacesEv(ptr noundef nonnull align 8 dereferenceable(1504) %0) local_unnamed_addr #3 comdat align 2 !prof !153 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 8
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName7isValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !154 {
  %2 = load ptr, ptr %0, align 8, !tbaa !110
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %5) #13
  ret i1 %6
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !155 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  br i1 %2, label %5, label %3, !prof !156

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #13
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1012ElemVariable16getNameAttributeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(368) %0) unnamed_addr #6 align 2 !prof !139 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !141
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1012ElemVariable15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2) unnamed_addr #1 align 2 !prof !157 {
  %4 = tail call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #13
  %5 = icmp eq ptr %4, %2
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 76) #13
  br label %16

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !110
  %9 = getelementptr inbounds ptr, ptr %8, i64 30
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(322) %0) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 77) #13
  br label %16

14:                                               ; preds = %7
  tail call void @_ZN11xalanc_1_1010Stylesheet19setTopLevelVariableEPNS_12ElemVariableE(ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull %0) #13
  %15 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 3
  store i8 1, ptr %15, align 8, !tbaa !158
  br label %16

16:                                               ; preds = %13, %14, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #3 comdat align 2 !prof !159 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !160
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010Stylesheet19setTopLevelVariableEPNS_12ElemVariableE(ptr noundef nonnull align 8 dereferenceable(1504) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !157 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !149
  %4 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 15
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1012ElemVariable14getElementNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !109 {
  %2 = load ptr, ptr @_ZN11xalanc_1_109Constants36ELEMNAME_VARIABLE_WITH_PREFIX_STRINGE, align 8, !tbaa !149
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1012ElemVariable17setParentNodeElemEPNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !139 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 8, !tbaa !158, !range !161, !noundef !162
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6, !prof !145

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %7, i32 noundef 3) #13
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #18
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #17
  resume { ptr, i32 } %10

11:                                               ; preds = %2
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %1) #13
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1012ElemVariable12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !163 {
  %3 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %4 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %5 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %6 = alloca %"class.xalanc_1_10::SelectionEvent", align 8
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %9 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %10 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef null) #13
  %11 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !144
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %51, !prof !164

14:                                               ; preds = %2
  %15 = load ptr, ptr %0, align 8, !tbaa !110
  %16 = getelementptr inbounds ptr, ptr %15, i64 18
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(322) %0) #13
          to label %19 unwind label %29

19:                                               ; preds = %14
  %20 = icmp eq ptr %18, null
  br i1 %20, label %21, label %37, !prof !165

21:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %22 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %23 = load ptr, ptr %22, align 8, !tbaa !110
  %24 = getelementptr inbounds ptr, ptr %23, i64 13
  %25 = load ptr, ptr %24, align 8
  invoke void %25(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE) #13
          to label %26 unwind label %31

26:                                               ; preds = %21
  %27 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #13
          to label %28 unwind label %33

28:                                               ; preds = %26
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  br label %100

29:                                               ; preds = %122, %117, %104, %54, %46, %42, %37, %14
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %128

31:                                               ; preds = %21
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %35

33:                                               ; preds = %26
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi { ptr, i32 } [ %34, %33 ], [ %32, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  br label %128

37:                                               ; preds = %19
  %38 = load ptr, ptr %1, align 8, !tbaa !110
  %39 = getelementptr inbounds ptr, ptr %38, i64 6
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
          to label %42 unwind label %29

42:                                               ; preds = %37
  %43 = load ptr, ptr %1, align 8, !tbaa !110
  %44 = getelementptr inbounds ptr, ptr %43, i64 110
  %45 = load ptr, ptr %44, align 8
  invoke void %45(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %41) #13
          to label %46 unwind label %29

46:                                               ; preds = %42
  %47 = load ptr, ptr %0, align 8, !tbaa !110
  %48 = getelementptr inbounds ptr, ptr %47, i64 19
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #13
          to label %126 unwind label %29

51:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  invoke void @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(129) %12, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #13
          to label %52 unwind label %76

52:                                               ; preds = %51
  %53 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #13
          to label %54 unwind label %78

54:                                               ; preds = %52
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  %55 = load ptr, ptr %1, align 8, !tbaa !110
  %56 = getelementptr inbounds ptr, ptr %55, i64 137
  %57 = load ptr, ptr %56, align 8
  %58 = invoke noundef i64 %57(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
          to label %59 unwind label %29

59:                                               ; preds = %54
  %60 = icmp eq i64 %58, 0
  br i1 %60, label %100, label %61, !prof !166

61:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #17
  %62 = load ptr, ptr %1, align 8, !tbaa !110
  %63 = getelementptr inbounds ptr, ptr %62, i64 6
  %64 = load ptr, ptr %63, align 8
  %65 = invoke noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
          to label %66 unwind label %82

66:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #17
  %67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #13
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(8) %67, i32 noundef -1) #13
          to label %68 unwind label %84

68:                                               ; preds = %66
  %69 = load ptr, ptr %11, align 8, !tbaa !144
  invoke void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %3) #13
          to label %70 unwind label %86

70:                                               ; preds = %68
  invoke void @_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathENS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %65, ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(129) %69, ptr noundef nonnull %8) #13
          to label %71 unwind label %88

71:                                               ; preds = %70
  %72 = load ptr, ptr %1, align 8, !tbaa !110
  %73 = getelementptr inbounds ptr, ptr %72, i64 140
  %74 = load ptr, ptr %73, align 8
  invoke void %74(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %6) #13
          to label %75 unwind label %90

75:                                               ; preds = %71
  call void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %6) #14
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #14
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %7) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #17
  br label %100

76:                                               ; preds = %51
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %80

78:                                               ; preds = %52
  %79 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi { ptr, i32 } [ %79, %78 ], [ %77, %76 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  br label %128

82:                                               ; preds = %61
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %98

84:                                               ; preds = %66
  %85 = landingpad { ptr, i32 }
          cleanup
  br label %96

86:                                               ; preds = %68
  %87 = landingpad { ptr, i32 }
          cleanup
  br label %94

88:                                               ; preds = %70
  %89 = landingpad { ptr, i32 }
          cleanup
  br label %92

90:                                               ; preds = %71
  %91 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %6) #14
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi { ptr, i32 } [ %91, %90 ], [ %89, %88 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #14
  br label %94

94:                                               ; preds = %92, %86
  %95 = phi { ptr, i32 } [ %93, %92 ], [ %87, %86 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %7) #14
  br label %96

96:                                               ; preds = %94, %84
  %97 = phi { ptr, i32 } [ %95, %94 ], [ %85, %84 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #17
  br label %98

98:                                               ; preds = %96, %82
  %99 = phi { ptr, i32 } [ %97, %96 ], [ %83, %82 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #17
  br label %128

100:                                              ; preds = %59, %75, %28
  %101 = call noundef zeroext i1 @_ZNK11xalanc_1_1010XObjectPtr4nullEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  %102 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !141
  br i1 %101, label %117, label %104, !prof !167

104:                                              ; preds = %100
  invoke void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %3) #13
          to label %105 unwind label %29

105:                                              ; preds = %104
  %106 = load ptr, ptr %0, align 8, !tbaa !110
  %107 = getelementptr inbounds ptr, ptr %106, i64 30
  %108 = load ptr, ptr %107, align 8
  %109 = invoke noundef ptr %108(ptr noundef nonnull align 8 dereferenceable(322) %0) #13
          to label %110 unwind label %115

110:                                              ; preds = %105
  %111 = load ptr, ptr %1, align 8, !tbaa !110
  %112 = getelementptr inbounds ptr, ptr %111, i64 83
  %113 = load ptr, ptr %112, align 8
  invoke void %113(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %103, ptr noundef nonnull %9, ptr noundef %109) #13
          to label %114 unwind label %115

114:                                              ; preds = %110
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #14
  br label %126

115:                                              ; preds = %110, %105
  %116 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #14
  br label %128

117:                                              ; preds = %100
  %118 = load ptr, ptr %0, align 8, !tbaa !110
  %119 = getelementptr inbounds ptr, ptr %118, i64 30
  %120 = load ptr, ptr %119, align 8
  %121 = invoke noundef ptr %120(ptr noundef nonnull align 8 dereferenceable(322) %0) #13
          to label %122 unwind label %29

122:                                              ; preds = %117
  %123 = load ptr, ptr %1, align 8, !tbaa !110
  %124 = getelementptr inbounds ptr, ptr %123, i64 84
  %125 = load ptr, ptr %124, align 8
  invoke void %125(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %103, ptr noundef nonnull %0, ptr noundef %121) #13
          to label %126 unwind label %29

126:                                              ; preds = %114, %122, %46
  %127 = phi ptr [ %50, %46 ], [ null, %122 ], [ null, %114 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret ptr %127

128:                                              ; preds = %115, %98, %80, %35, %29
  %129 = phi { ptr, i32 } [ %116, %115 ], [ %30, %29 ], [ %36, %35 ], [ %99, %98 ], [ %81, %80 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  resume { ptr, i32 } %129
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !168 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !169
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !172 {
  %3 = load ptr, ptr %0, align 8, !tbaa !138
  %4 = load ptr, ptr %1, align 8, !tbaa !138
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %8, label %6, !prof !173

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %3) #13
  %7 = load ptr, ptr %1, align 8, !tbaa !138
  store ptr %7, ptr %0, align 8, !tbaa !138
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %7) #13
  br label %8

8:                                                ; preds = %6, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %5 = alloca %"class.xalanc_1_10::XPathExecutionContext::PrefixResolverSetAndRestore", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreC2ERS0_PKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %2) #13
  %6 = load ptr, ptr %3, align 8, !tbaa !110
  %7 = getelementptr inbounds ptr, ptr %6, i64 6
  %8 = load ptr, ptr %7, align 8
  %9 = invoke noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
          to label %10 unwind label %14

10:                                               ; preds = %4
  %11 = invoke noundef ptr @_ZNK11xalanc_1_105XPath24getInitialOpCodePositionEv(ptr noundef nonnull align 8 dereferenceable(129) %1) #13
          to label %12 unwind label %14

12:                                               ; preds = %10
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %9, ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(24) %3) #13
          to label %13 unwind label %14

13:                                               ; preds = %12
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  ret void

14:                                               ; preds = %12, %10, %4
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  resume { ptr, i32 } %15
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !175 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !176
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !177 {
  %3 = load ptr, ptr %1, align 8, !tbaa !138
  store ptr %3, ptr %0, align 8, !tbaa !138
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %3) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathENS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(129), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #3 comdat align 2 !prof !178 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1010XObjectPtr4nullEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 !prof !179 {
  %2 = load ptr, ptr %0, align 8, !tbaa !138
  %3 = icmp eq ptr %2, null
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1012ElemVariable10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !180 {
  %3 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !144
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %33, !prof !181

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !110
  %9 = getelementptr inbounds ptr, ptr %8, i64 18
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(322) %0) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %33, label %13, !prof !165

13:                                               ; preds = %7
  %14 = load ptr, ptr %0, align 8, !tbaa !110
  %15 = getelementptr inbounds ptr, ptr %14, i64 20
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %17 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !141
  %19 = load ptr, ptr %1, align 8, !tbaa !110
  %20 = getelementptr inbounds ptr, ptr %19, i64 111
  %21 = load ptr, ptr %20, align 8
  call void %21(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %22 = load ptr, ptr %0, align 8, !tbaa !110
  %23 = getelementptr inbounds ptr, ptr %22, i64 30
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(322) %0) #13
          to label %26 unwind label %31

26:                                               ; preds = %13
  %27 = load ptr, ptr %1, align 8, !tbaa !110
  %28 = getelementptr inbounds ptr, ptr %27, i64 83
  %29 = load ptr, ptr %28, align 8
  invoke void %29(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull %3, ptr noundef %25) #13
          to label %30 unwind label %31

30:                                               ; preds = %26
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  br label %33

31:                                               ; preds = %26, %13
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  resume { ptr, i32 } %32

33:                                               ; preds = %30, %7, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1012ElemVariable8getXPathEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(368) %0, i32 noundef %1) unnamed_addr #6 align 2 !prof !157 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = select i1 %3, ptr %5, ptr null
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1012ElemVariable8getValueERNS_26StylesheetExecutionContextEPNS_9XalanNodeE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(368) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !157 {
  %5 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::CurrentNodePushAndPop", align 8
  %7 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %8 = alloca %"class.xalanc_1_10::SelectionEvent", align 8
  %9 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %10 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %11 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !144
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %35

14:                                               ; preds = %4
  %15 = load ptr, ptr %1, align 8, !tbaa !110
  %16 = getelementptr inbounds ptr, ptr %15, i64 18
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(322) %1) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #13
  %22 = load ptr, ptr %21, align 8, !tbaa !110
  %23 = getelementptr inbounds ptr, ptr %22, i64 13
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE) #13
  br label %104

25:                                               ; preds = %14
  %26 = load ptr, ptr %2, align 8, !tbaa !110
  %27 = getelementptr inbounds ptr, ptr %26, i64 110
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3) #13
  %29 = load ptr, ptr %1, align 8, !tbaa !110
  %30 = getelementptr inbounds ptr, ptr %29, i64 9
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(322) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #13
  %32 = load ptr, ptr %2, align 8, !tbaa !110
  %33 = getelementptr inbounds ptr, ptr %32, i64 111
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2) #13
  br label %104

35:                                               ; preds = %4
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #13
  %36 = load ptr, ptr %2, align 8, !tbaa !110
  %37 = getelementptr inbounds ptr, ptr %36, i64 6
  %38 = load ptr, ptr %37, align 8
  %39 = invoke noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(24) %2) #13
          to label %40 unwind label %47

40:                                               ; preds = %35
  %41 = icmp eq ptr %39, %3
  br i1 %41, label %42, label %55

42:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %43 = load ptr, ptr %11, align 8, !tbaa !144
  invoke void @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(129) %43, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #13
          to label %44 unwind label %49

44:                                               ; preds = %42
  %45 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #13
          to label %46 unwind label %51

46:                                               ; preds = %44
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  br label %71

47:                                               ; preds = %71, %35
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %102

49:                                               ; preds = %42
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %53

51:                                               ; preds = %44
  %52 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi { ptr, i32 } [ %52, %51 ], [ %50, %49 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  br label %102

55:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  invoke void @_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopC2ERS0_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3) #13
          to label %56 unwind label %61

56:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  %57 = load ptr, ptr %11, align 8, !tbaa !144
  invoke void @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(129) %57, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #13
          to label %58 unwind label %63

58:                                               ; preds = %56
  %59 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #13
          to label %60 unwind label %65

60:                                               ; preds = %58
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  br label %71

61:                                               ; preds = %55
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %69

63:                                               ; preds = %56
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %67

65:                                               ; preds = %58
  %66 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #14
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi { ptr, i32 } [ %66, %65 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #14
  br label %69

69:                                               ; preds = %67, %61
  %70 = phi { ptr, i32 } [ %68, %67 ], [ %62, %61 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  br label %102

71:                                               ; preds = %60, %46
  %72 = load ptr, ptr %2, align 8, !tbaa !110
  %73 = getelementptr inbounds ptr, ptr %72, i64 137
  %74 = load ptr, ptr %73, align 8
  %75 = invoke noundef i64 %74(ptr noundef nonnull align 8 dereferenceable(24) %2) #13
          to label %76 unwind label %47

76:                                               ; preds = %71
  %77 = icmp eq i64 %75, 0
  br i1 %77, label %104, label %78

78:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #17
  %79 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(8) %79, i32 noundef -1) #13
          to label %80 unwind label %88

80:                                               ; preds = %78
  %81 = load ptr, ptr %11, align 8, !tbaa !144
  invoke void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %0) #13
          to label %82 unwind label %90

82:                                               ; preds = %80
  invoke void @_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathENS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(322) %1, ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(129) %81, ptr noundef nonnull %10) #13
          to label %83 unwind label %92

83:                                               ; preds = %82
  %84 = load ptr, ptr %2, align 8, !tbaa !110
  %85 = getelementptr inbounds ptr, ptr %84, i64 140
  %86 = load ptr, ptr %85, align 8
  invoke void %86(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(72) %8) #13
          to label %87 unwind label %94

87:                                               ; preds = %83
  call void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %8) #14
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #14
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %9) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %8) #17
  br label %104

88:                                               ; preds = %78
  %89 = landingpad { ptr, i32 }
          cleanup
  br label %100

90:                                               ; preds = %80
  %91 = landingpad { ptr, i32 }
          cleanup
  br label %98

92:                                               ; preds = %82
  %93 = landingpad { ptr, i32 }
          cleanup
  br label %96

94:                                               ; preds = %83
  %95 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %8) #14
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi { ptr, i32 } [ %95, %94 ], [ %93, %92 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #14
  br label %98

98:                                               ; preds = %96, %90
  %99 = phi { ptr, i32 } [ %97, %96 ], [ %91, %90 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %9) #14
  br label %100

100:                                              ; preds = %98, %88
  %101 = phi { ptr, i32 } [ %99, %98 ], [ %89, %88 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %8) #17
  br label %102

102:                                              ; preds = %100, %69, %53, %47
  %103 = phi { ptr, i32 } [ %101, %100 ], [ %48, %47 ], [ %54, %53 ], [ %70, %69 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  resume { ptr, i32 } %103

104:                                              ; preds = %76, %87, %25, %20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopC2ERS0_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !182 {
  store ptr %1, ptr %0, align 8, !tbaa !149
  %4 = load ptr, ptr %1, align 8, !tbaa !110
  %5 = getelementptr inbounds ptr, ptr %4, i64 7
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !182 {
  %2 = load ptr, ptr %0, align 8, !tbaa !183
  %3 = load ptr, ptr %2, align 8, !tbaa !110
  %4 = getelementptr inbounds ptr, ptr %3, i64 8
  %5 = load ptr, ptr %4, align 8
  invoke void %5(ptr noundef nonnull align 8 dereferenceable(24) %2) #13
          to label %6 unwind label %7

6:                                                ; preds = %1
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #15
  unreachable
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb(ptr noundef nonnull align 8 dereferenceable(322), i1 noundef zeroext) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #2

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
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

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
declare noundef ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi(ptr noundef nonnull align 8 dereferenceable(322), i32 noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #17
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !152 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #13
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !152 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_(ptr noundef %3, ptr noundef %1) #13
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !185 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %0) #13
  %4 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1) #13
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %0, i32 noundef %3, ptr noundef %1, i32 noundef %4) #13
  ret i1 %5
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #3 comdat align 2 !prof !186 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !187 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !188
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !190 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !191
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !192 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !157 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !151 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !157 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.21", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !193
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !195
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %11 = load ptr, ptr %0, align 8, !tbaa !196
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_12ElemVariableEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #13
  %13 = load i64, ptr %4, align 8, !tbaa !193
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !193
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %21 = load ptr, ptr %0, align 8, !tbaa !196
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_12ElemVariableEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 !prof !157 {
  %4 = load ptr, ptr %1, align 8, !tbaa !149
  store ptr %4, ptr %0, align 8, !tbaa !149
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !109 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !197
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !193
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !157 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.21", align 8
  store ptr %2, ptr %0, align 8, !tbaa !196
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !193
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #13
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #13
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #13
  store ptr %24, ptr %8, align 8, !tbaa !197
  store i64 %3, ptr %7, align 8, !tbaa !195
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 !prof !157 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %3 = load ptr, ptr %0, align 8, !tbaa !196
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !197
  %7 = load ptr, ptr %1, align 8, !tbaa !196
  store ptr %7, ptr %0, align 8, !tbaa !196
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !198
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !197
  store ptr %11, ptr %5, align 8, !tbaa !197
  store ptr %3, ptr %1, align 8, !tbaa !196
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !198
  store <2 x i64> %9, ptr %4, align 8, !tbaa !198
  store <2 x i64> %12, ptr %8, align 8, !tbaa !198
  store ptr %6, ptr %10, align 8, !tbaa !197
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !109 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !195
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %11, label %5, !prof !199

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %6, ptr noundef %7) #13
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !197
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %10) #13
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 !prof !157 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 !prof !109 {
  store ptr %1, ptr %0, align 8, !tbaa !196
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !193
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !195
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !199

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #13
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !197
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !157 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.21", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #13
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %76, label %8

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #13
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %75, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !196
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_12ElemVariableEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #13
  %23 = getelementptr inbounds ptr, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !193
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !193
  %26 = getelementptr inbounds ptr, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %75, label %18, !llvm.loop !200

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %32 = load ptr, ptr %0, align 8, !tbaa !196
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #13
  %33 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  %34 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %34, ptr noundef %1) #13
          to label %35 unwind label %41

35:                                               ; preds = %31
  %36 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %36, ptr noundef %2, ptr noundef %3) #13
          to label %37 unwind label %41

37:                                               ; preds = %35
  %38 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  %39 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %38, ptr noundef %1, ptr noundef %39) #13
          to label %40 unwind label %41

40:                                               ; preds = %37
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %75

41:                                               ; preds = %37, %35, %31
  %42 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %42

43:                                               ; preds = %28
  %44 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %45 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %44) #13
  %46 = icmp ugt i64 %45, %6
  br i1 %46, label %62, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds ptr, ptr %2, i64 %45
  %49 = icmp eq ptr %48, %3
  br i1 %49, label %50, label %52

50:                                               ; preds = %52, %47
  %51 = icmp eq ptr %44, %1
  br i1 %51, label %60, label %56

52:                                               ; preds = %47, %52
  %53 = phi ptr [ %54, %52 ], [ %48, %47 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %53) #13
  %54 = getelementptr inbounds ptr, ptr %53, i64 1
  %55 = icmp eq ptr %54, %3
  br i1 %55, label %50, label %52, !llvm.loop !201

56:                                               ; preds = %50, %56
  %57 = phi ptr [ %58, %56 ], [ %1, %50 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %57) #13
  %58 = getelementptr inbounds ptr, ptr %57, i64 1
  %59 = icmp eq ptr %58, %44
  br i1 %59, label %60, label %56, !llvm.loop !202

60:                                               ; preds = %56, %50
  %61 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_1012ElemVariableEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %48, ptr noundef %1) #13
  br label %75

62:                                               ; preds = %43
  %63 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %64 = sub i64 0, %6
  %65 = getelementptr inbounds ptr, ptr %63, i64 %64
  %66 = icmp eq ptr %65, %44
  br i1 %66, label %71, label %67

67:                                               ; preds = %62, %67
  %68 = phi ptr [ %69, %67 ], [ %65, %62 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %68) #13
  %69 = getelementptr inbounds ptr, ptr %68, i64 1
  %70 = icmp eq ptr %69, %44
  br i1 %70, label %71, label %67, !llvm.loop !203

71:                                               ; preds = %67, %62
  %72 = getelementptr inbounds ptr, ptr %44, i64 %64
  %73 = tail call noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_1012ElemVariableES3_ET0_T_S5_S4_(ptr noundef %1, ptr noundef nonnull %72, ptr noundef %44) #13
  %74 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_1012ElemVariableEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #13
  br label %75

75:                                               ; preds = %18, %13, %60, %71, %40
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  br label %76

76:                                               ; preds = %4, %75
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !109 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !197
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !157 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !197
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !157 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !157 {
  %3 = shl i64 %1, 3
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = load ptr, ptr %4, align 8, !tbaa !110
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #13
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !157 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKPN11xalanc_1_1012ElemVariableEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %1, ptr noundef %2) #13
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !109 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !193
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !109 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !157 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #13
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !157 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !195
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKPN11xalanc_1_1012ElemVariableEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !157 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_1012ElemVariableEET_S5_(ptr noundef %0) #13
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_1012ElemVariableEET_S5_(ptr noundef %1) #13
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKPN11xalanc_1_1012ElemVariableEPS2_ET1_T0_S7_S6_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_1012ElemVariableES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !157 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_1012ElemVariableEET_S4_(ptr noundef %0) #13
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_1012ElemVariableEET_S4_(ptr noundef %1) #13
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_1012ElemVariableES3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKPN11xalanc_1_1012ElemVariableEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !157 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !149
  call void @_ZSt19__iterator_categoryIPKPN11xalanc_1_1012ElemVariableEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  %4 = call noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_1012ElemVariableEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #13
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_1012ElemVariableEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat !prof !157 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKPN11xalanc_1_1012ElemVariableEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat !prof !157 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !157 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.21", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKPN11xalanc_1_1012ElemVariableEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !157 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !149
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_1012ElemVariableEET_S5_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_1012ElemVariableEET_S5_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1012ElemVariableEET_S4_(ptr noundef %2) #14
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_1012ElemVariableEPS2_ET1_T0_S7_S6_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_1012ElemVariableEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_1012ElemVariableEET_S5_(ptr noundef %0) local_unnamed_addr #3 comdat !prof !157 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_1012ElemVariableEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #3 comdat !prof !157 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_1012ElemVariableEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !157 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_1012ElemVariableEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_1012ElemVariableEET_S5_(ptr noundef %0) local_unnamed_addr #3 comdat !prof !157 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1012ElemVariableEET_S4_(ptr noundef %0) local_unnamed_addr #3 comdat !prof !157 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_1012ElemVariableEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !157 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_1012ElemVariableEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_1012ElemVariableEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !157 {
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
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_1012ElemVariableES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !157 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !149
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1012ElemVariableEET_S4_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1012ElemVariableEET_S4_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1012ElemVariableEET_S4_(ptr noundef %2) #14
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_1012ElemVariableES3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_1012ElemVariableEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_1012ElemVariableEET_S4_(ptr noundef %0) local_unnamed_addr #3 comdat !prof !157 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_1012ElemVariableES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !157 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_1012ElemVariableES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_1012ElemVariableES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !157 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1012ElemVariableEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1012ElemVariableEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !157 {
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
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !157 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !197
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.21", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !193
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !157 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !llvm.loop !204

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !157 {
  %3 = load ptr, ptr %0, align 8, !tbaa !196
  %4 = load ptr, ptr %3, align 8, !tbaa !110
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 !prof !157 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreC2ERS0_PKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !205 {
  store ptr %1, ptr %0, align 8, !tbaa !149
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::PrefixResolverSetAndRestore", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %1, align 8, !tbaa !110
  %6 = getelementptr inbounds ptr, ptr %5, i64 29
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  store ptr %8, ptr %4, align 8, !tbaa !206
  %9 = load ptr, ptr %0, align 8, !tbaa !208
  %10 = load ptr, ptr %9, align 8, !tbaa !110
  %11 = getelementptr inbounds ptr, ptr %10, i64 30
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef %2) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(129), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_105XPath24getInitialOpCodePositionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) local_unnamed_addr #1 comdat align 2 !prof !205 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1015XPathExpression24getInitialOpCodePositionEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #13
  %3 = getelementptr inbounds i32, ptr %2, i64 2
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !209 {
  %2 = load ptr, ptr %0, align 8, !tbaa !208
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::PrefixResolverSetAndRestore", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !206
  %5 = load ptr, ptr %2, align 8, !tbaa !110
  %6 = getelementptr inbounds ptr, ptr %5, i64 30
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %4) #13
          to label %8 unwind label %9

8:                                                ; preds = %1
  ret void

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  tail call void @__clang_call_terminate(ptr %11) #15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1015XPathExpression24getInitialOpCodePositionEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #1 comdat align 2 !prof !210 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !211 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !212
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !214 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !215 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !216
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !217

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #13
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !191
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #13
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

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !218 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !219

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #13
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !220, !llvm.loop !221

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !222 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !191
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !223 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !218 {
  %3 = load ptr, ptr %0, align 8, !tbaa !224
  %4 = load ptr, ptr %3, align 8, !tbaa !110
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #3 comdat align 2 !prof !225 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !226 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !191
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !188
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind optsize }
attributes #17 = { nounwind }
attributes #18 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!108}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107}
!35 = !{ptr @_ZN11xalanc_1_1012ElemVariableC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1012ElemVariableC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1012ElemVariableC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1012ElemVariable4initERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListE, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 292432932}
!39 = !{ptr @_ZN11xalanc_1_1012ElemVariable4initERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE, i64 13}
!40 = !{ptr @_ZN11xalanc_1_1012ElemVariable4initERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1010Stylesheet13getNamespacesEv, i64 5}
!41 = !{ptr @_ZN11xalanc_1_1012ElemVariable4initERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListE, ptr @_ZNK11xalanc_1_1010XalanQName7isValidEv, i64 5}
!42 = !{ptr @_ZN11xalanc_1_1012ElemVariable4initERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListE, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 1}
!43 = !{ptr @_ZN11xalanc_1_1012ElemVariable4initERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_, i64 1}
!44 = !{ptr @_ZN11xalanc_1_1012ElemVariable4initERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_, i64 1}
!45 = !{ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 1009440147}
!46 = !{ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, ptr @__clang_call_terminate, i64 963}
!47 = !{ptr @_ZN11xalanc_1_1012ElemVariableC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEiii, ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, i64 5}
!48 = !{ptr @_ZN11xalanc_1_1012ElemVariableC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEiii, ptr @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE, i64 5}
!49 = !{ptr @_ZN11xalanc_1_1012ElemVariableC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEiii, ptr @_ZN11xalanc_1_1012ElemVariable4initERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListE, i64 5}
!50 = !{ptr @_ZN11xalanc_1_1012ElemVariableD2Ev, ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, i64 6}
!51 = !{ptr @_ZN11xalanc_1_1012ElemVariableD2Ev, ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev, i64 6}
!52 = !{ptr @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt, i64 1899}
!53 = !{ptr @_ZNK11xalanc_1_1010XalanQName7isValidEv, ptr @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE, i64 300}
!54 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!55 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!56 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!57 = !{ptr @_ZN11xalanc_1_1012ElemVariable17setParentNodeElemEPNS_19ElemTemplateElementE, ptr @__cxa_allocate_exception, i64 1}
!58 = !{ptr @_ZN11xalanc_1_1012ElemVariable17setParentNodeElemEPNS_19ElemTemplateElementE, ptr @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE, i64 1}
!59 = !{ptr @_ZN11xalanc_1_1012ElemVariable17setParentNodeElemEPNS_19ElemTemplateElementE, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_, i64 5}
!60 = !{ptr @_ZNK11xalanc_1_1012ElemVariable12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE, i64 95460}
!61 = !{ptr @_ZNK11xalanc_1_1012ElemVariable12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE, i64 95460}
!62 = !{ptr @_ZNK11xalanc_1_1012ElemVariable12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv, i64 1}
!63 = !{ptr @_ZNK11xalanc_1_1012ElemVariable12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_, i64 58186}
!64 = !{ptr @_ZNK11xalanc_1_1012ElemVariable12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, i64 211831}
!65 = !{ptr @_ZNK11xalanc_1_1012ElemVariable12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE, i64 58185}
!66 = !{ptr @_ZNK11xalanc_1_1012ElemVariable12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv, i64 1}
!67 = !{ptr @_ZNK11xalanc_1_1012ElemVariable12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj, i64 1}
!68 = !{ptr @_ZNK11xalanc_1_1012ElemVariable12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_, i64 58186}
!69 = !{ptr @_ZNK11xalanc_1_1012ElemVariable12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathENS_10XObjectPtrE, i64 1}
!70 = !{ptr @_ZNK11xalanc_1_1012ElemVariable12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1014SelectionEventD1Ev, i64 1}
!71 = !{ptr @_ZNK11xalanc_1_1012ElemVariable12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 1}
!72 = !{ptr @_ZNK11xalanc_1_1012ElemVariable12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1010XObjectPtr4nullEv, i64 58186}
!73 = !{ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 44800926}
!74 = !{ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 44800926}
!75 = !{ptr @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreC2ERS0_PKNS_14PrefixResolverE, i64 44800927}
!76 = !{ptr @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath24getInitialOpCodePositionEv, i64 44800884}
!77 = !{ptr @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 44800842}
!78 = !{ptr @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev, i64 44800927}
!79 = !{ptr @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 717007216}
!80 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!81 = !{ptr @_ZNK11xalanc_1_1012ElemVariable10endElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, i64 37273}
!82 = !{ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, i64 1899}
!83 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 1899}
!84 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, i64 1899}
!85 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 807446}
!86 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 403723}
!87 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!88 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 1}
!89 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 1}
!90 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 1}
!91 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 1}
!92 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 1}
!93 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 1}
!94 = !{ptr @_ZNK11xalanc_1_105XPath24getInitialOpCodePositionEv, ptr @_ZNK11xalanc_1_1015XPathExpression24getInitialOpCodePositionEv, i64 68379708}
!95 = !{ptr @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev, ptr @__clang_call_terminate, i64 65}
!96 = !{ptr @_ZNK11xalanc_1_1015XPathExpression24getInitialOpCodePositionEv, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv, i64 68609120}
!97 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv, i64 68609147}
!98 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!99 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!100 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!101 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!102 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!103 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!104 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!105 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!106 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!107 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!108 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!109 = !{!"function_entry_count", i64 1}
!110 = !{!111, !111, i64 0}
!111 = !{!"vtable pointer", !112, i64 0}
!112 = !{!"Simple C++ TBAA"}
!113 = !{!114, !117, i64 360}
!114 = !{!"_ZTSN11xalanc_1_1012ElemVariableE", !115, i64 0, !117, i64 328, !117, i64 336, !135, i64 344, !136, i64 352, !117, i64 360}
!115 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !116, i64 0, !117, i64 8, !119, i64 16, !130, i64 248, !117, i64 256, !117, i64 264, !117, i64 272, !118, i64 280, !131, i64 288, !134, i64 320}
!116 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!117 = !{!"any pointer", !118, i64 0}
!118 = !{!"omnipotent char", !112, i64 0}
!119 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !120, i64 0, !122, i64 32, !123, i64 64, !124, i64 96}
!120 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !117, i64 0, !121, i64 8, !121, i64 16, !117, i64 24}
!121 = !{!"long", !118, i64 0}
!122 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !117, i64 0, !121, i64 8, !121, i64 16, !117, i64 24}
!123 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !117, i64 0, !121, i64 8, !121, i64 16, !117, i64 24}
!124 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !125, i64 0, !126, i64 1, !117, i64 8, !127, i64 16, !121, i64 24, !121, i64 32, !128, i64 40, !128, i64 64, !129, i64 88, !121, i64 120, !121, i64 128}
!125 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!126 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!127 = !{!"float", !118, i64 0}
!128 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !117, i64 0, !117, i64 8, !117, i64 16}
!129 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !117, i64 0, !121, i64 8, !121, i64 16, !117, i64 24}
!130 = !{!"int", !118, i64 0}
!131 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !132, i64 0, !121, i64 8, !121, i64 16, !117, i64 24}
!132 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !133, i64 0}
!133 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!134 = !{!"short", !118, i64 0}
!135 = !{!"bool", !118, i64 0}
!136 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !117, i64 0}
!137 = !{!"function_entry_count", i64 292432932}
!138 = !{!136, !117, i64 0}
!139 = !{!"function_entry_count", i64 6}
!140 = !{!"branch_weights", i32 1, i32 223}
!141 = !{!114, !117, i64 328}
!142 = !{!"branch_weights", i32 1, i32 7}
!143 = !{!"branch_weights", i32 3, i32 7}
!144 = !{!114, !117, i64 336}
!145 = !{!"branch_weights", i32 7, i32 1}
!146 = !{!"branch_weights", i32 223, i32 65}
!147 = distinct !{!147, !148}
!148 = !{!"llvm.loop.mustprogress"}
!149 = !{!117, !117, i64 0}
!150 = !{!"function_entry_count", i64 1009440147}
!151 = !{!"function_entry_count", i64 5}
!152 = !{!"function_entry_count", i64 1899}
!153 = !{!"function_entry_count", i64 416}
!154 = !{!"function_entry_count", i64 300}
!155 = !{!"function_entry_count", i64 967143541}
!156 = !{!"branch_weights", i32 403628487, i32 563515056}
!157 = !{!"function_entry_count", i64 0}
!158 = !{!114, !135, i64 344}
!159 = !{!"function_entry_count", i64 962142}
!160 = !{!115, !117, i64 8}
!161 = !{i8 0, i8 2}
!162 = !{}
!163 = !{!"function_entry_count", i64 95460}
!164 = !{!"branch_weights", i32 37276, i32 58186}
!165 = !{!"branch_weights", i32 1, i32 37276}
!166 = !{!"branch_weights", i32 58186, i32 1}
!167 = !{!"branch_weights", i32 1, i32 58186}
!168 = !{!"function_entry_count", i64 201666166}
!169 = !{!170, !117, i64 16}
!170 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !171, i64 0, !117, i64 16}
!171 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !117, i64 8}
!172 = !{!"function_entry_count", i64 45140500}
!173 = !{!"branch_weights", i32 339574, i32 44800928}
!174 = !{!"function_entry_count", i64 44800927}
!175 = !{!"function_entry_count", i64 280295}
!176 = !{!171, !117, i64 8}
!177 = !{!"function_entry_count", i64 717007216}
!178 = !{!"function_entry_count", i64 43398227}
!179 = !{!"function_entry_count", i64 381195133}
!180 = !{!"function_entry_count", i64 37275}
!181 = !{!"branch_weights", i32 37276, i32 1}
!182 = !{!"function_entry_count", i64 150969}
!183 = !{!184, !117, i64 0}
!184 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext21CurrentNodePushAndPopE", !117, i64 0}
!185 = !{!"function_entry_count", i64 403723}
!186 = !{!"function_entry_count", i64 3070433834}
!187 = !{!"function_entry_count", i64 1083116306}
!188 = !{!189, !121, i64 8}
!189 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !117, i64 0, !121, i64 8, !121, i64 16, !117, i64 24}
!190 = !{!"function_entry_count", i64 565220908}
!191 = !{!189, !117, i64 24}
!192 = !{!"function_entry_count", i64 6521798493}
!193 = !{!194, !121, i64 8}
!194 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEEE", !117, i64 0, !121, i64 8, !121, i64 16, !117, i64 24}
!195 = !{!194, !121, i64 16}
!196 = !{!194, !117, i64 0}
!197 = !{!194, !117, i64 24}
!198 = !{!121, !121, i64 0}
!199 = !{!"branch_weights", i32 2, i32 1}
!200 = distinct !{!200, !148}
!201 = distinct !{!201, !148}
!202 = distinct !{!202, !148}
!203 = distinct !{!203, !148}
!204 = distinct !{!204, !148}
!205 = !{!"function_entry_count", i64 68379708}
!206 = !{!207, !117, i64 8}
!207 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreE", !117, i64 0, !117, i64 8}
!208 = !{!207, !117, i64 0}
!209 = !{!"function_entry_count", i64 68609096}
!210 = !{!"function_entry_count", i64 68609120}
!211 = !{!"function_entry_count", i64 68609147}
!212 = !{!213, !117, i64 24}
!213 = !{!"_ZTSN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE", !117, i64 0, !121, i64 8, !121, i64 16, !117, i64 24}
!214 = !{!"function_entry_count", i64 68633739}
!215 = !{!"function_entry_count", i64 128698679}
!216 = !{!189, !121, i64 16}
!217 = !{!"branch_weights", i32 43398290, i32 85300391}
!218 = !{!"function_entry_count", i64 85300390}
!219 = !{!"branch_weights", i32 1, i32 12185770}
!220 = !{!"branch_weights", i32 12185770, i32 -193930396}
!221 = distinct !{!221, !148}
!222 = !{!"function_entry_count", i64 227375739}
!223 = !{!"function_entry_count", i64 568333389}
!224 = !{!189, !117, i64 0}
!225 = !{!"function_entry_count", i64 30137156660}
!226 = !{!"function_entry_count", i64 825654971}
