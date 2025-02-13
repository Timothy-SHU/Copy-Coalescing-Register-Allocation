; ModuleID = 'FormatterToSourceTree.cpp'
source_filename = "FormatterToSourceTree.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::FormatterToSourceTree" = type { %"class.xalanc_1_10::FormatterListener", ptr, ptr, ptr, %"class.xalanc_1_10::XalanVector", ptr, %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::FormatterListener" = type { %"class.xercesc_2_7::DocumentHandler", ptr, i32, i32 }
%"class.xercesc_2_7::DocumentHandler" = type { ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.1", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanSourceTreeElement" = type { %"class.xalanc_1_10::XalanElement", ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%"class.xalanc_1_10::XalanElement" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }

$_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm = comdat any

$_ZN11xalanc_1_105clearERNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_107reserveERNS_14XalanDOMStringEj = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv = comdat any

$_ZN11xalanc_1_1017doAppendChildNodeIPNS_22XalanSourceTreeElementEEEvPNS_23XalanSourceTreeDocumentEPNS_31XalanSourceTreeDocumentFragmentES2_RPNS_9XalanNodeET_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv = comdat any

$_ZN11xalanc_1_106appendERNS_14XalanDOMStringEPKtj = comdat any

$_ZN11xalanc_1_1015isXMLWhitespaceEPKt = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv = comdat any

$_ZN11xalanc_1_1017doAppendChildNodeINS_22XalanSourceTreeElementEPNS_19XalanSourceTreeTextEEEvPT_RPNS_9XalanNodeET0_ = comdat any

$_ZN11xalanc_1_1017doAppendChildNodeINS_31XalanSourceTreeDocumentFragmentEPNS_19XalanSourceTreeTextEEEvPT_RPNS_9XalanNodeET0_ = comdat any

$_ZN11xalanc_1_106lengthEPKt = comdat any

$_ZN11xalanc_1_1017doAppendChildNodeIPNS_22XalanSourceTreeCommentEEEvPNS_23XalanSourceTreeDocumentEPNS_31XalanSourceTreeDocumentFragmentEPNS_22XalanSourceTreeElementERPNS_9XalanNodeET_ = comdat any

$_ZN11xalanc_1_107isEmptyERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1017doAppendChildNodeIPNS_36XalanSourceTreeProcessingInstructionEEEvPNS_23XalanSourceTreeDocumentEPNS_31XalanSourceTreeDocumentFragmentEPNS_22XalanSourceTreeElementERPNS_9XalanNodeET_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1014XalanDOMString5clearEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

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

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZSt4copyIPKtPtET0_T_S4_S3_ = comdat any

$_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_ = comdat any

$_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZSt12__miter_baseIPKtET_S2_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPKtET_S2_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1014XalanDOMString6appendEPKt = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5emptyEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZNK11xalanc_1_1014XalanDOMString6lengthEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_9XalanNodeEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZSt4copyIPKPN11xalanc_1_109XalanNodeEPS2_ET0_T_S7_S6_ = comdat any

$_ZSt13copy_backwardIPPN11xalanc_1_109XalanNodeES3_ET0_T_S5_S4_ = comdat any

$_ZSt8distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_ = comdat any

$_ZSt10__distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E17iterator_categoryERKS6_ = comdat any

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

$_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_22XalanSourceTreeElementEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv = comdat any

$_ZSt4copyIPKPN11xalanc_1_1022XalanSourceTreeElementEPS2_ET0_T_S7_S6_ = comdat any

$_ZSt13copy_backwardIPPN11xalanc_1_1022XalanSourceTreeElementES3_ET0_T_S5_S4_ = comdat any

$_ZSt8distanceIPKPN11xalanc_1_1022XalanSourceTreeElementEENSt15iterator_traitsIT_E15difference_typeES6_S6_ = comdat any

$_ZSt10__distanceIPKPN11xalanc_1_1022XalanSourceTreeElementEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKPN11xalanc_1_1022XalanSourceTreeElementEENSt15iterator_traitsIT_E17iterator_categoryERKS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZSt13__copy_move_aILb0EPKPN11xalanc_1_1022XalanSourceTreeElementEPS2_ET1_T0_S7_S6_ = comdat any

$_ZSt12__miter_baseIPKPN11xalanc_1_1022XalanSourceTreeElementEET_S5_ = comdat any

$_ZSt12__niter_wrapIPPN11xalanc_1_1022XalanSourceTreeElementEET_RKS4_S4_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_1022XalanSourceTreeElementEPS2_ET1_T0_S7_S6_ = comdat any

$_ZSt12__niter_baseIPKPN11xalanc_1_1022XalanSourceTreeElementEET_S5_ = comdat any

$_ZSt12__niter_baseIPPN11xalanc_1_1022XalanSourceTreeElementEET_S4_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_1022XalanSourceTreeElementEPS2_ET1_T0_S7_S6_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_1022XalanSourceTreeElementEEEPT_PKS6_S9_S7_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_1022XalanSourceTreeElementES3_ET1_T0_S5_S4_ = comdat any

$_ZSt12__miter_baseIPPN11xalanc_1_1022XalanSourceTreeElementEET_S4_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_1022XalanSourceTreeElementES3_ET1_T0_S5_S4_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_1022XalanSourceTreeElementES3_ET1_T0_S5_S4_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1022XalanSourceTreeElementEEEPT_PKS6_S9_S7_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1017doAppendChildNodeINS_31XalanSourceTreeDocumentFragmentEPNS_22XalanSourceTreeElementEEEvPT_RPNS_9XalanNodeET0_ = comdat any

$_ZN11xalanc_1_1017doAppendChildNodeINS_22XalanSourceTreeElementEPS1_EEvPT_RPNS_9XalanNodeET0_ = comdat any

$_ZN11xalanc_1_1022XalanSourceTreeElement9setParentEPS0_ = comdat any

$_ZN11xalanc_1_1017doAppendChildNodeINS_31XalanSourceTreeDocumentFragmentEPNS_22XalanSourceTreeCommentEEEvPT_RPNS_9XalanNodeET0_ = comdat any

$_ZN11xalanc_1_1017doAppendChildNodeINS_22XalanSourceTreeElementEPNS_22XalanSourceTreeCommentEEEvPT_RPNS_9XalanNodeET0_ = comdat any

$_ZN11xalanc_1_1017doAppendChildNodeINS_31XalanSourceTreeDocumentFragmentEPNS_36XalanSourceTreeProcessingInstructionEEEvPT_RPNS_9XalanNodeET0_ = comdat any

$_ZN11xalanc_1_1017doAppendChildNodeINS_22XalanSourceTreeElementEPNS_36XalanSourceTreeProcessingInstructionEEEvPT_RPNS_9XalanNodeET0_ = comdat any

@_ZTVN11xalanc_1_1021FormatterToSourceTreeE = dso_local unnamed_addr constant { [23 x ptr] } { [23 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1021FormatterToSourceTreeE, ptr @_ZN11xalanc_1_1021FormatterToSourceTreeD2Ev, ptr @_ZN11xalanc_1_1021FormatterToSourceTreeD0Ev, ptr @_ZN11xalanc_1_1021FormatterToSourceTree10charactersEPKtj, ptr @_ZN11xalanc_1_1021FormatterToSourceTree11endDocumentEv, ptr @_ZN11xalanc_1_1021FormatterToSourceTree10endElementEPKt, ptr @_ZN11xalanc_1_1021FormatterToSourceTree19ignorableWhitespaceEPKtj, ptr @_ZN11xalanc_1_1021FormatterToSourceTree21processingInstructionEPKtS2_, ptr @_ZN11xalanc_1_1021FormatterToSourceTree13resetDocumentEv, ptr @_ZN11xalanc_1_1021FormatterToSourceTree18setDocumentLocatorEPKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1021FormatterToSourceTree13startDocumentEv, ptr @_ZN11xalanc_1_1021FormatterToSourceTree12startElementEPKtRN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1021FormatterToSourceTree13charactersRawEPKtj, ptr @_ZN11xalanc_1_1021FormatterToSourceTree7commentEPKt, ptr @_ZN11xalanc_1_1021FormatterToSourceTree5cdataEPKtj, ptr @_ZN11xalanc_1_1021FormatterToSourceTree15entityReferenceEPKt, ptr @_ZNK11xalanc_1_1017FormatterListener9getWriterEv, ptr @_ZNK11xalanc_1_1017FormatterListener16getDoctypeSystemEv, ptr @_ZNK11xalanc_1_1017FormatterListener16getDoctypePublicEv, ptr @_ZNK11xalanc_1_1017FormatterListener11getEncodingEv, ptr @_ZNK11xalanc_1_1017FormatterListener12getMediaTypeEv, ptr @_ZNK11xalanc_1_1017FormatterListener9getIndentEv] }, align 8
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr
@_ZN11xalanc_1_1017FormatterListener10s_piTargetE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1017FormatterListener8s_piDataE = external constant [0 x i16], align 2
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1021FormatterToSourceTreeE = dso_local constant [39 x i8] c"N11xalanc_1_1021FormatterToSourceTreeE\00", align 1
@_ZTIN11xalanc_1_1017FormatterListenerE = external constant ptr
@_ZTIN11xalanc_1_1021FormatterToSourceTreeE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1021FormatterToSourceTreeE, ptr @_ZTIN11xalanc_1_1017FormatterListenerE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1021FormatterToSourceTreeC1ERN11xercesc_2_713MemoryManagerEPNS_23XalanSourceTreeDocumentE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1021FormatterToSourceTreeC2ERN11xercesc_2_713MemoryManagerEPNS_23XalanSourceTreeDocumentE
@_ZN11xalanc_1_1021FormatterToSourceTreeC1EPNS_23XalanSourceTreeDocumentEPNS_31XalanSourceTreeDocumentFragmentERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1021FormatterToSourceTreeC2EPNS_23XalanSourceTreeDocumentEPNS_31XalanSourceTreeDocumentFragmentERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1021FormatterToSourceTreeD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1021FormatterToSourceTreeD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTreeC2ERN11xercesc_2_713MemoryManagerEPNS_23XalanSourceTreeDocumentE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !278 {
  tail call void @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 4) #12
  store ptr getelementptr inbounds ({ [23 x ptr] }, ptr @_ZTVN11xalanc_1_1021FormatterToSourceTreeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !279
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !282
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) #12
          to label %7 unwind label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 5
  store ptr null, ptr %8, align 8, !tbaa !296
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 6
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) #12
          to label %10 unwind label %15

10:                                               ; preds = %7
  %11 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 7
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
          to label %12 unwind label %17

12:                                               ; preds = %10
  ret void

13:                                               ; preds = %3
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %21

15:                                               ; preds = %7
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %19

17:                                               ; preds = %10
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #13
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi { ptr, i32 } [ %18, %17 ], [ %16, %15 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #13
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi { ptr, i32 } [ %20, %19 ], [ %14, %13 ]
  tail call void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  resume { ptr, i32 } %22
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 !prof !297 {
  store ptr %1, ptr %0, align 8, !tbaa !298
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !299
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !300
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !301

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #12
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !302
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 !prof !303 {
  store ptr %1, ptr %0, align 8, !tbaa !304
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !305
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !306
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !307

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #12
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !308
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !309 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !306
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !310

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %6, ptr noundef %7) #12
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !308
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #12
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !311 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !300
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !312

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %6, ptr noundef %7) #12
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !302
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #12
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #14
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTreeC2EPNS_23XalanSourceTreeDocumentEPNS_31XalanSourceTreeDocumentFragmentERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !313 {
  tail call void @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 4) #12
  store ptr getelementptr inbounds ({ [23 x ptr] }, ptr @_ZTVN11xalanc_1_1021FormatterToSourceTreeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !279
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !282
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !314
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 3
  store ptr null, ptr %7, align 8, !tbaa !315
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0) #12
          to label %9 unwind label %15

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 5
  store ptr null, ptr %10, align 8, !tbaa !296
  %11 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 6
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0) #12
          to label %12 unwind label %17

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 7
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %13, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
          to label %14 unwind label %19

14:                                               ; preds = %12
  ret void

15:                                               ; preds = %4
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %23

17:                                               ; preds = %9
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %21

19:                                               ; preds = %12
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #13
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi { ptr, i32 } [ %20, %19 ], [ %18, %17 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #13
  br label %23

23:                                               ; preds = %21, %15
  %24 = phi { ptr, i32 } [ %22, %21 ], [ %16, %15 ]
  tail call void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  resume { ptr, i32 } %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTreeD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #2 align 2 !prof !278 {
  store ptr getelementptr inbounds ({ [23 x ptr] }, ptr @_ZTVN11xalanc_1_1021FormatterToSourceTreeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !279
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %2) #13
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  tail call void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #2 comdat align 2 !prof !316 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTreeD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #2 align 2 {
  tail call void @_ZN11xalanc_1_1021FormatterToSourceTreeD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) #13
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTree18setDocumentLocatorEPKN11xercesc_2_77LocatorE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #5 align 2 !prof !313 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTree13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #0 align 2 !prof !317 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 3
  store ptr null, ptr %3, align 8, !tbaa !315
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #12
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 5
  store ptr null, ptr %5, align 8, !tbaa !296
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %6) #12
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 50) #12
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %7) #12
  tail call void @_ZN11xalanc_1_107reserveERNS_14XalanDOMStringEj(ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef 100) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  store ptr null, ptr %2, align 8, !tbaa !318
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !319 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !299
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5, !prof !320

5:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #12
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !321 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !305
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5, !prof !322

5:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #12
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !323 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !306
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7, !prof !324

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #12
  br label %7

7:                                                ; preds = %6, %2
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat !prof !325 {
  tail call void @_ZN11xalanc_1_1014XalanDOMString5clearEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_107reserveERNS_14XalanDOMStringEj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1) local_unnamed_addr #0 comdat !prof !326 {
  tail call void @_ZN11xalanc_1_1014XalanDOMString7reserveEj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !327 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTree11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #0 align 2 !prof !317 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !314
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !328

5:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1021FormatterToSourceTree22processAccumulatedTextEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #12
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTree22processAccumulatedTextEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 align 2 !prof !317 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 7
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_107isEmptyERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %2) #12
  br i1 %3, label %7, label %4, !prof !329

4:                                                ; preds = %1
  %5 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %2) #12
  %6 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %2) #12
  tail call void @_ZN11xalanc_1_1021FormatterToSourceTree12doCharactersEPKtj(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %5, i32 noundef %6) #12
  tail call void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %2) #12
  br label %7

7:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !327 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !299
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !299
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !302
  %7 = getelementptr inbounds ptr, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTree12startElementEPKtRN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 !prof !313 {
  %4 = alloca ptr, align 8
  tail call void @_ZN11xalanc_1_1021FormatterToSourceTree22processAccumulatedTextEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !315
  %7 = tail call noundef ptr @_ZN11xalanc_1_1021FormatterToSourceTree17createElementNodeEPKtRN11xercesc_2_713AttributeListEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %6) #12
  store ptr %7, ptr %4, align 8, !tbaa !318
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !282
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !314
  %12 = load ptr, ptr %5, align 8, !tbaa !315
  %13 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 5
  tail call void @_ZN11xalanc_1_1017doAppendChildNodeIPNS_22XalanSourceTreeElementEEEvPNS_23XalanSourceTreeDocumentEPNS_31XalanSourceTreeDocumentFragmentES2_RPNS_9XalanNodeET_(ptr noundef %9, ptr noundef %11, ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %7) #12
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 4
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  %15 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 6
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %13) #12
  %16 = load ptr, ptr %4, align 8, !tbaa !318
  store ptr %16, ptr %5, align 8, !tbaa !315
  store ptr null, ptr %13, align 8, !tbaa !296
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1021FormatterToSourceTree17createElementNodeEPKtRN11xercesc_2_713AttributeListEPNS_22XalanSourceTreeElementE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #0 align 2 !prof !313 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterListener", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !330
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !282
  br i1 %7, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createElementNodeEPKtRKN11xercesc_2_713AttributeListERKNS_14PrefixResolverEPNS_9XalanNodeESB_SB_b(ptr noundef nonnull align 8 dereferenceable(1056) %9, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %3, ptr noundef null, ptr noundef null, i1 noundef zeroext false) #12
  br label %14

12:                                               ; preds = %4
  %13 = tail call noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createElementNodeEPKtRKN11xercesc_2_713AttributeListEPNS_9XalanNodeES8_S8_b(ptr noundef nonnull align 8 dereferenceable(1056) %9, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef null, ptr noundef null, i1 noundef zeroext false) #12
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %11, %10 ], [ %13, %12 ]
  ret ptr %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017doAppendChildNodeIPNS_22XalanSourceTreeElementEEEvPNS_23XalanSourceTreeDocumentEPNS_31XalanSourceTreeDocumentFragmentES2_RPNS_9XalanNodeET_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #0 comdat !prof !313 {
  %6 = icmp eq ptr %2, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = icmp eq ptr %1, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  tail call void @_ZN11xalanc_1_1017doAppendChildNodeINS_31XalanSourceTreeDocumentFragmentEPNS_22XalanSourceTreeElementEEEvPT_RPNS_9XalanNodeET0_(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) #12
  br label %12

10:                                               ; preds = %7
  tail call void @_ZN11xalanc_1_1023XalanSourceTreeDocument15appendChildNodeEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %4) #12
  br label %12

11:                                               ; preds = %5
  tail call void @_ZN11xalanc_1_1017doAppendChildNodeINS_22XalanSourceTreeElementEPS1_EEvPT_RPNS_9XalanNodeET0_(ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) #12
  br label %12

12:                                               ; preds = %9, %10, %11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !331 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTree10endElementEPKt(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 !prof !313 {
  tail call void @_ZN11xalanc_1_1021FormatterToSourceTree22processAccumulatedTextEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #12
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  %5 = load ptr, ptr %4, align 8, !tbaa !318
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 3
  store ptr %5, ptr %6, align 8, !tbaa !315
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 6
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #12
  %9 = load ptr, ptr %8, align 8, !tbaa !318
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 5
  store ptr %9, ptr %10, align 8, !tbaa !296
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !332 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !302
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !299
  %6 = getelementptr ptr, ptr %3, i64 %5
  %7 = getelementptr ptr, ptr %6, i64 -1
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !333 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !308
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !305
  %6 = getelementptr ptr, ptr %3, i64 %5
  %7 = getelementptr ptr, ptr %6, i64 -1
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !334 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !305
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !305
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !308
  %7 = getelementptr inbounds ptr, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTree10charactersEPKtj(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !335 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !314
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %18, !prof !336

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !315
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = tail call noundef zeroext i1 @_ZN11xalanc_1_1015isXMLWhitespaceEPKt(ptr noundef %1) #12
  br i1 %12, label %21, label %13

13:                                               ; preds = %11
  %14 = tail call ptr @__cxa_allocate_exception(i64 16) #16
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %14, i32 noundef 3) #12
          to label %15 unwind label %16

15:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #17
  unreachable

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %14) #16
  resume { ptr, i32 } %17

18:                                               ; preds = %7, %3
  %19 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 7
  %20 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_106appendERNS_14XalanDOMStringEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %19, ptr noundef %1, i32 noundef %2) #12
  br label %21

