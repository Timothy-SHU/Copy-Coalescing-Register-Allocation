; ModuleID = 'ElemForEach.cpp'
source_filename = "ElemForEach.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::ElemForEach" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr, %"class.xalanc_1_10::XalanVector.3", i64 }
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
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathConstructionContext" = type { ptr, ptr }
%"struct.xalanc_1_10::DeleteFunctor" = type { ptr }
%"class.xalanc_1_10::ElemTemplateElement" = type <{ %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::NamespacesHandler", i32, [4 x i8], ptr, ptr, ptr, %union.anon, %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", i16, [6 x i8] }>
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::SelectionEvent" = type { ptr, ptr, ptr, ptr, ptr, ptr, %"class.xalanc_1_10::XObjectPtr", i32, i8, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.4", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.4" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathExecutionContext::PrefixResolverSetAndRestore" = type { ptr, ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::CollectionClearGuard" = type { ptr }
%"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString" = type { ptr, ptr }
%"class.xalanc_1_10::XalanQNameByValue" = type { %"class.xalanc_1_10::XalanQName", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XalanQName" = type { ptr }
%"class.xalanc_1_10::NodeSortKey" = type { ptr, ptr, i8, i8, i32, ptr, ptr }
%"class.xalanc_1_10::XPathExecutionContext::ContextNodeListPushAndPop" = type { ptr }
%"class.xalanc_1_10::NodeSorter" = type { %"class.xalanc_1_10::XalanVector.10", %"class.xalanc_1_10::XalanVector.11", %"class.xalanc_1_10::XalanVector.12", %"class.xalanc_1_10::XalanVector.13" }
%"class.xalanc_1_10::XalanVector.10" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.11" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.12" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.13" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ElemSort" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr, ptr, ptr, ptr, ptr }
%"class.xalanc_1_10::AVT" = type { ptr, ptr, i64, ptr, i32, ptr }
%"class.xalanc_1_10::XalanVector.7" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanDestroyFunctor" = type { i8 }

$_ZN11xalanc_1_1024XPathConstructionContext16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv = comdat any

$__clang_call_terminate = comdat any

$_ZSt8for_eachIPPN11xalanc_1_108ElemSortENS0_13DeleteFunctorIS1_EEET0_T_S7_S6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1013DeleteFunctorINS_8ElemSortEEC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1012XalanLocator13getLineNumberEPKN11xercesc_2_77LocatorE = comdat any

$_ZN11xalanc_1_1012XalanLocator15getColumnNumberEPKN11xercesc_2_77LocatorE = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_ = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement11hasChildrenEv = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement17hasDirectTemplateEv = comdat any

$_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE = comdat any

$_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_18MutableNodeRefListE = comdat any

$_ZN11xalanc_1_1010XObjectPtraSERKS0_ = comdat any

$_ZN11xalanc_1_1010XObjectPtrD2Ev = comdat any

$_ZNK11xalanc_1_1010XObjectPtr4nullEv = comdat any

$_ZN11xalanc_1_1010XObjectPtrptEv = comdat any

$_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1010NodeSorter11getSortKeysEv = comdat any

$_ZN11xalanc_1_1020CollectionClearGuardINS_11XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS2_EEEEEC2ERS5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE7reserveEm = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_ = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEixEm = comdat any

$_ZNK11xalanc_1_108ElemSort10getLangAVTEv = comdat any

$_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE = comdat any

$_ZNK11xalanc_1_108ElemSort14getDataTypeAVTEv = comdat any

$_ZN11xalanc_1_107isEmptyERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_ = comdat any

$_ZNK11xalanc_1_1014XalanDOMString6lengthEv = comdat any

$_ZN11xalanc_1_105clearERNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_108ElemSort11getOrderAVTEv = comdat any

$_ZNK11xalanc_1_108ElemSort15getCaseOrderAVTEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE9push_backERKS1_ = comdat any

$_ZNK11xalanc_1_108ElemSort16getSelectPatternEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext25ContextNodeListPushAndPopC2ERS0_RKNS_15NodeRefListBaseE = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext25ContextNodeListPushAndPopD2Ev = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev = comdat any

$_ZN11xalanc_1_1020CollectionClearGuardINS_11XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS2_EEEEED2Ev = comdat any

$_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_ = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE = comdat any

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

$_ZN11xalanc_1_1014XalanDOMString6assignEPKtj = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5emptyEv = comdat any

$_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_ = comdat any

$_ZNK11xalanc_1_1014XalanDOMString4sizeEv = comdat any

$_ZN11xalanc_1_1014XalanDOMString5clearEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_ = comdat any

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

$_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZNK11xalanc_1_1013DeleteFunctorINS_8ElemSortEEclEPKS1_ = comdat any

$_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_8ElemSortEEENS_19XalanDestroyFunctorIT_EEPKS3_ = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_8ElemSortEEclEPKS1_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_8ElemSortEEclEPS1_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_8ElemSortEEclERS1_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_8ElemSortEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZSt4copyIPKPN11xalanc_1_108ElemSortEPS2_ET0_T_S7_S6_ = comdat any

$_ZSt13copy_backwardIPPN11xalanc_1_108ElemSortES3_ET0_T_S5_S4_ = comdat any

$_ZSt8distanceIPKPN11xalanc_1_108ElemSortEENSt15iterator_traitsIT_E15difference_typeES6_S6_ = comdat any

$_ZSt10__distanceIPKPN11xalanc_1_108ElemSortEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKPN11xalanc_1_108ElemSortEENSt15iterator_traitsIT_E17iterator_categoryERKS6_ = comdat any

$_ZSt13__copy_move_aILb0EPKPN11xalanc_1_108ElemSortEPS2_ET1_T0_S7_S6_ = comdat any

$_ZSt12__miter_baseIPKPN11xalanc_1_108ElemSortEET_S5_ = comdat any

$_ZSt12__niter_wrapIPPN11xalanc_1_108ElemSortEET_RKS4_S4_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_108ElemSortEPS2_ET1_T0_S7_S6_ = comdat any

$_ZSt12__niter_baseIPKPN11xalanc_1_108ElemSortEET_S5_ = comdat any

$_ZSt12__niter_baseIPPN11xalanc_1_108ElemSortEET_S4_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_108ElemSortEPS2_ET1_T0_S7_S6_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_108ElemSortEEEPT_PKS6_S9_S7_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_108ElemSortES3_ET1_T0_S5_S4_ = comdat any

$_ZSt12__miter_baseIPPN11xalanc_1_108ElemSortEET_S4_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_108ElemSortES3_ET1_T0_S5_S4_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_108ElemSortES3_ET1_T0_S5_S4_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_108ElemSortEEEPT_PKS6_S9_S7_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE5clearEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE12shrinkToSizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE8pop_backEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyERS1_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE8allocateEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE14local_distanceEPKS1_S6_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE14ensureCapacityEm = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_11NodeSortKeyEE9constructEPS1_RKS1_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE8capacityEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_ = comdat any

$_ZSt4copyIPKN11xalanc_1_1011NodeSortKeyEPS1_ET0_T_S6_S5_ = comdat any

$_ZSt13copy_backwardIPN11xalanc_1_1011NodeSortKeyES2_ET0_T_S4_S3_ = comdat any

$_ZSt8distanceIPKN11xalanc_1_1011NodeSortKeyEENSt15iterator_traitsIT_E15difference_typeES5_S5_ = comdat any

$_ZSt10__distanceIPKN11xalanc_1_1011NodeSortKeyEENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKN11xalanc_1_1011NodeSortKeyEENSt15iterator_traitsIT_E17iterator_categoryERKS5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv = comdat any

$_ZSt13__copy_move_aILb0EPKN11xalanc_1_1011NodeSortKeyEPS1_ET1_T0_S6_S5_ = comdat any

$_ZSt12__miter_baseIPKN11xalanc_1_1011NodeSortKeyEET_S4_ = comdat any

$_ZSt12__niter_wrapIPN11xalanc_1_1011NodeSortKeyEET_RKS3_S3_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKN11xalanc_1_1011NodeSortKeyEPS1_ET1_T0_S6_S5_ = comdat any

$_ZSt12__niter_baseIPKN11xalanc_1_1011NodeSortKeyEET_S4_ = comdat any

$_ZSt12__niter_baseIPN11xalanc_1_1011NodeSortKeyEET_S3_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKN11xalanc_1_1011NodeSortKeyEPS1_ET1_T0_S6_S5_ = comdat any

$_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1011NodeSortKeyEPS4_EET0_T_S9_S8_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPN11xalanc_1_1011NodeSortKeyES2_ET1_T0_S4_S3_ = comdat any

$_ZSt12__miter_baseIPN11xalanc_1_1011NodeSortKeyEET_S3_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPN11xalanc_1_1011NodeSortKeyES2_ET1_T0_S4_S3_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPN11xalanc_1_1011NodeSortKeyES2_ET1_T0_S4_S3_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1011NodeSortKeyES5_EET0_T_S7_S6_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyEPS1_S5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10deallocateEPS1_ = comdat any

@_ZTVN11xalanc_1_1011ElemForEachE = dso_local unnamed_addr constant { [43 x ptr] } { [43 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1011ElemForEachE, ptr @_ZN11xalanc_1_1011ElemForEachD2Ev, ptr @_ZN11xalanc_1_1011ElemForEachD0Ev, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_1011ElemForEach12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1011ElemForEach10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv, ptr @_ZNK11xalanc_1_1011ElemForEach14getElementNameEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE, ptr @_ZN11xalanc_1_1011ElemForEach18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb, ptr @_ZN11xalanc_1_1011ElemForEach16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv, ptr @_ZNK11xalanc_1_1011ElemForEach25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZNK11xalanc_1_1011ElemForEach8getXPathEj, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi, ptr @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_, ptr @_ZNK11xalanc_1_1011ElemForEach31createSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1011ElemForEach32releaseSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE] }, align 8
@_ZN11xalanc_1_109Constants15ATTRNAME_SELECTE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants35ELEMNAME_FOREACH_WITH_PREFIX_STRINGE = external local_unnamed_addr constant ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"select\00", align 1
@_ZN11xalanc_1_109Constants23ATTRVAL_DATATYPE_NUMBERE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants21ATTRVAL_DATATYPE_TEXTE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants24ATTRVAL_ORDER_DESCENDINGE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants23ATTRVAL_ORDER_ASCENDINGE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants23ATTRVAL_CASEORDER_UPPERE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants23ATTRVAL_CASEORDER_LOWERE = external local_unnamed_addr constant ptr, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1011ElemForEachE = dso_local constant [29 x i8] c"N11xalanc_1_1011ElemForEachE\00", align 1
@_ZTIN11xalanc_1_1019ElemTemplateElementE = external constant ptr
@_ZTIN11xalanc_1_1011ElemForEachE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1011ElemForEachE, ptr @_ZTIN11xalanc_1_1019ElemTemplateElementE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1011ElemForEachC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i32), ptr @_ZN11xalanc_1_1011ElemForEachC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii
@_ZN11xalanc_1_1011ElemForEachC1ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, i32, i32), ptr @_ZN11xalanc_1_1011ElemForEachC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii
@_ZN11xalanc_1_1011ElemForEachD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1011ElemForEachD2Ev

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1011ElemForEachC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !280 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 %2, i32 noundef %4, i32 noundef %5, i32 noundef 9) #13
  store ptr getelementptr inbounds ({ [43 x ptr] }, ptr @_ZTVN11xalanc_1_1011ElemForEachE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !281
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 1
  store ptr null, ptr %7, align 8, !tbaa !284
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 2
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1024XPathConstructionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef 0) #13
          to label %10 unwind label %23

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 3
  store i64 0, ptr %11, align 8, !tbaa !307
  %12 = load ptr, ptr %3, align 8, !tbaa !281
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
          to label %16 unwind label %25

16:                                               ; preds = %10
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %20, label %18, !prof !308

18:                                               ; preds = %16
  %19 = load ptr, ptr @_ZN11xalanc_1_109Constants15ATTRNAME_SELECTE, align 8
  br label %27

20:                                               ; preds = %68, %16
  %21 = load ptr, ptr %7, align 8, !tbaa !284
  %22 = icmp eq ptr %21, null
  br i1 %22, label %71, label %74, !prof !309

23:                                               ; preds = %6
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %77

25:                                               ; preds = %71, %10
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %75

