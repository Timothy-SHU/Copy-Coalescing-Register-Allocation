; ModuleID = 'XercesDocumentWrapper.cpp'
source_filename = "XercesDocumentWrapper.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XercesDocumentWrapper" = type { %"class.xalanc_1_10::XalanDocument", ptr, ptr, %"class.xalanc_1_10::XercesWrapperToXalanNodeMap", %"class.xalanc_1_10::XalanMemMgrAutoPtr", %"class.xalanc_1_10::XercesWrapperNavigatorAllocator", ptr, %"class.xalanc_1_10::XercesNodeListWrapper", %"class.xalanc_1_10::XalanVector.1", ptr, i8, i8, i8, %"class.xalanc_1_10::XercesElementWrapperAllocator", %"class.xalanc_1_10::XercesTextWrapperAllocator", %"class.xalanc_1_10::XercesAttrWrapperAllocator", %"class.xalanc_1_10::XalanMemMgrAutoPtr.8" }
%"class.xalanc_1_10::XalanDocument" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }
%"class.xalanc_1_10::XercesWrapperToXalanNodeMap" = type { %"class.xalanc_1_10::XalanMap" }
%"class.xalanc_1_10::XalanMap" = type { %"class.xalanc_1_10::XalanHasher", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanVector", i64, i64 }
%"class.xalanc_1_10::XalanHasher" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanDOMImplementation>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanDOMImplementation>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }
%"class.xalanc_1_10::XercesWrapperNavigatorAllocator" = type { %"class.xalanc_1_10::ArenaAllocator" }
%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i64, %"class.xalanc_1_10::XalanList.0" }
%"class.xalanc_1_10::XalanList.0" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XercesNodeListWrapper" = type { %"class.xalanc_1_10::XalanNodeList", ptr, ptr }
%"class.xalanc_1_10::XalanNodeList" = type { ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XercesElementWrapperAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.2" }
%"class.xalanc_1_10::ArenaAllocator.2" = type { ptr, i64, %"class.xalanc_1_10::XalanList.3" }
%"class.xalanc_1_10::XalanList.3" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XercesTextWrapperAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.4" }
%"class.xalanc_1_10::ArenaAllocator.4" = type { ptr, i64, %"class.xalanc_1_10::XalanList.5" }
%"class.xalanc_1_10::XalanList.5" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XercesAttrWrapperAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.6" }
%"class.xalanc_1_10::ArenaAllocator.6" = type { ptr, i64, %"class.xalanc_1_10::XalanList.7" }
%"class.xalanc_1_10::XalanList.7" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr.8" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanDOMStringPool>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanDOMStringPool>::MemMgrAutoPtrData" = type { %"struct.std::pair.9" }
%"struct.std::pair.9" = type { ptr, ptr }
%"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType" = type { ptr, ptr }
%"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker" = type <{ %"class.xalanc_1_10::XercesDOMWalker", ptr, i64, %"class.xalanc_1_10::XalanVector.18", %"class.xalanc_1_10::XalanVector.18", i8, [7 x i8] }>
%"class.xalanc_1_10::XercesDOMWalker" = type { ptr }
%"class.xalanc_1_10::XalanVector.18" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XercesWrapperNavigator" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%"class.xalanc_1_10::XalanMemMgrAutoPtr.13" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XercesDocumentWrapper, false>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XercesDocumentWrapper, false>::MemMgrAutoPtrData" = type { %"struct.std::pair.14" }
%"struct.std::pair.14" = type { ptr, ptr }
%"struct.xalanc_1_10::DeleteFunctor" = type { ptr }
%"class.xalanc_1_10::XercesAttrWrapper" = type { %"class.xalanc_1_10::XalanAttr", ptr, %"class.xalanc_1_10::XercesNodeListWrapper", ptr }
%"class.xalanc_1_10::XalanAttr" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XercesCDATASectionWrapper" = type { %"class.xalanc_1_10::XalanCDATASection", ptr, ptr }
%"class.xalanc_1_10::XalanCDATASection" = type { %"class.xalanc_1_10::XalanText" }
%"class.xalanc_1_10::XalanText" = type { %"class.xalanc_1_10::XalanCharacterData" }
%"class.xalanc_1_10::XalanCharacterData" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XercesCommentWrapper" = type { %"class.xalanc_1_10::XalanComment", ptr, ptr }
%"class.xalanc_1_10::XalanComment" = type { %"class.xalanc_1_10::XalanCharacterData" }
%"class.xalanc_1_10::XercesElementWrapper" = type { %"class.xalanc_1_10::XalanElement", %"class.xalanc_1_10::XalanNodeList", ptr, ptr, %"class.xalanc_1_10::XercesNamedNodeMapWrapper" }
%"class.xalanc_1_10::XalanElement" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XercesNamedNodeMapWrapper" = type { %"class.xalanc_1_10::XalanNamedNodeMap", ptr, ptr }
%"class.xalanc_1_10::XalanNamedNodeMap" = type { ptr }
%"class.xalanc_1_10::XercesEntityWrapper" = type { %"class.xalanc_1_10::XalanEntity", ptr, ptr, %"class.xalanc_1_10::XercesNodeListWrapper" }
%"class.xalanc_1_10::XalanEntity" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XercesEntityReferenceWrapper" = type { %"class.xalanc_1_10::XalanEntityReference", ptr, ptr, %"class.xalanc_1_10::XercesNodeListWrapper" }
%"class.xalanc_1_10::XalanEntityReference" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XercesNotationWrapper" = type { %"class.xalanc_1_10::XalanNotation", ptr, ptr }
%"class.xalanc_1_10::XalanNotation" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XercesProcessingInstructionWrapper" = type { %"class.xalanc_1_10::XalanProcessingInstruction", ptr, ptr }
%"class.xalanc_1_10::XalanProcessingInstruction" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XercesTextWrapper" = type { %"class.xalanc_1_10::XalanText", ptr, ptr }
%"class.xalanc_1_10::XercesDocumentTypeWrapper" = type { %"class.xalanc_1_10::XalanDocumentType", ptr, %"class.xalanc_1_10::XercesNamedNodeMapWrapper", %"class.xalanc_1_10::XercesNamedNodeMapWrapper", ptr }
%"class.xalanc_1_10::XalanDocumentType" = type { %"class.xalanc_1_10::XalanNode" }
%"struct.xalanc_1_10::XalanDestroyFunctor" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_equals_val" = type { ptr }
%"class.xalanc_1_10::XalanVector.17" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1022XercesWrapperNavigator8setIndexEm = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1022XalanDOMImplementationEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1018XalanDOMStringPoolEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EE17MemMgrAutoPtrData10deallocateEv = comdat any

$__clang_call_terminate = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDocumentWrapperELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDocumentWrapperELb0EE3getEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDocumentWrapperELb0EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDocumentWrapperELb0EED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDocumentWrapperELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1021XercesDocumentWrapperEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDocumentWrapperELb0EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDocumentWrapperELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDocumentWrapperELb0EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDocumentWrapperELb0EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZNK11xalanc_1_1017XercesAttrWrapper13getXercesNodeEv = comdat any

$_ZNK11xalanc_1_1025XercesCDATASectionWrapper13getXercesNodeEv = comdat any

$_ZNK11xalanc_1_1020XercesCommentWrapper13getXercesNodeEv = comdat any

$_ZNK11xalanc_1_1020XercesElementWrapper13getXercesNodeEv = comdat any

$_ZNK11xalanc_1_1019XercesEntityWrapper13getXercesNodeEv = comdat any

$_ZNK11xalanc_1_1028XercesEntityReferenceWrapper13getXercesNodeEv = comdat any

$_ZNK11xalanc_1_1021XercesNotationWrapper13getXercesNodeEv = comdat any

$_ZNK11xalanc_1_1034XercesProcessingInstructionWrapper13getXercesNodeEv = comdat any

$_ZNK11xalanc_1_1017XercesTextWrapper13getXercesNodeEv = comdat any

$_ZNK11xalanc_1_1025XercesDocumentTypeWrapper13getXercesNodeEv = comdat any

$_ZSt8for_eachIPPN11xalanc_1_109XalanNodeENS0_13DeleteFunctorIS1_EEET0_T_S7_S6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1013DeleteFunctorINS_9XalanNodeEEC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EEptEv = comdat any

$_ZNK11xalanc_1_1013DeleteFunctorINS_9XalanNodeEEclEPKS1_ = comdat any

$_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_9XalanNodeEEENS_19XalanDestroyFunctorIT_EEPKS3_ = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_9XalanNodeEEclEPKS1_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_9XalanNodeEEclEPS1_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_9XalanNodeEEclERS1_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv = comdat any

$_ZNK11xalanc_1_1021XercesDocumentWrapper16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_ = comdat any

$_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_9XalanNodeEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv = comdat any

$_ZSt4copyIPKPN11xalanc_1_109XalanNodeEPS2_ET0_T_S7_S6_ = comdat any

$_ZSt13copy_backwardIPPN11xalanc_1_109XalanNodeES3_ET0_T_S5_S4_ = comdat any

$_ZSt8distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_ = comdat any

$_ZSt10__distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E17iterator_categoryERKS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZSt13__copy_move_aILb0EPKPN11xalanc_1_109XalanNodeEPS2_ET1_T0_S7_S6_ = comdat any

$_ZSt12__miter_baseIPKPN11xalanc_1_109XalanNodeEET_S5_ = comdat any

$_ZSt12__niter_wrapIPPN11xalanc_1_109XalanNodeEET_RKS4_S4_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_109XalanNodeEPS2_ET1_T0_S7_S6_ = comdat any

$_ZSt12__niter_baseIPKPN11xalanc_1_109XalanNodeEET_S5_ = comdat any

$_ZSt12__niter_baseIPPN11xalanc_1_109XalanNodeEET_S4_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_109XalanNodeEPS2_ET1_T0_S7_S6_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_109XalanNodeEEEPT_PKS6_S9_S7_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_ = comdat any

$_ZSt12__miter_baseIPPN11xalanc_1_109XalanNodeEET_S4_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_109XalanNodeEEEPT_PKS6_S9_S7_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZSt4findIPPN11xalanc_1_109XalanNodeES2_ET_S4_S4_RKT0_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_ = comdat any

$_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_ = comdat any

$_ZN9__gnu_cxx5__ops17__iter_equals_valIKPN11xalanc_1_109XalanNodeEEENS0_16_Iter_equals_valIT_EERS7_ = comdat any

$_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E17iterator_categoryERKS5_ = comdat any

$_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_109XalanNodeEEclIPS4_EEbT_ = comdat any

$_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_109XalanNodeEEC2ERS5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_ = comdat any

$_ZSt4copyIPPN11xalanc_1_109XalanNodeES3_ET0_T_S5_S4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE11shrinkCountEm = comdat any

$_ZSt13__copy_move_aILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_ = comdat any

$_ZSt14__copy_move_a1ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_ = comdat any

$_ZSt14__copy_move_a2ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_ = comdat any

$_ZNK11xalanc_1_1022XercesWrapperNavigator8getIndexEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EE3getEv = comdat any

$_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1022XercesWrapperNavigator13setFirstChildEPNS_9XalanNodeE = comdat any

$_ZNK11xalanc_1_1022XercesWrapperNavigator13getFirstChildEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE7reserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE9push_backERKS3_ = comdat any

$_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeC2EPNS_22XercesWrapperNavigatorEPNS_9XalanNodeE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE4swapERS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE14local_distanceEPKS3_S8_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE14ensureCapacityEm = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEE9constructEPS3_RKS3_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE8capacityEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_ = comdat any

$_ZSt4copyIPKN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEPS3_ET0_T_S8_S7_ = comdat any

$_ZSt13copy_backwardIPN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeES4_ET0_T_S6_S5_ = comdat any

$_ZSt8distanceIPKN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEENSt15iterator_traitsIT_E15difference_typeES7_S7_ = comdat any

$_ZSt10__distanceIPKN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEENSt15iterator_traitsIT_E15difference_typeES7_S7_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEENSt15iterator_traitsIT_E17iterator_categoryERKS7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv = comdat any

$_ZSt13__copy_move_aILb0EPKN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEPS3_ET1_T0_S8_S7_ = comdat any

$_ZSt12__miter_baseIPKN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEET_S6_ = comdat any

$_ZSt12__niter_wrapIPN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEET_RKS5_S5_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEPS3_ET1_T0_S8_S7_ = comdat any

$_ZSt12__niter_baseIPKN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEET_S6_ = comdat any

$_ZSt12__niter_baseIPN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEET_S5_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEPS3_ET1_T0_S8_S7_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEEEPT_PKS7_SA_S8_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeES4_ET1_T0_S6_S5_ = comdat any

$_ZSt12__miter_baseIPN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEET_S5_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeES4_ET1_T0_S6_S5_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeES4_ET1_T0_S6_S5_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEEEPT_PKS7_SA_S8_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyEPS3_S7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10deallocateEPS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyERS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE4backEv = comdat any

$_ZN11xalanc_1_1022XercesWrapperNavigator13setParentNodeEPNS_9XalanNodeE = comdat any

$_ZN11xalanc_1_1022XercesWrapperNavigator12setLastChildEPNS_9XalanNodeE = comdat any

$_ZN11xalanc_1_1022XercesWrapperNavigator18setPreviousSiblingEPNS_9XalanNodeE = comdat any

$_ZN11xalanc_1_1022XercesWrapperNavigator14setNextSiblingEPNS_9XalanNodeE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE8pop_backEv = comdat any

@_ZTVN11xalanc_1_1021XercesDocumentWrapperE = dso_local unnamed_addr constant { [47 x ptr] } { [47 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1021XercesDocumentWrapperE, ptr @_ZN11xalanc_1_1021XercesDocumentWrapperD2Ev, ptr @_ZN11xalanc_1_1021XercesDocumentWrapperD0Ev, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper11getNodeNameEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper12getNodeValueEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper11getNodeTypeEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper13getParentNodeEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper13getChildNodesEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper13getFirstChildEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper12getLastChildEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper18getPreviousSiblingEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper14getNextSiblingEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper13getAttributesEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper16getOwnerDocumentEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper9cloneNodeEb, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper12insertBeforeEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper12replaceChildEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper11removeChildEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper11appendChildEPNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper13hasChildNodesEv, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper12setNodeValueERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper9normalizeEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper11isSupportedERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper15getNamespaceURIEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper9getPrefixEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper12getLocalNameEv, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper9setPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper9isIndexedEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper8getIndexEv, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper13createElementERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper22createDocumentFragmentEv, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper14createTextNodeERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper13createCommentERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper18createCDATASectionERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper27createProcessingInstructionERKNS_14XalanDOMStringES3_, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper15createAttributeERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper21createEntityReferenceERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper10getDoctypeEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17getImplementationEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper18getDocumentElementEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper20getElementsByTagNameERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper10importNodeEPNS_9XalanNodeEb, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper15createElementNSERKNS_14XalanDOMStringES3_, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper17createAttributeNSERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper22getElementsByTagNameNSERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper14getElementByIdERKNS_14XalanDOMStringE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1021XercesDocumentWrapperE = dso_local constant [39 x i8] c"N11xalanc_1_1021XercesDocumentWrapperE\00", align 1
@_ZTIN11xalanc_1_1013XalanDocumentE = external constant ptr
@_ZTIN11xalanc_1_1021XercesDocumentWrapperE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1021XercesDocumentWrapperE, ptr @_ZTIN11xalanc_1_1013XalanDocumentE }, align 8
@_ZTVN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerE = dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerE, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerD2Ev, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerD0Ev, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker9startNodeEPKN11xercesc_2_77DOMNodeE, ptr @_ZN11xalanc_1_1015XercesDOMWalker9startNodeEPN11xercesc_2_77DOMNodeE, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker7endNodeEPKN11xercesc_2_77DOMNodeE, ptr @_ZN11xalanc_1_1015XercesDOMWalker7endNodeEPN11xercesc_2_77DOMNodeE] }, align 8
@_ZTSN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerE = dso_local constant [63 x i8] c"N11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerE\00", align 1
@_ZTIN11xalanc_1_1015XercesDOMWalkerE = external constant ptr
@_ZTIN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerE, ptr @_ZTIN11xalanc_1_1015XercesDOMWalkerE }, align 8
@_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE = external constant ptr
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1021XercesDocumentWrapperC1ERN11xercesc_2_713MemoryManagerEPKNS1_11DOMDocumentEbbb = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1, i1, i1), ptr @_ZN11xalanc_1_1021XercesDocumentWrapperC2ERN11xercesc_2_713MemoryManagerEPKNS1_11DOMDocumentEbbb
@_ZN11xalanc_1_1021XercesDocumentWrapperD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1021XercesDocumentWrapperD2Ev
@_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerC1EPS0_PNS_22XercesWrapperNavigatorEmb = dso_local unnamed_addr alias void (ptr, ptr, ptr, i64, i1), ptr @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerC2EPS0_PNS_22XercesWrapperNavigatorEmb
@_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XercesDocumentWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(432) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1021XercesDocumentWrapperD2Ev(ptr noundef nonnull align 8 dereferenceable(432) %0) #14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper11getNodeNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0) unnamed_addr #1 align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !156
  %6 = getelementptr inbounds i8, ptr %5, i64 24
  %7 = load ptr, ptr %6, align 8, !tbaa !157
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6) #16
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %10) #16
  ret ptr %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper12getNodeValueEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0) unnamed_addr #1 align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !156
  %6 = getelementptr inbounds i8, ptr %5, i64 24
  %7 = load ptr, ptr %6, align 8, !tbaa !157
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6) #16
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %10) #16
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1021XercesDocumentWrapper11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !118 {
  ret i32 9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper13getParentNodeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !118 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper13getChildNodesEv(ptr noundef nonnull readnone align 8 dereferenceable(432) %0) unnamed_addr #2 align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 7
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper13getFirstChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0) unnamed_addr #1 align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !156
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds i8, ptr %5, i64 24
  %8 = select i1 %6, ptr null, ptr %7
  %9 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator13getFirstChildEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %8) #16
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper12getLastChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0) unnamed_addr #1 align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !156
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds i8, ptr %5, i64 24
  %8 = select i1 %6, ptr null, ptr %7
  %9 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator12getLastChildEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %8) #16
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper18getPreviousSiblingEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !118 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper14getNextSiblingEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !118 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper13getAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !118 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper16getOwnerDocumentEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !118 {
  ret ptr null
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper9cloneNodeEb(ptr nocapture nonnull readnone align 8 %0, i1 zeroext %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9) #16
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #18
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #17
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1021XercesDocumentWrapper12insertBeforeEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 9) #16
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #18
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #17
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1021XercesDocumentWrapper12replaceChildEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7) #16
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #18
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #17
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1021XercesDocumentWrapper11removeChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #16
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #18
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #17
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1021XercesDocumentWrapper11appendChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #16
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #18
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #17
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1021XercesDocumentWrapper13hasChildNodesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0) unnamed_addr #1 align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !156
  %4 = getelementptr inbounds i8, ptr %3, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !157
  %6 = getelementptr inbounds ptr, ptr %5, i64 18
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  ret i1 %8
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XercesDocumentWrapper12setNodeValueERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #16
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #18
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #17
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XercesDocumentWrapper9normalizeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 7) #16
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #18
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #17
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1021XercesDocumentWrapper11isSupportedERKNS_14XalanDOMStringES3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #1 align 2 !prof !118 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !156
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds i8, ptr %5, i64 24
  %8 = select i1 %6, ptr null, ptr %7
  %9 = tail call noundef zeroext i1 @_ZN11xalanc_1_1019XercesWrapperHelper11isSupportedEPKN11xercesc_2_77DOMNodeERKNS_14XalanDOMStringES7_(ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) #16
  ret i1 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper15getNamespaceURIEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0) unnamed_addr #1 align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !156
  %6 = getelementptr inbounds i8, ptr %5, i64 24
  %7 = load ptr, ptr %6, align 8, !tbaa !157
  %8 = getelementptr inbounds ptr, ptr %7, i64 22
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6) #16
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %10) #16
  ret ptr %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper9getPrefixEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0) unnamed_addr #1 align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !156
  %6 = getelementptr inbounds i8, ptr %5, i64 24
  %7 = load ptr, ptr %6, align 8, !tbaa !157
  %8 = getelementptr inbounds ptr, ptr %7, i64 23
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6) #16
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %10) #16
  ret ptr %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper12getLocalNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0) unnamed_addr #1 align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !156
  %6 = getelementptr inbounds i8, ptr %5, i64 24
  %7 = load ptr, ptr %6, align 8, !tbaa !157
  %8 = getelementptr inbounds ptr, ptr %7, i64 24
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6) #16
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %10) #16
  ret ptr %11
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XercesDocumentWrapper9setPrefixERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #16
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #18
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #17
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1021XercesDocumentWrapper9isIndexedEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0) unnamed_addr #4 align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 11
  %3 = load i8, ptr %2, align 1, !tbaa !159, !range !160, !noundef !161
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i64 @_ZNK11xalanc_1_1021XercesDocumentWrapper8getIndexEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0) unnamed_addr #0 align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = tail call noundef i64 @_ZNK11xalanc_1_1022XercesWrapperNavigator8getIndexEv(ptr noundef nonnull align 8 dereferenceable(64) %3) #16
  ret i64 %4
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1021XercesDocumentWrapper13createElementERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9) #16
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #18
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #17
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1021XercesDocumentWrapper22createDocumentFragmentEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 9) #16
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #18
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #17
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1021XercesDocumentWrapper14createTextNodeERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9) #16
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #18
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #17
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1021XercesDocumentWrapper13createCommentERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9) #16
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #18
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #17
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1021XercesDocumentWrapper18createCDATASectionERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9) #16
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #18
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #17
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1021XercesDocumentWrapper27createProcessingInstructionERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 9) #16
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #18
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #17
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1021XercesDocumentWrapper15createAttributeERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9) #16
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #18
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #17
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1021XercesDocumentWrapper21createEntityReferenceERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9) #16
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #18
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #17
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper10getDoctypeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0) unnamed_addr #4 align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !162
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17getImplementationEv(ptr noundef nonnull align 8 dereferenceable(432) %0) unnamed_addr #0 align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 4
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper18getDocumentElementEv(ptr noundef nonnull align 8 dereferenceable(432) %0) unnamed_addr #1 align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !163
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !156
  %8 = load ptr, ptr %7, align 8, !tbaa !157
  %9 = getelementptr inbounds ptr, ptr %8, i64 13
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(32) %7) #16
  %12 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper7mapNodeEPKN11xercesc_2_710DOMElementE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %11) #16
  br label %13