21:                                               ; preds = %18, %11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_106appendERNS_14XalanDOMStringEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat !prof !337 {
  %4 = icmp eq i32 %2, -1
  br i1 %4, label %5, label %7, !prof !338

5:                                                ; preds = %3
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #12
  br label %9

7:                                                ; preds = %3
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %2) #12
  br label %9

9:                                                ; preds = %7, %5
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015isXMLWhitespaceEPKt(ptr noundef %0) local_unnamed_addr #0 comdat !prof !313 {
  %2 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %0) #12
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1015isXMLWhitespaceEPKtjj(ptr noundef %0, i32 noundef 0, i32 noundef %2) #12
  ret i1 %3
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTree13charactersRawEPKtj(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 !prof !313 {
  tail call void @_ZN11xalanc_1_1021FormatterToSourceTree22processAccumulatedTextEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #12
  tail call void @_ZN11xalanc_1_1021FormatterToSourceTree23doProcessingInstructionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull @_ZN11xalanc_1_1017FormatterListener10s_piTargetE, ptr noundef nonnull @_ZN11xalanc_1_1017FormatterListener8s_piDataE) #12
  %4 = load ptr, ptr %0, align 8, !tbaa !279
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTree23doProcessingInstructionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 !prof !313 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !282
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !314
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !315
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 5
  %11 = tail call noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument31createProcessingInstructionNodeEPKtS2_PNS_9XalanNodeES4_S4_(ptr noundef nonnull align 8 dereferenceable(1056) %5, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null) #12
  tail call void @_ZN11xalanc_1_1017doAppendChildNodeIPNS_36XalanSourceTreeProcessingInstructionEEEvPNS_23XalanSourceTreeDocumentEPNS_31XalanSourceTreeDocumentFragmentEPNS_22XalanSourceTreeElementERPNS_9XalanNodeET_(ptr noundef nonnull %5, ptr noundef %7, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %11) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTree15entityReferenceEPKt(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #5 align 2 !prof !313 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTree19ignorableWhitespaceEPKtj(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 !prof !313 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 4
  %5 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #12
  %6 = icmp ugt i64 %5, 1
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1021FormatterToSourceTree22processAccumulatedTextEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #12
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !315
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !282
  %13 = tail call noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createTextIWSNodeEPKtjPNS_9XalanNodeES4_S4_(ptr noundef nonnull align 8 dereferenceable(1056) %12, ptr noundef %1, i32 noundef %2, ptr noundef %9, ptr noundef null, ptr noundef null) #12
  tail call void @_ZN11xalanc_1_1017doAppendChildNodeINS_22XalanSourceTreeElementEPNS_19XalanSourceTreeTextEEEvPT_RPNS_9XalanNodeET0_(ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %13) #12
  br label %26

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !314
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  tail call void @_ZN11xalanc_1_1021FormatterToSourceTree22processAccumulatedTextEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #12
  %19 = load ptr, ptr %15, align 8, !tbaa !314
  %20 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 5
  %21 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !282
  %23 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !315
  %25 = tail call noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createTextIWSNodeEPKtjPNS_9XalanNodeES4_S4_(ptr noundef nonnull align 8 dereferenceable(1056) %22, ptr noundef %1, i32 noundef %2, ptr noundef %24, ptr noundef null, ptr noundef null) #12
  tail call void @_ZN11xalanc_1_1017doAppendChildNodeINS_31XalanSourceTreeDocumentFragmentEPNS_19XalanSourceTreeTextEEEvPT_RPNS_9XalanNodeET0_(ptr noundef %19, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %25) #12
  br label %26

26:                                               ; preds = %14, %18, %7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !313 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !299
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017doAppendChildNodeINS_22XalanSourceTreeElementEPNS_19XalanSourceTreeTextEEEvPT_RPNS_9XalanNodeET0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !339 {
  %4 = load ptr, ptr %1, align 8, !tbaa !318
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !340

6:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElement15appendChildNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %2) #12
  br label %8

7:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull %4, ptr noundef %2) #12
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeText9setParentEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %0) #12
  br label %8

8:                                                ; preds = %7, %6
  store ptr %2, ptr %1, align 8, !tbaa !318
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createTextIWSNodeEPKtjPNS_9XalanNodeES4_S4_(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017doAppendChildNodeINS_31XalanSourceTreeDocumentFragmentEPNS_19XalanSourceTreeTextEEEvPT_RPNS_9XalanNodeET0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !335 {
  %4 = load ptr, ptr %1, align 8, !tbaa !318
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !341

6:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment15appendChildNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2) #12
  br label %8

7:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull %4, ptr noundef %2) #12
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeText9setParentEPNS_31XalanSourceTreeDocumentFragmentE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %0) #12
  br label %8

8:                                                ; preds = %7, %6
  store ptr %2, ptr %1, align 8, !tbaa !318
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTree21processingInstructionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !313 {
  tail call void @_ZN11xalanc_1_1021FormatterToSourceTree22processAccumulatedTextEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #12
  tail call void @_ZN11xalanc_1_1021FormatterToSourceTree23doProcessingInstructionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTree13resetDocumentEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !313 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTree7commentEPKt(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !313 {
  tail call void @_ZN11xalanc_1_1021FormatterToSourceTree22processAccumulatedTextEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #12
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !282
  %5 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %1) #12
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !315
  %8 = tail call noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createCommentNodeEPKtjPNS_9XalanNodeES4_S4_(ptr noundef nonnull align 8 dereferenceable(1056) %4, ptr noundef %1, i32 noundef %5, ptr noundef %7, ptr noundef null, ptr noundef null) #12
  %9 = load ptr, ptr %3, align 8, !tbaa !282
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !314
  %12 = load ptr, ptr %6, align 8, !tbaa !315
  %13 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 5
  tail call void @_ZN11xalanc_1_1017doAppendChildNodeIPNS_22XalanSourceTreeCommentEEEvPNS_23XalanSourceTreeDocumentEPNS_31XalanSourceTreeDocumentFragmentEPNS_22XalanSourceTreeElementERPNS_9XalanNodeET_(ptr noundef %9, ptr noundef %11, ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %8) #12
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createCommentNodeEPKtjPNS_9XalanNodeES4_S4_(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %0) local_unnamed_addr #2 comdat !prof !342 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ]
  %4 = load i16, ptr %3, align 2, !tbaa !343
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds i16, ptr %3, i64 1
  br i1 %5, label %7, label %2, !prof !345, !llvm.loop !346

7:                                                ; preds = %2
  %8 = ptrtoint ptr %3 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = lshr exact i64 %10, 1
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017doAppendChildNodeIPNS_22XalanSourceTreeCommentEEEvPNS_23XalanSourceTreeDocumentEPNS_31XalanSourceTreeDocumentFragmentEPNS_22XalanSourceTreeElementERPNS_9XalanNodeET_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #0 comdat !prof !313 {
  %6 = icmp eq ptr %2, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = icmp eq ptr %1, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  tail call void @_ZN11xalanc_1_1017doAppendChildNodeINS_31XalanSourceTreeDocumentFragmentEPNS_22XalanSourceTreeCommentEEEvPT_RPNS_9XalanNodeET0_(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) #12
  br label %12

10:                                               ; preds = %7
  tail call void @_ZN11xalanc_1_1023XalanSourceTreeDocument15appendChildNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %4) #12
  br label %12

11:                                               ; preds = %5
  tail call void @_ZN11xalanc_1_1017doAppendChildNodeINS_22XalanSourceTreeElementEPNS_22XalanSourceTreeCommentEEEvPT_RPNS_9XalanNodeET0_(ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) #12
  br label %12

12:                                               ; preds = %9, %10, %11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTree5cdataEPKtj(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, i32 %2) unnamed_addr #5 align 2 !prof !313 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_107isEmptyERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat !prof !348 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014XalanDOMString5emptyEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #12
  ret i1 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021FormatterToSourceTree12doCharactersEPKtj(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !335 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !315
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7, !prof !341

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !282
  %11 = tail call noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument14createTextNodeEPKtjPNS_9XalanNodeES4_S4_(ptr noundef nonnull align 8 dereferenceable(1056) %10, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #12
  tail call void @_ZN11xalanc_1_1017doAppendChildNodeINS_22XalanSourceTreeElementEPNS_19XalanSourceTreeTextEEEvPT_RPNS_9XalanNodeET0_(ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %11) #12
  br label %26

12:                                               ; preds = %3
  %13 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !314
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16, !prof !336

16:                                               ; preds = %12
  %17 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 5
  %18 = getelementptr inbounds %"class.xalanc_1_10::FormatterToSourceTree", ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !282
  %20 = tail call noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument14createTextNodeEPKtjPNS_9XalanNodeES4_S4_(ptr noundef nonnull align 8 dereferenceable(1056) %19, ptr noundef %1, i32 noundef %2, ptr noundef null, ptr noundef null, ptr noundef null) #12
  tail call void @_ZN11xalanc_1_1017doAppendChildNodeINS_31XalanSourceTreeDocumentFragmentEPNS_19XalanSourceTreeTextEEEvPT_RPNS_9XalanNodeET0_(ptr noundef nonnull %14, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %20) #12
  br label %26

21:                                               ; preds = %12
  %22 = tail call ptr @__cxa_allocate_exception(i64 16) #16
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %22, i32 noundef 3) #12
          to label %23 unwind label %24

23:                                               ; preds = %21
  tail call void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #17
  unreachable

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %22) #16
  resume { ptr, i32 } %25

26:                                               ; preds = %16, %7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat !prof !349 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #12
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat !prof !350 {
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #12
  ret i32 %2
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument14createTextNodeEPKtjPNS_9XalanNodeES4_S4_(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createElementNodeEPKtRKN11xercesc_2_713AttributeListERKNS_14PrefixResolverEPNS_9XalanNodeESB_SB_b(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createElementNodeEPKtRKN11xercesc_2_713AttributeListEPNS_9XalanNodeES8_S8_b(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017doAppendChildNodeIPNS_36XalanSourceTreeProcessingInstructionEEEvPNS_23XalanSourceTreeDocumentEPNS_31XalanSourceTreeDocumentFragmentEPNS_22XalanSourceTreeElementERPNS_9XalanNodeET_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #0 comdat !prof !313 {
  %6 = icmp eq ptr %2, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = icmp eq ptr %1, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  tail call void @_ZN11xalanc_1_1017doAppendChildNodeINS_31XalanSourceTreeDocumentFragmentEPNS_36XalanSourceTreeProcessingInstructionEEEvPT_RPNS_9XalanNodeET0_(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) #12
  br label %12

10:                                               ; preds = %7
  tail call void @_ZN11xalanc_1_1023XalanSourceTreeDocument15appendChildNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %4) #12
  br label %12

11:                                               ; preds = %5
  tail call void @_ZN11xalanc_1_1017doAppendChildNodeINS_22XalanSourceTreeElementEPNS_36XalanSourceTreeProcessingInstructionEEEvPT_RPNS_9XalanNodeET0_(ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) #12
  br label %12

12:                                               ; preds = %9, %10, %11
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument31createProcessingInstructionNodeEPKtS2_PNS_9XalanNodeES4_S4_(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1017FormatterListener9getWriterEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017FormatterListener16getDoctypeSystemEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017FormatterListener16getDoctypePublicEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017FormatterListener11getEncodingEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017FormatterListener12getMediaTypeEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK11xalanc_1_1017FormatterListener9getIndentEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !351 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !352
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !353

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #12
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !354
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #12
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !355 {
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !356 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !357

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #12
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !358, !llvm.loop !359

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !360 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !354
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !361 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !356 {
  %3 = load ptr, ptr %0, align 8, !tbaa !362
  %4 = load ptr, ptr %3, align 8, !tbaa !279
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #2 comdat align 2 !prof !363 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !364 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !354
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !365
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMString5clearEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !366 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #12
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %3 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %4 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #12
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !367
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !368 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !369 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %9, label %5, !prof !370

5:                                                ; preds = %3
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %7 = tail call noundef ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_(ptr noundef %2, ptr noundef %6, ptr noundef %1) #12
  %8 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #12
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8) #12
  br label %9

9:                                                ; preds = %5, %3
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !371 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) #12
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %1) #12
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #12
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !371 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %8, label %4, !prof !372

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %6, %4 ], [ %1, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %6 = add i64 %5, -1
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %4, !prof !373, !llvm.loop !374

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !375 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #12
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !371 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !318
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) #13
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %1) #13
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #13
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #12
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #12
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !376 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !377 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !371 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !378 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !371 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !377 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !379

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %2, ptr align 2 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !380 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !365
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !365
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !354
  %7 = getelementptr inbounds i16, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %7) #12
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !375 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !318
  call void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %4 = call noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #12
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !375 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 1
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat !prof !375 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMString7reserveEj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !381 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #12
  %3 = add i32 %1, 1
  %4 = zext i32 %3 to i64
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %4) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !382 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !352
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7, !prof !383

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #12
  br label %7