27:                                               ; preds = %18, %68
  %28 = phi i32 [ 0, %18 ], [ %69, %68 ]
  %29 = load ptr, ptr %3, align 8, !tbaa !281
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  %32 = invoke noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %28) #13
          to label %33 unwind label %52

33:                                               ; preds = %27
  %34 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %32, ptr noundef nonnull align 8 dereferenceable(36) %19) #13
          to label %35 unwind label %52

35:                                               ; preds = %33
  %36 = load ptr, ptr %0, align 8, !tbaa !281
  br i1 %34, label %37, label %54, !prof !310

37:                                               ; preds = %35
  %38 = getelementptr inbounds ptr, ptr %36, i64 4
  %39 = load ptr, ptr %38, align 8
  %40 = invoke noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(322) %0) #13
          to label %41 unwind label %52

41:                                               ; preds = %37
  %42 = load ptr, ptr %3, align 8, !tbaa !281
  %43 = getelementptr inbounds ptr, ptr %42, i64 5
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %28) #13
          to label %46 unwind label %52

46:                                               ; preds = %41
  %47 = load ptr, ptr %1, align 8, !tbaa !281
  %48 = getelementptr inbounds ptr, ptr %47, i64 21
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %40, ptr noundef %45, ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true, i1 noundef zeroext true) #13
          to label %51 unwind label %52

51:                                               ; preds = %46
  store ptr %50, ptr %7, align 8, !tbaa !284
  br label %68

52:                                               ; preds = %67, %65, %62, %59, %54, %46, %41, %37, %33, %27
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %75

54:                                               ; preds = %35
  %55 = getelementptr inbounds ptr, ptr %36, i64 5
  %56 = load ptr, ptr %55, align 8
  %57 = invoke noundef zeroext i1 %56(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %32, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %28, ptr noundef nonnull align 8 dereferenceable(16) %1) #13
          to label %58 unwind label %52

58:                                               ; preds = %54
  br i1 %57, label %68, label %59

59:                                               ; preds = %58
  %60 = load ptr, ptr @_ZN11xalanc_1_109Constants35ELEMNAME_FOREACH_WITH_PREFIX_STRINGE, align 8
  %61 = invoke noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %60) #13
          to label %62 unwind label %52

62:                                               ; preds = %59
  %63 = invoke noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %61, ptr noundef %32, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %28, ptr noundef nonnull align 8 dereferenceable(16) %1) #13
          to label %64 unwind label %52

64:                                               ; preds = %62
  br i1 %63, label %68, label %65

65:                                               ; preds = %64
  %66 = invoke noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %60) #13
          to label %67 unwind label %52

67:                                               ; preds = %65
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 74, ptr noundef %66, ptr noundef %32) #13
          to label %68 unwind label %52

68:                                               ; preds = %58, %64, %67, %51
  %69 = add nuw i32 %28, 1
  %70 = icmp eq i32 %69, %15
  br i1 %70, label %20, label %27, !prof !311, !llvm.loop !312

71:                                               ; preds = %20
  %72 = load ptr, ptr @_ZN11xalanc_1_109Constants35ELEMNAME_FOREACH_WITH_PREFIX_STRINGE, align 8, !tbaa !314
  %73 = load ptr, ptr @_ZN11xalanc_1_109Constants15ATTRNAME_SELECTE, align 8, !tbaa !314
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 63, ptr noundef nonnull align 8 dereferenceable(36) %72, ptr noundef nonnull align 8 dereferenceable(36) %73) #13
          to label %74 unwind label %25

74:                                               ; preds = %71, %20
  ret void

75:                                               ; preds = %52, %25
  %76 = phi { ptr, i32 } [ %53, %52 ], [ %26, %25 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #14
  br label %77

77:                                               ; preds = %75, %23
  %78 = phi { ptr, i32 } [ %76, %75 ], [ %24, %23 ]
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #14
  resume { ptr, i32 } %78
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1024XPathConstructionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !315 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !316
  ret ptr %3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 !prof !318 {
  store ptr %1, ptr %0, align 8, !tbaa !319
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !320
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !321
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !322

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #13
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !323
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat !prof !324 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %0) #13
  ret i1 %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !325 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  br i1 %2, label %5, label %3, !prof !326

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #13
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !327 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !321
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !328

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %6, ptr noundef %7) #13
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !323
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #13
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
declare void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1011ElemForEachC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !329 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #13
  store ptr getelementptr inbounds ({ [43 x ptr] }, ptr @_ZTVN11xalanc_1_1011ElemForEachE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !281
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 1
  store ptr null, ptr %7, align 8, !tbaa !284
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 2
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1024XPathConstructionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef 0) #13
          to label %10 unwind label %12

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 3
  store i64 0, ptr %11, align 8, !tbaa !307
  ret void