13:                                               ; preds = %1, %5
  %14 = phi ptr [ %12, %5 ], [ %3, %1 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper20getElementsByTagNameERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9) #16
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #18
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #17
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1021XercesDocumentWrapper10importNodeEPNS_9XalanNodeEb(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, i1 zeroext %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7) #16
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #18
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #17
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1021XercesDocumentWrapper15createElementNSERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 9) #16
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #18
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #17
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1021XercesDocumentWrapper17createAttributeNSERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 9) #16
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #18
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #17
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper22getElementsByTagNameNSERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 9) #16
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #18
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #17
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper14getElementByIdERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #1 align 2 !prof !118 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !156
  %5 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %1) #16
  %6 = load ptr, ptr %4, align 8, !tbaa !157
  %7 = getelementptr inbounds ptr, ptr %6, i64 19
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper7mapNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull %9) #16
  br label %13

13:                                               ; preds = %2, %11
  %14 = phi ptr [ %12, %11 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerD0Ev(ptr noundef nonnull align 8 dereferenceable(89) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(89) %0) #14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker9startNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !118 {
  %3 = alloca ptr, align 8
  %4 = alloca %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", align 8
  %5 = alloca %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !164
  %9 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !168
  %11 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 5
  %12 = load i8, ptr %11, align 8, !tbaa !169, !range !160, !noundef !161
  %13 = icmp ne i8 %12, 0
  %14 = call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_77DOMNodeEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %8, ptr noundef %1, i64 noundef %10, i1 noundef zeroext %13, ptr noundef nonnull %3) #16
  %15 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 3
  %16 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #16
  %17 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 4
  %18 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %17) #16
  %19 = load ptr, ptr %3, align 8, !tbaa !170
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %16, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !171
  call void @_ZN11xalanc_1_1022XercesWrapperNavigator13setParentNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(64) %19, ptr noundef %21) #16
  %22 = load ptr, ptr %16, align 8, !tbaa !173
  %23 = call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(64) %22) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load ptr, ptr %16, align 8, !tbaa !173
  call void @_ZN11xalanc_1_1022XercesWrapperNavigator13setFirstChildEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(64) %26, ptr noundef %14) #16
  br label %27

27:                                               ; preds = %25, %2
  %28 = load ptr, ptr %16, align 8, !tbaa !173
  call void @_ZN11xalanc_1_1022XercesWrapperNavigator12setLastChildEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(64) %28, ptr noundef %14) #16
  %29 = load ptr, ptr %3, align 8, !tbaa !170
  %30 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %18, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !171
  call void @_ZN11xalanc_1_1022XercesWrapperNavigator18setPreviousSiblingEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(64) %29, ptr noundef %31) #16
  %32 = load ptr, ptr %18, align 8, !tbaa !173
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  call void @_ZN11xalanc_1_1022XercesWrapperNavigator14setNextSiblingEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(64) %32, ptr noundef %14) #16
  br label %35

35:                                               ; preds = %34, %27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %36 = load ptr, ptr %3, align 8, !tbaa !170
  call void @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeC2EPNS_22XercesWrapperNavigatorEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %36, ptr noundef %14) #16
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(16) %4) #16
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(16) %4) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  call void @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeC2EPNS_22XercesWrapperNavigatorEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef null, ptr noundef null) #16
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(16) %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  %37 = load i64, ptr %9, align 8, !tbaa !168
  %38 = add i64 %37, 1
  store i64 %38, ptr %9, align 8, !tbaa !168
  %39 = load ptr, ptr %1, align 8, !tbaa !157
  %40 = getelementptr inbounds ptr, ptr %39, i64 4
  %41 = load ptr, ptr %40, align 8
  %42 = call noundef signext i16 %41(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  switch i16 %42, label %104 [
    i16 10, label %43
    i16 1, label %68
  ]

43:                                               ; preds = %35
  %44 = load ptr, ptr %1, align 8, !tbaa !157
  %45 = getelementptr inbounds ptr, ptr %44, i64 41
  %46 = load ptr, ptr %45, align 8
  %47 = call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %48 = load ptr, ptr %47, align 8, !tbaa !157
  %49 = getelementptr inbounds ptr, ptr %48, i64 5
  %50 = load ptr, ptr %49, align 8
  %51 = call noundef i64 %50(ptr noundef nonnull align 8 dereferenceable(8) %47) #16
  %52 = and i64 %51, 4294967295
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %104, label %54

54:                                               ; preds = %43
  %55 = and i64 %51, 4294967295
  br label %56

56:                                               ; preds = %54, %56
  %57 = phi i64 [ 0, %54 ], [ %66, %56 ]
  %58 = load ptr, ptr %7, align 8, !tbaa !164
  %59 = load ptr, ptr %47, align 8, !tbaa !157
  %60 = getelementptr inbounds ptr, ptr %59, i64 3
  %61 = load ptr, ptr %60, align 8
  %62 = call noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(8) %47, i64 noundef %57) #16
  %63 = load i64, ptr %9, align 8, !tbaa !168
  %64 = add i64 %63, 1
  store i64 %64, ptr %9, align 8, !tbaa !168
  %65 = call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_77DOMNodeEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %58, ptr noundef %62, i64 noundef %63, i1 noundef zeroext true, ptr noundef null) #16
  %66 = add nuw nsw i64 %57, 1
  %67 = icmp eq i64 %66, %55
  br i1 %67, label %104, label %56, !llvm.loop !174