7:                                                ; preds = %6, %2
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !384 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !362
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #12
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !385 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  store ptr %2, ptr %0, align 8, !tbaa !362
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !365
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !386

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #12
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #12
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #12
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #12
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #12
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !387

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #12
  store ptr %24, ptr %8, align 8, !tbaa !354
  store i64 %3, ptr %7, align 8, !tbaa !352
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 !prof !388 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %3 = load ptr, ptr %0, align 8, !tbaa !362
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !354
  %7 = load ptr, ptr %1, align 8, !tbaa !362
  store ptr %7, ptr %0, align 8, !tbaa !362
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !389
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !354
  store ptr %11, ptr %5, align 8, !tbaa !354
  store ptr %3, ptr %1, align 8, !tbaa !362
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !389
  store <2 x i64> %9, ptr %4, align 8, !tbaa !389
  store <2 x i64> %12, ptr %8, align 8, !tbaa !389
  store ptr %6, ptr %10, align 8, !tbaa !354
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !390 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 !prof !391 {
  store ptr %1, ptr %0, align 8, !tbaa !362
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !365
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !352
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !392

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #12
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !354
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !393 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #12
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8, !prof !394

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28, !prof !395

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #12
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16, !prof !396

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !362
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 2 dereferenceable(2) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #12
  %23 = getelementptr inbounds i16, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !365
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !365
  %26 = getelementptr inbounds i16, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !prof !397, !llvm.loop !398

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47, !prof !399

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %32 = load ptr, ptr %0, align 8, !tbaa !362
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #12
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #12
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #12
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #12
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #12
  %50 = icmp ugt i64 %49, %6
  br i1 %50, label %66, label %51, !prof !400

51:                                               ; preds = %47
  %52 = getelementptr inbounds i16, ptr %2, i64 %49
  %53 = icmp eq ptr %52, %3
  br i1 %53, label %54, label %56, !prof !401

54:                                               ; preds = %56, %51
  %55 = icmp eq ptr %48, %1
  br i1 %55, label %64, label %60, !prof !401

56:                                               ; preds = %51, %56
  %57 = phi ptr [ %58, %56 ], [ %52, %51 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %57) #12
  %58 = getelementptr inbounds i16, ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !prof !402, !llvm.loop !403

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %61) #12
  %62 = getelementptr inbounds i16, ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !prof !404, !llvm.loop !405

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #12
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds i16, ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %72) #12
  %73 = getelementptr inbounds i16, ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !406

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds i16, ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #12
  %78 = tail call noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #12
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !407 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !354
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !407 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !356 {
  %3 = shl i64 %1, 1
  %4 = load ptr, ptr %0, align 8, !tbaa !362
  %5 = load ptr, ptr %4, align 8, !tbaa !279
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #12
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !408 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !365
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !409 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6, !prof !410

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #12
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 !prof !363 {
  %4 = load i16, ptr %1, align 2, !tbaa !343
  store i16 %4, ptr %0, align 2, !tbaa !343
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !411 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !352
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !412 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !365
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !352
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !413

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %11 = load ptr, ptr %0, align 8, !tbaa !362
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #12
  %13 = load i64, ptr %4, align 8, !tbaa !365
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !365
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %21 = load ptr, ptr %0, align 8, !tbaa !362
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #12
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1) #12
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !414 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %0) #12
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %1) #12
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #12
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !313 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) #12
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %1) #12
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #12
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !414 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !318
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %0) #13
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %1) #13
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #13
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #12
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #12
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !415 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !414 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !415 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !414 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !313 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !318
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) #13
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %1) #13
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #13
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #12
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #12
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !313 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !313 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !313 {
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
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !407 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !354
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !365
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !416 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1) #12
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %3) #12
  ret ptr %4
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1015isXMLWhitespaceEPKtjj(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014XalanDOMString5emptyEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !417 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !367
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !418 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #12
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  br i1 %2, label %5, label %3, !prof !419

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #12
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !420 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !365
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !421 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !354
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !422 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #12
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #12
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !423 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !367
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !297 {
  %3 = shl i64 %1, 3
  %4 = load ptr, ptr %0, align 8, !tbaa !298
  %5 = load ptr, ptr %4, align 8, !tbaa !279
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #12
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !424 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !425 {
  %3 = shl i64 %1, 3
  %4 = load ptr, ptr %0, align 8, !tbaa !304
  %5 = load ptr, ptr %4, align 8, !tbaa !279
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #12
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !426 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !297 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !427

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !428, !llvm.loop !429

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !297 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !302
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !297 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !297 {
  %3 = load ptr, ptr %0, align 8, !tbaa !298
  %4 = load ptr, ptr %3, align 8, !tbaa !279
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !327 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !430 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !302
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !299
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !425 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !431

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !432, !llvm.loop !433

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !434 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !308
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !435 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !425 {
  %3 = load ptr, ptr %0, align 8, !tbaa !304
  %4 = load ptr, ptr %3, align 8, !tbaa !279
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !436 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !437 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !308
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !305
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !313 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %5 = load i64, ptr %3, align 8, !tbaa !299
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !llvm.loop !438

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !439 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %5 = load i64, ptr %3, align 8, !tbaa !305
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !prof !440, !llvm.loop !441

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !442 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !304
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #12
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !425 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !304
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !305
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !443

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #12
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #12
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #12
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #12
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #12
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !444

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #12
  store ptr %24, ptr %8, align 8, !tbaa !308
  store i64 %3, ptr %7, align 8, !tbaa !306
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 !prof !445 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %3 = load ptr, ptr %0, align 8, !tbaa !304
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !308
  %7 = load ptr, ptr %1, align 8, !tbaa !304
  store ptr %7, ptr %0, align 8, !tbaa !304
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !389
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !308
  store ptr %11, ptr %5, align 8, !tbaa !308
  store ptr %3, ptr %1, align 8, !tbaa !304
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !389
  store <2 x i64> %9, ptr %4, align 8, !tbaa !389
  store <2 x i64> %12, ptr %8, align 8, !tbaa !389
  store ptr %6, ptr %10, align 8, !tbaa !308
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !446 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !446 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #12
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8, !prof !447

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28, !prof !448

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #12
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16, !prof !449

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !304
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_9XalanNodeEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #12
  %23 = getelementptr inbounds ptr, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !305
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !305
  %26 = getelementptr inbounds ptr, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !prof !450, !llvm.loop !451

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %32 = load ptr, ptr %0, align 8, !tbaa !304
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #12
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #12
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #12
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #12
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #12
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %57) #12
  %58 = getelementptr inbounds ptr, ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !llvm.loop !452

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %61) #12
  %62 = getelementptr inbounds ptr, ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !llvm.loop !453

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_109XalanNodeEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #12
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds ptr, ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %72) #12
  %73 = getelementptr inbounds ptr, ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !454

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds ptr, ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_109XalanNodeES3_ET0_T_S5_S4_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #12
  %78 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_109XalanNodeEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #12
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !455 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !308
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !455 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !456 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %1, ptr noundef %2) #12
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !457 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !305
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !458 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6, !prof !459

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #12
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_9XalanNodeEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 !prof !436 {
  %4 = load ptr, ptr %1, align 8, !tbaa !318
  store ptr %4, ptr %0, align 8, !tbaa !318
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !458 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !306
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !460 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !305
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !306
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !461

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %11 = load ptr, ptr %0, align 8, !tbaa !304
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_9XalanNodeEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #12
  %13 = load i64, ptr %4, align 8, !tbaa !305
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !305
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !462
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %21 = load ptr, ptr %0, align 8, !tbaa !304
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #12
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKPN11xalanc_1_109XalanNodeEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !313 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_109XalanNodeEET_S5_(ptr noundef %0) #12
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_109XalanNodeEET_S5_(ptr noundef %1) #12
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKPN11xalanc_1_109XalanNodeEPS2_ET1_T0_S7_S6_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #12
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_109XalanNodeES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !313 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %0) #12
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %1) #12
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #12
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !456 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !318
  call void @_ZSt19__iterator_categoryIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %4 = call noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #12
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !456 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat !prof !463 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKPN11xalanc_1_109XalanNodeEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !313 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !318
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_109XalanNodeEET_S5_(ptr noundef %0) #13
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_109XalanNodeEET_S5_(ptr noundef %1) #13
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %2) #13
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_109XalanNodeEPS2_ET1_T0_S7_S6_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #12
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_109XalanNodeEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #12
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_109XalanNodeEET_S5_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !313 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_109XalanNodeEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !464 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_109XalanNodeEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !313 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_109XalanNodeEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_109XalanNodeEET_S5_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !313 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !465 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_109XalanNodeEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !313 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_109XalanNodeEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_109XalanNodeEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !464 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !466

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !313 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !318
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %0) #13
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %1) #13
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %2) #13
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #12
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_109XalanNodeEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #12
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !467 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !313 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !313 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_109XalanNodeEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_109XalanNodeEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !313 {
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
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !455 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !308
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !305
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !468 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !299
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !300
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !469

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %11 = load ptr, ptr %0, align 8, !tbaa !298
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_22XalanSourceTreeElementEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #12
  %13 = load i64, ptr %4, align 8, !tbaa !299
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !299
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !427
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %21 = load ptr, ptr %0, align 8, !tbaa !298
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #12
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_22XalanSourceTreeElementEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 !prof !327 {
  %4 = load ptr, ptr %1, align 8, !tbaa !318
  store ptr %4, ptr %0, align 8, !tbaa !318
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !297 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !298
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !299
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !301

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #12
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #12
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #12
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #12
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #12
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !470

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #12
  store ptr %24, ptr %8, align 8, !tbaa !302
  store i64 %3, ptr %7, align 8, !tbaa !300
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 !prof !297 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %3 = load ptr, ptr %0, align 8, !tbaa !298
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !302
  %7 = load ptr, ptr %1, align 8, !tbaa !298
  store ptr %7, ptr %0, align 8, !tbaa !298
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !389
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !302
  store ptr %11, ptr %5, align 8, !tbaa !302
  store ptr %3, ptr %1, align 8, !tbaa !298
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !389
  store <2 x i64> %9, ptr %4, align 8, !tbaa !389
  store <2 x i64> %12, ptr %8, align 8, !tbaa !389
  store ptr %6, ptr %10, align 8, !tbaa !302
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !313 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !313 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #12
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #12
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !298
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_22XalanSourceTreeElementEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #12
  %23 = getelementptr inbounds ptr, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !299
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !299
  %26 = getelementptr inbounds ptr, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !llvm.loop !471

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %32 = load ptr, ptr %0, align 8, !tbaa !298
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #12
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #12
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #12
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #12
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #12
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %57) #12
  %58 = getelementptr inbounds ptr, ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !llvm.loop !472

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %61) #12
  %62 = getelementptr inbounds ptr, ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !llvm.loop !473

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_1022XalanSourceTreeElementEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #12
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds ptr, ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %72) #12
  %73 = getelementptr inbounds ptr, ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !474

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds ptr, ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_1022XalanSourceTreeElementES3_ET0_T_S5_S4_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #12
  %78 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_1022XalanSourceTreeElementEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #12
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !313 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !302
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !313 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !313 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKPN11xalanc_1_1022XalanSourceTreeElementEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %1, ptr noundef %2) #12
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !313 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #12
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !313 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !300
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKPN11xalanc_1_1022XalanSourceTreeElementEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !313 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_1022XalanSourceTreeElementEET_S5_(ptr noundef %0) #12
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_1022XalanSourceTreeElementEET_S5_(ptr noundef %1) #12
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKPN11xalanc_1_1022XalanSourceTreeElementEPS2_ET1_T0_S7_S6_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #12
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_1022XalanSourceTreeElementES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !313 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_1022XalanSourceTreeElementEET_S4_(ptr noundef %0) #12
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_1022XalanSourceTreeElementEET_S4_(ptr noundef %1) #12
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_1022XalanSourceTreeElementES3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #12
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKPN11xalanc_1_1022XalanSourceTreeElementEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !313 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !318
  call void @_ZSt19__iterator_categoryIPKPN11xalanc_1_1022XalanSourceTreeElementEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %4 = call noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_1022XalanSourceTreeElementEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #12
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_1022XalanSourceTreeElementEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !313 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKPN11xalanc_1_1022XalanSourceTreeElementEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat !prof !313 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !278 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !298
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #12
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKPN11xalanc_1_1022XalanSourceTreeElementEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !313 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !318
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_1022XalanSourceTreeElementEET_S5_(ptr noundef %0) #13
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_1022XalanSourceTreeElementEET_S5_(ptr noundef %1) #13
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1022XalanSourceTreeElementEET_S4_(ptr noundef %2) #13
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_1022XalanSourceTreeElementEPS2_ET1_T0_S7_S6_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #12
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_1022XalanSourceTreeElementEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #12
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_1022XalanSourceTreeElementEET_S5_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !313 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_1022XalanSourceTreeElementEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !313 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_1022XalanSourceTreeElementEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !313 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_1022XalanSourceTreeElementEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_1022XalanSourceTreeElementEET_S5_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !313 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1022XalanSourceTreeElementEET_S4_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !313 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_1022XalanSourceTreeElementEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !313 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_1022XalanSourceTreeElementEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_1022XalanSourceTreeElementEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !313 {
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
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_1022XalanSourceTreeElementES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !313 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !318
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1022XalanSourceTreeElementEET_S4_(ptr noundef %0) #13
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1022XalanSourceTreeElementEET_S4_(ptr noundef %1) #13
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1022XalanSourceTreeElementEET_S4_(ptr noundef %2) #13
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_1022XalanSourceTreeElementES3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #12
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_1022XalanSourceTreeElementEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #12
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_1022XalanSourceTreeElementEET_S4_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !313 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_1022XalanSourceTreeElementES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !313 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_1022XalanSourceTreeElementES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_1022XalanSourceTreeElementES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !313 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1022XalanSourceTreeElementEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1022XalanSourceTreeElementEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !313 {
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
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !313 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !302
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !299
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017doAppendChildNodeINS_31XalanSourceTreeDocumentFragmentEPNS_22XalanSourceTreeElementEEEvPT_RPNS_9XalanNodeET0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !313 {
  %4 = load ptr, ptr %1, align 8, !tbaa !318
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment15appendChildNodeEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2) #12
  br label %8

7:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_22XalanSourceTreeElementE(ptr noundef nonnull %4, ptr noundef %2) #12
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElement9setParentEPNS_31XalanSourceTreeDocumentFragmentE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %0) #12
  br label %8

8:                                                ; preds = %7, %6
  store ptr %2, ptr %1, align 8, !tbaa !318
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1023XalanSourceTreeDocument15appendChildNodeEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017doAppendChildNodeINS_22XalanSourceTreeElementEPS1_EEvPT_RPNS_9XalanNodeET0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !475 {
  %4 = load ptr, ptr %1, align 8, !tbaa !318
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !476

6:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElement15appendChildNodeEPS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %2) #12
  br label %8

7:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_22XalanSourceTreeElementE(ptr noundef nonnull %4, ptr noundef %2) #12
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElement9setParentEPS0_(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %0) #12
  br label %8

8:                                                ; preds = %7, %6
  store ptr %2, ptr %1, align 8, !tbaa !318
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment15appendChildNodeEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_22XalanSourceTreeElementE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022XalanSourceTreeElement9setParentEPNS_31XalanSourceTreeDocumentFragmentE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022XalanSourceTreeElement15appendChildNodeEPS0_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022XalanSourceTreeElement9setParentEPS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !475 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 4
  store ptr %1, ptr %3, align 8, !tbaa !477
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022XalanSourceTreeElement15appendChildNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_19XalanSourceTreeTextE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019XalanSourceTreeText9setParentEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment15appendChildNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019XalanSourceTreeText9setParentEPNS_31XalanSourceTreeDocumentFragmentE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017doAppendChildNodeINS_31XalanSourceTreeDocumentFragmentEPNS_22XalanSourceTreeCommentEEEvPT_RPNS_9XalanNodeET0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !313 {
  %4 = load ptr, ptr %1, align 8, !tbaa !318
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment15appendChildNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2) #12
  br label %8

7:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull %4, ptr noundef %2) #12
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeComment9setParentEPNS_31XalanSourceTreeDocumentFragmentE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %0) #12
  br label %8