12:                                               ; preds = %6
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #14
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1011ElemForEachD2Ev(ptr noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !330 {
  %2 = alloca %"struct.xalanc_1_10::DeleteFunctor", align 8
  store ptr getelementptr inbounds ({ [43 x ptr] }, ptr @_ZTVN11xalanc_1_1011ElemForEachE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !281
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 2
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  %5 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  %6 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
          to label %7 unwind label %11

7:                                                ; preds = %1
  call void @_ZN11xalanc_1_1013DeleteFunctorINS_8ElemSortEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  %8 = load ptr, ptr %2, align 8
  %9 = invoke ptr @_ZSt8for_eachIPPN11xalanc_1_108ElemSortENS0_13DeleteFunctorIS1_EEET0_T_S7_S6_(ptr noundef %5, ptr noundef %6, ptr %8) #13
          to label %10 unwind label %11

10:                                               ; preds = %7
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #14
  ret void

11:                                               ; preds = %7, %1
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  call void @__clang_call_terminate(ptr %13) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !330 {
  %2 = load ptr, ptr %0, align 8, !tbaa !319
  ret ptr %2
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt8for_eachIPPN11xalanc_1_108ElemSortENS0_13DeleteFunctorIS1_EEET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #1 comdat !prof !330 {
  %4 = alloca %"struct.xalanc_1_10::DeleteFunctor", align 8
  store ptr %2, ptr %4, align 8
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %13, label %6, !prof !331

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %9, %6 ], [ %0, %3 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !314
  call void @_ZNK11xalanc_1_1013DeleteFunctorINS_8ElemSortEEclEPKS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #13
  %9 = getelementptr inbounds ptr, ptr %7, i64 1
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %6, !prof !332, !llvm.loop !333

11:                                               ; preds = %6
  %12 = load ptr, ptr %4, align 8
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi ptr [ %12, %11 ], [ %2, %3 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !327 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !323
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !327 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1013DeleteFunctorINS_8ElemSortEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 !prof !330 {
  store ptr %1, ptr %0, align 8, !tbaa !314
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1011ElemForEachD0Ev(ptr noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xalanc_1_1011ElemForEachD2Ev(ptr noundef nonnull align 8 dereferenceable(376) %0) #14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1011ElemForEach18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) unnamed_addr #1 align 2 !prof !334 {
  %6 = alloca ptr, align 8
  %7 = tail call noundef i64 @_ZN11xalanc_1_1012XalanLocator13getLineNumberEPKN11xercesc_2_77LocatorE(ptr noundef %4) #13
  %8 = trunc i64 %7 to i32
  %9 = tail call noundef i64 @_ZN11xalanc_1_1012XalanLocator15getColumnNumberEPKN11xercesc_2_77LocatorE(ptr noundef %4) #13
  %10 = trunc i64 %9 to i32
  %11 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 2
  %12 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %11) #13
  %13 = add i64 %12, 1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %13) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1024XPathConstructionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #13
  %15 = tail call noundef ptr @_ZN11xalanc_1_108ElemSort6createERN11xercesc_2_713MemoryManagerERNS_29StylesheetConstructionContextERNS_10StylesheetERKNS1_13AttributeListEii(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %8, i32 noundef %10) #13
  store ptr %15, ptr %6, align 8, !tbaa !314
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1012XalanLocator13getLineNumberEPKN11xercesc_2_77LocatorE(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !prof !335 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3, !prof !336

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !281
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i64 %6(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  br label %8

8:                                                ; preds = %1, %3
  %9 = phi i64 [ %7, %3 ], [ -1, %1 ]
  ret i64 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1012XalanLocator15getColumnNumberEPKN11xercesc_2_77LocatorE(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !prof !335 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3, !prof !336

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !281
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i64 %6(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  br label %8

8:                                                ; preds = %1, %3
  %9 = phi i64 [ %7, %3 ], [ -1, %1 ]
  ret i64 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !334 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !321
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7, !prof !337

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #13
  br label %7

7:                                                ; preds = %6, %2
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !338 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !320
  ret i64 %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_108ElemSort6createERN11xercesc_2_713MemoryManagerERNS_29StylesheetConstructionContextERNS_10StylesheetERKNS1_13AttributeListEii(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !334 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1011ElemForEach14getElementNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !280 {
  %2 = load ptr, ptr @_ZN11xalanc_1_109Constants35ELEMNAME_FOREACH_WITH_PREFIX_STRINGE, align 8, !tbaa !314
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1011ElemForEach16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(232) %2) unnamed_addr #1 align 2 !prof !339 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(232) %2) #13
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 2
  %5 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  %6 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 3
  store i64 %5, ptr %6, align 8, !tbaa !307
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1011ElemForEach12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 !prof !340 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement11hasChildrenEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #13
  br i1 %3, label %4, label %31, !prof !341

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !281
  %6 = getelementptr inbounds ptr, ptr %5, i64 60
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef null) #13
  %8 = load ptr, ptr %0, align 8, !tbaa !281
  %9 = getelementptr inbounds ptr, ptr %8, i64 38
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %12 = load ptr, ptr %1, align 8, !tbaa !281
  %13 = getelementptr inbounds ptr, ptr %12, i64 160
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %11) #13
  %15 = load ptr, ptr %1, align 8, !tbaa !281
  %16 = getelementptr inbounds ptr, ptr %15, i64 10
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #13
  %18 = load ptr, ptr %1, align 8, !tbaa !281
  %19 = getelementptr inbounds ptr, ptr %18, i64 161
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23, !prof !342

23:                                               ; preds = %4
  %24 = load ptr, ptr %1, align 8, !tbaa !281
  %25 = getelementptr inbounds ptr, ptr %24, i64 7
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %21) #13
  %27 = load ptr, ptr %0, align 8, !tbaa !281
  %28 = getelementptr inbounds ptr, ptr %27, i64 19
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  br label %31

31:                                               ; preds = %2, %23, %4
  %32 = phi ptr [ %30, %23 ], [ null, %4 ], [ null, %2 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement11hasChildrenEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #3 comdat align 2 !prof !343 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !344
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1011ElemForEach25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !345 {
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement17hasDirectTemplateEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #13
  br i1 %4, label %11, label %5, !prof !346

5:                                                ; preds = %3
  %6 = load ptr, ptr %2, align 8, !tbaa !281
  %7 = getelementptr inbounds ptr, ptr %6, i64 23
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(322) %2) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %31

11:                                               ; preds = %5, %3
  %12 = load ptr, ptr %1, align 8, !tbaa !281
  %13 = getelementptr inbounds ptr, ptr %12, i64 8
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %15 = load ptr, ptr %1, align 8, !tbaa !281
  %16 = getelementptr inbounds ptr, ptr %15, i64 161
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20, !prof !347

20:                                               ; preds = %11
  %21 = load ptr, ptr %1, align 8, !tbaa !281
  %22 = getelementptr inbounds ptr, ptr %21, i64 7
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %18) #13
  %24 = load ptr, ptr %0, align 8, !tbaa !281
  %25 = getelementptr inbounds ptr, ptr %24, i64 20
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %27 = load ptr, ptr %0, align 8, !tbaa !281
  %28 = getelementptr inbounds ptr, ptr %27, i64 19
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  br label %31

31:                                               ; preds = %5, %20, %11
  %32 = phi ptr [ %9, %5 ], [ %30, %20 ], [ null, %11 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement17hasDirectTemplateEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #1 comdat align 2 !prof !348 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef 8) #13
  ret i1 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1011ElemForEach10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 !prof !340 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement11hasChildrenEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #13
  br i1 %3, label %4, label %31, !prof !341

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !281
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr %7(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %9 = load ptr, ptr %8, align 8, !tbaa !281
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %8) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14, !prof !342

14:                                               ; preds = %4
  %15 = load ptr, ptr %0, align 8, !tbaa !281
  %16 = getelementptr inbounds ptr, ptr %15, i64 20
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  br label %18

18:                                               ; preds = %14, %4
  %19 = load ptr, ptr %1, align 8, !tbaa !281
  %20 = getelementptr inbounds ptr, ptr %19, i64 162
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %22 = load ptr, ptr %1, align 8, !tbaa !281
  %23 = getelementptr inbounds ptr, ptr %22, i64 11
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %25 = load ptr, ptr %0, align 8, !tbaa !281
  %26 = getelementptr inbounds ptr, ptr %25, i64 39
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %28 = load ptr, ptr %1, align 8, !tbaa !281
  %29 = getelementptr inbounds ptr, ptr %28, i64 61
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  br label %31

31:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1011ElemForEach31createSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !349 {
  %3 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %4 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %5 = alloca %"class.xalanc_1_10::SelectionEvent", align 8
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = load ptr, ptr %1, align 8, !tbaa !281
  %8 = getelementptr inbounds ptr, ptr %7, i64 156
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef nonnull align 8 dereferenceable(44) ptr %9(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef null) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %11 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !284
  invoke void @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(129) %12, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(44) %10) #13
          to label %13 unwind label %17

13:                                               ; preds = %2
  %14 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #13
          to label %15 unwind label %19

15:                                               ; preds = %13
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  %16 = call noundef zeroext i1 @_ZNK11xalanc_1_1010XObjectPtr4nullEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  br i1 %16, label %31, label %25, !prof !350

17:                                               ; preds = %2
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %21

19:                                               ; preds = %13
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi { ptr, i32 } [ %20, %19 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %96

23:                                               ; preds = %36, %31, %25
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %96

25:                                               ; preds = %15
  %26 = call noundef ptr @_ZN11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  %27 = load ptr, ptr %26, align 8, !tbaa !281
  %28 = getelementptr inbounds ptr, ptr %27, i64 13
  %29 = load ptr, ptr %28, align 8
  %30 = invoke noundef nonnull align 8 dereferenceable(8) ptr %29(ptr noundef nonnull align 8 dereferenceable(24) %26) #13
          to label %31 unwind label %23

31:                                               ; preds = %25, %15
  %32 = phi ptr [ %10, %15 ], [ %30, %25 ]
  %33 = load ptr, ptr %1, align 8, !tbaa !281
  %34 = getelementptr inbounds ptr, ptr %33, i64 158
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %3) #13
          to label %36 unwind label %23

36:                                               ; preds = %31
  %37 = load ptr, ptr %1, align 8, !tbaa !281
  %38 = getelementptr inbounds ptr, ptr %37, i64 137
  %39 = load ptr, ptr %38, align 8
  %40 = invoke noundef i64 %39(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
          to label %41 unwind label %23

41:                                               ; preds = %36
  %42 = icmp eq i64 %40, 0
  br i1 %42, label %71, label %43, !prof !350

43:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #16
  %44 = load ptr, ptr %1, align 8, !tbaa !281
  %45 = getelementptr inbounds ptr, ptr %44, i64 6
  %46 = load ptr, ptr %45, align 8
  %47 = invoke noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
          to label %48 unwind label %57

48:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #16
  %49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #13
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(8) %49, i32 noundef -1) #13
          to label %50 unwind label %59

50:                                               ; preds = %48
  %51 = load ptr, ptr %11, align 8, !tbaa !284
  invoke void @_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %47, ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(129) %51, ptr noundef nonnull align 8 dereferenceable(8) %32) #13
          to label %52 unwind label %61

52:                                               ; preds = %50
  %53 = load ptr, ptr %1, align 8, !tbaa !281
  %54 = getelementptr inbounds ptr, ptr %53, i64 140
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %5) #13
          to label %56 unwind label %63

56:                                               ; preds = %52
  call void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %5) #14
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %6) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #16
  br label %71

57:                                               ; preds = %43
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %69

59:                                               ; preds = %48
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %67

61:                                               ; preds = %50
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %65

63:                                               ; preds = %52
  %64 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %5) #14
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi { ptr, i32 } [ %64, %63 ], [ %62, %61 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %6) #14
  br label %67

67:                                               ; preds = %65, %59
  %68 = phi { ptr, i32 } [ %66, %65 ], [ %60, %59 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #16
  br label %69

69:                                               ; preds = %67, %57
  %70 = phi { ptr, i32 } [ %68, %67 ], [ %58, %57 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #16
  br label %96

71:                                               ; preds = %56, %41
  %72 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 3
  %73 = load i64, ptr %72, align 8, !tbaa !307
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %94, label %75, !prof !351

75:                                               ; preds = %71
  %76 = load ptr, ptr %1, align 8, !tbaa !281
  %77 = getelementptr inbounds ptr, ptr %76, i64 156
  %78 = load ptr, ptr %77, align 8
  %79 = invoke noundef nonnull align 8 dereferenceable(44) ptr %78(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
          to label %80 unwind label %92

80:                                               ; preds = %75
  %81 = load ptr, ptr %32, align 8, !tbaa !281
  %82 = getelementptr inbounds ptr, ptr %81, i64 3
  %83 = load ptr, ptr %82, align 8
  %84 = invoke noundef i32 %83(ptr noundef nonnull align 8 dereferenceable(8) %32) #13
          to label %85 unwind label %92

85:                                               ; preds = %80
  %86 = icmp ugt i32 %84, 1
  br i1 %86, label %87, label %94, !prof !352

87:                                               ; preds = %85
  %88 = load ptr, ptr %0, align 8, !tbaa !281
  %89 = getelementptr inbounds ptr, ptr %88, i64 40
  %90 = load ptr, ptr %89, align 8
  %91 = invoke noundef ptr %90(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dereferenceable(44) %79) #13
          to label %94 unwind label %92

92:                                               ; preds = %87, %80, %75
  %93 = landingpad { ptr, i32 }
          cleanup
  br label %96

94:                                               ; preds = %85, %87, %71
  %95 = phi ptr [ %32, %71 ], [ %32, %85 ], [ %91, %87 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret ptr %95

96:                                               ; preds = %92, %69, %23, %21
  %97 = phi { ptr, i32 } [ %93, %92 ], [ %70, %69 ], [ %24, %23 ], [ %22, %21 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  resume { ptr, i32 } %97
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !353 {
  store ptr %1, ptr %0, align 8, !tbaa !354
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(44) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !349 {
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::PrefixResolverSetAndRestore", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreC2ERS0_PKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %2) #13
  %7 = load ptr, ptr %3, align 8, !tbaa !281
  %8 = getelementptr inbounds ptr, ptr %7, i64 6
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
          to label %11 unwind label %15

11:                                               ; preds = %5
  %12 = invoke noundef ptr @_ZNK11xalanc_1_105XPath24getInitialOpCodePositionEv(ptr noundef nonnull align 8 dereferenceable(129) %1) #13
          to label %13 unwind label %15

13:                                               ; preds = %11
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %10, ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(44) %4) #13
          to label %14 unwind label %15

14:                                               ; preds = %13
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret void

15:                                               ; preds = %13, %11, %5
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  resume { ptr, i32 } %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !356 {
  %3 = load ptr, ptr %0, align 8, !tbaa !354
  %4 = load ptr, ptr %1, align 8, !tbaa !354
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %8, label %6, !prof !357

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %3) #13
  %7 = load ptr, ptr %1, align 8, !tbaa !354
  store ptr %7, ptr %0, align 8, !tbaa !354
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %7) #13
  br label %8

8:                                                ; preds = %6, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !358 {
  %2 = load ptr, ptr %0, align 8, !tbaa !354
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1010XObjectPtr4nullEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 !prof !359 {
  %2 = load ptr, ptr %0, align 8, !tbaa !354
  %3 = icmp eq ptr %2, null
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 !prof !360 {
  %2 = load ptr, ptr %0, align 8, !tbaa !354
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !361 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !362
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(129), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #3 comdat align 2 !prof !364 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1011ElemForEach32releaseSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 !prof !349 {
  %3 = load ptr, ptr %1, align 8, !tbaa !281
  %4 = getelementptr inbounds ptr, ptr %3, i64 159
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %6 = load ptr, ptr %1, align 8, !tbaa !281
  %7 = getelementptr inbounds ptr, ptr %6, i64 157
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %9 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 3
  %10 = load i64, ptr %9, align 8, !tbaa !307
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %16, label %12, !prof !351

12:                                               ; preds = %2
  %13 = load ptr, ptr %1, align 8, !tbaa !281
  %14 = getelementptr inbounds ptr, ptr %13, i64 157
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  br label %16

16:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull returned align 8 dereferenceable(44) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !365 {
  %5 = alloca %"class.xalanc_1_10::CollectionClearGuard", align 8
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %7 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %8 = alloca %"class.xalanc_1_10::XalanQNameByValue", align 8
  %9 = alloca %"class.xalanc_1_10::NodeSortKey", align 8
  %10 = alloca %"class.xalanc_1_10::XPathExecutionContext::ContextNodeListPushAndPop", align 8
  %11 = load ptr, ptr %1, align 8, !tbaa !281
  %12 = getelementptr inbounds ptr, ptr %11, i64 129
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %15 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1010NodeSorter11getSortKeysEv(ptr noundef nonnull align 8 dereferenceable(128) %14) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @_ZN11xalanc_1_1020CollectionClearGuardINS_11XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS2_EEEEEC2ERS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  %16 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 3
  %17 = load i64, ptr %16, align 8, !tbaa !307
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef %17) #13
          to label %18 unwind label %33

18:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  invoke void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %1) #13
          to label %19 unwind label %35

19:                                               ; preds = %18
  %20 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  invoke void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(24) %1) #13
          to label %21 unwind label %37

21:                                               ; preds = %19
  %22 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #13
  %23 = load i64, ptr %16, align 8, !tbaa !307
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %31, label %25, !prof !366

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 2
  %27 = load ptr, ptr @_ZN11xalanc_1_109Constants23ATTRVAL_DATATYPE_NUMBERE, align 8
  %28 = load ptr, ptr @_ZN11xalanc_1_109Constants21ATTRVAL_DATATYPE_TEXTE, align 8
  %29 = load ptr, ptr @_ZN11xalanc_1_109Constants24ATTRVAL_ORDER_DESCENDINGE, align 8
  %30 = load ptr, ptr @_ZN11xalanc_1_109Constants23ATTRVAL_ORDER_ASCENDINGE, align 8
  br label %41

31:                                               ; preds = %142, %21
  %32 = invoke noundef nonnull align 8 dereferenceable(44) ptr @_ZN11xalanc_1_1018MutableNodeRefListaSERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(44) %3, ptr noundef nonnull align 8 dereferenceable(8) %2) #13
          to label %152 unwind label %39

33:                                               ; preds = %4
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %167

35:                                               ; preds = %18
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %165

37:                                               ; preds = %19
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %163

39:                                               ; preds = %31
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %161

41:                                               ; preds = %25, %142
  %42 = phi i64 [ 0, %25 ], [ %143, %142 ]
  %43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %26, i64 noundef %42) #13
  %44 = load ptr, ptr %43, align 8, !tbaa !314
  %45 = call noundef ptr @_ZNK11xalanc_1_108ElemSort10getLangAVTEv(ptr noundef nonnull align 8 dereferenceable(368) %44) #13
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47, !prof !367

47:                                               ; preds = %41
  invoke void @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %45, ptr noundef nonnull align 8 dereferenceable(36) %20, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #13
          to label %50 unwind label %48

48:                                               ; preds = %53, %47
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %161

50:                                               ; preds = %47, %41
  %51 = call noundef ptr @_ZNK11xalanc_1_108ElemSort14getDataTypeAVTEv(ptr noundef nonnull align 8 dereferenceable(368) %44) #13
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53, !prof !368

53:                                               ; preds = %50
  invoke void @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %51, ptr noundef nonnull align 8 dereferenceable(36) %22, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #13
          to label %54 unwind label %48

54:                                               ; preds = %53, %50
  %55 = invoke noundef zeroext i1 @_ZN11xalanc_1_107isEmptyERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %22) #13
          to label %56 unwind label %60

56:                                               ; preds = %54
  br i1 %55, label %89, label %57, !prof !368

57:                                               ; preds = %56
  %58 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %22, ptr noundef nonnull align 8 dereferenceable(36) %27) #13
          to label %59 unwind label %60

59:                                               ; preds = %57
  br i1 %58, label %89, label %62, !prof !369

60:                                               ; preds = %94, %89, %62, %57, %54
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %161

62:                                               ; preds = %59
  %63 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %22, ptr noundef nonnull align 8 dereferenceable(36) %28) #13
          to label %64 unwind label %60

64:                                               ; preds = %62
  br i1 %63, label %89, label %65, !prof !370

65:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %8) #16
  %66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #13
  invoke void @_ZN11xalanc_1_1017XalanQNameByValueC1ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerEPKNS_14PrefixResolverEPKNS4_7LocatorE(ptr noundef nonnull align 8 dereferenceable(88) %8, ptr noundef nonnull align 8 dereferenceable(36) %22, ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef nonnull %0, ptr noundef null) #13
          to label %67 unwind label %79

67:                                               ; preds = %65
  %68 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017XalanQNameByValue12getNamespaceEv(ptr noundef nonnull align 8 dereferenceable(88) %8) #13
          to label %69 unwind label %81

69:                                               ; preds = %67
  %70 = invoke noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %68) #13
          to label %71 unwind label %81

71:                                               ; preds = %69
  %72 = icmp eq i32 %70, 0
  %73 = load ptr, ptr %44, align 8, !tbaa !281
  %74 = getelementptr inbounds ptr, ptr %73, i64 4
  %75 = load ptr, ptr %74, align 8
  br i1 %72, label %76, label %83

76:                                               ; preds = %71
  %77 = invoke noundef ptr %75(ptr noundef nonnull align 8 dereferenceable(322) %44) #13
          to label %78 unwind label %81

78:                                               ; preds = %76
  invoke void @_ZNK11xalanc_1_1019ElemTemplateElement5errorERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 180, ptr noundef %77) #13
          to label %86 unwind label %81

79:                                               ; preds = %65
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %87

81:                                               ; preds = %85, %83, %78, %76, %69, %67
  %82 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1017XalanQNameByValueD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %8) #14
  br label %87