68:                                               ; preds = %35
  %69 = load ptr, ptr %1, align 8, !tbaa !157
  %70 = getelementptr inbounds ptr, ptr %69, i64 11
  %71 = load ptr, ptr %70, align 8
  %72 = call noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %73 = load ptr, ptr %72, align 8, !tbaa !157
  %74 = getelementptr inbounds ptr, ptr %73, i64 5
  %75 = load ptr, ptr %74, align 8
  %76 = call noundef i64 %75(ptr noundef nonnull align 8 dereferenceable(8) %72) #16
  %77 = and i64 %76, 4294967295
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %104, label %79

79:                                               ; preds = %68
  %80 = and i64 %76, 4294967295
  br label %81

81:                                               ; preds = %79, %98
  %82 = phi i64 [ 0, %79 ], [ %102, %98 ]
  %83 = phi ptr [ null, %79 ], [ %99, %98 ]
  %84 = phi ptr [ null, %79 ], [ %93, %98 ]
  %85 = load ptr, ptr %72, align 8, !tbaa !157
  %86 = getelementptr inbounds ptr, ptr %85, i64 3
  %87 = load ptr, ptr %86, align 8
  %88 = call noundef ptr %87(ptr noundef nonnull align 8 dereferenceable(8) %72, i64 noundef %82) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  %89 = load ptr, ptr %7, align 8, !tbaa !164
  %90 = load i64, ptr %9, align 8, !tbaa !168
  %91 = load i8, ptr %11, align 8, !tbaa !169, !range !160, !noundef !161
  %92 = icmp ne i8 %91, 0
  %93 = call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_77DOMNodeEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %89, ptr noundef %88, i64 noundef %90, i1 noundef zeroext %92, ptr noundef nonnull %6) #16
  %94 = load ptr, ptr %6, align 8, !tbaa !170
  call void @_ZN11xalanc_1_1022XercesWrapperNavigator13setParentNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(64) %94, ptr noundef %14) #16
  %95 = icmp eq ptr %84, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %81
  %97 = load ptr, ptr %6, align 8, !tbaa !170
  call void @_ZN11xalanc_1_1022XercesWrapperNavigator18setPreviousSiblingEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(64) %97, ptr noundef nonnull %84) #16
  call void @_ZN11xalanc_1_1022XercesWrapperNavigator14setNextSiblingEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(64) %83, ptr noundef %93) #16
  br label %98

98:                                               ; preds = %96, %81
  %99 = load ptr, ptr %6, align 8, !tbaa !170
  %100 = load i64, ptr %9, align 8, !tbaa !168
  %101 = add i64 %100, 1
  store i64 %101, ptr %9, align 8, !tbaa !168
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  %102 = add nuw nsw i64 %82, 1
  %103 = icmp eq i64 %102, %80
  br i1 %103, label %104, label %81, !llvm.loop !176

104:                                              ; preds = %98, %56, %68, %43, %35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret i1 false
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1015XercesDOMWalker9startNodeEPN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker7endNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 !prof !118 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 4
  %5 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  %6 = load ptr, ptr %5, align 8, !tbaa !173
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2, %8
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  %9 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  %10 = load ptr, ptr %9, align 8, !tbaa !173
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %8, !llvm.loop !177

12:                                               ; preds = %8, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  ret i1 false
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1015XercesDOMWalker7endNodeEPN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #5

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XercesDocumentWrapperC2ERN11xercesc_2_713MemoryManagerEPKNS1_11DOMDocumentEbbb(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  tail call void @_ZN11xalanc_1_1013XalanDocumentC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  store ptr getelementptr inbounds ({ [47 x ptr] }, ptr @_ZTVN11xalanc_1_1021XercesDocumentWrapperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !157
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 1
  store ptr %2, ptr %7, align 8, !tbaa !156
  %8 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !163
  %9 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3
  invoke void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMapC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %9, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
          to label %10 unwind label %62

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %2, align 8, !tbaa !157
  %13 = getelementptr inbounds ptr, ptr %12, i64 12
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
          to label %16 unwind label %64

16:                                               ; preds = %10
  %17 = invoke noundef ptr @_ZN11xalanc_1_1030XercesDOMImplementationWrapper6createERN11xercesc_2_713MemoryManagerEPNS1_17DOMImplementationE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %15) #16
          to label %18 unwind label %64

18:                                               ; preds = %16
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %17) #16
          to label %19 unwind label %64

19:                                               ; preds = %18
  %20 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 5
  invoke void @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 25) #16
          to label %21 unwind label %66

21:                                               ; preds = %19
  %22 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 6
  store ptr null, ptr %22, align 8, !tbaa !119
  %23 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 7
  %24 = getelementptr inbounds i8, ptr %2, i64 24
  %25 = load ptr, ptr %24, align 8, !tbaa !157
  %26 = getelementptr inbounds ptr, ptr %25, i64 6
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %24) #16
          to label %29 unwind label %68

29:                                               ; preds = %21
  %30 = load ptr, ptr %22, align 8, !tbaa !119
  invoke void @_ZN11xalanc_1_1021XercesNodeListWrapperC1EPKN11xercesc_2_711DOMNodeListERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef %28, ptr noundef nonnull align 8 dereferenceable(64) %30) #16
          to label %31 unwind label %68

31:                                               ; preds = %29
  %32 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 8
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) #16
          to label %33 unwind label %70

33:                                               ; preds = %31
  %34 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 9
  store ptr null, ptr %34, align 8, !tbaa !162
  %35 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 10
  %36 = or i1 %3, %4
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i8
  store i8 %38, ptr %35, align 8, !tbaa !178
  %39 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 11
  store i8 0, ptr %39, align 1, !tbaa !159
  %40 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 12
  %41 = or i1 %37, %5
  %42 = zext i1 %41 to i8
  store i8 %42, ptr %40, align 2, !tbaa !179
  %43 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 13
  invoke void @_ZN11xalanc_1_1029XercesElementWrapperAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %43, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 25) #16
          to label %44 unwind label %72

44:                                               ; preds = %33
  %45 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 14
  invoke void @_ZN11xalanc_1_1026XercesTextWrapperAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %45, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 25) #16
          to label %46 unwind label %74

46:                                               ; preds = %44
  %47 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 15
  invoke void @_ZN11xalanc_1_1026XercesAttrWrapperAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %47, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 25) #16
          to label %48 unwind label %76

48:                                               ; preds = %46
  %49 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 16
  br i1 %3, label %50, label %52

50:                                               ; preds = %48
  %51 = invoke noundef ptr @_ZN11xalanc_1_1031XercesLiaisonXalanDOMStringPool6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
          to label %54 unwind label %78

52:                                               ; preds = %48
  %53 = invoke noundef ptr @_ZN11xalanc_1_1018XalanDOMStringPool6createERN11xercesc_2_713MemoryManagerEmmm(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 32, i64 noundef 101, i64 noundef 15) #16
          to label %54 unwind label %78

54:                                               ; preds = %52, %50
  %55 = phi ptr [ %51, %50 ], [ %53, %52 ]
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %49, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %55) #16
          to label %56 unwind label %78

56:                                               ; preds = %54
  %57 = invoke noundef ptr @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocator6createEPNS_21XercesDocumentWrapperE(ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull %0) #16
          to label %58 unwind label %80

58:                                               ; preds = %56
  store ptr %57, ptr %22, align 8, !tbaa !119
  %59 = load i8, ptr %35, align 8, !tbaa !178, !range !160, !noundef !161
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %82

61:                                               ; preds = %58
  tail call void @_ZN11xalanc_1_1022XercesWrapperNavigator8setIndexEm(ptr noundef nonnull align 8 dereferenceable(64) %57, i64 noundef 1) #16
  invoke void @_ZN11xalanc_1_1021XercesDocumentWrapper17buildWrapperNodesEv(ptr noundef nonnull align 8 dereferenceable(432) %0) #16
          to label %83 unwind label %80

62:                                               ; preds = %6
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %100

64:                                               ; preds = %18, %16, %10
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %98

66:                                               ; preds = %19
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %96

68:                                               ; preds = %29, %21
  %69 = landingpad { ptr, i32 }
          cleanup
  br label %94

70:                                               ; preds = %31
  %71 = landingpad { ptr, i32 }
          cleanup
  br label %92

72:                                               ; preds = %33
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %90

74:                                               ; preds = %44
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %88

76:                                               ; preds = %46
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %86

78:                                               ; preds = %54, %52, %50
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %84

80:                                               ; preds = %82, %61, %56
  %81 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %49) #14
  br label %84

82:                                               ; preds = %58
  invoke void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap14addAssociationEPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(136) %9, ptr noundef nonnull %24, ptr noundef nonnull %0) #16
          to label %83 unwind label %80

83:                                               ; preds = %82, %61
  ret void

84:                                               ; preds = %80, %78
  %85 = phi { ptr, i32 } [ %81, %80 ], [ %79, %78 ]
  tail call void @_ZN11xalanc_1_1026XercesAttrWrapperAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %47) #14
  br label %86

86:                                               ; preds = %84, %76
  %87 = phi { ptr, i32 } [ %85, %84 ], [ %77, %76 ]
  tail call void @_ZN11xalanc_1_1026XercesTextWrapperAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %45) #14
  br label %88

88:                                               ; preds = %86, %74
  %89 = phi { ptr, i32 } [ %87, %86 ], [ %75, %74 ]
  tail call void @_ZN11xalanc_1_1029XercesElementWrapperAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %43) #14
  br label %90

90:                                               ; preds = %88, %72
  %91 = phi { ptr, i32 } [ %89, %88 ], [ %73, %72 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %32) #14
  br label %92

92:                                               ; preds = %90, %70
  %93 = phi { ptr, i32 } [ %91, %90 ], [ %71, %70 ]
  tail call void @_ZN11xalanc_1_1021XercesNodeListWrapperD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %23) #14
  br label %94

94:                                               ; preds = %92, %68
  %95 = phi { ptr, i32 } [ %93, %92 ], [ %69, %68 ]
  tail call void @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %20) #14
  br label %96

96:                                               ; preds = %94, %66
  %97 = phi { ptr, i32 } [ %95, %94 ], [ %67, %66 ]
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #14
  br label %98

98:                                               ; preds = %96, %64
  %99 = phi { ptr, i32 } [ %97, %96 ], [ %65, %64 ]
  tail call void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMapD1Ev(ptr noundef nonnull align 8 dereferenceable(136) %9) #14
  br label %100

100:                                              ; preds = %98, %62
  %101 = phi { ptr, i32 } [ %99, %98 ], [ %63, %62 ]
  tail call void @_ZN11xalanc_1_1013XalanDocumentD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  resume { ptr, i32 } %101
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1013XalanDocumentC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMapC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1030XercesDOMImplementationWrapper6createERN11xercesc_2_713MemoryManagerEPNS1_17DOMImplementationE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !118 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #16
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1021XercesNodeListWrapperC1EPKN11xercesc_2_711DOMNodeListERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 !prof !180 {
  store ptr %1, ptr %0, align 8, !tbaa !181
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !182
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !183
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !184

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #16
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !185
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1029XercesElementWrapperAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1026XercesTextWrapperAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1026XercesAttrWrapperAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1031XercesLiaisonXalanDOMStringPool6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1018XalanDOMStringPool6createERN11xercesc_2_713MemoryManagerEmmm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !118 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #16
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocator6createEPNS_21XercesDocumentWrapperE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022XercesWrapperNavigator8setIndexEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 7
  store i64 %1, ptr %3, align 8, !tbaa !186
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XercesDocumentWrapper17buildWrapperNodesEv(ptr noundef nonnull align 8 dereferenceable(432) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %2 = alloca %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !156
  %5 = getelementptr inbounds i8, ptr %4, i64 24
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = getelementptr inbounds ptr, ptr %6, i64 7
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !119
  tail call void @_ZN11xalanc_1_1022XercesWrapperNavigator8setIndexEm(ptr noundef nonnull align 8 dereferenceable(64) %13, i64 noundef 1) #16
  %14 = load ptr, ptr %12, align 8, !tbaa !119
  tail call void @_ZN11xalanc_1_1022XercesWrapperNavigator13setFirstChildEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef null) #16
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #17
  %15 = load ptr, ptr %12, align 8, !tbaa !119
  %16 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 12
  %17 = load i8, ptr %16, align 2, !tbaa !179, !range !160, !noundef !161
  %18 = icmp ne i8 %17, 0
  call void @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerC2EPS0_PNS_22XercesWrapperNavigatorEmb(ptr noundef nonnull align 8 dereferenceable(89) %2, ptr noundef nonnull %0, ptr noundef %15, i64 noundef 2, i1 noundef zeroext %18) #16
  %19 = load ptr, ptr %3, align 8, !tbaa !156
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds i8, ptr %19, i64 24
  %22 = select i1 %20, ptr null, ptr %21
  %23 = invoke noundef ptr @_ZN11xalanc_1_1015XercesDOMWalker8traverseEPKN11xercesc_2_77DOMNodeES4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %9, ptr noundef %22) #16
          to label %24 unwind label %25

24:                                               ; preds = %11
  call void @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(89) %2) #14
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #17
  br label %27

25:                                               ; preds = %11
  %26 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(89) %2) #14
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #17
  resume { ptr, i32 } %26

27:                                               ; preds = %24, %1
  %28 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !119
  %30 = call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(64) %29) #16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %45, label %32