8:                                                ; preds = %7, %6
  store ptr %2, ptr %1, align 8, !tbaa !318
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1023XalanSourceTreeDocument15appendChildNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017doAppendChildNodeINS_22XalanSourceTreeElementEPNS_22XalanSourceTreeCommentEEEvPT_RPNS_9XalanNodeET0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !313 {
  %4 = load ptr, ptr %1, align 8, !tbaa !318
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElement15appendChildNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %2) #12
  br label %8

7:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull %4, ptr noundef %2) #12
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeComment9setParentEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %0) #12
  br label %8

8:                                                ; preds = %7, %6
  store ptr %2, ptr %1, align 8, !tbaa !318
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment15appendChildNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_22XalanSourceTreeCommentE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022XalanSourceTreeComment9setParentEPNS_31XalanSourceTreeDocumentFragmentE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022XalanSourceTreeElement15appendChildNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022XalanSourceTreeComment9setParentEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017doAppendChildNodeINS_31XalanSourceTreeDocumentFragmentEPNS_36XalanSourceTreeProcessingInstructionEEEvPT_RPNS_9XalanNodeET0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !313 {
  %4 = load ptr, ptr %1, align 8, !tbaa !318
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment15appendChildNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2) #12
  br label %8

7:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull %4, ptr noundef %2) #12
  tail call void @_ZN11xalanc_1_1036XalanSourceTreeProcessingInstruction9setParentEPNS_31XalanSourceTreeDocumentFragmentE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %0) #12
  br label %8