83:                                               ; preds = %71
  %84 = invoke noundef ptr %75(ptr noundef nonnull align 8 dereferenceable(322) %44) #13
          to label %85 unwind label %81

85:                                               ; preds = %83
  invoke void @_ZNK11xalanc_1_1019ElemTemplateElement4warnERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 181, ptr noundef %84) #13
          to label %86 unwind label %81

86:                                               ; preds = %85, %78
  call void @_ZN11xalanc_1_1017XalanQNameByValueD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %8) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %8) #16
  br label %89

87:                                               ; preds = %81, %79
  %88 = phi { ptr, i32 } [ %82, %81 ], [ %80, %79 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %8) #16
  br label %161

89:                                               ; preds = %59, %86, %64, %56
  %90 = phi i1 [ false, %86 ], [ false, %64 ], [ false, %56 ], [ true, %59 ]
  invoke void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %22) #13
          to label %91 unwind label %60

91:                                               ; preds = %89
  %92 = call noundef ptr @_ZNK11xalanc_1_108ElemSort11getOrderAVTEv(ptr noundef nonnull align 8 dereferenceable(368) %44) #13
  %93 = icmp eq ptr %92, null
  br i1 %93, label %95, label %94, !prof !368

94:                                               ; preds = %91
  invoke void @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %92, ptr noundef nonnull align 8 dereferenceable(36) %22, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #13
          to label %95 unwind label %60

95:                                               ; preds = %94, %91
  %96 = invoke noundef zeroext i1 @_ZN11xalanc_1_107isEmptyERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %22) #13
          to label %97 unwind label %101

97:                                               ; preds = %95
  br i1 %96, label %112, label %98, !prof !368

98:                                               ; preds = %97
  %99 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %22, ptr noundef nonnull align 8 dereferenceable(36) %29) #13
          to label %100 unwind label %101

100:                                              ; preds = %98
  br i1 %99, label %112, label %103, !prof !371

101:                                              ; preds = %117, %112, %111, %106, %103, %98, %95
  %102 = landingpad { ptr, i32 }
          cleanup
  br label %161

103:                                              ; preds = %100
  %104 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %22, ptr noundef nonnull align 8 dereferenceable(36) %30) #13
          to label %105 unwind label %101

105:                                              ; preds = %103
  br i1 %104, label %112, label %106, !prof !372

106:                                              ; preds = %105
  %107 = load ptr, ptr %44, align 8, !tbaa !281
  %108 = getelementptr inbounds ptr, ptr %107, i64 4
  %109 = load ptr, ptr %108, align 8
  %110 = invoke noundef ptr %109(ptr noundef nonnull align 8 dereferenceable(322) %44) #13
          to label %111 unwind label %101

111:                                              ; preds = %106
  invoke void @_ZNK11xalanc_1_1019ElemTemplateElement5errorERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 179, ptr noundef %110) #13
          to label %112 unwind label %101

112:                                              ; preds = %100, %111, %105, %97
  %113 = phi i1 [ false, %111 ], [ false, %105 ], [ false, %97 ], [ true, %100 ]
  invoke void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %22) #13
          to label %114 unwind label %101

114:                                              ; preds = %112
  %115 = call noundef ptr @_ZNK11xalanc_1_108ElemSort15getCaseOrderAVTEv(ptr noundef nonnull align 8 dereferenceable(368) %44) #13
  %116 = icmp eq ptr %115, null
  br i1 %116, label %118, label %117, !prof !367

117:                                              ; preds = %114
  invoke void @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %115, ptr noundef nonnull align 8 dereferenceable(36) %22, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #13
          to label %118 unwind label %101

118:                                              ; preds = %117, %114
  %119 = invoke noundef zeroext i1 @_ZN11xalanc_1_107isEmptyERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %22) #13
          to label %120 unwind label %125

120:                                              ; preds = %118
  br i1 %119, label %137, label %121, !prof !367

121:                                              ; preds = %120
  %122 = load ptr, ptr @_ZN11xalanc_1_109Constants23ATTRVAL_CASEORDER_UPPERE, align 8
  %123 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %22, ptr noundef nonnull align 8 dereferenceable(36) %122) #13
          to label %124 unwind label %125

124:                                              ; preds = %121
  br i1 %123, label %137, label %127

125:                                              ; preds = %137, %136, %131, %127, %121, %118
  %126 = landingpad { ptr, i32 }
          cleanup
  br label %161

127:                                              ; preds = %124
  %128 = load ptr, ptr @_ZN11xalanc_1_109Constants23ATTRVAL_CASEORDER_LOWERE, align 8
  %129 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %22, ptr noundef nonnull align 8 dereferenceable(36) %128) #13
          to label %130 unwind label %125

130:                                              ; preds = %127
  br i1 %129, label %137, label %131

131:                                              ; preds = %130
  %132 = load ptr, ptr %44, align 8, !tbaa !281
  %133 = getelementptr inbounds ptr, ptr %132, i64 4
  %134 = load ptr, ptr %133, align 8
  %135 = invoke noundef ptr %134(ptr noundef nonnull align 8 dereferenceable(322) %44) #13
          to label %136 unwind label %125

136:                                              ; preds = %131
  invoke void @_ZNK11xalanc_1_1019ElemTemplateElement5errorERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 182, ptr noundef %135) #13
          to label %137 unwind label %125

137:                                              ; preds = %130, %124, %136, %120
  %138 = phi i32 [ 0, %136 ], [ 0, %120 ], [ 2, %124 ], [ 1, %130 ]
  invoke void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %22) #13
          to label %139 unwind label %125

139:                                              ; preds = %137
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #16
  %140 = call noundef ptr @_ZNK11xalanc_1_108ElemSort16getSelectPatternEv(ptr noundef nonnull align 8 dereferenceable(368) %44) #13
  invoke void @_ZN11xalanc_1_1011NodeSortKeyC1ERNS_16ExecutionContextEPKNS_5XPathEbbNS_22XalanCollationServices10eCaseOrderERKNS_14XalanDOMStringERKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %140, i1 noundef zeroext %90, i1 noundef zeroext %113, i32 noundef %138, ptr noundef nonnull align 8 dereferenceable(36) %20, ptr noundef nonnull align 8 dereferenceable(8) %0) #13
          to label %141 unwind label %146

141:                                              ; preds = %139
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(40) %9) #13
          to label %142 unwind label %148

142:                                              ; preds = %141
  call void @_ZN11xalanc_1_1011NodeSortKeyD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %9) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #16
  %143 = add nuw i64 %42, 1
  %144 = load i64, ptr %16, align 8, !tbaa !307
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %41, label %31, !prof !373, !llvm.loop !374

146:                                              ; preds = %139
  %147 = landingpad { ptr, i32 }
          cleanup
  br label %150

148:                                              ; preds = %141
  %149 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011NodeSortKeyD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %9) #14
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi { ptr, i32 } [ %149, %148 ], [ %147, %146 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #16
  br label %161

152:                                              ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  invoke void @_ZN11xalanc_1_1021XPathExecutionContext25ContextNodeListPushAndPopC2ERS0_RKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #13
          to label %153 unwind label %155

153:                                              ; preds = %152
  invoke void @_ZN11xalanc_1_1010NodeSorter4sortERNS_26StylesheetExecutionContextERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(128) %14, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(44) %3) #13
          to label %154 unwind label %157

154:                                              ; preds = %153
  call void @_ZN11xalanc_1_1021XPathExecutionContext25ContextNodeListPushAndPopD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1020CollectionClearGuardINS_11XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS2_EEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret ptr %3

155:                                              ; preds = %152
  %156 = landingpad { ptr, i32 }
          cleanup
  br label %159

157:                                              ; preds = %153
  %158 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25ContextNodeListPushAndPopD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #14
  br label %159