32:                                               ; preds = %27, %39
  %33 = phi ptr [ %43, %39 ], [ %30, %27 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !157
  %35 = getelementptr inbounds ptr, ptr %34, i64 4
  %36 = load ptr, ptr %35, align 8
  %37 = call noundef i32 %36(ptr noundef nonnull align 8 dereferenceable(8) %33) #16
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %45, label %39

39:                                               ; preds = %32
  %40 = load ptr, ptr %33, align 8, !tbaa !157
  %41 = getelementptr inbounds ptr, ptr %40, i64 10
  %42 = load ptr, ptr %41, align 8
  %43 = call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %33) #16
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %32, !llvm.loop !188

45:                                               ; preds = %32, %39, %27
  %46 = phi ptr [ null, %27 ], [ null, %39 ], [ %33, %32 ]
  %47 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 2
  store ptr %46, ptr %47, align 8, !tbaa !163
  %48 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 11
  store i8 1, ptr %48, align 1, !tbaa !159
  %49 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 10
  store i8 0, ptr %49, align 8, !tbaa !178
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap14addAssociationEPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #19
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1026XercesAttrWrapperAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #7

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1026XercesTextWrapperAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #7

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1029XercesElementWrapperAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !189 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !183
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !190

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %6, ptr noundef %7) #16
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !185
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #16
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

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1021XercesNodeListWrapperD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #7

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #19
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMapD1Ev(ptr noundef nonnull align 8 dereferenceable(136)) unnamed_addr #7

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1013XalanDocumentD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !118 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !170
  store ptr %2, ptr %5, align 8, !tbaa !170
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1022XalanDOMImplementationEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1022XalanDOMImplementationEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 !prof !118 {
  %4 = load ptr, ptr %1, align 8, !tbaa !170
  store ptr %4, ptr %0, align 8, !tbaa !191
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !170
  store ptr %6, ptr %5, align 8, !tbaa !192
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !193 {
  %3 = shl i64 %1, 3
  %4 = load ptr, ptr %0, align 8, !tbaa !181
  %5 = load ptr, ptr %4, align 8, !tbaa !157
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #16
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !194 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !118 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !170
  store ptr %2, ptr %5, align 8, !tbaa !170
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1018XalanDOMStringPoolEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1018XalanDOMStringPoolEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 !prof !118 {
  %4 = load ptr, ptr %1, align 8, !tbaa !170
  store ptr %4, ptr %0, align 8, !tbaa !195
  %5 = getelementptr inbounds %"struct.std::pair.9", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !170
  store ptr %6, ptr %5, align 8, !tbaa !196
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !118 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  br i1 %2, label %3, label %13

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"struct.std::pair.9", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !196
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(112) %5) #14
  %8 = load ptr, ptr %0, align 8, !tbaa !195
  %9 = load ptr, ptr %4, align 8, !tbaa !196
  %10 = load ptr, ptr %8, align 8, !tbaa !157
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %9) #16
  br label %13

13:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #17
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %2 = load ptr, ptr %0, align 8, !tbaa !195
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair.9", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !193 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !197

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !198, !llvm.loop !199

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !200 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !185
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !201 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !193 {
  %3 = load ptr, ptr %0, align 8, !tbaa !181
  %4 = load ptr, ptr %3, align 8, !tbaa !157
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !202 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !203 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !185
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !182
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !118 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  br i1 %2, label %3, label %13

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  %8 = load ptr, ptr %0, align 8, !tbaa !191
  %9 = load ptr, ptr %4, align 8, !tbaa !192
  %10 = load ptr, ptr %8, align 8, !tbaa !157
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %9) #16
  br label %13

13:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %2 = load ptr, ptr %0, align 8, !tbaa !191
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1021XercesDocumentWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_11DOMDocumentEbbb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %6 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr.13", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  %7 = load ptr, ptr %0, align 8, !tbaa !157
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 432) #16
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDocumentWrapperELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %10) #16
  %11 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDocumentWrapperELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #16
  invoke void @_ZN11xalanc_1_1021XercesDocumentWrapperC2ERN11xercesc_2_713MemoryManagerEPKNS1_11DOMDocumentEbbb(ptr noundef nonnull align 8 dereferenceable(432) %11, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) #16
          to label %12 unwind label %15

12:                                               ; preds = %5
  %13 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDocumentWrapperELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #16
          to label %14 unwind label %15

14:                                               ; preds = %12
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDocumentWrapperELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  ret ptr %11

15:                                               ; preds = %12, %5
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDocumentWrapperELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  resume { ptr, i32 } %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDocumentWrapperELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !118 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDocumentWrapperELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDocumentWrapperELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %2 = getelementptr inbounds %"struct.std::pair.14", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !204
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDocumentWrapperELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !118 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDocumentWrapperELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #16
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDocumentWrapperELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDocumentWrapperELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDocumentWrapperELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !118 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !170
  store ptr %2, ptr %5, align 8, !tbaa !170
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1021XercesDocumentWrapperEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDocumentWrapperELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1021XercesDocumentWrapperEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 !prof !118 {
  %4 = load ptr, ptr %1, align 8, !tbaa !170
  store ptr %4, ptr %0, align 8, !tbaa !206
  %5 = getelementptr inbounds %"struct.std::pair.14", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !170
  store ptr %6, ptr %5, align 8, !tbaa !204
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDocumentWrapperELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDocumentWrapperELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !118 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDocumentWrapperELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  store ptr %1, ptr %0, align 8, !tbaa !206
  %4 = getelementptr inbounds %"struct.std::pair.14", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !204
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDocumentWrapperELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDocumentWrapperELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !118 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDocumentWrapperELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDocumentWrapperELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !206
  %5 = getelementptr inbounds %"struct.std::pair.14", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !204
  %7 = load ptr, ptr %4, align 8, !tbaa !157
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #16
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XercesDocumentWrapperELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %2 = load ptr, ptr %0, align 8, !tbaa !206
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair.14", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XercesDocumentWrapperD2Ev(ptr noundef nonnull align 8 dereferenceable(432) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  store ptr getelementptr inbounds ({ [47 x ptr] }, ptr @_ZTVN11xalanc_1_1021XercesDocumentWrapperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !157
  invoke void @_ZN11xalanc_1_1021XercesDocumentWrapper14destroyWrapperEv(ptr noundef nonnull align 8 dereferenceable(432) %0) #16
          to label %2 unwind label %12

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 16
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #14
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 15
  tail call void @_ZN11xalanc_1_1026XercesAttrWrapperAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #14
  %5 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 14
  tail call void @_ZN11xalanc_1_1026XercesTextWrapperAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #14
  %6 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 13
  tail call void @_ZN11xalanc_1_1029XercesElementWrapperAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #14
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #14
  %8 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_1021XercesNodeListWrapperD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #14
  %9 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 5
  tail call void @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %9) #14
  %10 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #14
  %11 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMapD1Ev(ptr noundef nonnull align 8 dereferenceable(136) %11) #14
  tail call void @_ZN11xalanc_1_1013XalanDocumentD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  ret void

12:                                               ; preds = %1
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XercesDocumentWrapper14destroyWrapperEv(ptr noundef nonnull align 8 dereferenceable(432) %0) local_unnamed_addr #1 align 2 !prof !118 {
  %2 = alloca %"struct.xalanc_1_10::DeleteFunctor", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 9
  store ptr null, ptr %3, align 8, !tbaa !162
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 8
  %5 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  call void @_ZN11xalanc_1_1013DeleteFunctorINS_9XalanNodeEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %7) #16
  %8 = load ptr, ptr %2, align 8
  %9 = call ptr @_ZSt8for_eachIPPN11xalanc_1_109XalanNodeENS0_13DeleteFunctorIS1_EEET0_T_S7_S6_(ptr noundef %5, ptr noundef %6, ptr %8) #16
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  %10 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 5
  call void @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %10) #16
  %11 = call noundef ptr @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocator6createEPNS_21XercesDocumentWrapperE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull %0) #16
  %12 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 6
  store ptr %11, ptr %12, align 8, !tbaa !119
  %13 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3
  call void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap5clearEv(ptr noundef nonnull align 8 dereferenceable(136) %13) #16
  %14 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 11
  store i8 0, ptr %14, align 1, !tbaa !159
  %15 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 10
  store i8 1, ptr %15, align 8, !tbaa !178
  %16 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 16
  %17 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %16) #16
  %18 = load ptr, ptr %17, align 8, !tbaa !157
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  call void %20(ptr noundef nonnull align 8 dereferenceable(112) %17) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper7mapNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %43, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1027XercesWrapperToXalanNodeMap7getNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull %1) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %43

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !156
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds i8, ptr %10, i64 24
  %13 = select i1 %11, ptr null, ptr %12
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %37, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr %1, align 8, !tbaa !157
  %17 = getelementptr inbounds ptr, ptr %16, i64 12
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %20 = load ptr, ptr %9, align 8, !tbaa !156
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %37, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr %1, align 8, !tbaa !157
  %24 = getelementptr inbounds ptr, ptr %23, i64 5
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %27 = load ptr, ptr %9, align 8, !tbaa !156
  %28 = icmp eq ptr %27, null
  %29 = getelementptr inbounds i8, ptr %27, i64 24
  %30 = select i1 %28, ptr null, ptr %29
  %31 = icmp eq ptr %26, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %22
  %33 = tail call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %33, i32 noundef 4) #16
          to label %34 unwind label %35

34:                                               ; preds = %32
  tail call void @__cxa_throw(ptr nonnull %33, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #18
  unreachable

35:                                               ; preds = %32
  %36 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %33) #17
  resume { ptr, i32 } %36

37:                                               ; preds = %22, %15, %8
  %38 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 10
  %39 = load i8, ptr %38, align 8, !tbaa !178, !range !160, !noundef !161
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_77DOMNodeEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull %1, i64 noundef 0, i1 noundef zeroext true, ptr noundef null) #16
  br label %43

43:                                               ; preds = %4, %37, %41, %2
  %44 = phi ptr [ %42, %41 ], [ null, %37 ], [ %6, %4 ], [ null, %2 ]
  ret ptr %44
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1027XercesWrapperToXalanNodeMap7getNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef) local_unnamed_addr #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #5

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #7

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_77DOMNodeEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %6 = load ptr, ptr %1, align 8, !tbaa !157
  %7 = getelementptr inbounds ptr, ptr %6, i64 4
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef signext i16 %8(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  switch i16 %9, label %35 [
    i16 2, label %10
    i16 4, label %12
    i16 8, label %14
    i16 11, label %16
    i16 1, label %21
    i16 6, label %23
    i16 5, label %25
    i16 12, label %27
    i16 7, label %29
    i16 3, label %31
    i16 10, label %33
  ]

10:                                               ; preds = %5
  %11 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_77DOMAttrEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull %1, i64 noundef %2, i1 zeroext poison, ptr noundef %4) #16
  br label %35

12:                                               ; preds = %5
  %13 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_715DOMCDATASectionEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef %4) #16
  br label %35

14:                                               ; preds = %5
  %15 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_710DOMCommentEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef %4) #16
  br label %35

16:                                               ; preds = %5
  %17 = tail call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %17, i32 noundef 9) #16
          to label %18 unwind label %19

18:                                               ; preds = %16
  tail call void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #18
  unreachable

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %17) #17
  resume { ptr, i32 } %20

21:                                               ; preds = %5
  %22 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_710DOMElementEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef %4) #16
  br label %35

23:                                               ; preds = %5
  %24 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_79DOMEntityEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull %1, i64 noundef %2, i1 zeroext poison, ptr noundef %4) #16
  br label %35

25:                                               ; preds = %5
  %26 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_718DOMEntityReferenceEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef %4) #16
  br label %35

27:                                               ; preds = %5
  %28 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_711DOMNotationEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull %1, i64 noundef %2, i1 zeroext poison, ptr noundef %4) #16
  br label %35

29:                                               ; preds = %5
  %30 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_724DOMProcessingInstructionEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef %4) #16
  br label %35

31:                                               ; preds = %5
  %32 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_77DOMTextEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef %4) #16
  br label %35

33:                                               ; preds = %5
  %34 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_715DOMDocumentTypeEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef %4) #16
  br label %35

35:                                               ; preds = %5, %33, %31, %29, %27, %25, %23, %21, %14, %12, %10
  %36 = phi ptr [ null, %5 ], [ %34, %33 ], [ %32, %31 ], [ %30, %29 ], [ %28, %27 ], [ %26, %25 ], [ %24, %23 ], [ %22, %21 ], [ %15, %14 ], [ %13, %12 ], [ %11, %10 ]
  ret ptr %36
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper7mapNodeEPNS_9XalanNodeE(ptr noundef nonnull readonly align 8 dereferenceable(432) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !156
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds i8, ptr %6, i64 24
  %9 = select i1 %7, ptr null, ptr %8
  br label %53

10:                                               ; preds = %2
  %11 = icmp eq ptr %1, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %10
  %13 = load ptr, ptr %1, align 8, !tbaa !157
  %14 = getelementptr inbounds ptr, ptr %13, i64 12
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %23, label %18

18:                                               ; preds = %12, %10
  %19 = tail call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %19, i32 noundef 4) #16
          to label %20 unwind label %21

20:                                               ; preds = %18
  tail call void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #18
  unreachable

21:                                               ; preds = %18
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %55

23:                                               ; preds = %12
  %24 = load ptr, ptr %1, align 8, !tbaa !157
  %25 = getelementptr inbounds ptr, ptr %24, i64 4
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef i32 %26(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  switch i32 %27, label %53 [
    i32 2, label %28
    i32 4, label %30
    i32 8, label %32
    i32 11, label %34
    i32 1, label %39
    i32 6, label %41
    i32 5, label %43
    i32 12, label %45
    i32 7, label %47
    i32 3, label %49
    i32 10, label %51
  ]

28:                                               ; preds = %23
  %29 = tail call noundef ptr @_ZNK11xalanc_1_1017XercesAttrWrapper13getXercesNodeEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #16
  br label %53

30:                                               ; preds = %23
  %31 = tail call noundef ptr @_ZNK11xalanc_1_1025XercesCDATASectionWrapper13getXercesNodeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  br label %53

32:                                               ; preds = %23
  %33 = tail call noundef ptr @_ZNK11xalanc_1_1020XercesCommentWrapper13getXercesNodeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  br label %53

34:                                               ; preds = %23
  %35 = tail call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %35, i32 noundef 9) #16
          to label %36 unwind label %37