8:                                                ; preds = %7, %6
  store ptr %2, ptr %1, align 8, !tbaa !318
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1023XalanSourceTreeDocument15appendChildNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017doAppendChildNodeINS_22XalanSourceTreeElementEPNS_36XalanSourceTreeProcessingInstructionEEEvPT_RPNS_9XalanNodeET0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !313 {
  %4 = load ptr, ptr %1, align 8, !tbaa !318
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElement15appendChildNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %2) #12
  br label %8

7:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull %4, ptr noundef %2) #12
  tail call void @_ZN11xalanc_1_1036XalanSourceTreeProcessingInstruction9setParentEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %0) #12
  br label %8

8:                                                ; preds = %7, %6
  store ptr %2, ptr %1, align 8, !tbaa !318
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment15appendChildNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1036XalanSourceTreeProcessingInstruction9setParentEPNS_31XalanSourceTreeDocumentFragmentE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022XalanSourceTreeElement15appendChildNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1036XalanSourceTreeProcessingInstruction9setParentEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind optsize }
attributes #16 = { nounwind }
attributes #17 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!277}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276}
!35 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTreeC2ERN11xercesc_2_713MemoryManagerEPNS_23XalanSourceTreeDocumentE, ptr @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTreeC2ERN11xercesc_2_713MemoryManagerEPNS_23XalanSourceTreeDocumentE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTreeC2ERN11xercesc_2_713MemoryManagerEPNS_23XalanSourceTreeDocumentE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTreeC2ERN11xercesc_2_713MemoryManagerEPNS_23XalanSourceTreeDocumentE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 52668}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 105337}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 52673}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 52673}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_, i64 52673}
!47 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_, i64 52673}
!48 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 4}
!49 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 2}
!50 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 2}
!51 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_, i64 2}
!52 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_, i64 2}
!53 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTreeD2Ev, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 1}
!54 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTreeD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!55 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTreeD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!56 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTreeD2Ev, ptr @_ZN11xalanc_1_1017FormatterListenerD2Ev, i64 1}
!57 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!58 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTree13startDocumentEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, i64 37275}
!59 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTree13startDocumentEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, i64 37275}
!60 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTree13startDocumentEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm, i64 37275}
!61 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTree13startDocumentEv, ptr @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE, i64 37275}
!62 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTree13startDocumentEv, ptr @_ZN11xalanc_1_107reserveERNS_14XalanDOMStringEj, i64 37275}
!63 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTree13startDocumentEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, i64 37275}
!64 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 74552}
!65 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm, i64 1}
!66 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 6463696}
!67 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm, i64 1272729}
!68 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 88254}
!69 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 15}
!70 = !{ptr @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, i64 48076702}
!71 = !{ptr @_ZN11xalanc_1_107reserveERNS_14XalanDOMStringEj, ptr @_ZN11xalanc_1_1014XalanDOMString7reserveEj, i64 77696}
!72 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 1740374}
!73 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 870187}
!74 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTree11endDocumentEv, ptr @_ZN11xalanc_1_1021FormatterToSourceTree22processAccumulatedTextEv, i64 37274}
!75 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTree11endDocumentEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, i64 37275}
!76 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTree22processAccumulatedTextEv, ptr @_ZN11xalanc_1_107isEmptyERKNS_14XalanDOMStringE, i64 37275}
!77 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTree22processAccumulatedTextEv, ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE, i64 33405}
!78 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTree22processAccumulatedTextEv, ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, i64 33405}
!79 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTree22processAccumulatedTextEv, ptr @_ZN11xalanc_1_1021FormatterToSourceTree12doCharactersEPKtj, i64 33405}
!80 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTree22processAccumulatedTextEv, ptr @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE, i64 33405}
!81 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 1740374}
!82 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_, i64 870187}
!83 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 7034618}
!84 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 3517309}
!85 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 7270082}
!86 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_, i64 3635041}
!87 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTree10charactersEPKtj, ptr @_ZN11xalanc_1_106appendERNS_14XalanDOMStringEPKtj, i64 33406}
!88 = !{ptr @_ZN11xalanc_1_106appendERNS_14XalanDOMStringEPKtj, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, i64 1}
!89 = !{ptr @_ZN11xalanc_1_106appendERNS_14XalanDOMStringEPKtj, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 684939}
!90 = !{ptr @_ZN11xalanc_1_1017doAppendChildNodeINS_22XalanSourceTreeElementEPNS_19XalanSourceTreeTextEEEvPT_RPNS_9XalanNodeET0_, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement15appendChildNodeEPNS_19XalanSourceTreeTextE, i64 678604}
!91 = !{ptr @_ZN11xalanc_1_1017doAppendChildNodeINS_22XalanSourceTreeElementEPNS_19XalanSourceTreeTextEEEvPT_RPNS_9XalanNodeET0_, ptr @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_19XalanSourceTreeTextE, i64 832910}
!92 = !{ptr @_ZN11xalanc_1_1017doAppendChildNodeINS_22XalanSourceTreeElementEPNS_19XalanSourceTreeTextEEEvPT_RPNS_9XalanNodeET0_, ptr @_ZN11xalanc_1_1019XalanSourceTreeText9setParentEPNS_22XalanSourceTreeElementE, i64 832910}
!93 = !{ptr @_ZN11xalanc_1_1017doAppendChildNodeINS_31XalanSourceTreeDocumentFragmentEPNS_19XalanSourceTreeTextEEEvPT_RPNS_9XalanNodeET0_, ptr @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment15appendChildNodeEPNS_19XalanSourceTreeTextE, i64 33405}
!94 = !{ptr @_ZN11xalanc_1_1017doAppendChildNodeINS_31XalanSourceTreeDocumentFragmentEPNS_19XalanSourceTreeTextEEEvPT_RPNS_9XalanNodeET0_, ptr @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_19XalanSourceTreeTextE, i64 1}
!95 = !{ptr @_ZN11xalanc_1_1017doAppendChildNodeINS_31XalanSourceTreeDocumentFragmentEPNS_19XalanSourceTreeTextEEEvPT_RPNS_9XalanNodeET0_, ptr @_ZN11xalanc_1_1019XalanSourceTreeText9setParentEPNS_31XalanSourceTreeDocumentFragmentE, i64 1}
!96 = !{ptr @_ZN11xalanc_1_107isEmptyERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString5emptyEv, i64 3312604}
!97 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTree12doCharactersEPKtj, ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument14createTextNodeEPKtjPNS_9XalanNodeES4_S4_, i64 33405}
!98 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTree12doCharactersEPKtj, ptr @_ZN11xalanc_1_1017doAppendChildNodeINS_22XalanSourceTreeElementEPNS_19XalanSourceTreeTextEEEvPT_RPNS_9XalanNodeET0_, i64 1}
!99 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTree12doCharactersEPKtj, ptr @_ZN11xalanc_1_1017doAppendChildNodeINS_31XalanSourceTreeDocumentFragmentEPNS_19XalanSourceTreeTextEEEvPT_RPNS_9XalanNodeET0_, i64 33404}
!100 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTree12doCharactersEPKtj, ptr @__cxa_allocate_exception, i64 1}
!101 = !{ptr @_ZN11xalanc_1_1021FormatterToSourceTree12doCharactersEPKtj, ptr @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE, i64 1}
!102 = !{ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 12093723}
!103 = !{ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, i64 66708619}
!104 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!105 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!106 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!107 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!108 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!109 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!110 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!111 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!112 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!113 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!114 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 96538440}
!115 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 48269220}
!116 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 48269220}
!117 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, i64 48269220}
!118 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 241572884}
!119 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 28158502}
!120 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_, i64 28158502}
!121 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, i64 28158502}
!122 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm, i64 28158502}
!123 = !{ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_, ptr @_ZSt12__miter_baseIPtET_S1_, i64 56317002}
!124 = !{ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_, ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, i64 28158501}
!125 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, i64 1279868488}
!126 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 185895030}
!127 = !{ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt12__niter_baseIPtET_S1_, i64 84475503}
!128 = !{ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_, i64 28158501}
!129 = !{ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_, i64 28158501}
!130 = !{ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_, i64 28158501}
!131 = !{ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_, i64 28158501}
!132 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 2689195952}
!133 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 1344597976}
!134 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 185895030}
!135 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 185895030}
!136 = !{ptr @_ZN11xalanc_1_1014XalanDOMString7reserveEj, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 77704}
!137 = !{ptr @_ZN11xalanc_1_1014XalanDOMString7reserveEj, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm, i64 77704}
!138 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 141227382}
!139 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 64551564}
!140 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 129103172}
!141 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 64551586}
!142 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 64551586}
!143 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 64551586}
!144 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm, i64 19}
!145 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 19}
!146 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 19}
!147 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 19}
!148 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 19}
!149 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 19}
!150 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 19}
!151 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 19}
!152 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm, i64 64551584}
!153 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 64551608}
!154 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 170601494}
!155 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm, i64 1}
!156 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 64147281}
!157 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 311655952}
!158 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, i64 157736530}
!159 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv, i64 155828045}
!160 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 240731456}
!161 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, i64 133170775}
!162 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE, i64 30012996397}
!163 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, i64 22657270}
!164 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 20748786}
!165 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 20748766}
!166 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246159}
!167 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 20748647}
!168 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 20748786}
!169 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614809}
!170 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, i64 1908484}
!171 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_, i64 1}
!172 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 82509}
!173 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 82509}
!174 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 82509}
!175 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 156073599}
!176 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, i64 133170778}
!177 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 22}
!178 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 133170778}
!179 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 155828047}
!180 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 248301304}
!181 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 124150651}
!182 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE, i64 124150651}
!183 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 1}
!184 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 1}
!185 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 1}
!186 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 1}
!187 = !{ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, ptr @_ZSt12__miter_baseIPKtET_S2_, i64 3901146}
!188 = !{ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!189 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_baseIPKtET_S2_, i64 3901146}
!190 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_baseIPtET_S1_, i64 1950573}
!191 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!192 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_, i64 1950573}
!193 = !{ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!194 = !{ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_, i64 1950573}
!195 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 1179818}
!196 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 1179818}
!197 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5emptyEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 6299974}
!198 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!199 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!200 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!201 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!202 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 230527004}
!203 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, i64 230527004}
!204 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 1414337980}
!205 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_, i64 1}
!206 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2}
!207 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2}
!208 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 2}
!209 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_, i64 298119648}
!210 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 357177}
!211 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 418513}
!212 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 418513}
!213 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, i64 2036727}
!214 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 104988}
!215 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 52494}
!216 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 52494}
!217 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 52494}
!218 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm, i64 52642}
!219 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 52642}
!220 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 52642}
!221 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 52642}
!222 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 52642}
!223 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, i64 52642}
!224 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 52642}
!225 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 52642}
!226 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm, i64 30}
!227 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 52673}
!228 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2679832}
!229 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 105285}
!230 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_, i64 52643}
!231 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, i64 52642}
!232 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 52642}
!233 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, i64 52641}
!234 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_9XalanNodeEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE, i64 298098808}
!235 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, i64 1}
!236 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 15}
!237 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 336428}
!238 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 336428}
!239 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 336428}
!240 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_, ptr @_ZSt8distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_, i64 124518}
!241 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2414026}
!242 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, i64 180149}
!243 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 52480}
!244 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 180149}
!245 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 180149}
!246 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 7034976}
!247 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 3517308}
!248 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_9XalanNodeEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE, i64 3517308}
!249 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 180}
!250 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 180}
!251 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 180}
!252 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 180}
!253 = !{ptr @_ZSt8distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_, ptr @_ZSt19__iterator_categoryIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E17iterator_categoryERKS6_, i64 124518}
!254 = !{ptr @_ZSt8distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_, ptr @_ZSt10__distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag, i64 124518}
!255 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 1740376}
!256 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 870186}
!257 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_22XalanSourceTreeElementEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE, i64 870186}
!258 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 2}
!259 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 2}
!260 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 2}
!261 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 2}
!262 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm, i64 1}
!263 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!264 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 1}
!265 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 1}
!266 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 1}
!267 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm, i64 1}
!268 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2}
!269 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 4}
!270 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2}
!271 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 1}
!272 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 1}
!273 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!274 = !{ptr @_ZN11xalanc_1_1017doAppendChildNodeINS_22XalanSourceTreeElementEPS1_EEvPT_RPNS_9XalanNodeET0_, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement15appendChildNodeEPS0_, i64 1}
!275 = !{ptr @_ZN11xalanc_1_1017doAppendChildNodeINS_22XalanSourceTreeElementEPS1_EEvPT_RPNS_9XalanNodeET0_, ptr @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_9XalanNodeEPNS_22XalanSourceTreeElementE, i64 832909}
!276 = !{ptr @_ZN11xalanc_1_1017doAppendChildNodeINS_22XalanSourceTreeElementEPS1_EEvPT_RPNS_9XalanNodeET0_, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement9setParentEPS0_, i64 832909}
!277 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!278 = !{!"function_entry_count", i64 1}
!279 = !{!280, !280, i64 0}
!280 = !{!"vtable pointer", !281, i64 0}
!281 = !{!"Simple C++ TBAA"}
!282 = !{!283, !286, i64 24}
!283 = !{!"_ZTSN11xalanc_1_1021FormatterToSourceTreeE", !284, i64 0, !286, i64 24, !286, i64 32, !286, i64 40, !290, i64 48, !286, i64 80, !292, i64 88, !293, i64 120}
!284 = !{!"_ZTSN11xalanc_1_1017FormatterListenerE", !285, i64 0, !286, i64 8, !288, i64 16, !289, i64 20}
!285 = !{!"_ZTSN11xercesc_2_715DocumentHandlerE"}
!286 = !{!"any pointer", !287, i64 0}
!287 = !{!"omnipotent char", !281, i64 0}
!288 = !{!"_ZTSN11xalanc_1_1017FormatterListener7eFormatE", !287, i64 0}
!289 = !{!"_ZTSN11xalanc_1_1017FormatterListener11eXMLVersionE", !287, i64 0}
!290 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_22XalanSourceTreeElementENS_31MemoryManagedConstructionTraitsIS2_EEEE", !286, i64 0, !291, i64 8, !291, i64 16, !286, i64 24}
!291 = !{!"long", !287, i64 0}
!292 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEE", !286, i64 0, !291, i64 8, !291, i64 16, !286, i64 24}
!293 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !294, i64 0, !295, i64 32}
!294 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !286, i64 0, !291, i64 8, !291, i64 16, !286, i64 24}
!295 = !{!"int", !287, i64 0}
!296 = !{!283, !286, i64 80}
!297 = !{!"function_entry_count", i64 2}
!298 = !{!290, !286, i64 0}
!299 = !{!290, !291, i64 8}
!300 = !{!290, !291, i64 16}
!301 = !{!"branch_weights", i32 3, i32 1}
!302 = !{!290, !286, i64 24}
!303 = !{!"function_entry_count", i64 52668}
!304 = !{!292, !286, i64 0}
!305 = !{!292, !291, i64 8}
!306 = !{!292, !291, i64 16}
!307 = !{!"branch_weights", i32 52669, i32 1}
!308 = !{!292, !286, i64 24}
!309 = !{!"function_entry_count", i64 105337}
!310 = !{!"branch_weights", i32 52665, i32 52674}
!311 = !{!"function_entry_count", i64 4}
!312 = !{!"branch_weights", i32 3, i32 3}
!313 = !{!"function_entry_count", i64 0}
!314 = !{!283, !286, i64 32}
!315 = !{!283, !286, i64 40}
!316 = !{!"function_entry_count", i64 43398227}
!317 = !{!"function_entry_count", i64 37275}
!318 = !{!286, !286, i64 0}
!319 = !{!"function_entry_count", i64 37276}
!320 = !{!"branch_weights", i32 37277, i32 1}
!321 = !{!"function_entry_count", i64 3231848}
!322 = !{!"branch_weights", i32 1959120, i32 1272730}
!323 = !{!"function_entry_count", i64 44127}
!324 = !{!"branch_weights", i32 15, i32 44114}
!325 = !{!"function_entry_count", i64 48076702}
!326 = !{!"function_entry_count", i64 77696}
!327 = !{!"function_entry_count", i64 870187}
!328 = !{!"branch_weights", i32 1, i32 37276}
!329 = !{!"branch_weights", i32 3870, i32 33407}
!330 = !{!284, !286, i64 8}
!331 = !{!"function_entry_count", i64 3517309}
!332 = !{!"function_entry_count", i64 832911}
!333 = !{!"function_entry_count", i64 960417}
!334 = !{!"function_entry_count", i64 3635041}
!335 = !{!"function_entry_count", i64 33406}
!336 = !{!"branch_weights", i32 1, i32 33407}
!337 = !{!"function_entry_count", i64 684940}
!338 = !{!"branch_weights", i32 1, i32 684941}
!339 = !{!"function_entry_count", i64 1511514}
!340 = !{!"branch_weights", i32 678605, i32 832911}
!341 = !{!"branch_weights", i32 33407, i32 1}
!342 = !{!"function_entry_count", i64 21552397}
!343 = !{!344, !344, i64 0}
!344 = !{!"short", !287, i64 0}
!345 = !{!"branch_weights", i32 21552398, i32 128560690}
!346 = distinct !{!346, !347}
!347 = !{!"llvm.loop.mustprogress"}
!348 = !{!"function_entry_count", i64 3312604}
!349 = !{!"function_entry_count", i64 12093723}
!350 = !{!"function_entry_count", i64 66708619}
!351 = !{!"function_entry_count", i64 128698679}
!352 = !{!294, !291, i64 16}
!353 = !{!"branch_weights", i32 43398290, i32 85300391}
!354 = !{!294, !286, i64 24}
!355 = !{!"function_entry_count", i64 6521798493}
!356 = !{!"function_entry_count", i64 85300390}
!357 = !{!"branch_weights", i32 1, i32 12185770}
!358 = !{!"branch_weights", i32 12185770, i32 -193930396}
!359 = distinct !{!359, !347}
!360 = !{!"function_entry_count", i64 227375739}
!361 = !{!"function_entry_count", i64 568333389}
!362 = !{!294, !286, i64 0}
!363 = !{!"function_entry_count", i64 30137156660}
!364 = !{!"function_entry_count", i64 825654971}
!365 = !{!294, !291, i64 8}
!366 = !{!"function_entry_count", i64 48269220}
!367 = !{!293, !295, i64 32}
!368 = !{!"function_entry_count", i64 3070433834}
!369 = !{!"function_entry_count", i64 120786442}
!370 = !{!"branch_weights", i32 92627942, i32 28158502}
!371 = !{!"function_entry_count", i64 28158501}
!372 = !{!"branch_weights", i32 1, i32 28158501}
!373 = !{!"branch_weights", i32 28158501, i32 1251710038}
!374 = distinct !{!374, !347}
!375 = !{!"function_entry_count", i64 185895030}
!376 = !{!"function_entry_count", i64 56317002}
!377 = !{!"function_entry_count", i64 30109074}
!378 = !{!"function_entry_count", i64 86426076}
!379 = !{!"branch_weights", i32 28199083, i32 1909993}
!380 = !{!"function_entry_count", i64 1344597976}
!381 = !{!"function_entry_count", i64 77704}
!382 = !{!"function_entry_count", i64 70613691}
!383 = !{!"branch_weights", i32 64551566, i32 6062127}
!384 = !{!"function_entry_count", i64 64551586}
!385 = !{!"function_entry_count", i64 64551608}
!386 = !{!"branch_weights", i32 64551591, i32 19}
!387 = !{!"branch_weights", i32 5, i32 64551587}
!388 = !{!"function_entry_count", i64 85300747}
!389 = !{!291, !291, i64 0}
!390 = !{!"function_entry_count", i64 18}
!391 = !{!"function_entry_count", i64 64147281}
!392 = !{!"branch_weights", i32 64147282, i32 1}
!393 = !{!"function_entry_count", i64 155828046}
!394 = !{!"branch_weights", i32 1, i32 155828047}
!395 = !{!"branch_weights", i32 133170778, i32 22657270}
!396 = !{!"branch_weights", i32 1, i32 19024396}
!397 = !{!"branch_weights", i32 19024396, i32 -26420601}
!398 = distinct !{!398, !347}
!399 = !{!"branch_weights", i32 20748787, i32 1908484}
!400 = !{!"branch_weights", i32 1, i32 1908484}
!401 = !{!"branch_weights", i32 1, i32 1908483}
!402 = !{!"branch_weights", i32 1908483, i32 49797853}
!403 = distinct !{!403, !347}
!404 = !{!"branch_weights", i32 1908483, i32 1}
!405 = distinct !{!405, !347}
!406 = distinct !{!406, !347}
!407 = !{!"function_entry_count", i64 82509}
!408 = !{!"function_entry_count", i64 156073599}
!409 = !{!"function_entry_count", i64 133170778}
!410 = !{!"branch_weights", i32 22, i32 133170758}
!411 = !{!"function_entry_count", i64 155828047}
!412 = !{!"function_entry_count", i64 124150652}
!413 = !{!"branch_weights", i32 124150653, i32 1}
!414 = !{!"function_entry_count", i64 1950573}
!415 = !{!"function_entry_count", i64 3901146}
!416 = !{!"function_entry_count", i64 1179818}
!417 = !{!"function_entry_count", i64 6299974}
!418 = !{!"function_entry_count", i64 967143541}
!419 = !{!"branch_weights", i32 403628487, i32 563515056}
!420 = !{!"function_entry_count", i64 1083116306}
!421 = !{!"function_entry_count", i64 565220908}
!422 = !{!"function_entry_count", i64 230527004}
!423 = !{!"function_entry_count", i64 1414337980}
!424 = !{!"function_entry_count", i64 6208410}
!425 = !{!"function_entry_count", i64 52673}
!426 = !{!"function_entry_count", i64 37841089}
!427 = !{!"branch_weights", i32 2, i32 1}
!428 = !{!"branch_weights", i32 1, i32 0}
!429 = distinct !{!429, !347}
!430 = !{!"function_entry_count", i64 870189}
!431 = !{!"branch_weights", i32 1, i32 52673}
!432 = !{!"branch_weights", i32 52673, i32 298072592}
!433 = distinct !{!433, !347}
!434 = !{!"function_entry_count", i64 357177}
!435 = !{!"function_entry_count", i64 418513}
!436 = !{!"function_entry_count", i64 301760305}
!437 = !{!"function_entry_count", i64 4115971}
!438 = distinct !{!438, !347}
!439 = !{!"function_entry_count", i64 1272729}
!440 = !{!"branch_weights", i32 763999, i32 1272730}
!441 = distinct !{!441, !347}
!442 = !{!"function_entry_count", i64 52494}
!443 = !{!"branch_weights", i32 31, i32 52644}
!444 = !{!"branch_weights", i32 1, i32 31}
!445 = !{!"function_entry_count", i64 1339916}
!446 = !{!"function_entry_count", i64 52643}
!447 = !{!"branch_weights", i32 1, i32 52644}
!448 = !{!"branch_weights", i32 52644, i32 1}
!449 = !{!"branch_weights", i32 1, i32 52643}
!450 = !{!"branch_weights", i32 52643, i32 298062848}
!451 = distinct !{!451, !347}
!452 = distinct !{!452, !347}
!453 = distinct !{!453, !347}
!454 = distinct !{!454, !347}
!455 = !{!"function_entry_count", i64 336428}
!456 = !{!"function_entry_count", i64 124518}
!457 = !{!"function_entry_count", i64 2414026}
!458 = !{!"function_entry_count", i64 180149}
!459 = !{!"branch_weights", i32 52481, i32 127670}
!460 = !{!"function_entry_count", i64 3517488}
!461 = !{!"branch_weights", i32 3517310, i32 180}
!462 = !{!"branch_weights", i32 17, i32 164}
!463 = !{!"function_entry_count", i64 217677}
!464 = !{!"function_entry_count", i64 19395}
!465 = !{!"function_entry_count", i64 58185}
!466 = !{!"branch_weights", i32 19396, i32 1}
!467 = !{!"function_entry_count", i64 38790}
!468 = !{!"function_entry_count", i64 870188}
!469 = !{!"branch_weights", i32 870188, i32 2}
!470 = !{!"branch_weights", i32 1, i32 3}
!471 = distinct !{!471, !347}
!472 = distinct !{!472, !347}
!473 = distinct !{!473, !347}
!474 = distinct !{!474, !347}
!475 = !{!"function_entry_count", i64 832910}
!476 = !{!"branch_weights", i32 1, i32 832911}
!477 = !{!478, !286, i64 32}
!478 = !{!"_ZTSN11xalanc_1_1022XalanSourceTreeElementE", !479, i64 0, !286, i64 8, !286, i64 16, !286, i64 24, !286, i64 32, !286, i64 40, !286, i64 48, !286, i64 56, !291, i64 64}
!479 = !{!"_ZTSN11xalanc_1_1012XalanElementE", !480, i64 0}
!480 = !{!"_ZTSN11xalanc_1_109XalanNodeE"}