159:                                              ; preds = %157, %155
  %160 = phi { ptr, i32 } [ %158, %157 ], [ %156, %155 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  br label %161

161:                                              ; preds = %48, %101, %150, %125, %87, %60, %159, %39
  %162 = phi { ptr, i32 } [ %160, %159 ], [ %40, %39 ], [ %49, %48 ], [ %61, %60 ], [ %88, %87 ], [ %102, %101 ], [ %151, %150 ], [ %126, %125 ]
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #14
  br label %163

163:                                              ; preds = %161, %37
  %164 = phi { ptr, i32 } [ %162, %161 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  br label %165

165:                                              ; preds = %163, %35
  %166 = phi { ptr, i32 } [ %164, %163 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  br label %167

167:                                              ; preds = %165, %33
  %168 = phi { ptr, i32 } [ %166, %165 ], [ %34, %33 ]
  call void @_ZN11xalanc_1_1020CollectionClearGuardINS_11XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS2_EEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  resume { ptr, i32 } %168
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1010NodeSorter11getSortKeysEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #3 comdat align 2 !prof !365 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020CollectionClearGuardINS_11XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS2_EEEEEC2ERS5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 comdat align 2 !prof !365 {
  store ptr %1, ptr %0, align 8, !tbaa !375
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !365 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !377
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7, !prof !379

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #13
  br label %7

7:                                                ; preds = %6, %2
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 !prof !380 {
  store ptr %1, ptr %0, align 8, !tbaa !381
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %1, align 8, !tbaa !281
  %5 = getelementptr inbounds ptr, ptr %4, i64 23
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  store ptr %7, ptr %3, align 8, !tbaa !383
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !384 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !383
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !385 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !323
  %5 = getelementptr inbounds ptr, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_108ElemSort10getLangAVTEv(ptr noundef nonnull align 8 dereferenceable(368) %0) local_unnamed_addr #3 comdat align 2 !prof !385 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemSort", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !386
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 !prof !388 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !389
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !391

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !392
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %6, i32 noundef %10) #13
  br label %13

12:                                               ; preds = %4
  tail call void @_ZNK11xalanc_1_103AVT10doEvaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  br label %13

13:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_108ElemSort14getDataTypeAVTEv(ptr noundef nonnull align 8 dereferenceable(368) %0) local_unnamed_addr #3 comdat align 2 !prof !385 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemSort", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !393
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_107isEmptyERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat !prof !394 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014XalanDOMString5emptyEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  ret i1 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat !prof !395 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #13
  ret i1 %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanQNameByValueC1ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerEPKNS_14PrefixResolverEPKNS4_7LocatorE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017XalanQNameByValue12getNamespaceEv(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !396 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  ret i32 %2
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1019ElemTemplateElement5errorERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1019ElemTemplateElement4warnERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017XalanQNameByValueD1Ev(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat !prof !397 {
  tail call void @_ZN11xalanc_1_1014XalanDOMString5clearEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_108ElemSort11getOrderAVTEv(ptr noundef nonnull align 8 dereferenceable(368) %0) local_unnamed_addr #3 comdat align 2 !prof !385 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemSort", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !398
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_108ElemSort15getCaseOrderAVTEv(ptr noundef nonnull align 8 dereferenceable(368) %0) local_unnamed_addr #3 comdat align 2 !prof !385 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemSort", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !399
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 comdat align 2 !prof !385 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_108ElemSort16getSelectPatternEv(ptr noundef nonnull align 8 dereferenceable(368) %0) local_unnamed_addr #3 comdat align 2 !prof !385 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemSort", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !400
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1011NodeSortKeyC1ERNS_16ExecutionContextEPKNS_5XPathEbbNS_22XalanCollationServices10eCaseOrderERKNS_14XalanDOMStringERKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1011NodeSortKeyD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #5

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(44) ptr @_ZN11xalanc_1_1018MutableNodeRefListaSERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25ContextNodeListPushAndPopC2ERS0_RKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 comdat align 2 !prof !401 {
  store ptr %1, ptr %0, align 8, !tbaa !314
  %4 = load ptr, ptr %1, align 8, !tbaa !281
  %5 = getelementptr inbounds ptr, ptr %4, i64 10
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1010NodeSorter4sortERNS_26StylesheetExecutionContextERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25ContextNodeListPushAndPopD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !401 {
  %2 = load ptr, ptr %0, align 8, !tbaa !402
  %3 = load ptr, ptr %2, align 8, !tbaa !281
  %4 = getelementptr inbounds ptr, ptr %3, i64 11
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !404 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !383
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !405

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !381
  %7 = load ptr, ptr %6, align 8, !tbaa !281
  %8 = getelementptr inbounds ptr, ptr %7, i64 24
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(36) %3) #13
          to label %11 unwind label %12

11:                                               ; preds = %5, %1
  ret void

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020CollectionClearGuardINS_11XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS2_EEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !365 {
  %2 = load ptr, ptr %0, align 8, !tbaa !375
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !406

4:                                                ; preds = %1
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
          to label %5 unwind label %6

5:                                                ; preds = %4, %1
  ret void

6:                                                ; preds = %4
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #15
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1011ElemForEach8getXPathEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(376) %0, i32 noundef %1) unnamed_addr #8 align 2 !prof !360 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = select i1 %3, ptr %5, ptr null
  ret ptr %6
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
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1) unnamed_addr #2

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
declare void @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

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

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !324 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #13
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !324 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_(ptr noundef %3, ptr noundef %1) #13
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !407 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %0) #13
  %4 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1) #13
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %0, i32 noundef %3, ptr noundef %1, i32 noundef %4) #13
  ret i1 %5
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #3 comdat align 2 !prof !408 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !409 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !410
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !412 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !413
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !414 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !415 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %4 = load i16, ptr %3, align 8, !tbaa !416
  %5 = zext i16 %4 to i32
  %6 = and i32 %5, %1
  %7 = icmp ne i32 %6, 0
  ret i1 %7
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreC2ERS0_PKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !417 {
  store ptr %1, ptr %0, align 8, !tbaa !314
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::PrefixResolverSetAndRestore", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %1, align 8, !tbaa !281
  %6 = getelementptr inbounds ptr, ptr %5, i64 29
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  store ptr %8, ptr %4, align 8, !tbaa !418
  %9 = load ptr, ptr %0, align 8, !tbaa !420
  %10 = load ptr, ptr %9, align 8, !tbaa !281
  %11 = getelementptr inbounds ptr, ptr %10, i64 30
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef %2) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(129), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_105XPath24getInitialOpCodePositionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) local_unnamed_addr #1 comdat align 2 !prof !417 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1015XPathExpression24getInitialOpCodePositionEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #13
  %3 = getelementptr inbounds i32, ptr %2, i64 2
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !421 {
  %2 = load ptr, ptr %0, align 8, !tbaa !420
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::PrefixResolverSetAndRestore", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !418
  %5 = load ptr, ptr %2, align 8, !tbaa !281
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
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1015XPathExpression24getInitialOpCodePositionEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #1 comdat align 2 !prof !422 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !423 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !424
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !426 {
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !427 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !428
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !429

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #13
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !413
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
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !430 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !431

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #13
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !432, !llvm.loop !433

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !434 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !413
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !435 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !430 {
  %3 = load ptr, ptr %0, align 8, !tbaa !436
  %4 = load ptr, ptr %3, align 8, !tbaa !281
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #3 comdat align 2 !prof !437 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !438 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !413
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !410
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !439 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1) #13
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %2) #13
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_103AVT10doEvaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014XalanDOMString5emptyEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #3 comdat align 2 !prof !440 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !441
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat !prof !443 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #13
  ret i1 %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #3 comdat align 2 !prof !444 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !441
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMString5clearEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !445 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %3 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #13
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !441
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !446 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %9, label %5, !prof !447

5:                                                ; preds = %3
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %7 = tail call noundef ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_(ptr noundef %2, ptr noundef %6, ptr noundef %1) #13
  %8 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #13
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8) #13
  br label %9

9:                                                ; preds = %5, %3
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !448 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) #13
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %1) #13
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !448 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %8, label %4, !prof !449

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %6, %4 ], [ %1, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %6 = add i64 %5, -1
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %4, !prof !450, !llvm.loop !451

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !452 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #13
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !448 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !314
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #14
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #3 comdat !prof !453 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #3 comdat !prof !454 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !448 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #3 comdat !prof !455 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !448 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !454 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !456

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %2, ptr align 2 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !457 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !410
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !410
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !413
  %7 = getelementptr inbounds i16, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %7) #13
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !452 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !314
  call void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  %4 = call noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #13
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat !prof !452 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 1
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat !prof !452 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !334 {
  %3 = shl i64 %1, 3
  %4 = load ptr, ptr %0, align 8, !tbaa !319
  %5 = load ptr, ptr %4, align 8, !tbaa !281
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #13
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !458 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !334 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !459

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !460, !llvm.loop !461

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !334 {
  %3 = load ptr, ptr %0, align 8, !tbaa !319
  %4 = load ptr, ptr %3, align 8, !tbaa !281
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 !prof !462 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !463 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !323
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !320
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1013DeleteFunctorINS_8ElemSortEEclEPKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !334 {
  %3 = alloca %"struct.xalanc_1_10::XalanDestroyFunctor", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #16
  tail call void @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_8ElemSortEEENS_19XalanDestroyFunctorIT_EEPKS3_(ptr noundef %1) #13
  %4 = load ptr, ptr %0, align 8, !tbaa !464
  call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_8ElemSortEEclEPKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_8ElemSortEEENS_19XalanDestroyFunctorIT_EEPKS3_(ptr noundef %0) local_unnamed_addr #3 comdat !prof !334 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_8ElemSortEEclEPKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 !prof !334 {
  tail call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_8ElemSortEEclEPS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_8ElemSortEEclEPS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 !prof !334 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5, !prof !466

5:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_8ElemSortEEclERS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(368) %1) #13
  %6 = load ptr, ptr %2, align 8, !tbaa !281
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %1) #13
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_8ElemSortEEclERS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(368) %1) local_unnamed_addr #3 comdat align 2 !prof !334 {
  %3 = load ptr, ptr %1, align 8, !tbaa !281
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(368) %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !334 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !319
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !334 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  store ptr %2, ptr %0, align 8, !tbaa !319
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !320
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !467

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #13
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #13
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !468

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #13
  store ptr %24, ptr %8, align 8, !tbaa !323
  store i64 %3, ptr %7, align 8, !tbaa !321
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 !prof !469 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %3 = load ptr, ptr %0, align 8, !tbaa !319
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !323
  %7 = load ptr, ptr %1, align 8, !tbaa !319
  store ptr %7, ptr %0, align 8, !tbaa !319
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !470
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !323
  store ptr %11, ptr %5, align 8, !tbaa !323
  store ptr %3, ptr %1, align 8, !tbaa !319
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !470
  store <2 x i64> %9, ptr %4, align 8, !tbaa !470
  store <2 x i64> %12, ptr %8, align 8, !tbaa !470
  store ptr %6, ptr %10, align 8, !tbaa !323
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 !prof !471 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !471 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #13
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8, !prof !472

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28, !prof !473

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #13
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16, !prof !474

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !319
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_8ElemSortEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #13
  %23 = getelementptr inbounds ptr, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !320
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !320
  %26 = getelementptr inbounds ptr, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !prof !475, !llvm.loop !476

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %32 = load ptr, ptr %0, align 8, !tbaa !319
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #13
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #13
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #13
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #13
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #13
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %57) #13
  %58 = getelementptr inbounds ptr, ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !llvm.loop !477

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %61) #13
  %62 = getelementptr inbounds ptr, ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !llvm.loop !478

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_108ElemSortEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #13
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds ptr, ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %72) #13
  %73 = getelementptr inbounds ptr, ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !479

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds ptr, ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_108ElemSortES3_ET0_T_S5_S4_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #13
  %78 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_108ElemSortEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #13
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !471 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !323
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !471 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !471 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKPN11xalanc_1_108ElemSortEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %1, ptr noundef %2) #13
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !471 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6, !prof !472

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #13
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_8ElemSortEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 !prof !462 {
  %4 = load ptr, ptr %1, align 8, !tbaa !314
  store ptr %4, ptr %0, align 8, !tbaa !314
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !471 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !321
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !334 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !320
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !321
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !337

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %11 = load ptr, ptr %0, align 8, !tbaa !319
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_8ElemSortEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #13
  %13 = load i64, ptr %4, align 8, !tbaa !320
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !320
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %21 = load ptr, ptr %0, align 8, !tbaa !319
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKPN11xalanc_1_108ElemSortEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !360 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_108ElemSortEET_S5_(ptr noundef %0) #13
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_108ElemSortEET_S5_(ptr noundef %1) #13
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKPN11xalanc_1_108ElemSortEPS2_ET1_T0_S7_S6_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_108ElemSortES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !360 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_108ElemSortEET_S4_(ptr noundef %0) #13
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_108ElemSortEET_S4_(ptr noundef %1) #13
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_108ElemSortES3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKPN11xalanc_1_108ElemSortEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !471 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !314
  call void @_ZSt19__iterator_categoryIPKPN11xalanc_1_108ElemSortEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  %4 = call noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_108ElemSortEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #13
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_108ElemSortEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat !prof !471 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKPN11xalanc_1_108ElemSortEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat !prof !471 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKPN11xalanc_1_108ElemSortEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !360 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !314
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_108ElemSortEET_S5_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_108ElemSortEET_S5_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_108ElemSortEET_S4_(ptr noundef %2) #14
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_108ElemSortEPS2_ET1_T0_S7_S6_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_108ElemSortEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_108ElemSortEET_S5_(ptr noundef %0) local_unnamed_addr #3 comdat !prof !360 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_108ElemSortEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #3 comdat !prof !360 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_108ElemSortEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !360 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_108ElemSortEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_108ElemSortEET_S5_(ptr noundef %0) local_unnamed_addr #3 comdat !prof !360 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_108ElemSortEET_S4_(ptr noundef %0) local_unnamed_addr #3 comdat !prof !360 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_108ElemSortEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !360 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_108ElemSortEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_108ElemSortEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !360 {
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
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_108ElemSortES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !360 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !314
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_108ElemSortEET_S4_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_108ElemSortEET_S4_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_108ElemSortEET_S4_(ptr noundef %2) #14
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_108ElemSortES3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_108ElemSortEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_108ElemSortEET_S4_(ptr noundef %0) local_unnamed_addr #3 comdat !prof !360 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_108ElemSortES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !360 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_108ElemSortES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_108ElemSortES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !360 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_108ElemSortEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_108ElemSortEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !360 {
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
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !471 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !323
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !320
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !365 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !480
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5, !prof !406

5:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #13
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !481 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !365 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %5 = load i64, ptr %3, align 8, !tbaa !480
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !prof !482, !llvm.loop !483

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !385 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !480
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !480
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !484
  %7 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyERS1_(ptr noundef nonnull align 8 dereferenceable(40) %7) #13
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyERS1_(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !385 {
  tail call void @_ZN11xalanc_1_1011NodeSortKeyD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !485 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.12", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !486
  call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #13
  call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !485 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.12", align 8
  store ptr %2, ptr %0, align 8, !tbaa !486
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !480
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !487

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #13
  call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #13
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #13
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !488

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #13
  store ptr %24, ptr %8, align 8, !tbaa !484
  store i64 %3, ptr %7, align 8, !tbaa !377
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 !prof !485 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %3 = load ptr, ptr %0, align 8, !tbaa !486
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !484
  %7 = load ptr, ptr %1, align 8, !tbaa !486
  store ptr %7, ptr %0, align 8, !tbaa !486
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !470
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !484
  store ptr %11, ptr %5, align 8, !tbaa !484
  store ptr %3, ptr %1, align 8, !tbaa !486
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !470
  store <2 x i64> %9, ptr %4, align 8, !tbaa !470
  store <2 x i64> %12, ptr %8, align 8, !tbaa !470
  store ptr %6, ptr %10, align 8, !tbaa !484
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !489 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !377
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %11, label %5, !prof !490

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
          to label %8 unwind label %12

8:                                                ; preds = %5
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyEPS1_S5_(ptr noundef %6, ptr noundef %7) #13
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !484
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10deallocateEPS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %10) #13
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
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 !prof !360 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 !prof !491 {
  store ptr %1, ptr %0, align 8, !tbaa !486
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !480
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !377
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !492

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #13
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !484
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !360 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.12", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE14local_distanceEPKS1_S6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #13
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #13
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !486
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_11NodeSortKeyEE9constructEPS1_RKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #13
  %23 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !480
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !480
  %26 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !llvm.loop !493

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %32 = load ptr, ptr %0, align 8, !tbaa !486
  call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #13
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #13
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #13
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #13
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE14local_distanceEPKS1_S6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #13
  %50 = icmp ugt i64 %49, %6
  br i1 %50, label %66, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %2, i64 %49
  %53 = icmp eq ptr %52, %3
  br i1 %53, label %54, label %56

54:                                               ; preds = %56, %51
  %55 = icmp eq ptr %48, %1
  br i1 %55, label %64, label %60

56:                                               ; preds = %51, %56
  %57 = phi ptr [ %58, %56 ], [ %52, %51 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %57) #13
  %58 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !llvm.loop !494

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %61) #13
  %62 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !llvm.loop !495

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKN11xalanc_1_1011NodeSortKeyEPS1_ET0_T_S6_S5_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #13
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %72) #13
  %73 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !496

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPN11xalanc_1_1011NodeSortKeyES2_ET0_T_S4_S3_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #13
  %78 = tail call noundef ptr @_ZSt4copyIPKN11xalanc_1_1011NodeSortKeyEPS1_ET0_T_S6_S5_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #13
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !485 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !484
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !360 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !484
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !360 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !485 {
  %3 = mul i64 %1, 40
  %4 = load ptr, ptr %0, align 8, !tbaa !486
  %5 = load ptr, ptr %4, align 8, !tbaa !281
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #13
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE14local_distanceEPKS1_S6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !360 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKN11xalanc_1_1011NodeSortKeyEENSt15iterator_traitsIT_E15difference_typeES5_S5_(ptr noundef %1, ptr noundef %2) #13
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !497 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !480
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !485 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !360 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #13
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_11NodeSortKeyEE9constructEPS1_RKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 !prof !385 {
  tail call void @_ZN11xalanc_1_1011NodeSortKeyC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !360 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !377
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !385 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.12", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !480
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !377
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !367

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %11 = load ptr, ptr %0, align 8, !tbaa !486
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_11NodeSortKeyEE9constructEPS1_RKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #13
  %13 = load i64, ptr %4, align 8, !tbaa !480
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !480
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %21 = load ptr, ptr %0, align 8, !tbaa !486
  call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(40) %1) #13
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKN11xalanc_1_1011NodeSortKeyEPS1_ET0_T_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !360 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKN11xalanc_1_1011NodeSortKeyEET_S4_(ptr noundef %0) #13
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKN11xalanc_1_1011NodeSortKeyEET_S4_(ptr noundef %1) #13
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKN11xalanc_1_1011NodeSortKeyEPS1_ET1_T0_S6_S5_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPN11xalanc_1_1011NodeSortKeyES2_ET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !360 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPN11xalanc_1_1011NodeSortKeyEET_S3_(ptr noundef %0) #13
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPN11xalanc_1_1011NodeSortKeyEET_S3_(ptr noundef %1) #13
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPN11xalanc_1_1011NodeSortKeyES2_ET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKN11xalanc_1_1011NodeSortKeyEENSt15iterator_traitsIT_E15difference_typeES5_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !360 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !314
  call void @_ZSt19__iterator_categoryIPKN11xalanc_1_1011NodeSortKeyEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  %4 = call noundef i64 @_ZSt10__distanceIPKN11xalanc_1_1011NodeSortKeyEENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #13
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKN11xalanc_1_1011NodeSortKeyEENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat !prof !360 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = sdiv exact i64 %5, 40
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKN11xalanc_1_1011NodeSortKeyEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat !prof !360 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !498 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !484
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !480
  %6 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1011NodeSortKeyC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKN11xalanc_1_1011NodeSortKeyEPS1_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !360 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !314
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKN11xalanc_1_1011NodeSortKeyEET_S4_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKN11xalanc_1_1011NodeSortKeyEET_S4_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_1011NodeSortKeyEET_S3_(ptr noundef %2) #14
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKN11xalanc_1_1011NodeSortKeyEPS1_ET1_T0_S6_S5_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
  %9 = call noundef ptr @_ZSt12__niter_wrapIPN11xalanc_1_1011NodeSortKeyEET_RKS3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKN11xalanc_1_1011NodeSortKeyEET_S4_(ptr noundef %0) local_unnamed_addr #3 comdat !prof !360 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPN11xalanc_1_1011NodeSortKeyEET_RKS3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #3 comdat !prof !360 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKN11xalanc_1_1011NodeSortKeyEPS1_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !360 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKN11xalanc_1_1011NodeSortKeyEPS1_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKN11xalanc_1_1011NodeSortKeyEET_S4_(ptr noundef %0) local_unnamed_addr #3 comdat !prof !360 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_1011NodeSortKeyEET_S3_(ptr noundef %0) local_unnamed_addr #3 comdat !prof !360 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKN11xalanc_1_1011NodeSortKeyEPS1_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !360 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1011NodeSortKeyEPS4_EET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1011NodeSortKeyEPS4_EET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !360 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = udiv exact i64 %6, 40
  br label %12

10:                                               ; preds = %12, %3
  %11 = phi ptr [ %2, %3 ], [ %18, %12 ]
  ret ptr %11

12:                                               ; preds = %8, %12
  %13 = phi i64 [ %19, %12 ], [ %9, %8 ]
  %14 = phi ptr [ %18, %12 ], [ %2, %8 ]
  %15 = phi ptr [ %17, %12 ], [ %0, %8 ]
  %16 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeSortKeyaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(40) %15) #13
  %17 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %15, i64 1
  %18 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %14, i64 1
  %19 = add nsw i64 %13, -1
  %20 = icmp ugt i64 %13, 1
  br i1 %20, label %12, label %10, !llvm.loop !499
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeSortKeyaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPN11xalanc_1_1011NodeSortKeyES2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !360 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !314
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_1011NodeSortKeyEET_S3_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_1011NodeSortKeyEET_S3_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_1011NodeSortKeyEET_S3_(ptr noundef %2) #14
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPN11xalanc_1_1011NodeSortKeyES2_ET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
  %9 = call noundef ptr @_ZSt12__niter_wrapIPN11xalanc_1_1011NodeSortKeyEET_RKS3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPN11xalanc_1_1011NodeSortKeyEET_S3_(ptr noundef %0) local_unnamed_addr #3 comdat !prof !360 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPN11xalanc_1_1011NodeSortKeyES2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !360 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPN11xalanc_1_1011NodeSortKeyES2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPN11xalanc_1_1011NodeSortKeyES2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !360 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1011NodeSortKeyES5_EET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1011NodeSortKeyES5_EET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !360 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = udiv exact i64 %6, 40
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ %17, %10 ], [ %9, %8 ]
  %12 = phi ptr [ %15, %10 ], [ %2, %8 ]
  %13 = phi ptr [ %14, %10 ], [ %1, %8 ]
  %14 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %13, i64 -1
  %15 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %12, i64 -1
  %16 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeSortKeyaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull align 8 dereferenceable(40) %14) #13
  %17 = add nsw i64 %11, -1
  %18 = icmp ugt i64 %11, 1
  br i1 %18, label %10, label %19, !llvm.loop !500