36:                                               ; preds = %34
  tail call void @__cxa_throw(ptr nonnull %35, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #18
  unreachable

37:                                               ; preds = %34
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %55

39:                                               ; preds = %23
  %40 = tail call noundef ptr @_ZNK11xalanc_1_1020XercesElementWrapper13getXercesNodeEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #16
  br label %53

41:                                               ; preds = %23
  %42 = tail call noundef ptr @_ZNK11xalanc_1_1019XercesEntityWrapper13getXercesNodeEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #16
  br label %53

43:                                               ; preds = %23
  %44 = tail call noundef ptr @_ZNK11xalanc_1_1028XercesEntityReferenceWrapper13getXercesNodeEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #16
  br label %53

45:                                               ; preds = %23
  %46 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesNotationWrapper13getXercesNodeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  br label %53

47:                                               ; preds = %23
  %48 = tail call noundef ptr @_ZNK11xalanc_1_1034XercesProcessingInstructionWrapper13getXercesNodeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  br label %53

49:                                               ; preds = %23
  %50 = tail call noundef ptr @_ZNK11xalanc_1_1017XercesTextWrapper13getXercesNodeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  br label %53

51:                                               ; preds = %23
  %52 = tail call noundef ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper13getXercesNodeEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #16
  br label %53

53:                                               ; preds = %23, %51, %49, %47, %45, %43, %41, %39, %32, %30, %28, %4
  %54 = phi ptr [ %9, %4 ], [ %52, %51 ], [ %50, %49 ], [ %48, %47 ], [ %46, %45 ], [ %44, %43 ], [ %42, %41 ], [ %40, %39 ], [ %33, %32 ], [ %31, %30 ], [ %29, %28 ], [ null, %23 ]
  ret ptr %54

55:                                               ; preds = %37, %21
  %56 = phi ptr [ %35, %37 ], [ %19, %21 ]
  %57 = phi { ptr, i32 } [ %38, %37 ], [ %22, %21 ]
  tail call void @__cxa_free_exception(ptr %56) #17
  resume { ptr, i32 } %57
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1017XercesAttrWrapper13getXercesNodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !207
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1025XercesCDATASectionWrapper13getXercesNodeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesCDATASectionWrapper", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !210
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1020XercesCommentWrapper13getXercesNodeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesCommentWrapper", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !215
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1020XercesElementWrapper13getXercesNodeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !218
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1019XercesEntityWrapper13getXercesNodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesEntityWrapper", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !223
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1028XercesEntityReferenceWrapper13getXercesNodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesEntityReferenceWrapper", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !226
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1021XercesNotationWrapper13getXercesNodeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesNotationWrapper", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !229
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1034XercesProcessingInstructionWrapper13getXercesNodeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesProcessingInstructionWrapper", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !232
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1017XercesTextWrapper13getXercesNodeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesTextWrapper", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !235
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper13getXercesNodeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !237
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper7mapNodeEPKN11xercesc_2_77DOMAttrE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !118 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper7mapNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1) #16
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper7mapNodeEPKN11xercesc_2_710DOMElementE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !118 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper7mapNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1) #16
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt8for_eachIPPN11xalanc_1_109XalanNodeENS0_13DeleteFunctorIS1_EEET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #1 comdat !prof !118 {
  %4 = alloca %"struct.xalanc_1_10::DeleteFunctor", align 8
  store ptr %2, ptr %4, align 8
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %9, %6 ], [ %0, %3 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !170
  call void @_ZNK11xalanc_1_1013DeleteFunctorINS_9XalanNodeEEclEPKS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #16
  %9 = getelementptr inbounds ptr, ptr %7, i64 1
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %6, !llvm.loop !240

11:                                               ; preds = %6
  %12 = load ptr, ptr %4, align 8
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi ptr [ %12, %11 ], [ %2, %3 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %2 = load ptr, ptr %0, align 8, !tbaa !181
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1013DeleteFunctorINS_9XalanNodeEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !118 {
  store ptr %1, ptr %0, align 8, !tbaa !170
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !241 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !182
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5, !prof !242

5:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #16
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap5clearEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %2 = getelementptr inbounds %"struct.std::pair.9", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !196
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1013DeleteFunctorINS_9XalanNodeEEclEPKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !118 {
  %3 = alloca %"struct.xalanc_1_10::XalanDestroyFunctor", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #17
  tail call void @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_9XalanNodeEEENS_19XalanDestroyFunctorIT_EEPKS3_(ptr noundef %1) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !243
  call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_9XalanNodeEEclEPKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_9XalanNodeEEENS_19XalanDestroyFunctorIT_EEPKS3_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !118 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_9XalanNodeEEclEPKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 !prof !118 {
  tail call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_9XalanNodeEEclEPS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_9XalanNodeEEclEPS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 !prof !118 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_9XalanNodeEEclERS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %6 = load ptr, ptr %2, align 8, !tbaa !157
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %1) #16
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_9XalanNodeEEclERS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %3 = load ptr, ptr %1, align 8, !tbaa !157
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !245 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %5 = load i64, ptr %3, align 8, !tbaa !182
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !prof !246, !llvm.loop !247

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !248 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !182
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !182
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !185
  %7 = getelementptr inbounds ptr, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %7) #16
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XercesDocumentWrapper14rebuildWrapperEv(ptr noundef nonnull align 8 dereferenceable(432) %0) local_unnamed_addr #1 align 2 !prof !118 {
  tail call void @_ZN11xalanc_1_1021XercesDocumentWrapper14destroyWrapperEv(ptr noundef nonnull align 8 dereferenceable(432) %0) #16
  tail call void @_ZN11xalanc_1_1021XercesDocumentWrapper17buildWrapperNodesEv(ptr noundef nonnull align 8 dereferenceable(432) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper15createNavigatorEv(ptr noundef nonnull align 8 dereferenceable(432) %0) local_unnamed_addr #1 align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 5
  %3 = tail call noundef ptr @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocator6createEPNS_21XercesDocumentWrapperE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %0) #16
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_715DOMDocumentTypeEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef writeonly %4) local_unnamed_addr #1 align 2 !prof !118 {
  %6 = alloca ptr, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper15createNavigatorEv(ptr noundef nonnull align 8 dereferenceable(432) %0) #16
  tail call void @_ZN11xalanc_1_1022XercesWrapperNavigator8setIndexEm(ptr noundef nonnull align 8 dereferenceable(64) %7, i64 noundef %2) #16
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(432) %0) #16
  %9 = tail call noundef ptr @_ZN11xalanc_1_1025XercesDocumentTypeWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_15DOMDocumentTypeERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %7) #16
  %10 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 9
  store ptr %9, ptr %10, align 8, !tbaa !162
  br i1 %3, label %11, label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap14addAssociationEPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(136) %12, ptr noundef %1, ptr noundef %9) #16
  %13 = load ptr, ptr %10, align 8, !tbaa !162
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi ptr [ %13, %11 ], [ %9, %5 ]
  %16 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  store ptr %15, ptr %6, align 8, !tbaa !170
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  %17 = icmp eq ptr %4, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store ptr %7, ptr %4, align 8, !tbaa !170
  br label %19

19:                                               ; preds = %18, %14
  %20 = load ptr, ptr %10, align 8, !tbaa !162
  ret ptr %20
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1025XercesDocumentTypeWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_15DOMDocumentTypeERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(432) %0) local_unnamed_addr #1 comdat align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(136) %2) #16
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !249 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #1 comdat align 2 !prof !118 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #16
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !250
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !251 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !182
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !183
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !252

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %11 = load ptr, ptr %0, align 8, !tbaa !181
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_9XalanNodeEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #16
  %13 = load i64, ptr %4, align 8, !tbaa !182
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !182
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !253
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %21 = load ptr, ptr %0, align 8, !tbaa !181
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #16
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_9XalanNodeEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !202 {
  %4 = load ptr, ptr %1, align 8, !tbaa !170
  store ptr %4, ptr %0, align 8, !tbaa !170
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !193 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  store ptr %2, ptr %0, align 8, !tbaa !181
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !182
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !254

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #16
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #16
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #16
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #16
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #16
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !255

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #16
  store ptr %24, ptr %8, align 8, !tbaa !185
  store i64 %3, ptr %7, align 8, !tbaa !183
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !256 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %3 = load ptr, ptr %0, align 8, !tbaa !181
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !185
  %7 = load ptr, ptr %1, align 8, !tbaa !181
  store ptr %7, ptr %0, align 8, !tbaa !181
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !257
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !185
  store ptr %11, ptr %5, align 8, !tbaa !185
  store ptr %3, ptr %1, align 8, !tbaa !181
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !257
  store <2 x i64> %9, ptr %4, align 8, !tbaa !257
  store <2 x i64> %12, ptr %8, align 8, !tbaa !257
  store ptr %6, ptr %10, align 8, !tbaa !185
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !258 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !258 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #16
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8, !prof !259

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28, !prof !260

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #16
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16, !prof !261

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !181
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_9XalanNodeEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #16
  %23 = getelementptr inbounds ptr, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !182
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !182
  %26 = getelementptr inbounds ptr, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !prof !262, !llvm.loop !263

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %32 = load ptr, ptr %0, align 8, !tbaa !181
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #16
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #16
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #16
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #16
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #16
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %57) #16
  %58 = getelementptr inbounds ptr, ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !llvm.loop !264

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %61) #16
  %62 = getelementptr inbounds ptr, ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !llvm.loop !265

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_109XalanNodeEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #16
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds ptr, ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %72) #16
  %73 = getelementptr inbounds ptr, ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !266

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds ptr, ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_109XalanNodeES3_ET0_T_S5_S4_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #16
  %78 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_109XalanNodeEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #16
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !267 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !185
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !267 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !268 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %1, ptr noundef %2) #16
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !269 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !182
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !270 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6, !prof !271

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #16
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !270 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !183
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKPN11xalanc_1_109XalanNodeEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !118 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_109XalanNodeEET_S5_(ptr noundef %0) #16
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_109XalanNodeEET_S5_(ptr noundef %1) #16
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKPN11xalanc_1_109XalanNodeEPS2_ET1_T0_S7_S6_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #16
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_109XalanNodeES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !118 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %0) #16
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %1) #16
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #16
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !268 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !170
  call void @_ZSt19__iterator_categoryIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %4 = call noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #16
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !268 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !272 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !273 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %4 = load ptr, ptr %0, align 8, !tbaa !181
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #16
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKPN11xalanc_1_109XalanNodeEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !118 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !170
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_109XalanNodeEET_S5_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_109XalanNodeEET_S5_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %2) #14
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_109XalanNodeEPS2_ET1_T0_S7_S6_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #16
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_109XalanNodeEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #16
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_109XalanNodeEET_S5_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !118 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_109XalanNodeEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !274 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_109XalanNodeEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !118 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_109XalanNodeEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_109XalanNodeEET_S5_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !118 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !275 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_109XalanNodeEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !118 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_109XalanNodeEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_109XalanNodeEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !274 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !276

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
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !118 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !170
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %2) #14
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #16
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_109XalanNodeEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #16
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !277 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !118 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !118 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_109XalanNodeEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_109XalanNodeEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !118 {
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
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !267 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !185
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !182
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_710DOMElementEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef writeonly %4) local_unnamed_addr #1 align 2 !prof !118 {
  %6 = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper15createNavigatorEv(ptr noundef nonnull align 8 dereferenceable(432) %0) #16
  tail call void @_ZN11xalanc_1_1022XercesWrapperNavigator8setIndexEm(ptr noundef nonnull align 8 dereferenceable(64) %6, i64 noundef %2) #16
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 13
  %8 = tail call noundef ptr @_ZN11xalanc_1_1029XercesElementWrapperAllocator6createEPKN11xercesc_2_710DOMElementERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %6) #16
  %9 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !162
  %11 = icmp ne ptr %10, null
  %12 = or i1 %11, %3
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap14addAssociationEPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(136) %14, ptr noundef %1, ptr noundef %8) #16
  br label %15

15:                                               ; preds = %5, %13
  %16 = icmp eq ptr %4, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  store ptr %6, ptr %4, align 8, !tbaa !170
  br label %18

18:                                               ; preds = %17, %15
  ret ptr %8
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1029XercesElementWrapperAllocator6createEPKN11xercesc_2_710DOMElementERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_77DOMTextEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef writeonly %4) local_unnamed_addr #1 align 2 !prof !118 {
  %6 = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper15createNavigatorEv(ptr noundef nonnull align 8 dereferenceable(432) %0) #16
  tail call void @_ZN11xalanc_1_1022XercesWrapperNavigator8setIndexEm(ptr noundef nonnull align 8 dereferenceable(64) %6, i64 noundef %2) #16
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 14
  %8 = tail call noundef ptr @_ZN11xalanc_1_1026XercesTextWrapperAllocator6createEPKN11xercesc_2_77DOMTextERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %6) #16
  br i1 %3, label %9, label %11

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap14addAssociationEPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(136) %10, ptr noundef %1, ptr noundef %8) #16
  br label %11

11:                                               ; preds = %9, %5
  %12 = icmp eq ptr %4, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  store ptr %6, ptr %4, align 8, !tbaa !170
  br label %14

14:                                               ; preds = %13, %11
  ret ptr %8
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1026XercesTextWrapperAllocator6createEPKN11xercesc_2_77DOMTextERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_710DOMCommentEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef writeonly %4) local_unnamed_addr #1 align 2 !prof !118 {
  %6 = alloca ptr, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper15createNavigatorEv(ptr noundef nonnull align 8 dereferenceable(432) %0) #16
  tail call void @_ZN11xalanc_1_1022XercesWrapperNavigator8setIndexEm(ptr noundef nonnull align 8 dereferenceable(64) %7, i64 noundef %2) #16
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(432) %0) #16
  %9 = tail call noundef ptr @_ZN11xalanc_1_1020XercesCommentWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_10DOMCommentERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %7) #16
  %10 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  store ptr %9, ptr %6, align 8, !tbaa !170
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  br i1 %3, label %11, label %13

11:                                               ; preds = %5
  %12 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3
  call void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap14addAssociationEPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(136) %12, ptr noundef %1, ptr noundef %9) #16
  br label %13

13:                                               ; preds = %11, %5
  %14 = icmp eq ptr %4, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  store ptr %7, ptr %4, align 8, !tbaa !170
  br label %16

16:                                               ; preds = %15, %13
  ret ptr %9
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1020XercesCommentWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_10DOMCommentERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_715DOMCDATASectionEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef writeonly %4) local_unnamed_addr #1 align 2 !prof !118 {
  %6 = alloca ptr, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper15createNavigatorEv(ptr noundef nonnull align 8 dereferenceable(432) %0) #16
  tail call void @_ZN11xalanc_1_1022XercesWrapperNavigator8setIndexEm(ptr noundef nonnull align 8 dereferenceable(64) %7, i64 noundef %2) #16
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(432) %0) #16
  %9 = tail call noundef ptr @_ZN11xalanc_1_1025XercesCDATASectionWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_15DOMCDATASectionERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %7) #16
  %10 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  store ptr %9, ptr %6, align 8, !tbaa !170
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  br i1 %3, label %11, label %13

11:                                               ; preds = %5
  %12 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3
  call void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap14addAssociationEPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(136) %12, ptr noundef %1, ptr noundef %9) #16
  br label %13

13:                                               ; preds = %11, %5
  %14 = icmp eq ptr %4, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  store ptr %7, ptr %4, align 8, !tbaa !170
  br label %16

16:                                               ; preds = %15, %13
  ret ptr %9
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1025XercesCDATASectionWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_15DOMCDATASectionERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_724DOMProcessingInstructionEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef writeonly %4) local_unnamed_addr #1 align 2 !prof !118 {
  %6 = alloca ptr, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper15createNavigatorEv(ptr noundef nonnull align 8 dereferenceable(432) %0) #16
  tail call void @_ZN11xalanc_1_1022XercesWrapperNavigator8setIndexEm(ptr noundef nonnull align 8 dereferenceable(64) %7, i64 noundef %2) #16
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(432) %0) #16
  %9 = tail call noundef ptr @_ZN11xalanc_1_1034XercesProcessingInstructionWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_24DOMProcessingInstructionERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %7) #16
  %10 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  store ptr %9, ptr %6, align 8, !tbaa !170
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  br i1 %3, label %11, label %13

11:                                               ; preds = %5
  %12 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3
  call void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap14addAssociationEPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(136) %12, ptr noundef %1, ptr noundef %9) #16
  br label %13

13:                                               ; preds = %11, %5
  %14 = icmp eq ptr %4, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  store ptr %7, ptr %4, align 8, !tbaa !170
  br label %16

16:                                               ; preds = %15, %13
  ret ptr %9
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1034XercesProcessingInstructionWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_24DOMProcessingInstructionERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_77DOMAttrEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, i64 noundef %2, i1 zeroext %3, ptr noundef writeonly %4) local_unnamed_addr #1 align 2 !prof !118 {
  %6 = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper15createNavigatorEv(ptr noundef nonnull align 8 dereferenceable(432) %0) #16
  tail call void @_ZN11xalanc_1_1022XercesWrapperNavigator8setIndexEm(ptr noundef nonnull align 8 dereferenceable(64) %6, i64 noundef %2) #16
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 15
  %8 = tail call noundef ptr @_ZN11xalanc_1_1026XercesAttrWrapperAllocator6createEPKN11xercesc_2_77DOMAttrERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %6) #16
  %9 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap14addAssociationEPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(136) %9, ptr noundef %1, ptr noundef %8) #16
  %10 = icmp eq ptr %4, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  store ptr %6, ptr %4, align 8, !tbaa !170
  br label %12

12:                                               ; preds = %11, %5
  ret ptr %8
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1026XercesAttrWrapperAllocator6createEPKN11xercesc_2_77DOMAttrERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_79DOMEntityEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, i64 noundef %2, i1 zeroext %3, ptr noundef writeonly %4) local_unnamed_addr #1 align 2 !prof !118 {
  %6 = alloca ptr, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper15createNavigatorEv(ptr noundef nonnull align 8 dereferenceable(432) %0) #16
  tail call void @_ZN11xalanc_1_1022XercesWrapperNavigator8setIndexEm(ptr noundef nonnull align 8 dereferenceable(64) %7, i64 noundef %2) #16
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(432) %0) #16
  %9 = tail call noundef ptr @_ZN11xalanc_1_1019XercesEntityWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_9DOMEntityERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %7) #16
  %10 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  store ptr %9, ptr %6, align 8, !tbaa !170
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  %11 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3
  call void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap14addAssociationEPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(136) %11, ptr noundef %1, ptr noundef %9) #16
  %12 = icmp eq ptr %4, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %5
  store ptr %7, ptr %4, align 8, !tbaa !170
  br label %14

14:                                               ; preds = %13, %5
  ret ptr %9
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1019XercesEntityWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_9DOMEntityERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_718DOMEntityReferenceEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef writeonly %4) local_unnamed_addr #1 align 2 !prof !118 {
  %6 = alloca ptr, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper15createNavigatorEv(ptr noundef nonnull align 8 dereferenceable(432) %0) #16
  tail call void @_ZN11xalanc_1_1022XercesWrapperNavigator8setIndexEm(ptr noundef nonnull align 8 dereferenceable(64) %7, i64 noundef %2) #16
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(432) %0) #16
  %9 = tail call noundef ptr @_ZN11xalanc_1_1028XercesEntityReferenceWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_18DOMEntityReferenceERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %7) #16
  %10 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  store ptr %9, ptr %6, align 8, !tbaa !170
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  br i1 %3, label %11, label %13

11:                                               ; preds = %5
  %12 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3
  call void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap14addAssociationEPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(136) %12, ptr noundef %1, ptr noundef %9) #16
  br label %13

13:                                               ; preds = %11, %5
  %14 = icmp eq ptr %4, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  store ptr %7, ptr %4, align 8, !tbaa !170
  br label %16

16:                                               ; preds = %15, %13
  ret ptr %9
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1028XercesEntityReferenceWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_18DOMEntityReferenceERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_711DOMNotationEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, i64 noundef %2, i1 zeroext %3, ptr noundef writeonly %4) local_unnamed_addr #1 align 2 !prof !118 {
  %6 = alloca ptr, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper15createNavigatorEv(ptr noundef nonnull align 8 dereferenceable(432) %0) #16
  tail call void @_ZN11xalanc_1_1022XercesWrapperNavigator8setIndexEm(ptr noundef nonnull align 8 dereferenceable(64) %7, i64 noundef %2) #16
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(432) %0) #16
  %9 = tail call noundef ptr @_ZN11xalanc_1_1021XercesNotationWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_11DOMNotationERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %7) #16
  %10 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  store ptr %9, ptr %6, align 8, !tbaa !170
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  %11 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3
  call void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap14addAssociationEPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(136) %11, ptr noundef %1, ptr noundef %9) #16
  %12 = icmp eq ptr %4, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %5
  store ptr %7, ptr %4, align 8, !tbaa !170
  br label %14

14:                                               ; preds = %13, %5
  ret ptr %9
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1021XercesNotationWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_11DOMNotationERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XercesDocumentWrapper11destroyNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !170
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 8
  %5 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  %7 = call noundef ptr @_ZSt4findIPPN11xalanc_1_109XalanNodeES2_ET_S4_S4_RKT0_(ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %8 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %11, i32 noundef 4) #16
          to label %12 unwind label %13

12:                                               ; preds = %10
  call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #18
  unreachable

13:                                               ; preds = %10
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %11) #17
  resume { ptr, i32 } %14

15:                                               ; preds = %2
  %16 = load ptr, ptr %7, align 8, !tbaa !170
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  %20 = load ptr, ptr %16, align 8, !tbaa !157
  %21 = load ptr, ptr %20, align 8
  call void %21(ptr noundef nonnull align 8 dereferenceable(8) %16) #14
  %22 = load ptr, ptr %19, align 8, !tbaa !157
  %23 = getelementptr inbounds ptr, ptr %22, i64 3
  %24 = load ptr, ptr %23, align 8
  call void %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull %16) #16
  br label %25

25:                                               ; preds = %18, %15
  %26 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %7) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4findIPPN11xalanc_1_109XalanNodeES2_ET_S4_S4_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat !prof !118 {
  %4 = tail call ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKPN11xalanc_1_109XalanNodeEEENS0_16_Iter_equals_valIT_EERS7_(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  %5 = tail call noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_(ptr noundef %0, ptr noundef %1, ptr %4) #16
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !118 {
  %3 = getelementptr inbounds ptr, ptr %1, i64 1
  %4 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull %3) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #1 comdat !prof !274 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !170
  call void @_ZSt19__iterator_categoryIPPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  %5 = call noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) #16
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKPN11xalanc_1_109XalanNodeEEENS0_16_Iter_equals_valIT_EERS7_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat !prof !274 {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8
  call void @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_109XalanNodeEEC2ERS5_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #1 comdat !prof !274 {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8
  store ptr %2, ptr %4, align 8
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = ashr i64 %7, 5
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %30, !prof !278

10:                                               ; preds = %3, %23
  %11 = phi i64 [ %25, %23 ], [ %8, %3 ]
  %12 = phi ptr [ %24, %23 ], [ %0, %3 ]
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_109XalanNodeEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %12) #16
  br i1 %13, label %47, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %12, i64 1
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_109XalanNodeEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %15) #16
  br i1 %16, label %47, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds ptr, ptr %12, i64 2
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_109XalanNodeEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %18) #16
  br i1 %19, label %47, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds ptr, ptr %12, i64 3
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_109XalanNodeEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %21) #16
  br i1 %22, label %47, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds ptr, ptr %12, i64 4
  %25 = add nsw i64 %11, -1
  %26 = icmp sgt i64 %11, 1
  br i1 %26, label %10, label %27, !prof !279, !llvm.loop !280

27:                                               ; preds = %23
  %28 = ptrtoint ptr %24 to i64
  %29 = sub i64 %5, %28
  br label %30

30:                                               ; preds = %27, %3
  %31 = phi i64 [ %29, %27 ], [ %7, %3 ]
  %32 = phi ptr [ %24, %27 ], [ %0, %3 ]
  %33 = ashr exact i64 %31, 3
  switch i64 %33, label %46 [
    i64 3, label %34
    i64 2, label %38
    i64 1, label %43
  ], !prof !281

34:                                               ; preds = %30
  %35 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_109XalanNodeEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %32) #16
  br i1 %35, label %47, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds ptr, ptr %32, i64 1
  br label %38

38:                                               ; preds = %30, %36
  %39 = phi ptr [ %32, %30 ], [ %37, %36 ]
  %40 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_109XalanNodeEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %39) #16
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds ptr, ptr %39, i64 1
  br label %43

43:                                               ; preds = %30, %41
  %44 = phi ptr [ %32, %30 ], [ %42, %41 ]
  %45 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_109XalanNodeEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %44) #16
  br i1 %45, label %47, label %46, !prof !276

46:                                               ; preds = %43, %30
  br label %47

47:                                               ; preds = %20, %17, %14, %10, %43, %38, %34, %46
  %48 = phi ptr [ %1, %46 ], [ %32, %34 ], [ %39, %38 ], [ %44, %43 ], [ %21, %20 ], [ %18, %17 ], [ %15, %14 ], [ %12, %10 ]
  ret ptr %48
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !274 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_109XalanNodeEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !274 {
  %3 = load ptr, ptr %1, align 8, !tbaa !170
  %4 = load ptr, ptr %0, align 8, !tbaa !282
  %5 = load ptr, ptr %4, align 8, !tbaa !170
  %6 = icmp eq ptr %3, %5
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_109XalanNodeEEC2ERS5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !274 {
  store ptr %1, ptr %0, align 8, !tbaa !170
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !274 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %9, label %5, !prof !284

5:                                                ; preds = %3
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %7 = tail call noundef ptr @_ZSt4copyIPPN11xalanc_1_109XalanNodeES3_ET0_T_S5_S4_(ptr noundef %2, ptr noundef %6, ptr noundef %1) #16
  %8 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #16
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8) #16
  br label %9

9:                                                ; preds = %5, %3
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPPN11xalanc_1_109XalanNodeES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !274 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %0) #16
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %1) #16
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #16
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !274 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %8, label %4, !prof !278

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %6, %4 ], [ %1, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %6 = add i64 %5, -1
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %4, !prof !285, !llvm.loop !286

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !274 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !170
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %2) #14
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #16
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_109XalanNodeEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #16
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !274 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !274 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_109XalanNodeEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator13getFirstChildEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator12getLastChildEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1019XercesWrapperHelper11isSupportedEPKN11xercesc_2_77DOMNodeERKNS_14XalanDOMStringES7_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1022XercesWrapperNavigator8getIndexEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 7
  %3 = load i64, ptr %2, align 8, !tbaa !186
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !192
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat !prof !287 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #16
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !288 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #16
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  br i1 %2, label %5, label %3, !prof !289

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #16
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !290 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !291 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.17", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !292
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !294 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.17", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !295
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !296 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022XercesWrapperNavigator13setFirstChildEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 5
  store ptr %1, ptr %3, align 8, !tbaa !297
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1015XercesDOMWalker8traverseEPKN11xercesc_2_77DOMNodeES4_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !297
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerC2EPS0_PNS_22XercesWrapperNavigatorEmb(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %6 = alloca %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", align 8
  %7 = alloca %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", align 8
  %8 = zext i1 %4 to i8
  tail call void @_ZN11xalanc_1_1015XercesDOMWalkerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !157
  %9 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !164
  %10 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 2
  store i64 %3, ptr %10, align 8, !tbaa !168
  %11 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 3
  %12 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(432) %1) #16
          to label %13 unwind label %24