19:                                               ; preds = %10, %3
  %20 = phi ptr [ %2, %3 ], [ %15, %10 ]
  ret ptr %20
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !360 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !484
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !480
  %6 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyEPS1_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !485 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !492

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyERS1_(ptr noundef nonnull align 8 dereferenceable(40) %5) #13
  %6 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !501, !llvm.loop !502

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10deallocateEPS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !485 {
  %3 = load ptr, ptr %0, align 8, !tbaa !486
  %4 = load ptr, ptr %3, align 8, !tbaa !281
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!279}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278}
!35 = !{ptr @_ZN11xalanc_1_1011ElemForEachC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, i64 12}
!36 = !{ptr @_ZN11xalanc_1_1011ElemForEachC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1024XPathConstructionContext16getMemoryManagerEv, i64 12}
!37 = !{ptr @_ZN11xalanc_1_1011ElemForEachC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 12}
!38 = !{ptr @_ZN11xalanc_1_1011ElemForEachC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE, i64 12}
!39 = !{ptr @_ZN11xalanc_1_1011ElemForEachC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 50}
!42 = !{ptr @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt, i64 1899}
!43 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!44 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!45 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 64}
!47 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 15}
!48 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 15}
!49 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_, i64 15}
!50 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_, i64 15}
!51 = !{ptr @_ZN11xalanc_1_1011ElemForEachC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, i64 32}
!52 = !{ptr @_ZN11xalanc_1_1011ElemForEachC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, ptr @_ZN11xalanc_1_1024XPathConstructionContext16getMemoryManagerEv, i64 32}
!53 = !{ptr @_ZN11xalanc_1_1011ElemForEachC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 32}
!54 = !{ptr @_ZN11xalanc_1_1011ElemForEachD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv, i64 44}
!55 = !{ptr @_ZN11xalanc_1_1011ElemForEachD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 44}
!56 = !{ptr @_ZN11xalanc_1_1011ElemForEachD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 44}
!57 = !{ptr @_ZN11xalanc_1_1011ElemForEachD2Ev, ptr @_ZN11xalanc_1_1013DeleteFunctorINS_8ElemSortEEC2ERN11xercesc_2_713MemoryManagerE, i64 44}
!58 = !{ptr @_ZN11xalanc_1_1011ElemForEachD2Ev, ptr @_ZSt8for_eachIPPN11xalanc_1_108ElemSortENS0_13DeleteFunctorIS1_EEET0_T_S7_S6_, i64 44}
!59 = !{ptr @_ZN11xalanc_1_1011ElemForEachD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 44}
!60 = !{ptr @_ZN11xalanc_1_1011ElemForEachD2Ev, ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev, i64 44}
!61 = !{ptr @_ZSt8for_eachIPPN11xalanc_1_108ElemSortENS0_13DeleteFunctorIS1_EEET0_T_S7_S6_, ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_8ElemSortEEclEPKS1_, i64 15}
!62 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 64}
!63 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 64}
!64 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 64}
!65 = !{ptr @_ZN11xalanc_1_1011ElemForEach18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1012XalanLocator13getLineNumberEPKN11xercesc_2_77LocatorE, i64 14}
!66 = !{ptr @_ZN11xalanc_1_1011ElemForEach18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1012XalanLocator15getColumnNumberEPKN11xercesc_2_77LocatorE, i64 14}
!67 = !{ptr @_ZN11xalanc_1_1011ElemForEach18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, i64 14}
!68 = !{ptr @_ZN11xalanc_1_1011ElemForEach18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm, i64 14}
!69 = !{ptr @_ZN11xalanc_1_1011ElemForEach18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1024XPathConstructionContext16getMemoryManagerEv, i64 14}
!70 = !{ptr @_ZN11xalanc_1_1011ElemForEach18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_108ElemSort6createERN11xercesc_2_713MemoryManagerERNS_29StylesheetConstructionContextERNS_10StylesheetERKNS1_13AttributeListEii, i64 14}
!71 = !{ptr @_ZN11xalanc_1_1011ElemForEach18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, i64 14}
!72 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 28}
!73 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 13}
!74 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 62}
!75 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 28}
!76 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 14}
!77 = !{ptr @_ZN11xalanc_1_1011ElemForEach16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, i64 42}
!78 = !{ptr @_ZN11xalanc_1_1011ElemForEach16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, i64 42}
!79 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement11hasChildrenEv, i64 29851}
!80 = !{ptr @_ZNK11xalanc_1_1011ElemForEach25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17hasDirectTemplateEv, i64 423190}
!81 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement17hasDirectTemplateEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE, i64 229314010}
!82 = !{ptr @_ZNK11xalanc_1_1011ElemForEach10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement11hasChildrenEv, i64 29851}
!83 = !{ptr @_ZNK11xalanc_1_1011ElemForEach31createSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE, i64 339573}
!84 = !{ptr @_ZNK11xalanc_1_1011ElemForEach31createSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_18MutableNodeRefListE, i64 339573}
!85 = !{ptr @_ZNK11xalanc_1_1011ElemForEach31createSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_, i64 339573}
!86 = !{ptr @_ZNK11xalanc_1_1011ElemForEach31createSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, i64 679145}
!87 = !{ptr @_ZNK11xalanc_1_1011ElemForEach31createSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1010XObjectPtr4nullEv, i64 339572}
!88 = !{ptr @_ZNK11xalanc_1_1011ElemForEach31createSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1010XObjectPtrptEv, i64 1}
!89 = !{ptr @_ZNK11xalanc_1_1011ElemForEach31createSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv, i64 1}
!90 = !{ptr @_ZNK11xalanc_1_1011ElemForEach31createSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj, i64 1}
!91 = !{ptr @_ZNK11xalanc_1_1011ElemForEach31createSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathERKNS_15NodeRefListBaseE, i64 1}
!92 = !{ptr @_ZNK11xalanc_1_1011ElemForEach31createSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1014SelectionEventD1Ev, i64 1}
!93 = !{ptr @_ZNK11xalanc_1_1011ElemForEach31createSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 1}
!94 = !{ptr @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 292432932}
!95 = !{ptr @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreC2ERS0_PKNS_14PrefixResolverE, i64 339573}
!96 = !{ptr @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath24getInitialOpCodePositionEv, i64 339573}
!97 = !{ptr @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, i64 339572}
!98 = !{ptr @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev, i64 339573}
!99 = !{ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 44800926}
!100 = !{ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 44800926}
!101 = !{ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 1009440147}
!102 = !{ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, ptr @__clang_call_terminate, i64 963}
!103 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!104 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1010NodeSorter11getSortKeysEv, i64 6851}
!105 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1020CollectionClearGuardINS_11XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS2_EEEEEC2ERS5_, i64 6851}
!106 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE7reserveEm, i64 6851}
!107 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_, i64 13702}
!108 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv, i64 13702}
!109 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1018MutableNodeRefListaSERKNS_15NodeRefListBaseE, i64 6851}
!110 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEixEm, i64 20520}
!111 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_108ElemSort10getLangAVTEv, i64 20520}
!112 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE, i64 41040}
!113 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_108ElemSort14getDataTypeAVTEv, i64 20520}
!114 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_107isEmptyERKNS_14XalanDOMStringE, i64 61560}
!115 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_, i64 82064}
!116 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv, i64 1}
!117 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1017XalanQNameByValueC1ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerEPKNS_14PrefixResolverEPKNS4_7LocatorE, i64 1}
!118 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_1017XalanQNameByValue12getNamespaceEv, i64 1}
!119 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, i64 1}
!120 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement4warnERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesEPKN11xercesc_2_77LocatorE, i64 1}
!121 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1017XalanQNameByValueD1Ev, i64 1}
!122 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE, i64 61560}
!123 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_108ElemSort11getOrderAVTEv, i64 20520}
!124 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement5errorERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesEPKN11xercesc_2_77LocatorE, i64 1}
!125 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_108ElemSort15getCaseOrderAVTEv, i64 20520}
!126 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_108ElemSort16getSelectPatternEv, i64 20520}
!127 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1011NodeSortKeyC1ERNS_16ExecutionContextEPKNS_5XPathEbbNS_22XalanCollationServices10eCaseOrderERKNS_14XalanDOMStringERKNS_14PrefixResolverE, i64 20520}
!128 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE9push_backERKS1_, i64 20520}
!129 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1011NodeSortKeyD1Ev, i64 20520}
!130 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1021XPathExecutionContext25ContextNodeListPushAndPopC2ERS0_RKNS_15NodeRefListBaseE, i64 6851}
!131 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1010NodeSorter4sortERNS_26StylesheetExecutionContextERNS_18MutableNodeRefListE, i64 6851}
!132 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1021XPathExecutionContext25ContextNodeListPushAndPopD2Ev, i64 6851}
!133 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev, i64 13702}
!134 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1020CollectionClearGuardINS_11XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS2_EEEEED2Ev, i64 6851}
!135 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE7reserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 13702}
!136 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE7reserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm, i64 3}
!137 = !{ptr @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj, i64 197104}
!138 = !{ptr @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_103AVT10doEvaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE, i64 1}
!139 = !{ptr @_ZN11xalanc_1_107isEmptyERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString5emptyEv, i64 3312604}
!140 = !{ptr @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_, ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_, i64 4704705}
!141 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 230527004}
!142 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, i64 230527004}
!143 = !{ptr @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, i64 48076702}
!144 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE9push_backERKS1_, ptr @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 41046}
!145 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE9push_backERKS1_, ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, i64 20523}
!146 = !{ptr @_ZN11xalanc_1_1021XPathExecutionContext25ContextNodeListPushAndPopD2Ev, ptr @__clang_call_terminate, i64 1}
!147 = !{ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev, ptr @__clang_call_terminate, i64 64}
!148 = !{ptr @_ZN11xalanc_1_1020CollectionClearGuardINS_11XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS2_EEEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE5clearEv, i64 6850}
!149 = !{ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, i64 1899}
!150 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 1899}
!151 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, i64 1899}
!152 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 807446}
!153 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 403723}
!154 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!155 = !{ptr @_ZNK11xalanc_1_105XPath24getInitialOpCodePositionEv, ptr @_ZNK11xalanc_1_1015XPathExpression24getInitialOpCodePositionEv, i64 68379708}
!156 = !{ptr @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev, ptr @__clang_call_terminate, i64 65}
!157 = !{ptr @_ZNK11xalanc_1_1015XPathExpression24getInitialOpCodePositionEv, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv, i64 68609120}
!158 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv, i64 68609147}
!159 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!160 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!161 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!162 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!163 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!164 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!165 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!166 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!167 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!168 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!169 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 89933972}
!170 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 44966986}
!171 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 44966986}
!172 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5emptyEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 6299974}
!173 = !{ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_, i64 555646850}
!174 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 1414337980}
!175 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 96538440}
!176 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 48269220}
!177 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 48269220}
!178 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, i64 48269220}
!179 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 241572884}
!180 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 28158502}
!181 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_, i64 28158502}
!182 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, i64 28158502}
!183 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm, i64 28158502}
!184 = !{ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_, ptr @_ZSt12__miter_baseIPtET_S1_, i64 56317002}
!185 = !{ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_, ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, i64 28158501}
!186 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, i64 1279868488}
!187 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 185895030}
!188 = !{ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt12__niter_baseIPtET_S1_, i64 84475503}
!189 = !{ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_, i64 28158501}
!190 = !{ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_, i64 28158501}
!191 = !{ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_, i64 28158501}
!192 = !{ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_, i64 28158501}
!193 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 2689195952}
!194 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 1344597976}
!195 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 185895030}
!196 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 185895030}
!197 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_, i64 22}
!198 = !{ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_8ElemSortEEclEPKS1_, ptr @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_8ElemSortEEENS_19XalanDestroyFunctorIT_EEPKS3_, i64 14}
!199 = !{ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_8ElemSortEEclEPKS1_, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_8ElemSortEEclEPKS1_RN11xercesc_2_713MemoryManagerE, i64 14}
!200 = !{ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_8ElemSortEEclEPKS1_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_8ElemSortEEclEPS1_RN11xercesc_2_713MemoryManagerE, i64 14}
!201 = !{ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_8ElemSortEEclEPS1_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_8ElemSortEEclERS1_, i64 13}
!202 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 28}
!203 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 14}
!204 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 14}
!205 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 14}
!206 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm, i64 6}
!207 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 6}
!208 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 6}
!209 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 6}
!210 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 6}
!211 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, i64 6}
!212 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 6}
!213 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 6}
!214 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm, i64 7}
!215 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 14}
!216 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 40}
!217 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 11}
!218 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_, i64 6}
!219 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, i64 5}
!220 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 5}
!221 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, i64 5}
!222 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_8ElemSortEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE, i64 7}
!223 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, i64 1}
!224 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 9}
!225 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 6}
!226 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 6}
!227 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 6}
!228 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_, ptr @_ZSt8distanceIPKPN11xalanc_1_108ElemSortEENSt15iterator_traitsIT_E15difference_typeES6_S6_, i64 6}
!229 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, i64 6}
!230 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 1}
!231 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 6}
!232 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 6}
!233 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 28}
!234 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 13}
!235 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_8ElemSortEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE, i64 13}
!236 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 1}
!237 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 1}
!238 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 1}
!239 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!240 = !{ptr @_ZSt8distanceIPKPN11xalanc_1_108ElemSortEENSt15iterator_traitsIT_E15difference_typeES6_S6_, ptr @_ZSt19__iterator_categoryIPKPN11xalanc_1_108ElemSortEENSt15iterator_traitsIT_E17iterator_categoryERKS6_, i64 6}
!241 = !{ptr @_ZSt8distanceIPKPN11xalanc_1_108ElemSortEENSt15iterator_traitsIT_E15difference_typeES6_S6_, ptr @_ZSt10__distanceIPKPN11xalanc_1_108ElemSortEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag, i64 6}
!242 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE5clearEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 13702}
!243 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE12shrinkToSizeEm, i64 6850}
!244 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE12shrinkToSizeEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE8pop_backEv, i64 20522}
!245 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 41046}
!246 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyERS1_, i64 20523}
!247 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyERS1_, ptr @_ZN11xalanc_1_1011NodeSortKeyD1Ev, i64 20523}
!248 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 4}
!249 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, i64 2}
!250 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_, i64 2}
!251 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, i64 2}
!252 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE9local_maxEmm, i64 1}
!253 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!254 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv, i64 1}
!255 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv, i64 1}
!256 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv, i64 1}
!257 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE8allocateEm, i64 1}
!258 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 2}
!259 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_, ptr @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 4}
!260 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 3}
!261 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv, i64 2}
!262 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv, i64 2}
!263 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyEPS1_S5_, i64 2}
!264 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10deallocateEPS1_, i64 2}
!265 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 1}
!266 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 2}
!267 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 317101}
!268 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 2}
!269 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv, i64 2}
!270 = !{ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_11NodeSortKeyEE9constructEPS1_RKS1_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011NodeSortKeyC1ERKS0_, i64 20523}
!271 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZNK11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 41046}
!272 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv, i64 20522}
!273 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_11NodeSortKeyEE9constructEPS1_RKS1_RN11xercesc_2_713MemoryManagerE, i64 20522}
!274 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, i64 1}
!275 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, i64 1}
!276 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_, i64 1}
!277 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, i64 1}
!278 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyEPS1_S5_, ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyERS1_, i64 1}
!279 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!280 = !{!"function_entry_count", i64 12}
!281 = !{!282, !282, i64 0}
!282 = !{!"vtable pointer", !283, i64 0}
!283 = !{!"Simple C++ TBAA"}
!284 = !{!285, !288, i64 328}
!285 = !{!"_ZTSN11xalanc_1_1011ElemForEachE", !286, i64 0, !288, i64 328, !306, i64 336, !292, i64 368}
!286 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !287, i64 0, !288, i64 8, !290, i64 16, !301, i64 248, !288, i64 256, !288, i64 264, !288, i64 272, !289, i64 280, !302, i64 288, !305, i64 320}
!287 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!288 = !{!"any pointer", !289, i64 0}
!289 = !{!"omnipotent char", !283, i64 0}
!290 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !291, i64 0, !293, i64 32, !294, i64 64, !295, i64 96}
!291 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !288, i64 0, !292, i64 8, !292, i64 16, !288, i64 24}
!292 = !{!"long", !289, i64 0}
!293 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !288, i64 0, !292, i64 8, !292, i64 16, !288, i64 24}
!294 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !288, i64 0, !292, i64 8, !292, i64 16, !288, i64 24}
!295 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !296, i64 0, !297, i64 1, !288, i64 8, !298, i64 16, !292, i64 24, !292, i64 32, !299, i64 40, !299, i64 64, !300, i64 88, !292, i64 120, !292, i64 128}
!296 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!297 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!298 = !{!"float", !289, i64 0}
!299 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !288, i64 0, !288, i64 8, !288, i64 16}
!300 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !288, i64 0, !292, i64 8, !292, i64 16, !288, i64 24}
!301 = !{!"int", !289, i64 0}
!302 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !303, i64 0, !292, i64 8, !292, i64 16, !288, i64 24}
!303 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !304, i64 0}
!304 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!305 = !{!"short", !289, i64 0}
!306 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEE", !288, i64 0, !292, i64 8, !292, i64 16, !288, i64 24}
!307 = !{!285, !292, i64 368}
!308 = !{!"branch_weights", i32 1, i32 207}
!309 = !{!"branch_weights", i32 1, i32 13}
!310 = !{!"branch_weights", i32 13, i32 1}
!311 = !{!"branch_weights", i32 207, i32 1}
!312 = distinct !{!312, !313}
!313 = !{!"llvm.loop.mustprogress"}
!314 = !{!288, !288, i64 0}
!315 = !{!"function_entry_count", i64 2273}
!316 = !{!317, !288, i64 8}
!317 = !{!"_ZTSN11xalanc_1_1024XPathConstructionContextE", !288, i64 8}
!318 = !{!"function_entry_count", i64 50}
!319 = !{!306, !288, i64 0}
!320 = !{!306, !292, i64 8}
!321 = !{!306, !292, i64 16}
!322 = !{!"branch_weights", i32 51, i32 1}
!323 = !{!306, !288, i64 24}
!324 = !{!"function_entry_count", i64 1899}
!325 = !{!"function_entry_count", i64 967143541}
!326 = !{!"branch_weights", i32 403628487, i32 563515056}
!327 = !{!"function_entry_count", i64 64}
!328 = !{!"branch_weights", i32 51, i32 15}
!329 = !{!"function_entry_count", i64 32}
!330 = !{!"function_entry_count", i64 44}
!331 = !{!"branch_weights", i32 30, i32 15}
!332 = !{!"branch_weights", i32 15, i32 0}
!333 = distinct !{!333, !313}
!334 = !{!"function_entry_count", i64 14}
!335 = !{!"function_entry_count", i64 835}
!336 = !{!"branch_weights", i32 7, i32 830}
!337 = !{!"branch_weights", i32 15, i32 1}
!338 = !{!"function_entry_count", i64 62}
!339 = !{!"function_entry_count", i64 42}
!340 = !{!"function_entry_count", i64 29851}
!341 = !{!"branch_weights", i32 29852, i32 1}
!342 = !{!"branch_weights", i32 5665, i32 24188}
!343 = !{!"function_entry_count", i64 60135}
!344 = !{!289, !289, i64 0}
!345 = !{!"function_entry_count", i64 423190}
!346 = !{!"branch_weights", i32 1, i32 423191}
!347 = !{!"branch_weights", i32 24188, i32 136471}
!348 = !{!"function_entry_count", i64 229314010}
!349 = !{!"function_entry_count", i64 339573}
!350 = !{!"branch_weights", i32 339574, i32 1}
!351 = !{!"branch_weights", i32 322683, i32 16892}
!352 = !{!"branch_weights", i32 6852, i32 10041}
!353 = !{!"function_entry_count", i64 292432932}
!354 = !{!355, !288, i64 0}
!355 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !288, i64 0}
!356 = !{!"function_entry_count", i64 45140500}
!357 = !{!"branch_weights", i32 339574, i32 44800928}
!358 = !{!"function_entry_count", i64 1009440147}
!359 = !{!"function_entry_count", i64 381195133}
!360 = !{!"function_entry_count", i64 0}
!361 = !{!"function_entry_count", i64 280295}
!362 = !{!363, !288, i64 8}
!363 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !288, i64 8}
!364 = !{!"function_entry_count", i64 43398227}
!365 = !{!"function_entry_count", i64 6851}
!366 = !{!"branch_weights", i32 1, i32 6851}
!367 = !{!"branch_weights", i32 20524, i32 1}
!368 = !{!"branch_weights", i32 1, i32 20524}
!369 = !{!"branch_weights", i32 2, i32 20523}
!370 = !{!"branch_weights", i32 20523, i32 1}
!371 = !{!"branch_weights", i32 11, i32 20514}
!372 = !{!"branch_weights", i32 20514, i32 1}
!373 = !{!"branch_weights", i32 13673, i32 6851}
!374 = distinct !{!374, !313}
!375 = !{!376, !288, i64 0}
!376 = !{!"_ZTSN11xalanc_1_1020CollectionClearGuardINS_11XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS2_EEEEEE", !288, i64 0}
!377 = !{!378, !292, i64 16}
!378 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEEE", !288, i64 0, !292, i64 8, !292, i64 16, !288, i64 24}
!379 = !{!"branch_weights", i32 3, i32 6850}
!380 = !{!"function_entry_count", i64 67594463}
!381 = !{!382, !288, i64 0}
!382 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringE", !288, i64 0, !288, i64 8}
!383 = !{!382, !288, i64 8}
!384 = !{!"function_entry_count", i64 201578993}
!385 = !{!"function_entry_count", i64 20523}
!386 = !{!387, !288, i64 336}
!387 = !{!"_ZTSN11xalanc_1_108ElemSortE", !286, i64 0, !288, i64 328, !288, i64 336, !288, i64 344, !288, i64 352, !288, i64 360}
!388 = !{!"function_entry_count", i64 197105}
!389 = !{!390, !288, i64 24}
!390 = !{!"_ZTSN11xalanc_1_103AVTE", !288, i64 8, !292, i64 16, !288, i64 24, !301, i64 32, !288, i64 40}
!391 = !{!"branch_weights", i32 1, i32 197106}
!392 = !{!390, !301, i64 32}
!393 = !{!387, !288, i64 344}
!394 = !{!"function_entry_count", i64 3312604}
!395 = !{!"function_entry_count", i64 4704705}
!396 = !{!"function_entry_count", i64 230527004}
!397 = !{!"function_entry_count", i64 48076702}
!398 = !{!387, !288, i64 352}
!399 = !{!387, !288, i64 360}
!400 = !{!387, !288, i64 328}
!401 = !{!"function_entry_count", i64 1500242}
!402 = !{!403, !288, i64 0}
!403 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext25ContextNodeListPushAndPopE", !288, i64 0}
!404 = !{!"function_entry_count", i64 134708288}
!405 = !{!"branch_weights", i32 67113826, i32 67594464}
!406 = !{!"branch_weights", i32 1, i32 6852}
!407 = !{!"function_entry_count", i64 403723}
!408 = !{!"function_entry_count", i64 3070433834}
!409 = !{!"function_entry_count", i64 1083116306}
!410 = !{!411, !292, i64 8}
!411 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !288, i64 0, !292, i64 8, !292, i64 16, !288, i64 24}
!412 = !{!"function_entry_count", i64 565220908}
!413 = !{!411, !288, i64 24}
!414 = !{!"function_entry_count", i64 6521798493}
!415 = !{!"function_entry_count", i64 417098446}
!416 = !{!286, !305, i64 320}
!417 = !{!"function_entry_count", i64 68379708}
!418 = !{!419, !288, i64 8}
!419 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreE", !288, i64 0, !288, i64 8}
!420 = !{!419, !288, i64 0}
!421 = !{!"function_entry_count", i64 68609096}
!422 = !{!"function_entry_count", i64 68609120}
!423 = !{!"function_entry_count", i64 68609147}
!424 = !{!425, !288, i64 24}
!425 = !{!"_ZTSN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE", !288, i64 0, !292, i64 8, !292, i64 16, !288, i64 24}
!426 = !{!"function_entry_count", i64 68633739}
!427 = !{!"function_entry_count", i64 128698679}
!428 = !{!411, !292, i64 16}
!429 = !{!"branch_weights", i32 43398290, i32 85300391}
!430 = !{!"function_entry_count", i64 85300390}
!431 = !{!"branch_weights", i32 1, i32 12185770}
!432 = !{!"branch_weights", i32 12185770, i32 -193930396}
!433 = distinct !{!433, !313}
!434 = !{!"function_entry_count", i64 227375739}
!435 = !{!"function_entry_count", i64 568333389}
!436 = !{!411, !288, i64 0}
!437 = !{!"function_entry_count", i64 30137156660}
!438 = !{!"function_entry_count", i64 825654971}
!439 = !{!"function_entry_count", i64 44966986}
!440 = !{!"function_entry_count", i64 6299974}
!441 = !{!442, !301, i64 32}
!442 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !411, i64 0, !301, i64 32}
!443 = !{!"function_entry_count", i64 555646850}
!444 = !{!"function_entry_count", i64 1414337980}
!445 = !{!"function_entry_count", i64 48269220}
!446 = !{!"function_entry_count", i64 120786442}
!447 = !{!"branch_weights", i32 92627942, i32 28158502}
!448 = !{!"function_entry_count", i64 28158501}
!449 = !{!"branch_weights", i32 1, i32 28158501}
!450 = !{!"branch_weights", i32 28158501, i32 1251710038}
!451 = distinct !{!451, !313}
!452 = !{!"function_entry_count", i64 185895030}
!453 = !{!"function_entry_count", i64 56317002}
!454 = !{!"function_entry_count", i64 30109074}
!455 = !{!"function_entry_count", i64 86426076}
!456 = !{!"branch_weights", i32 28199083, i32 1909993}
!457 = !{!"function_entry_count", i64 1344597976}
!458 = !{!"function_entry_count", i64 500}
!459 = !{!"branch_weights", i32 1, i32 239}
!460 = !{!"branch_weights", i32 239, i32 145}
!461 = distinct !{!461, !313}
!462 = !{!"function_entry_count", i64 23}
!463 = !{!"function_entry_count", i64 84}
!464 = !{!465, !288, i64 0}
!465 = !{!"_ZTSN11xalanc_1_1013DeleteFunctorINS_8ElemSortEEE", !288, i64 0}
!466 = !{!"branch_weights", i32 1, i32 15}
!467 = !{!"branch_weights", i32 9, i32 7}
!468 = !{!"branch_weights", i32 1, i32 9}
!469 = !{!"function_entry_count", i64 20}
!470 = !{!292, !292, i64 0}
!471 = !{!"function_entry_count", i64 6}
!472 = !{!"branch_weights", i32 1, i32 7}
!473 = !{!"branch_weights", i32 7, i32 1}
!474 = !{!"branch_weights", i32 1, i32 223}
!475 = !{!"branch_weights", i32 223, i32 97}
!476 = distinct !{!476, !313}
!477 = distinct !{!477, !313}
!478 = distinct !{!478, !313}
!479 = distinct !{!479, !313}
!480 = !{!378, !292, i64 8}
!481 = !{!"function_entry_count", i64 474512}
!482 = !{!"branch_weights", i32 13673, i32 6852}
!483 = distinct !{!483, !313}
!484 = !{!378, !288, i64 24}
!485 = !{!"function_entry_count", i64 2}
!486 = !{!378, !288, i64 0}
!487 = !{!"branch_weights", i32 3, i32 1}
!488 = !{!"branch_weights", i32 1, i32 3}
!489 = !{!"function_entry_count", i64 3}
!490 = !{!"branch_weights", i32 2, i32 3}
!491 = !{!"function_entry_count", i64 1}
!492 = !{!"branch_weights", i32 2, i32 1}
!493 = distinct !{!493, !313}
!494 = distinct !{!494, !313}
!495 = distinct !{!495, !313}
!496 = distinct !{!496, !313}
!497 = !{!"function_entry_count", i64 317101}
!498 = !{!"function_entry_count", i64 20525}
!499 = distinct !{!499, !313}
!500 = distinct !{!500, !313}
!501 = !{!"branch_weights", i32 1, i32 0}
!502 = distinct !{!502, !313}