13:                                               ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0) #16
          to label %14 unwind label %24

14:                                               ; preds = %13
  %15 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 4
  %16 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(432) %1) #16
          to label %17 unwind label %26

17:                                               ; preds = %14
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef 0) #16
          to label %18 unwind label %26

18:                                               ; preds = %17
  %19 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 5
  store i8 %8, ptr %19, align 8, !tbaa !169
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 100) #16
          to label %20 unwind label %28

20:                                               ; preds = %18
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 100) #16
          to label %21 unwind label %28

21:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  call void @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeC2EPNS_22XercesWrapperNavigatorEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %2, ptr noundef nonnull %1) #16
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(16) %6) #16
          to label %22 unwind label %30

22:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #17
  call void @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeC2EPNS_22XercesWrapperNavigatorEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null, ptr noundef null) #16
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(16) %7) #16
          to label %23 unwind label %32

23:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #17
  ret void

24:                                               ; preds = %13, %5
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %38

26:                                               ; preds = %17, %14
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %36

28:                                               ; preds = %20, %18
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %34

30:                                               ; preds = %21
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  br label %34

32:                                               ; preds = %22
  %33 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #17
  br label %34

34:                                               ; preds = %32, %30, %28
  %35 = phi { ptr, i32 } [ %33, %32 ], [ %31, %30 ], [ %29, %28 ]
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #14
  br label %36

36:                                               ; preds = %34, %26
  %37 = phi { ptr, i32 } [ %35, %34 ], [ %27, %26 ]
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #14
  br label %38

38:                                               ; preds = %36, %24
  %39 = phi { ptr, i32 } [ %37, %36 ], [ %25, %24 ]
  call void @_ZN11xalanc_1_1015XercesDOMWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  resume { ptr, i32 } %39
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1015XercesDOMWalkerC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 !prof !118 {
  store ptr %1, ptr %0, align 8, !tbaa !298
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !299
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !300
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #16
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !301
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !118 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !300
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #16
  br label %7

7:                                                ; preds = %6, %2
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 !prof !118 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #16
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeC2EPNS_22XercesWrapperNavigatorEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !118 {
  store ptr %1, ptr %0, align 8, !tbaa !173
  %4 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !171
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !300
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyEPS3_S7_(ptr noundef %6, ptr noundef %7) #16
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !301
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10deallocateEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #16
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

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1015XercesDOMWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !118 {
  %3 = shl i64 %1, 4
  %4 = load ptr, ptr %0, align 8, !tbaa !298
  %5 = load ptr, ptr %4, align 8, !tbaa !157
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #16
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.18", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %4 = load ptr, ptr %0, align 8, !tbaa !298
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #16
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE4swapERS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.18", align 8
  store ptr %2, ptr %0, align 8, !tbaa !298
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !299
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #16
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #16
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #16
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #16
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #16
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE4swapERS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #16
  store ptr %24, ptr %8, align 8, !tbaa !301
  store i64 %3, ptr %7, align 8, !tbaa !300
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE4swapERS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !118 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %3 = load ptr, ptr %0, align 8, !tbaa !298
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !301
  %7 = load ptr, ptr %1, align 8, !tbaa !298
  store ptr %7, ptr %0, align 8, !tbaa !298
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !257
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !301
  store ptr %11, ptr %5, align 8, !tbaa !301
  store ptr %3, ptr %1, align 8, !tbaa !298
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !257
  store <2 x i64> %9, ptr %4, align 8, !tbaa !257
  store <2 x i64> %12, ptr %8, align 8, !tbaa !257
  store ptr %6, ptr %10, align 8, !tbaa !301
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.18", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE14local_distanceEPKS3_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #16
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #16
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !298
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEE9constructEPS3_RKS3_RN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #16
  %23 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !299
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !299
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !llvm.loop !302

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %32 = load ptr, ptr %0, align 8, !tbaa !298
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #16
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #16
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #16
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #16
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE4swapERS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE14local_distanceEPKS3_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #16
  %50 = icmp ugt i64 %49, %6
  br i1 %50, label %66, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %2, i64 %49
  %53 = icmp eq ptr %52, %3
  br i1 %53, label %54, label %56

54:                                               ; preds = %56, %51
  %55 = icmp eq ptr %48, %1
  br i1 %55, label %64, label %60

56:                                               ; preds = %51, %56
  %57 = phi ptr [ %58, %56 ], [ %52, %51 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %57) #16
  %58 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !llvm.loop !303

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %61) #16
  %62 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !llvm.loop !304

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEPS3_ET0_T_S8_S7_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #16
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %72) #16
  %73 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !305

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeES4_ET0_T_S6_S5_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #16
  %78 = tail call noundef ptr @_ZSt4copyIPKN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEPS3_ET0_T_S8_S7_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #16
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !301
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !301
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !118 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE14local_distanceEPKS3_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !118 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEENSt15iterator_traitsIT_E15difference_typeES7_S7_(ptr noundef %1, ptr noundef %2) #16
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !299
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !118 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !118 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #16
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEE9constructEPS3_RKS3_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !118 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !306
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !300
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.18", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !299
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !300
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %11 = load ptr, ptr %0, align 8, !tbaa !298
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEE9constructEPS3_RKS3_RN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #16
  %13 = load i64, ptr %4, align 8, !tbaa !299
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !299
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %21 = load ptr, ptr %0, align 8, !tbaa !298
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #16
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %1) #16
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE4swapERS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEPS3_ET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !118 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEET_S6_(ptr noundef %0) #16
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEET_S6_(ptr noundef %1) #16
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEPS3_ET1_T0_S8_S7_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #16
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeES4_ET0_T_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !118 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEET_S5_(ptr noundef %0) #16
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEET_S5_(ptr noundef %1) #16
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeES4_ET1_T0_S6_S5_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #16
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEENSt15iterator_traitsIT_E15difference_typeES7_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !118 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !170
  call void @_ZSt19__iterator_categoryIPKN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEENSt15iterator_traitsIT_E17iterator_categoryERKS7_(ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %4 = call noundef i64 @_ZSt10__distanceIPKN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEENSt15iterator_traitsIT_E15difference_typeES7_S7_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #16
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEENSt15iterator_traitsIT_E15difference_typeES7_S7_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !118 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 4
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEENSt15iterator_traitsIT_E17iterator_categoryERKS7_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !118 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !301
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !299
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEPS3_ET1_T0_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !118 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !170
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEET_S6_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEET_S6_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEET_S5_(ptr noundef %2) #14
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEPS3_ET1_T0_S8_S7_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #16
  %9 = call noundef ptr @_ZSt12__niter_wrapIPN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEET_RKS5_S5_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #16
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEET_S6_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !118 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEET_RKS5_S5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !118 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEPS3_ET1_T0_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !118 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEPS3_ET1_T0_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEET_S6_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !118 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEET_S5_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !118 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEPS3_ET1_T0_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !118 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEEEPT_PKS7_SA_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEEEPT_PKS7_SA_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !118 {
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
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeES4_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !118 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !170
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEET_S5_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEET_S5_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEET_S5_(ptr noundef %2) #14
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeES4_ET1_T0_S6_S5_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #16
  %9 = call noundef ptr @_ZSt12__niter_wrapIPN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEET_RKS5_S5_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #16
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEET_S5_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !118 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeES4_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !118 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeES4_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeES4_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !118 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEEEPT_PKS7_SA_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeEEEPT_PKS7_SA_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 4
  %8 = icmp eq ptr %1, %0
  %9 = sub nsw i64 0, %7
  br i1 %8, label %12, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %2, i64 %9
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %11, ptr align 8 %0, i64 %6, i1 false)
  br label %12

12:                                               ; preds = %3, %10
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %2, i64 %9
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !301
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !299
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyEPS3_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !118 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyERS3_(ptr noundef nonnull align 8 dereferenceable(16) %5) #16
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !llvm.loop !307

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10deallocateEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !118 {
  %3 = load ptr, ptr %0, align 8, !tbaa !298
  %4 = load ptr, ptr %3, align 8, !tbaa !157
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyERS3_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(89) %0) unnamed_addr #0 align 2 !prof !118 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !157
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  tail call void @_ZN11xalanc_1_1015XercesDOMWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !301
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !299
  %6 = getelementptr %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %3, i64 %5
  %7 = getelementptr %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %6, i64 -1
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022XercesWrapperNavigator13setParentNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !308
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022XercesWrapperNavigator12setLastChildEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 6
  store ptr %1, ptr %3, align 8, !tbaa !309
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022XercesWrapperNavigator18setPreviousSiblingEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !310
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022XercesWrapperNavigator14setNextSiblingEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 4
  store ptr %1, ptr %3, align 8, !tbaa !311
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !299
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !299
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !301
  %7 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyERS3_(ptr noundef nonnull align 8 dereferenceable(16) %7) #16
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper15getPooledStringERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 align 2 !prof !118 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 16
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #16
  %5 = load ptr, ptr %4, align 8, !tbaa !157
  %6 = getelementptr inbounds ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr %7(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull align 8 dereferenceable(36) %1) #16
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper15getPooledStringEPKtj(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !118 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 16
  %5 = tail call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #16
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr %8(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef %1, i32 noundef %2) #16
  ret ptr %9
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind optsize }
attributes #15 = { builtin nounwind optsize }
attributes #16 = { optsize }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!117}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116}
!36 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 52668}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 105337}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 52673}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 52673}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_, i64 52673}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_, i64 52673}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_, i64 298119648}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 357177}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 418513}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 418513}
!47 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 6463696}
!48 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm, i64 1272729}
!49 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, i64 2036727}
!50 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 7270082}
!51 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_, i64 3635041}
!52 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 7034618}
!53 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 3517309}
!54 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 7034976}
!55 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 3517308}
!56 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_9XalanNodeEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE, i64 3517308}
!57 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 180}
!58 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 180}
!59 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 180}
!60 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 180}
!61 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm, i64 52642}
!62 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 52642}
!63 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 52642}
!64 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 52642}
!65 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 52642}
!66 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, i64 52642}
!67 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 52642}
!68 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 52642}
!69 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm, i64 30}
!70 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 52673}
!71 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2679832}
!72 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 105285}
!73 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_, i64 52643}
!74 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, i64 52642}
!75 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 52642}
!76 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, i64 52641}
!77 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_9XalanNodeEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE, i64 298098808}
!78 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, i64 1}
!79 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 15}
!80 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 336428}
!81 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 336428}
!82 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 336428}
!83 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_, ptr @_ZSt8distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_, i64 124518}
!84 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2414026}
!85 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, i64 180149}
!86 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 52480}
!87 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 180149}
!88 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 180149}
!89 = !{ptr @_ZSt8distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_, ptr @_ZSt19__iterator_categoryIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E17iterator_categoryERKS6_, i64 124518}
!90 = !{ptr @_ZSt8distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_, ptr @_ZSt10__distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag, i64 124518}
!91 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 104988}
!92 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 52494}
!93 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 52494}
!94 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 52494}
!95 = !{ptr @_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_, ptr @_ZSt19__iterator_categoryIPPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E17iterator_categoryERKS5_, i64 19395}
!96 = !{ptr @_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_, ptr @_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag, i64 19395}
!97 = !{ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKPN11xalanc_1_109XalanNodeEEENS0_16_Iter_equals_valIT_EERS7_, ptr @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_109XalanNodeEEC2ERS5_, i64 19395}
!98 = !{ptr @_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag, ptr @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_109XalanNodeEEclIPS4_EEbT_, i64 19398}
!99 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 38790}
!100 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 19394}
!101 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_, ptr @_ZSt4copyIPPN11xalanc_1_109XalanNodeES3_ET0_T_S5_S4_, i64 19394}
!102 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_, i64 19394}
!103 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE11shrinkCountEm, i64 19394}
!104 = !{ptr @_ZSt4copyIPPN11xalanc_1_109XalanNodeES3_ET0_T_S5_S4_, ptr @_ZSt12__miter_baseIPPN11xalanc_1_109XalanNodeEET_S4_, i64 38790}
!105 = !{ptr @_ZSt4copyIPPN11xalanc_1_109XalanNodeES3_ET0_T_S5_S4_, ptr @_ZSt13__copy_move_aILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_, i64 19395}
!106 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE11shrinkCountEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, i64 19395}
!107 = !{ptr @_ZSt13__copy_move_aILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_, ptr @_ZSt12__niter_baseIPPN11xalanc_1_109XalanNodeEET_S4_, i64 58185}
!108 = !{ptr @_ZSt13__copy_move_aILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_, ptr @_ZSt14__copy_move_a1ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_, i64 19395}
!109 = !{ptr @_ZSt13__copy_move_aILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_, ptr @_ZSt12__niter_wrapIPPN11xalanc_1_109XalanNodeEET_RKS4_S4_, i64 19395}
!110 = !{ptr @_ZSt14__copy_move_a1ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_, ptr @_ZSt14__copy_move_a2ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_, i64 19395}
!111 = !{ptr @_ZSt14__copy_move_a2ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_109XalanNodeEEEPT_PKS6_S9_S7_, i64 19395}
!112 = !{ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 12093723}
!113 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!114 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!115 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!116 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!117 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!118 = !{!"function_entry_count", i64 0}
!119 = !{!120, !123, i64 216}
!120 = !{!"_ZTSN11xalanc_1_1021XercesDocumentWrapperE", !121, i64 0, !123, i64 8, !123, i64 16, !126, i64 24, !134, i64 160, !137, i64 176, !123, i64 216, !140, i64 224, !142, i64 248, !123, i64 280, !143, i64 288, !143, i64 289, !143, i64 290, !144, i64 296, !147, i64 336, !150, i64 376, !153, i64 416}
!121 = !{!"_ZTSN11xalanc_1_1013XalanDocumentE", !122, i64 0}
!122 = !{!"_ZTSN11xalanc_1_109XalanNodeE"}
!123 = !{!"any pointer", !124, i64 0}
!124 = !{!"omnipotent char", !125, i64 0}
!125 = !{!"Simple C++ TBAA"}
!126 = !{!"_ZTSN11xalanc_1_1027XercesWrapperToXalanNodeMapE", !127, i64 0}
!127 = !{!"_ZTSN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEEE", !128, i64 0, !129, i64 1, !123, i64 8, !130, i64 16, !131, i64 24, !131, i64 32, !132, i64 40, !132, i64 64, !133, i64 88, !131, i64 120, !131, i64 128}
!128 = !{!"_ZTSN11xalanc_1_1011XalanHasherIPKN11xercesc_2_77DOMNodeEEE"}
!129 = !{!"_ZTSSt8equal_toIPKN11xercesc_2_77DOMNodeEE"}
!130 = !{!"float", !124, i64 0}
!131 = !{!"long", !124, i64 0}
!132 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEEE", !123, i64 0, !123, i64 8, !123, i64 16}
!133 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEEE", !123, i64 0, !131, i64 8, !131, i64 16, !123, i64 24}
!134 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EEE", !135, i64 0}
!135 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EE17MemMgrAutoPtrDataE", !136, i64 0}
!136 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1022XalanDOMImplementationEE", !123, i64 0, !123, i64 8}
!137 = !{!"_ZTSN11xalanc_1_1031XercesWrapperNavigatorAllocatorE", !138, i64 0}
!138 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEEE", !131, i64 8, !139, i64 16}
!139 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEEE", !123, i64 0, !123, i64 8, !123, i64 16}
!140 = !{!"_ZTSN11xalanc_1_1021XercesNodeListWrapperE", !141, i64 0, !123, i64 8, !123, i64 16}
!141 = !{!"_ZTSN11xalanc_1_1013XalanNodeListE"}
!142 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEE", !123, i64 0, !131, i64 8, !131, i64 16, !123, i64 24}
!143 = !{!"bool", !124, i64 0}
!144 = !{!"_ZTSN11xalanc_1_1029XercesElementWrapperAllocatorE", !145, i64 0}
!145 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_20XercesElementWrapperENS_10ArenaBlockIS1_mEEEE", !131, i64 8, !146, i64 16}
!146 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_20XercesElementWrapperEmEEEE", !123, i64 0, !123, i64 8, !123, i64 16}
!147 = !{!"_ZTSN11xalanc_1_1026XercesTextWrapperAllocatorE", !148, i64 0}
!148 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_17XercesTextWrapperENS_10ArenaBlockIS1_mEEEE", !131, i64 8, !149, i64 16}
!149 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17XercesTextWrapperEmEEEE", !123, i64 0, !123, i64 8, !123, i64 16}
!150 = !{!"_ZTSN11xalanc_1_1026XercesAttrWrapperAllocatorE", !151, i64 0}
!151 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_17XercesAttrWrapperENS_10ArenaBlockIS1_mEEEE", !131, i64 8, !152, i64 16}
!152 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17XercesAttrWrapperEmEEEE", !123, i64 0, !123, i64 8, !123, i64 16}
!153 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EEE", !154, i64 0}
!154 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EE17MemMgrAutoPtrDataE", !155, i64 0}
!155 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1018XalanDOMStringPoolEE", !123, i64 0, !123, i64 8}
!156 = !{!120, !123, i64 8}
!157 = !{!158, !158, i64 0}
!158 = !{!"vtable pointer", !125, i64 0}
!159 = !{!120, !143, i64 289}
!160 = !{i8 0, i8 2}
!161 = !{}
!162 = !{!120, !123, i64 280}
!163 = !{!120, !123, i64 16}
!164 = !{!165, !123, i64 8}
!165 = !{!"_ZTSN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerE", !166, i64 0, !123, i64 8, !131, i64 16, !167, i64 24, !167, i64 56, !143, i64 88}
!166 = !{!"_ZTSN11xalanc_1_1015XercesDOMWalkerE"}
!167 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEEE", !123, i64 0, !131, i64 8, !131, i64 16, !123, i64 24}
!168 = !{!165, !131, i64 16}
!169 = !{!165, !143, i64 88}
!170 = !{!123, !123, i64 0}
!171 = !{!172, !123, i64 8}
!172 = !{!"_ZTSN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeE", !123, i64 0, !123, i64 8}
!173 = !{!172, !123, i64 0}
!174 = distinct !{!174, !175}
!175 = !{!"llvm.loop.mustprogress"}
!176 = distinct !{!176, !175}
!177 = distinct !{!177, !175}
!178 = !{!120, !143, i64 288}
!179 = !{!120, !143, i64 290}
!180 = !{!"function_entry_count", i64 52668}
!181 = !{!142, !123, i64 0}
!182 = !{!142, !131, i64 8}
!183 = !{!142, !131, i64 16}
!184 = !{!"branch_weights", i32 52669, i32 1}
!185 = !{!142, !123, i64 24}
!186 = !{!187, !131, i64 56}
!187 = !{!"_ZTSN11xalanc_1_1022XercesWrapperNavigatorE", !123, i64 8, !123, i64 16, !123, i64 24, !123, i64 32, !123, i64 40, !123, i64 48, !131, i64 56}
!188 = distinct !{!188, !175}
!189 = !{!"function_entry_count", i64 105337}
!190 = !{!"branch_weights", i32 52665, i32 52674}
!191 = !{!136, !123, i64 0}
!192 = !{!136, !123, i64 8}
!193 = !{!"function_entry_count", i64 52673}
!194 = !{!"function_entry_count", i64 37841089}
!195 = !{!155, !123, i64 0}
!196 = !{!155, !123, i64 8}
!197 = !{!"branch_weights", i32 1, i32 52673}
!198 = !{!"branch_weights", i32 52673, i32 298072592}
!199 = distinct !{!199, !175}
!200 = !{!"function_entry_count", i64 357177}
!201 = !{!"function_entry_count", i64 418513}
!202 = !{!"function_entry_count", i64 301760305}
!203 = !{!"function_entry_count", i64 4115971}
!204 = !{!205, !123, i64 8}
!205 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1021XercesDocumentWrapperEE", !123, i64 0, !123, i64 8}
!206 = !{!205, !123, i64 0}
!207 = !{!208, !123, i64 8}
!208 = !{!"_ZTSN11xalanc_1_1017XercesAttrWrapperE", !209, i64 0, !123, i64 8, !140, i64 16, !123, i64 40}
!209 = !{!"_ZTSN11xalanc_1_109XalanAttrE", !122, i64 0}
!210 = !{!211, !123, i64 8}
!211 = !{!"_ZTSN11xalanc_1_1025XercesCDATASectionWrapperE", !212, i64 0, !123, i64 8, !123, i64 16}
!212 = !{!"_ZTSN11xalanc_1_1017XalanCDATASectionE", !213, i64 0}
!213 = !{!"_ZTSN11xalanc_1_109XalanTextE", !214, i64 0}
!214 = !{!"_ZTSN11xalanc_1_1018XalanCharacterDataE", !122, i64 0}
!215 = !{!216, !123, i64 8}
!216 = !{!"_ZTSN11xalanc_1_1020XercesCommentWrapperE", !217, i64 0, !123, i64 8, !123, i64 16}
!217 = !{!"_ZTSN11xalanc_1_1012XalanCommentE", !214, i64 0}
!218 = !{!219, !123, i64 16}
!219 = !{!"_ZTSN11xalanc_1_1020XercesElementWrapperE", !220, i64 0, !141, i64 8, !123, i64 16, !123, i64 24, !221, i64 32}
!220 = !{!"_ZTSN11xalanc_1_1012XalanElementE", !122, i64 0}
!221 = !{!"_ZTSN11xalanc_1_1025XercesNamedNodeMapWrapperE", !222, i64 0, !123, i64 8, !123, i64 16}
!222 = !{!"_ZTSN11xalanc_1_1017XalanNamedNodeMapE"}
!223 = !{!224, !123, i64 8}
!224 = !{!"_ZTSN11xalanc_1_1019XercesEntityWrapperE", !225, i64 0, !123, i64 8, !123, i64 16, !140, i64 24}
!225 = !{!"_ZTSN11xalanc_1_1011XalanEntityE", !122, i64 0}
!226 = !{!227, !123, i64 8}
!227 = !{!"_ZTSN11xalanc_1_1028XercesEntityReferenceWrapperE", !228, i64 0, !123, i64 8, !123, i64 16, !140, i64 24}
!228 = !{!"_ZTSN11xalanc_1_1020XalanEntityReferenceE", !122, i64 0}
!229 = !{!230, !123, i64 8}
!230 = !{!"_ZTSN11xalanc_1_1021XercesNotationWrapperE", !231, i64 0, !123, i64 8, !123, i64 16}
!231 = !{!"_ZTSN11xalanc_1_1013XalanNotationE", !122, i64 0}
!232 = !{!233, !123, i64 8}
!233 = !{!"_ZTSN11xalanc_1_1034XercesProcessingInstructionWrapperE", !234, i64 0, !123, i64 8, !123, i64 16}
!234 = !{!"_ZTSN11xalanc_1_1026XalanProcessingInstructionE", !122, i64 0}
!235 = !{!236, !123, i64 8}
!236 = !{!"_ZTSN11xalanc_1_1017XercesTextWrapperE", !213, i64 0, !123, i64 8, !123, i64 16}
!237 = !{!238, !123, i64 8}
!238 = !{!"_ZTSN11xalanc_1_1025XercesDocumentTypeWrapperE", !239, i64 0, !123, i64 8, !221, i64 16, !221, i64 40, !123, i64 64}
!239 = !{!"_ZTSN11xalanc_1_1017XalanDocumentTypeE", !122, i64 0}
!240 = distinct !{!240, !175}
!241 = !{!"function_entry_count", i64 3231848}
!242 = !{!"branch_weights", i32 1959120, i32 1272730}
!243 = !{!244, !123, i64 0}
!244 = !{!"_ZTSN11xalanc_1_1013DeleteFunctorINS_9XalanNodeEEE", !123, i64 0}
!245 = !{!"function_entry_count", i64 1272729}
!246 = !{!"branch_weights", i32 763999, i32 1272730}
!247 = distinct !{!247, !175}
!248 = !{!"function_entry_count", i64 3635041}
!249 = !{!"function_entry_count", i64 3517309}
!250 = !{!127, !123, i64 8}
!251 = !{!"function_entry_count", i64 3517488}
!252 = !{!"branch_weights", i32 3517310, i32 180}
!253 = !{!"branch_weights", i32 17, i32 164}
!254 = !{!"branch_weights", i32 31, i32 52644}
!255 = !{!"branch_weights", i32 1, i32 31}
!256 = !{!"function_entry_count", i64 1339916}
!257 = !{!131, !131, i64 0}
!258 = !{!"function_entry_count", i64 52643}
!259 = !{!"branch_weights", i32 1, i32 52644}
!260 = !{!"branch_weights", i32 52644, i32 1}
!261 = !{!"branch_weights", i32 1, i32 52643}
!262 = !{!"branch_weights", i32 52643, i32 298062848}
!263 = distinct !{!263, !175}
!264 = distinct !{!264, !175}
!265 = distinct !{!265, !175}
!266 = distinct !{!266, !175}
!267 = !{!"function_entry_count", i64 336428}
!268 = !{!"function_entry_count", i64 124518}
!269 = !{!"function_entry_count", i64 2414026}
!270 = !{!"function_entry_count", i64 180149}
!271 = !{!"branch_weights", i32 52481, i32 127670}
!272 = !{!"function_entry_count", i64 217677}
!273 = !{!"function_entry_count", i64 52494}
!274 = !{!"function_entry_count", i64 19395}
!275 = !{!"function_entry_count", i64 58185}
!276 = !{!"branch_weights", i32 19396, i32 1}
!277 = !{!"function_entry_count", i64 38790}
!278 = !{!"branch_weights", i32 1, i32 19395}
!279 = !{!"branch_weights", i32 0, i32 1}
!280 = distinct !{!280, !175}
!281 = !{!"branch_weights", i32 2, i32 1, i32 1, i32 19396}
!282 = !{!283, !123, i64 0}
!283 = !{!"_ZTSN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_109XalanNodeEEE", !123, i64 0}
!284 = !{!"branch_weights", i32 1, i32 19396}
!285 = !{!"branch_weights", i32 19395, i32 1}
!286 = distinct !{!286, !175}
!287 = !{!"function_entry_count", i64 12093723}
!288 = !{!"function_entry_count", i64 967143541}
!289 = !{!"branch_weights", i32 403628487, i32 563515056}
!290 = !{!"function_entry_count", i64 3070433826}
!291 = !{!"function_entry_count", i64 1083116306}
!292 = !{!293, !131, i64 8}
!293 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !123, i64 0, !131, i64 8, !131, i64 16, !123, i64 24}
!294 = !{!"function_entry_count", i64 565220908}
!295 = !{!293, !123, i64 24}
!296 = !{!"function_entry_count", i64 6521798503}
!297 = !{!187, !123, i64 40}
!298 = !{!167, !123, i64 0}
!299 = !{!167, !131, i64 8}
!300 = !{!167, !131, i64 16}
!301 = !{!167, !123, i64 24}
!302 = distinct !{!302, !175}
!303 = distinct !{!303, !175}
!304 = distinct !{!304, !175}
!305 = distinct !{!305, !175}
!306 = !{i64 0, i64 8, !170, i64 8, i64 8, !170}
!307 = distinct !{!307, !175}
!308 = !{!187, !123, i64 16}
!309 = !{!187, !123, i64 48}
!310 = !{!187, !123, i64 24}
!311 = !{!187, !123, i64 32}
