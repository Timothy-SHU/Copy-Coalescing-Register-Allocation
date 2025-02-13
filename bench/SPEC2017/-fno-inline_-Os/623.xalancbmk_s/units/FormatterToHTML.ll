; ModuleID = 'FormatterToHTML.cpp'
source_filename = "FormatterToHTML.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::FormatterToHTML::Entity" = type { i16, i32, [9 x i16] }
%"class.xalanc_1_10::FormatterToXML" = type <{ %"class.xalanc_1_10::FormatterListener", ptr, ptr, i16, [256 x i16], [256 x i16], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", i32, i32, %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanDOMString", i8, i8, i8, i8, [4 x i8], %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanVector", i32, [4 x i8], %"class.xalanc_1_10::XalanVector.1", %"class.xalanc_1_10::XalanVector.0", { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, ptr, i32, i8, [3 x i8] }>
%"class.xalanc_1_10::FormatterListener" = type { %"class.xercesc_2_7::DocumentHandler", ptr, i32, i32 }
%"class.xercesc_2_7::DocumentHandler" = type { ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::FormatterToHTML" = type { %"class.xalanc_1_10::FormatterToXML.base", [3 x i8], %"class.xalanc_1_10::XalanDOMString", i8, %"class.xalanc_1_10::XalanVector.0", i8, %"class.xalanc_1_10::XalanVector.0", i8, i8, i8, i32, %"class.xalanc_1_10::XalanVector.0", i8, %"class.xalanc_1_10::XalanVector.2" }
%"class.xalanc_1_10::FormatterToXML.base" = type <{ %"class.xalanc_1_10::FormatterListener", ptr, ptr, i16, [256 x i16], [256 x i16], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", i32, i32, %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanDOMString", i8, i8, i8, i8, [4 x i8], %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanVector", i32, [4 x i8], %"class.xalanc_1_10::XalanVector.1", %"class.xalanc_1_10::XalanVector.0", { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, ptr, i32, i8 }>
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties" = type { ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::FormatterToHTML, false>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::FormatterToHTML, false>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }
%"struct.xalanc_1_10::XalanHTMLElementsProperties::InternalElementProperties" = type { [11 x i16], i32, [7 x %"struct.xalanc_1_10::XalanHTMLElementsProperties::InternalAttributeProperties"] }
%"struct.xalanc_1_10::XalanHTMLElementsProperties::InternalAttributeProperties" = type { [9 x i16], i8 }

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

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE7destroyEPbS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10deallocateEPb = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE7destroyERb = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE3getEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1015FormatterToHTMLEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZN11xalanc_1_105clearERNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5clearEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9push_backERKb = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv = comdat any

$_ZN11xalanc_1_107isEmptyERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1014FormatterToXML12accumContentEPKtjj = comdat any

$_ZN11xalanc_1_1014FormatterToXML12accumContentERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1014FormatterToXML12accumContentEt = comdat any

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

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE12shrinkToSizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8pop_backEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIbE9constructEPbRKbRN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4swapERS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE14local_distanceEPKbS5_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE14ensureCapacityEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8capacityEv = comdat any

$_ZSt4copyIPKbPbET0_T_S4_S3_ = comdat any

$_ZSt13copy_backwardIPbS0_ET0_T_S2_S1_ = comdat any

$_ZSt8distanceIPKbENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZSt10__distanceIPKbENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKbENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm = comdat any

$_ZSt13__copy_move_aILb0EPKbPbET1_T0_S4_S3_ = comdat any

$_ZSt12__miter_baseIPKbET_S2_ = comdat any

$_ZSt12__niter_wrapIPbET_RKS1_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKbPbET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPKbET_S2_ = comdat any

$_ZSt12__niter_baseIPbET_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKbPbET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIbEEPT_PKS3_S6_S4_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPbS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPbET_S1_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPbS0_ET1_T0_S2_S1_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPbS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIbEEPT_PKS3_S6_S4_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5emptyEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_ = comdat any

$_ZNK11xalanc_1_1027XalanHTMLElementsProperties17ElementProperties2isEj = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4backEv = comdat any

$_ZN11xalanc_1_1014FormatterToXML9accumNameEPKt = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_27XalanHTMLElementsProperties17ElementPropertiesEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_ = comdat any

$_ZN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesC2ERKS1_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv = comdat any

$_ZSt4copyIPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEPS2_ET0_T_S7_S6_ = comdat any

$_ZSt13copy_backwardIPN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesES3_ET0_T_S5_S4_ = comdat any

$_ZSt8distanceIPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEENSt15iterator_traitsIT_E15difference_typeES6_S6_ = comdat any

$_ZSt10__distanceIPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEENSt15iterator_traitsIT_E17iterator_categoryERKS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZSt13__copy_move_aILb0EPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEPS2_ET1_T0_S7_S6_ = comdat any

$_ZSt12__miter_baseIPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEET_S5_ = comdat any

$_ZSt12__niter_wrapIPN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEET_RKS4_S4_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEPS2_ET1_T0_S7_S6_ = comdat any

$_ZSt12__niter_baseIPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEET_S5_ = comdat any

$_ZSt12__niter_baseIPN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEET_S4_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEPS2_ET1_T0_S7_S6_ = comdat any

$_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEPS5_EET0_T_SA_S9_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesES3_ET1_T0_S5_S4_ = comdat any

$_ZSt12__miter_baseIPN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEET_S4_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesES3_ET1_T0_S5_S4_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesES3_ET1_T0_S5_S4_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesES6_EET0_T_S8_S7_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZNK11xalanc_1_1027XalanHTMLElementsProperties25InternalElementProperties2isEj = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1014FormatterToXML12shouldIndentEv = comdat any

$_ZN11xalanc_1_106lengthEPKt = comdat any

$_ZN11xalanc_1_106equalsEPKtjS1_j = comdat any

$_ZN11xalanc_1_1015isXMLWhitespaceEt = comdat any

$_ZN11xalanc_1_1012XalanXMLChar12isWhitespaceEt = comdat any

$_ZN11xalanc_1_1011toCharArrayERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZNK11xalanc_1_1014XalanDOMString6lengthEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString4sizeEv = comdat any

$_ZN11xalanc_1_1014FormatterToXML16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1014FormatterToXML9accumNameEt = comdat any

$_ZN11xalanc_1_1014FormatterToXML9accumNameEPKtjj = comdat any

$_ZN11xalanc_1_1014FormatterToXML9accumNameERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1021equalsIgnoreCaseASCIIEPKtjS1_j = comdat any

$_ZNK11xalanc_1_1027XalanHTMLElementsProperties17ElementProperties11isAttributeEPKth = comdat any

$_ZN11xalanc_1_1014FormatterToXML16isUTF16SurrogateEt = comdat any

$_ZN11xalanc_1_107indexOfEPKtt = comdat any

@_ZTVN11xalanc_1_1015FormatterToHTMLE = dso_local unnamed_addr constant { [28 x ptr] } { [28 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1015FormatterToHTMLE, ptr @_ZN11xalanc_1_1015FormatterToHTMLD2Ev, ptr @_ZN11xalanc_1_1015FormatterToHTMLD0Ev, ptr @_ZN11xalanc_1_1015FormatterToHTML10charactersEPKtj, ptr @_ZN11xalanc_1_1015FormatterToHTML11endDocumentEv, ptr @_ZN11xalanc_1_1015FormatterToHTML10endElementEPKt, ptr @_ZN11xalanc_1_1014FormatterToXML19ignorableWhitespaceEPKtj, ptr @_ZN11xalanc_1_1015FormatterToHTML21processingInstructionEPKtS2_, ptr @_ZN11xalanc_1_1014FormatterToXML13resetDocumentEv, ptr @_ZN11xalanc_1_1014FormatterToXML18setDocumentLocatorEPKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1015FormatterToHTML13startDocumentEv, ptr @_ZN11xalanc_1_1015FormatterToHTML12startElementEPKtRN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1014FormatterToXML13charactersRawEPKtj, ptr @_ZN11xalanc_1_1014FormatterToXML7commentEPKt, ptr @_ZN11xalanc_1_1015FormatterToHTML5cdataEPKtj, ptr @_ZN11xalanc_1_1015FormatterToHTML15entityReferenceEPKt, ptr @_ZNK11xalanc_1_1014FormatterToXML9getWriterEv, ptr @_ZNK11xalanc_1_1014FormatterToXML16getDoctypeSystemEv, ptr @_ZNK11xalanc_1_1014FormatterToXML16getDoctypePublicEv, ptr @_ZNK11xalanc_1_1014FormatterToXML11getEncodingEv, ptr @_ZNK11xalanc_1_1014FormatterToXML12getMediaTypeEv, ptr @_ZNK11xalanc_1_1014FormatterToXML9getIndentEv, ptr @_ZN11xalanc_1_1015FormatterToHTML18accumDefaultEntityEtb, ptr @_ZN11xalanc_1_1014FormatterToXML20writeNormalizedCharsEPKtjjb, ptr @_ZN11xalanc_1_1015FormatterToHTML15writeAttrStringEPKtj, ptr @_ZN11xalanc_1_1015FormatterToHTML16accumCommentDataEPKt, ptr @_ZN11xalanc_1_1015FormatterToHTML16processAttributeEPKtS2_RKNS_27XalanHTMLElementsProperties17ElementPropertiesE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1015FormatterToHTMLE = dso_local constant [33 x i8] c"N11xalanc_1_1015FormatterToHTMLE\00", align 1
@_ZTIN11xalanc_1_1014FormatterToXMLE = external constant ptr
@_ZTIN11xalanc_1_1015FormatterToHTMLE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1015FormatterToHTMLE, ptr @_ZTIN11xalanc_1_1014FormatterToXMLE }, align 8
@_ZN11xalanc_1_1015FormatterToHTML13s_emptyStringE = dso_local global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZN11xalanc_1_1017FormatterListener10s_piTargetE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1017FormatterListener8s_piDataE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE = external local_unnamed_addr constant [0 x i8], align 1
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@_ZN11xalanc_1_1015FormatterToHTML10s_entitiesE = dso_local constant [195 x %"struct.xalanc_1_10::FormatterToHTML::Entity"] [%"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 160, i32 4, [9 x i16] [i16 110, i16 98, i16 115, i16 112, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 161, i32 5, [9 x i16] [i16 105, i16 101, i16 120, i16 99, i16 108, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 162, i32 4, [9 x i16] [i16 99, i16 101, i16 110, i16 116, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 163, i32 5, [9 x i16] [i16 112, i16 111, i16 117, i16 110, i16 100, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 164, i32 6, [9 x i16] [i16 99, i16 117, i16 114, i16 114, i16 101, i16 110, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 165, i32 3, [9 x i16] [i16 121, i16 101, i16 110, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 166, i32 6, [9 x i16] [i16 98, i16 114, i16 118, i16 98, i16 97, i16 114, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 167, i32 4, [9 x i16] [i16 115, i16 101, i16 99, i16 116, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 168, i32 3, [9 x i16] [i16 117, i16 109, i16 108, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 169, i32 4, [9 x i16] [i16 99, i16 111, i16 112, i16 121, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 170, i32 4, [9 x i16] [i16 111, i16 114, i16 100, i16 102, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 171, i32 5, [9 x i16] [i16 108, i16 97, i16 113, i16 117, i16 111, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 172, i32 3, [9 x i16] [i16 110, i16 111, i16 116, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 173, i32 3, [9 x i16] [i16 115, i16 104, i16 121, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 174, i32 3, [9 x i16] [i16 114, i16 101, i16 103, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 175, i32 4, [9 x i16] [i16 109, i16 97, i16 99, i16 114, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 176, i32 3, [9 x i16] [i16 100, i16 101, i16 103, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 177, i32 6, [9 x i16] [i16 112, i16 108, i16 117, i16 115, i16 109, i16 110, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 178, i32 4, [9 x i16] [i16 115, i16 117, i16 112, i16 50, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 179, i32 4, [9 x i16] [i16 115, i16 117, i16 112, i16 51, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 180, i32 5, [9 x i16] [i16 97, i16 99, i16 117, i16 116, i16 101, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 181, i32 5, [9 x i16] [i16 109, i16 105, i16 99, i16 114, i16 111, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 182, i32 4, [9 x i16] [i16 112, i16 97, i16 114, i16 97, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 183, i32 6, [9 x i16] [i16 109, i16 105, i16 100, i16 100, i16 111, i16 116, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 184, i32 5, [9 x i16] [i16 99, i16 101, i16 100, i16 105, i16 108, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 185, i32 4, [9 x i16] [i16 115, i16 117, i16 112, i16 49, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 186, i32 4, [9 x i16] [i16 111, i16 114, i16 100, i16 109, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 187, i32 5, [9 x i16] [i16 114, i16 97, i16 113, i16 117, i16 111, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 188, i32 6, [9 x i16] [i16 102, i16 114, i16 97, i16 99, i16 49, i16 52, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 189, i32 6, [9 x i16] [i16 102, i16 114, i16 97, i16 99, i16 49, i16 50, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 190, i32 6, [9 x i16] [i16 102, i16 114, i16 97, i16 99, i16 51, i16 52, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 191, i32 6, [9 x i16] [i16 105, i16 113, i16 117, i16 101, i16 115, i16 116, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 192, i32 6, [9 x i16] [i16 65, i16 103, i16 114, i16 97, i16 118, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 193, i32 6, [9 x i16] [i16 65, i16 97, i16 99, i16 117, i16 116, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 194, i32 5, [9 x i16] [i16 65, i16 99, i16 105, i16 114, i16 99, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 195, i32 6, [9 x i16] [i16 65, i16 116, i16 105, i16 108, i16 100, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 196, i32 4, [9 x i16] [i16 65, i16 117, i16 109, i16 108, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 197, i32 5, [9 x i16] [i16 65, i16 114, i16 105, i16 110, i16 103, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 198, i32 5, [9 x i16] [i16 65, i16 69, i16 108, i16 105, i16 103, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 199, i32 6, [9 x i16] [i16 67, i16 99, i16 101, i16 100, i16 105, i16 108, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 200, i32 6, [9 x i16] [i16 69, i16 103, i16 114, i16 97, i16 118, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 201, i32 6, [9 x i16] [i16 69, i16 97, i16 99, i16 117, i16 116, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 202, i32 5, [9 x i16] [i16 69, i16 99, i16 105, i16 114, i16 99, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 203, i32 4, [9 x i16] [i16 69, i16 117, i16 109, i16 108, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 204, i32 6, [9 x i16] [i16 73, i16 103, i16 114, i16 97, i16 118, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 205, i32 6, [9 x i16] [i16 73, i16 97, i16 99, i16 117, i16 116, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 206, i32 5, [9 x i16] [i16 73, i16 99, i16 105, i16 114, i16 99, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 207, i32 4, [9 x i16] [i16 73, i16 117, i16 109, i16 108, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 208, i32 3, [9 x i16] [i16 69, i16 84, i16 72, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 209, i32 6, [9 x i16] [i16 78, i16 116, i16 105, i16 108, i16 100, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 210, i32 6, [9 x i16] [i16 79, i16 103, i16 114, i16 97, i16 118, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 211, i32 6, [9 x i16] [i16 79, i16 97, i16 99, i16 117, i16 116, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 212, i32 5, [9 x i16] [i16 79, i16 99, i16 105, i16 114, i16 99, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 213, i32 6, [9 x i16] [i16 79, i16 116, i16 105, i16 108, i16 100, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 214, i32 4, [9 x i16] [i16 79, i16 117, i16 109, i16 108, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 215, i32 5, [9 x i16] [i16 116, i16 105, i16 109, i16 101, i16 115, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 216, i32 6, [9 x i16] [i16 79, i16 115, i16 108, i16 97, i16 115, i16 104, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 217, i32 6, [9 x i16] [i16 85, i16 103, i16 114, i16 97, i16 118, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 218, i32 6, [9 x i16] [i16 85, i16 97, i16 99, i16 117, i16 116, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 219, i32 5, [9 x i16] [i16 85, i16 99, i16 105, i16 114, i16 99, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 220, i32 4, [9 x i16] [i16 85, i16 117, i16 109, i16 108, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 221, i32 6, [9 x i16] [i16 89, i16 97, i16 99, i16 117, i16 116, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 222, i32 5, [9 x i16] [i16 84, i16 72, i16 79, i16 82, i16 78, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 223, i32 5, [9 x i16] [i16 115, i16 122, i16 108, i16 105, i16 103, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 224, i32 6, [9 x i16] [i16 97, i16 103, i16 114, i16 97, i16 118, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 225, i32 6, [9 x i16] [i16 97, i16 97, i16 99, i16 117, i16 116, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 226, i32 5, [9 x i16] [i16 97, i16 99, i16 105, i16 114, i16 99, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 227, i32 6, [9 x i16] [i16 97, i16 116, i16 105, i16 108, i16 100, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 228, i32 4, [9 x i16] [i16 97, i16 117, i16 109, i16 108, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 229, i32 5, [9 x i16] [i16 97, i16 114, i16 105, i16 110, i16 103, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 230, i32 5, [9 x i16] [i16 97, i16 101, i16 108, i16 105, i16 103, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 231, i32 6, [9 x i16] [i16 99, i16 99, i16 101, i16 100, i16 105, i16 108, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 232, i32 6, [9 x i16] [i16 101, i16 103, i16 114, i16 97, i16 118, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 233, i32 6, [9 x i16] [i16 101, i16 97, i16 99, i16 117, i16 116, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 234, i32 5, [9 x i16] [i16 101, i16 99, i16 105, i16 114, i16 99, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 235, i32 4, [9 x i16] [i16 101, i16 117, i16 109, i16 108, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 236, i32 6, [9 x i16] [i16 105, i16 103, i16 114, i16 97, i16 118, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 237, i32 6, [9 x i16] [i16 105, i16 97, i16 99, i16 117, i16 116, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 238, i32 5, [9 x i16] [i16 105, i16 99, i16 105, i16 114, i16 99, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 239, i32 4, [9 x i16] [i16 105, i16 117, i16 109, i16 108, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 240, i32 3, [9 x i16] [i16 101, i16 116, i16 104, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 241, i32 6, [9 x i16] [i16 110, i16 116, i16 105, i16 108, i16 100, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 242, i32 6, [9 x i16] [i16 111, i16 103, i16 114, i16 97, i16 118, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 243, i32 6, [9 x i16] [i16 111, i16 97, i16 99, i16 117, i16 116, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 244, i32 5, [9 x i16] [i16 111, i16 99, i16 105, i16 114, i16 99, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 245, i32 6, [9 x i16] [i16 111, i16 116, i16 105, i16 108, i16 100, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 246, i32 4, [9 x i16] [i16 111, i16 117, i16 109, i16 108, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 247, i32 6, [9 x i16] [i16 100, i16 105, i16 118, i16 105, i16 100, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 248, i32 6, [9 x i16] [i16 111, i16 115, i16 108, i16 97, i16 115, i16 104, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 249, i32 6, [9 x i16] [i16 117, i16 103, i16 114, i16 97, i16 118, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 250, i32 6, [9 x i16] [i16 117, i16 97, i16 99, i16 117, i16 116, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 251, i32 5, [9 x i16] [i16 117, i16 99, i16 105, i16 114, i16 99, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 252, i32 4, [9 x i16] [i16 117, i16 117, i16 109, i16 108, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 253, i32 6, [9 x i16] [i16 121, i16 97, i16 99, i16 117, i16 116, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 254, i32 5, [9 x i16] [i16 116, i16 104, i16 111, i16 114, i16 110, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 255, i32 4, [9 x i16] [i16 121, i16 117, i16 109, i16 108, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 338, i32 5, [9 x i16] [i16 79, i16 69, i16 108, i16 105, i16 103, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 339, i32 5, [9 x i16] [i16 111, i16 101, i16 108, i16 105, i16 103, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 352, i32 6, [9 x i16] [i16 83, i16 99, i16 97, i16 114, i16 111, i16 110, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 353, i32 6, [9 x i16] [i16 115, i16 99, i16 97, i16 114, i16 111, i16 110, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 376, i32 4, [9 x i16] [i16 89, i16 117, i16 109, i16 108, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 710, i32 4, [9 x i16] [i16 99, i16 105, i16 114, i16 99, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 732, i32 5, [9 x i16] [i16 116, i16 105, i16 108, i16 100, i16 101, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8194, i32 4, [9 x i16] [i16 101, i16 110, i16 115, i16 112, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8195, i32 4, [9 x i16] [i16 101, i16 109, i16 115, i16 112, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8201, i32 6, [9 x i16] [i16 116, i16 104, i16 105, i16 110, i16 115, i16 112, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8204, i32 4, [9 x i16] [i16 122, i16 119, i16 110, i16 106, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8205, i32 3, [9 x i16] [i16 122, i16 119, i16 106, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8206, i32 3, [9 x i16] [i16 108, i16 114, i16 109, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8207, i32 3, [9 x i16] [i16 114, i16 108, i16 109, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8211, i32 5, [9 x i16] [i16 110, i16 100, i16 97, i16 115, i16 104, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8212, i32 5, [9 x i16] [i16 109, i16 100, i16 97, i16 115, i16 104, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8216, i32 5, [9 x i16] [i16 108, i16 115, i16 113, i16 117, i16 111, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8217, i32 5, [9 x i16] [i16 114, i16 115, i16 113, i16 117, i16 111, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8218, i32 5, [9 x i16] [i16 115, i16 98, i16 113, i16 117, i16 111, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8220, i32 5, [9 x i16] [i16 108, i16 100, i16 113, i16 117, i16 111, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8221, i32 5, [9 x i16] [i16 114, i16 100, i16 113, i16 117, i16 111, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8222, i32 5, [9 x i16] [i16 98, i16 100, i16 113, i16 117, i16 111, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8224, i32 6, [9 x i16] [i16 100, i16 97, i16 103, i16 103, i16 101, i16 114, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8225, i32 6, [9 x i16] [i16 68, i16 97, i16 103, i16 103, i16 101, i16 114, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8226, i32 4, [9 x i16] [i16 98, i16 117, i16 108, i16 108, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8230, i32 6, [9 x i16] [i16 104, i16 101, i16 108, i16 108, i16 105, i16 112, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8240, i32 6, [9 x i16] [i16 112, i16 101, i16 114, i16 109, i16 105, i16 108, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8242, i32 5, [9 x i16] [i16 112, i16 114, i16 105, i16 109, i16 101, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8243, i32 5, [9 x i16] [i16 80, i16 114, i16 105, i16 109, i16 101, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8249, i32 6, [9 x i16] [i16 108, i16 115, i16 97, i16 113, i16 117, i16 111, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8250, i32 6, [9 x i16] [i16 114, i16 115, i16 97, i16 113, i16 117, i16 111, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8254, i32 5, [9 x i16] [i16 111, i16 108, i16 105, i16 110, i16 101, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8260, i32 5, [9 x i16] [i16 102, i16 114, i16 97, i16 115, i16 108, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8364, i32 4, [9 x i16] [i16 101, i16 117, i16 114, i16 111, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8465, i32 5, [9 x i16] [i16 105, i16 109, i16 97, i16 103, i16 101, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8472, i32 6, [9 x i16] [i16 119, i16 101, i16 105, i16 101, i16 114, i16 112, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8476, i32 4, [9 x i16] [i16 114, i16 101, i16 97, i16 108, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8482, i32 5, [9 x i16] [i16 116, i16 114, i16 97, i16 100, i16 101, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8501, i32 7, [9 x i16] [i16 97, i16 108, i16 101, i16 102, i16 115, i16 121, i16 109, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8592, i32 4, [9 x i16] [i16 108, i16 97, i16 114, i16 114, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8593, i32 4, [9 x i16] [i16 117, i16 97, i16 114, i16 114, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8594, i32 4, [9 x i16] [i16 114, i16 97, i16 114, i16 114, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8595, i32 4, [9 x i16] [i16 100, i16 97, i16 114, i16 114, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8596, i32 4, [9 x i16] [i16 104, i16 97, i16 114, i16 114, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8629, i32 5, [9 x i16] [i16 99, i16 114, i16 97, i16 114, i16 114, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8656, i32 4, [9 x i16] [i16 108, i16 65, i16 114, i16 114, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8657, i32 4, [9 x i16] [i16 117, i16 65, i16 114, i16 114, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8658, i32 4, [9 x i16] [i16 114, i16 65, i16 114, i16 114, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8659, i32 4, [9 x i16] [i16 100, i16 65, i16 114, i16 114, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8660, i32 4, [9 x i16] [i16 104, i16 65, i16 114, i16 114, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8704, i32 6, [9 x i16] [i16 102, i16 111, i16 114, i16 97, i16 108, i16 108, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8706, i32 4, [9 x i16] [i16 112, i16 97, i16 114, i16 116, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8707, i32 5, [9 x i16] [i16 101, i16 120, i16 105, i16 115, i16 116, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8709, i32 5, [9 x i16] [i16 101, i16 109, i16 112, i16 116, i16 121, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8711, i32 5, [9 x i16] [i16 110, i16 97, i16 98, i16 108, i16 97, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8712, i32 4, [9 x i16] [i16 105, i16 115, i16 105, i16 110, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8713, i32 5, [9 x i16] [i16 110, i16 111, i16 116, i16 105, i16 110, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8715, i32 2, [9 x i16] [i16 110, i16 105, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8719, i32 4, [9 x i16] [i16 112, i16 114, i16 111, i16 100, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8721, i32 3, [9 x i16] [i16 115, i16 117, i16 109, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8722, i32 5, [9 x i16] [i16 109, i16 105, i16 110, i16 117, i16 115, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8727, i32 6, [9 x i16] [i16 108, i16 111, i16 119, i16 97, i16 115, i16 116, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8730, i32 5, [9 x i16] [i16 114, i16 97, i16 100, i16 105, i16 99, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8733, i32 4, [9 x i16] [i16 112, i16 114, i16 111, i16 112, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8734, i32 5, [9 x i16] [i16 105, i16 110, i16 102, i16 105, i16 110, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8736, i32 3, [9 x i16] [i16 97, i16 110, i16 103, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8743, i32 3, [9 x i16] [i16 97, i16 110, i16 100, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8744, i32 2, [9 x i16] [i16 111, i16 114, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8745, i32 3, [9 x i16] [i16 99, i16 97, i16 112, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8746, i32 3, [9 x i16] [i16 99, i16 117, i16 112, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8747, i32 3, [9 x i16] [i16 105, i16 110, i16 116, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8756, i32 6, [9 x i16] [i16 116, i16 104, i16 101, i16 114, i16 101, i16 52, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8764, i32 3, [9 x i16] [i16 115, i16 105, i16 109, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8773, i32 4, [9 x i16] [i16 99, i16 111, i16 110, i16 103, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8776, i32 5, [9 x i16] [i16 97, i16 115, i16 121, i16 109, i16 112, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8800, i32 2, [9 x i16] [i16 110, i16 101, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8801, i32 5, [9 x i16] [i16 101, i16 113, i16 117, i16 105, i16 118, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8804, i32 2, [9 x i16] [i16 108, i16 101, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8805, i32 2, [9 x i16] [i16 103, i16 101, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8834, i32 3, [9 x i16] [i16 115, i16 117, i16 98, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8835, i32 3, [9 x i16] [i16 115, i16 117, i16 112, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8836, i32 4, [9 x i16] [i16 110, i16 115, i16 117, i16 98, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8838, i32 4, [9 x i16] [i16 115, i16 117, i16 98, i16 101, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8839, i32 4, [9 x i16] [i16 115, i16 117, i16 112, i16 101, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8853, i32 5, [9 x i16] [i16 111, i16 112, i16 108, i16 117, i16 115, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8855, i32 6, [9 x i16] [i16 111, i16 116, i16 105, i16 109, i16 101, i16 115, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8869, i32 4, [9 x i16] [i16 112, i16 101, i16 114, i16 112, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8901, i32 4, [9 x i16] [i16 115, i16 100, i16 111, i16 116, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8968, i32 5, [9 x i16] [i16 108, i16 99, i16 101, i16 105, i16 108, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8969, i32 5, [9 x i16] [i16 114, i16 99, i16 101, i16 105, i16 108, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8970, i32 6, [9 x i16] [i16 108, i16 102, i16 108, i16 111, i16 111, i16 114, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8971, i32 6, [9 x i16] [i16 114, i16 102, i16 108, i16 111, i16 111, i16 114, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 9001, i32 4, [9 x i16] [i16 108, i16 97, i16 110, i16 103, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 9002, i32 4, [9 x i16] [i16 114, i16 97, i16 110, i16 103, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 9674, i32 3, [9 x i16] [i16 108, i16 111, i16 122, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 9824, i32 6, [9 x i16] [i16 115, i16 112, i16 97, i16 100, i16 101, i16 115, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 9827, i32 5, [9 x i16] [i16 99, i16 108, i16 117, i16 98, i16 115, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 9829, i32 6, [9 x i16] [i16 104, i16 101, i16 97, i16 114, i16 116, i16 115, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 9830, i32 5, [9 x i16] [i16 100, i16 105, i16 97, i16 109, i16 115, i16 0, i16 0, i16 0, i16 0] }], align 16
@_ZN11xalanc_1_1015FormatterToHTML12s_lastEntityE = dso_local local_unnamed_addr constant ptr getelementptr inbounds ([195 x %"struct.xalanc_1_10::FormatterToHTML::Entity"], ptr @_ZN11xalanc_1_1015FormatterToHTML10s_entitiesE, i64 0, i64 194, i32 0), align 8
@_ZN11xalanc_1_1015FormatterToHTML26s_doctypeHeaderStartStringE = dso_local constant [15 x i16] [i16 60, i16 33, i16 68, i16 79, i16 67, i16 84, i16 89, i16 80, i16 69, i16 32, i16 72, i16 84, i16 77, i16 76, i16 0], align 16
@_ZN11xalanc_1_1015FormatterToHTML32s_doctypeHeaderStartStringLengthE = dso_local local_unnamed_addr constant i32 14, align 4
@_ZN11xalanc_1_1015FormatterToHTML27s_doctypeHeaderPublicStringE = dso_local constant [10 x i16] [i16 32, i16 80, i16 85, i16 66, i16 76, i16 73, i16 67, i16 32, i16 34, i16 0], align 16
@_ZN11xalanc_1_1015FormatterToHTML33s_doctypeHeaderPublicStringLengthE = dso_local local_unnamed_addr constant i32 9, align 4
@_ZN11xalanc_1_1015FormatterToHTML27s_doctypeHeaderSystemStringE = dso_local constant [8 x i16] [i16 32, i16 83, i16 89, i16 83, i16 84, i16 69, i16 77, i16 0], align 16
@_ZN11xalanc_1_1015FormatterToHTML33s_doctypeHeaderSystemStringLengthE = dso_local local_unnamed_addr constant i32 7, align 4
@_ZN11xalanc_1_1015FormatterToHTML12s_metaStringE = dso_local constant [61 x i16] [i16 60, i16 77, i16 69, i16 84, i16 65, i16 32, i16 104, i16 116, i16 116, i16 112, i16 45, i16 101, i16 113, i16 117, i16 105, i16 118, i16 61, i16 34, i16 67, i16 111, i16 110, i16 116, i16 101, i16 110, i16 116, i16 45, i16 84, i16 121, i16 112, i16 101, i16 34, i16 32, i16 99, i16 111, i16 110, i16 116, i16 101, i16 110, i16 116, i16 61, i16 34, i16 116, i16 101, i16 120, i16 116, i16 47, i16 104, i16 116, i16 109, i16 108, i16 59, i16 32, i16 99, i16 104, i16 97, i16 114, i16 115, i16 101, i16 116, i16 61, i16 0], align 16
@_ZN11xalanc_1_1015FormatterToHTML18s_metaStringLengthE = dso_local local_unnamed_addr constant i32 60, align 4
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_FormatterToHTML.cpp, ptr null }]

@_ZN11xalanc_1_1015FormatterToHTMLC1ERNS_6WriterERKNS_14XalanDOMStringES5_S5_S5_bibbRN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, i1, i32, i1, i1, ptr), ptr @_ZN11xalanc_1_1015FormatterToHTMLC2ERNS_6WriterERKNS_14XalanDOMStringES5_S5_S5_bibbRN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1015FormatterToHTMLD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1015FormatterToHTMLD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTMLD0Ev(ptr noundef nonnull align 8 dereferenceable(1912) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1015FormatterToHTMLD2Ev(ptr noundef nonnull align 8 dereferenceable(1912) %0) #13
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML10charactersEPKtj(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 align 2 !prof !285 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %49, label %5, !prof !286

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 14
  %7 = load i8, ptr %6, align 2, !tbaa !287, !range !304, !noundef !305
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9, !prof !306

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !307
  %11 = getelementptr inbounds ptr, ptr %10, i64 13
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %1, i32 noundef %2) #15
  br label %49

13:                                               ; preds = %5
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 13
  %15 = load i8, ptr %14, align 1, !tbaa !309, !range !304, !noundef !305
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %17, !prof !306

17:                                               ; preds = %13
  store i8 0, ptr %14, align 1, !tbaa !309
  %18 = load ptr, ptr %0, align 8, !tbaa !307
  %19 = getelementptr inbounds ptr, ptr %18, i64 11
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %2) #15
  br label %49

21:                                               ; preds = %13
  %22 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 6
  %23 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %22) #15
  %24 = load i8, ptr %23, align 1, !tbaa !310, !range !304, !noundef !305
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %30, label %26, !prof !306

26:                                               ; preds = %21
  %27 = load ptr, ptr %0, align 8, !tbaa !307
  %28 = getelementptr inbounds ptr, ptr %27, i64 11
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %2) #15
  br label %49

30:                                               ; preds = %21
  %31 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 4
  %32 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %31) #15
  br i1 %32, label %47, label %33, !prof !286

33:                                               ; preds = %30
  %34 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %31) #15
  %35 = load i8, ptr %34, align 1, !tbaa !310, !range !304, !noundef !305
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %47, label %37, !prof !306

37:                                               ; preds = %33
  tail call void @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #15
  %38 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  store i8 1, ptr %38, align 1, !tbaa !311
  %39 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014FormatterToXML12shouldIndentEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #15
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 20
  %42 = load i32, ptr %41, align 8, !tbaa !312
  tail call void @_ZN11xalanc_1_1014FormatterToXML6indentEi(ptr noundef nonnull align 8 dereferenceable(1709) %0, i32 noundef %42) #15
  br label %43

43:                                               ; preds = %40, %37
  %44 = load ptr, ptr %0, align 8, !tbaa !307
  %45 = getelementptr inbounds ptr, ptr %44, i64 22
  %46 = load ptr, ptr %45, align 8
  tail call void %46(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef 0, i32 noundef %2, i1 noundef zeroext false) #15
  br label %49

47:                                               ; preds = %33, %30
  tail call void @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #15
  %48 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  store i8 1, ptr %48, align 1, !tbaa !311
  tail call void @_ZN11xalanc_1_1015FormatterToHTML15writeCharactersEPKtj(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %1, i32 noundef %2) #15
  br label %49

49:                                               ; preds = %9, %26, %47, %43, %17, %3
  %50 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 11
  %51 = load i8, ptr %50, align 1, !tbaa !313, !range !304, !noundef !305
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %54, !prof !314

53:                                               ; preds = %49
  store i8 1, ptr %50, align 1, !tbaa !313
  br label %54

54:                                               ; preds = %53, %49
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(1912) %0) unnamed_addr #1 align 2 !prof !315 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  tail call void @_ZN11xalanc_1_1014FormatterToXML11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML10endElementEPKt(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !316 {
  %3 = alloca %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", align 8
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1015FormatterToHTML15popHasNamespaceEv(ptr noundef nonnull align 8 dereferenceable(1912) %0) #15
  br i1 %4, label %5, label %6, !prof !317

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1014FormatterToXML10endElementEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1) #15
  br label %59

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 21
  %8 = load i32, ptr %7, align 4, !tbaa !318
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 20
  %10 = load i32, ptr %9, align 8, !tbaa !312
  %11 = sub nsw i32 %10, %8
  store i32 %11, ptr %9, align 8, !tbaa !312
  %12 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014FormatterToXML19childNodesWereAddedEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #15
  %13 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %13) #15
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %14) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %15 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 13
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #15
  call void @_ZN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %16) #15
  call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #15
  %17 = call noundef zeroext i1 @_ZNK11xalanc_1_1027XalanHTMLElementsProperties17ElementProperties2isEj(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 8) #15
  %18 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  %19 = load i8, ptr %18, align 1, !tbaa !311, !range !304, !noundef !305
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21, !prof !319

21:                                               ; preds = %6
  store i8 0, ptr %18, align 1, !tbaa !311
  br label %31

22:                                               ; preds = %6
  %23 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 8
  %24 = load i8, ptr %23, align 4, !tbaa !320, !range !304, !noundef !305
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %31, label %26, !prof !321

26:                                               ; preds = %22
  %27 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 3
  %28 = load i8, ptr %27, align 8, !tbaa !322, !range !304, !noundef !305
  %29 = icmp eq i8 %28, 0
  %30 = or i1 %17, %29
  br i1 %30, label %35, label %31, !prof !325

31:                                               ; preds = %26, %22, %21
  %32 = xor i1 %17, true
  %33 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 3
  %34 = zext i1 %32 to i8
  store i8 %34, ptr %33, align 8, !tbaa !322
  br i1 %12, label %41, label %43, !prof !326

35:                                               ; preds = %26
  %36 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 9
  store i8 1, ptr %36, align 1, !tbaa !327
  %37 = xor i1 %17, true
  %38 = zext i1 %37 to i8
  store i8 %38, ptr %27, align 8, !tbaa !322
  br i1 %12, label %39, label %43, !prof !326

39:                                               ; preds = %35
  %40 = load i32, ptr %9, align 8, !tbaa !312
  call void @_ZN11xalanc_1_1014FormatterToXML6indentEi(ptr noundef nonnull align 8 dereferenceable(1709) %0, i32 noundef %40) #15
  br label %41

41:                                               ; preds = %31, %39
  %42 = call noundef zeroext i1 @_ZNK11xalanc_1_1027XalanHTMLElementsProperties17ElementProperties2isEj(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2) #15
  br i1 %42, label %46, label %45, !prof !328

43:                                               ; preds = %35, %31
  %44 = call noundef zeroext i1 @_ZNK11xalanc_1_1027XalanHTMLElementsProperties17ElementProperties2isEj(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2) #15
  call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 62) #15
  br i1 %44, label %46, label %45, !prof !329

45:                                               ; preds = %43, %41
  call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 60) #15
  call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 47) #15
  call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1) #15
  call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 62) #15
  br label %46

46:                                               ; preds = %45, %43, %41
  %47 = call noundef zeroext i1 @_ZNK11xalanc_1_1027XalanHTMLElementsProperties17ElementProperties2isEj(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2097152) #15
  br i1 %47, label %48, label %49, !prof !317

48:                                               ; preds = %46
  store i8 1, ptr %18, align 1, !tbaa !311
  br label %49

49:                                               ; preds = %48, %46
  br i1 %12, label %50, label %54, !prof !326

50:                                               ; preds = %49
  %51 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 22
  %52 = call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %51) #15
  br i1 %52, label %54, label %53, !prof !328

53:                                               ; preds = %50
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %51) #15
  br label %54

54:                                               ; preds = %50, %53, %49
  %55 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 11
  store i8 0, ptr %55, align 1, !tbaa !313
  %56 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 10
  %57 = load i32, ptr %56, align 4, !tbaa !330
  %58 = add nsw i32 %57, -1
  store i32 %58, ptr %56, align 4, !tbaa !330
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %59

59:                                               ; preds = %54, %5
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014FormatterToXML19ignorableWhitespaceEPKtj(ptr noundef nonnull align 8 dereferenceable(1709), ptr noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML21processingInstructionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !331 {
  %4 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %2) #15
  %5 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %1) #15
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtjS1_j(ptr noundef %1, i32 noundef %5, ptr noundef nonnull @_ZN11xalanc_1_1017FormatterListener10s_piTargetE, i32 noundef 5) #15
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtjS1_j(ptr noundef %2, i32 noundef %4, ptr noundef nonnull @_ZN11xalanc_1_1017FormatterListener8s_piDataE, i32 noundef 3) #15
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 13
  br label %31

11:                                               ; preds = %7, %3
  tail call void @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #15
  %12 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014FormatterToXML12shouldIndentEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #15
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 20
  %15 = load i32, ptr %14, align 8, !tbaa !312
  tail call void @_ZN11xalanc_1_1014FormatterToXML6indentEi(ptr noundef nonnull align 8 dereferenceable(1709) %0, i32 noundef %15) #15
  br label %16

16:                                               ; preds = %13, %11
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 60) #15
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 63) #15
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1) #15
  %17 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %2) #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = load i16, ptr %2, align 2, !tbaa !332
  %21 = tail call noundef zeroext i1 @_ZN11xalanc_1_1015isXMLWhitespaceEt(i16 noundef zeroext %20) #15
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 32) #15
  br label %23

23:                                               ; preds = %22, %19
  tail call void @_ZN11xalanc_1_1015FormatterToHTML15writeCharactersEPKtj(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef nonnull %2, i32 noundef %4) #15
  br label %24

24:                                               ; preds = %23, %16
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 62) #15
  %25 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 10
  %26 = load i32, ptr %25, align 4, !tbaa !330
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call void @_ZN11xalanc_1_1014FormatterToXML13outputLineSepEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #15
  br label %29

29:                                               ; preds = %28, %24
  %30 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 9
  br label %31

31:                                               ; preds = %29, %9
  %32 = phi ptr [ %30, %29 ], [ %10, %9 ]
  store i8 1, ptr %32, align 1, !tbaa !310
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014FormatterToXML13resetDocumentEv(ptr noundef nonnull align 8 dereferenceable(1709)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014FormatterToXML18setDocumentLocatorEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(1709), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(1912) %0) unnamed_addr #1 align 2 !prof !315 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23
  tail call void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %3) #15
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 10
  store i32 0, ptr %4, align 4, !tbaa !330
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 8
  store i8 1, ptr %5, align 1, !tbaa !333
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 9
  store i8 0, ptr %6, align 1, !tbaa !327
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 6
  store i8 0, ptr %7, align 2, !tbaa !334
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 5
  store i8 0, ptr %8, align 8, !tbaa !335
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #15
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  store i8 0, ptr %2, align 1, !tbaa !310
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9push_backERKb(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 1 dereferenceable(1) %2) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  %11 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 11
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %11) #15
  %12 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 13
  call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %12) #15
  %13 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 17
  %14 = call noundef zeroext i1 @_ZN11xalanc_1_107isEmptyERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %13) #15
  %15 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 18
  %16 = call noundef zeroext i1 @_ZN11xalanc_1_107isEmptyERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %15) #15
  %17 = and i1 %14, %16
  br i1 %17, label %24, label %18, !prof !336

18:                                               ; preds = %1
  call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull @_ZN11xalanc_1_1015FormatterToHTML26s_doctypeHeaderStartStringE, i32 noundef 0, i32 noundef 14) #15
  br i1 %16, label %19, label %20

19:                                               ; preds = %18
  br i1 %14, label %23, label %21

20:                                               ; preds = %18
  call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull @_ZN11xalanc_1_1015FormatterToHTML27s_doctypeHeaderPublicStringE, i32 noundef 0, i32 noundef 9) #15
  call void @_ZN11xalanc_1_1014FormatterToXML12accumContentERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull align 8 dereferenceable(36) %15) #15
  call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 34) #15
  br i1 %14, label %23, label %22

21:                                               ; preds = %19
  call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull @_ZN11xalanc_1_1015FormatterToHTML27s_doctypeHeaderSystemStringE, i32 noundef 0, i32 noundef 7) #15
  br label %22

22:                                               ; preds = %20, %21
  call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 32) #15
  call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 34) #15
  call void @_ZN11xalanc_1_1014FormatterToXML12accumContentERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull align 8 dereferenceable(36) %13) #15
  call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 34) #15
  br label %23

23:                                               ; preds = %20, %22, %19
  call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 62) #15
  call void @_ZN11xalanc_1_1014FormatterToXML13outputLineSepEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #15
  br label %24

24:                                               ; preds = %1, %23
  %25 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 10
  store i8 0, ptr %25, align 2, !tbaa !337
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML12startElementEPKtRN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 !prof !316 {
  %4 = alloca %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = tail call noundef zeroext i1 @_ZN11xalanc_1_1015FormatterToHTML16pushHasNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %1) #15
  br i1 %7, label %8, label %9, !prof !317

8:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1014FormatterToXML12startElementEPKtRN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  br label %106

9:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @_ZN11xalanc_1_1027XalanHTMLElementsProperties4findEPKt(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties") align 8 %4, ptr noundef %1) #15
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 13
  call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  %11 = call noundef zeroext i1 @_ZNK11xalanc_1_1027XalanHTMLElementsProperties17ElementProperties2isEj(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 8) #15
  %12 = call noundef zeroext i1 @_ZNK11xalanc_1_1027XalanHTMLElementsProperties17ElementProperties2isEj(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 16777216) #15
  br i1 %12, label %13, label %16, !prof !317

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 5
  store i8 1, ptr %14, align 8, !tbaa !335
  %15 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  store i8 1, ptr %5, align 1, !tbaa !310
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9push_backERKb(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 1 dereferenceable(1) %5) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  br label %23

16:                                               ; preds = %9
  %17 = call noundef zeroext i1 @_ZNK11xalanc_1_1027XalanHTMLElementsProperties17ElementProperties2isEj(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 8388608) #15
  br i1 %17, label %18, label %20, !prof !317

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 5
  store i8 1, ptr %19, align 8, !tbaa !335
  br label %20

20:                                               ; preds = %18, %16
  %21 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 6
  %22 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %21) #15
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9push_backERKb(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 1 dereferenceable(1) %22) #15
  br label %23

23:                                               ; preds = %20, %13
  %24 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 10
  %25 = load i32, ptr %24, align 4, !tbaa !330
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %24, align 4, !tbaa !330
  %27 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  %28 = load i8, ptr %27, align 1, !tbaa !311, !range !304, !noundef !305
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %31, label %30, !prof !338

30:                                               ; preds = %23
  store i8 0, ptr %27, align 1, !tbaa !311
  br label %50

31:                                               ; preds = %23
  %32 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 8
  %33 = load i8, ptr %32, align 4, !tbaa !320, !range !304, !noundef !305
  %34 = icmp ne i8 %33, 0
  %35 = icmp sgt i32 %25, -1
  %36 = select i1 %34, i1 %35, i1 false
  %37 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 8
  %38 = load i8, ptr %37, align 1, !range !304
  %39 = icmp eq i8 %38, 0
  %40 = select i1 %36, i1 %39, i1 false
  br i1 %40, label %41, label %50, !prof !339

41:                                               ; preds = %31
  %42 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 3
  %43 = load i8, ptr %42, align 8, !tbaa !322, !range !304, !noundef !305
  %44 = icmp eq i8 %43, 0
  %45 = or i1 %11, %44
  br i1 %45, label %46, label %50, !prof !340

46:                                               ; preds = %41
  %47 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 9
  store i8 1, ptr %47, align 1, !tbaa !327
  %48 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 20
  %49 = load i32, ptr %48, align 8, !tbaa !312
  call void @_ZN11xalanc_1_1014FormatterToXML6indentEi(ptr noundef nonnull align 8 dereferenceable(1709) %0, i32 noundef %49) #15
  br label %50

50:                                               ; preds = %41, %31, %46, %30
  %51 = xor i1 %11, true
  %52 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 3
  %53 = zext i1 %51 to i8
  store i8 %53, ptr %52, align 8, !tbaa !322
  %54 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  %55 = call noundef zeroext i1 @_ZNK11xalanc_1_1027XalanHTMLElementsProperties17ElementProperties2isEj(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 256) #15
  %56 = zext i1 %55 to i8
  store i8 %56, ptr %6, align 1, !tbaa !310
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9push_backERKb(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull align 1 dereferenceable(1) %6) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 60) #15
  call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1) #15
  %57 = load ptr, ptr %2, align 8, !tbaa !307
  %58 = getelementptr inbounds ptr, ptr %57, i64 2
  %59 = load ptr, ptr %58, align 8
  %60 = call noundef i32 %59(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %70, !prof !341

62:                                               ; preds = %70, %50
  call void @_ZN11xalanc_1_1014FormatterToXML22openElementForChildrenEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #15
  %63 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 21
  %64 = load i32, ptr %63, align 4, !tbaa !318
  %65 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 20
  %66 = load i32, ptr %65, align 8, !tbaa !312
  %67 = add nsw i32 %66, %64
  store i32 %67, ptr %65, align 8, !tbaa !312
  %68 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 11
  store i8 0, ptr %68, align 1, !tbaa !313
  %69 = call noundef zeroext i1 @_ZNK11xalanc_1_1027XalanHTMLElementsProperties17ElementProperties2isEj(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 4194304) #15
  br i1 %69, label %85, label %100, !prof !317

70:                                               ; preds = %50, %70
  %71 = phi i32 [ %83, %70 ], [ 0, %50 ]
  %72 = load ptr, ptr %2, align 8, !tbaa !307
  %73 = getelementptr inbounds ptr, ptr %72, i64 3
  %74 = load ptr, ptr %73, align 8
  %75 = call noundef ptr %74(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %71) #15
  %76 = load ptr, ptr %2, align 8, !tbaa !307
  %77 = getelementptr inbounds ptr, ptr %76, i64 5
  %78 = load ptr, ptr %77, align 8
  %79 = call noundef ptr %78(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %71) #15
  %80 = load ptr, ptr %0, align 8, !tbaa !307
  %81 = getelementptr inbounds ptr, ptr %80, i64 25
  %82 = load ptr, ptr %81, align 8
  call void %82(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %75, ptr noundef %79, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  %83 = add nuw i32 %71, 1
  %84 = icmp eq i32 %83, %60
  br i1 %84, label %62, label %70, !prof !342, !llvm.loop !343

85:                                               ; preds = %62
  call void @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #15
  %86 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 12
  %87 = load i8, ptr %86, align 8, !tbaa !345, !range !304, !noundef !305
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %85
  %90 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 8
  %91 = load i8, ptr %90, align 4, !tbaa !320, !range !304, !noundef !305
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = load i32, ptr %65, align 8, !tbaa !312
  call void @_ZN11xalanc_1_1014FormatterToXML6indentEi(ptr noundef nonnull align 8 dereferenceable(1709) %0, i32 noundef %94) #15
  br label %95

95:                                               ; preds = %93, %89
  call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull @_ZN11xalanc_1_1015FormatterToHTML12s_metaStringE, i32 noundef 0, i32 noundef 60) #15
  %96 = load ptr, ptr %0, align 8, !tbaa !307
  %97 = getelementptr inbounds ptr, ptr %96, i64 18
  %98 = load ptr, ptr %97, align 8
  %99 = call noundef nonnull align 8 dereferenceable(36) ptr %98(ptr noundef nonnull align 8 dereferenceable(1709) %0) #15
  call void @_ZN11xalanc_1_1014FormatterToXML12accumContentERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull align 8 dereferenceable(36) %99) #15
  call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 34) #15
  call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 62) #15
  br label %100

100:                                              ; preds = %85, %95, %62
  %101 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 8
  %102 = load i8, ptr %101, align 1, !tbaa !333, !range !304, !noundef !305
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %105, label %104, !prof !346

104:                                              ; preds = %100
  store i8 0, ptr %101, align 1, !tbaa !333
  br label %105

105:                                              ; preds = %104, %100
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %106

106:                                              ; preds = %105, %8
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014FormatterToXML13charactersRawEPKtj(ptr noundef nonnull align 8 dereferenceable(1709), ptr noundef, i32 noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014FormatterToXML7commentEPKt(ptr noundef nonnull align 8 dereferenceable(1709), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML5cdataEPKtj(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 align 2 !prof !331 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 8, !tbaa !335, !range !304, !noundef !305
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #15
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  store i8 1, ptr %8, align 1, !tbaa !311
  %9 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014FormatterToXML12shouldIndentEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #15
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 20
  %12 = load i32, ptr %11, align 8, !tbaa !312
  tail call void @_ZN11xalanc_1_1014FormatterToXML6indentEi(ptr noundef nonnull align 8 dereferenceable(1709) %0, i32 noundef %12) #15
  br label %13

13:                                               ; preds = %10, %7
  %14 = load ptr, ptr %0, align 8, !tbaa !307
  %15 = getelementptr inbounds ptr, ptr %14, i64 22
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef 0, i32 noundef %2, i1 noundef zeroext true) #15
  br label %29

17:                                               ; preds = %3
  %18 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 12
  %19 = load i8, ptr %18, align 8, !tbaa !347, !range !304, !noundef !305
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  tail call void @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #15
  %22 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  store i8 1, ptr %22, align 1, !tbaa !311
  %23 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014FormatterToXML12shouldIndentEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #15
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 20
  %26 = load i32, ptr %25, align 8, !tbaa !312
  tail call void @_ZN11xalanc_1_1014FormatterToXML6indentEi(ptr noundef nonnull align 8 dereferenceable(1709) %0, i32 noundef %26) #15
  br label %27

27:                                               ; preds = %24, %21
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef 0, i32 noundef %2) #15
  br label %29

28:                                               ; preds = %17
  tail call void @_ZN11xalanc_1_1014FormatterToXML5cdataEPKtj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %2) #15
  br label %29

29:                                               ; preds = %27, %28, %13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML15entityReferenceEPKt(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !331 {
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 38) #15
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1) #15
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 59) #15
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1014FormatterToXML9getWriterEv(ptr noundef nonnull align 8 dereferenceable(1709)) unnamed_addr #2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1014FormatterToXML16getDoctypeSystemEv(ptr noundef nonnull align 8 dereferenceable(1709)) unnamed_addr #2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1014FormatterToXML16getDoctypePublicEv(ptr noundef nonnull align 8 dereferenceable(1709)) unnamed_addr #2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1014FormatterToXML11getEncodingEv(ptr noundef nonnull align 8 dereferenceable(1709)) unnamed_addr #2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1014FormatterToXML12getMediaTypeEv(ptr noundef nonnull align 8 dereferenceable(1709)) unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZNK11xalanc_1_1014FormatterToXML9getIndentEv(ptr noundef nonnull align 8 dereferenceable(1709)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1015FormatterToHTML18accumDefaultEntityEtb(ptr noundef nonnull align 8 dereferenceable(1912) %0, i16 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 !prof !315 {
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014FormatterToXML18accumDefaultEntityEtb(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %1, i1 noundef zeroext %2) #15
  br i1 %4, label %29, label %5, !prof !348

5:                                                ; preds = %3, %25
  %6 = phi ptr [ %27, %25 ], [ getelementptr inbounds ([195 x %"struct.xalanc_1_10::FormatterToHTML::Entity"], ptr @_ZN11xalanc_1_1015FormatterToHTML10s_entitiesE, i64 0, i64 194, i32 0), %3 ]
  %7 = phi ptr [ %26, %25 ], [ @_ZN11xalanc_1_1015FormatterToHTML10s_entitiesE, %3 ]
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv i64 %10, 56
  %12 = getelementptr inbounds %"struct.xalanc_1_10::FormatterToHTML::Entity", ptr %7, i64 %11
  %13 = load i16, ptr %12, align 4, !tbaa !349
  %14 = icmp ugt i16 %13, %1
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = getelementptr inbounds %"struct.xalanc_1_10::FormatterToHTML::Entity", ptr %12, i64 -1
  br label %25

17:                                               ; preds = %5
  %18 = icmp ult i16 %13, %1
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"struct.xalanc_1_10::FormatterToHTML::Entity", ptr %12, i64 1
  br label %25

21:                                               ; preds = %17
  %22 = getelementptr inbounds %"struct.xalanc_1_10::FormatterToHTML::Entity", ptr %7, i64 %11, i32 2
  %23 = getelementptr inbounds %"struct.xalanc_1_10::FormatterToHTML::Entity", ptr %7, i64 %11, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !351
  tail call void @_ZN11xalanc_1_1015FormatterToHTML20copyEntityIntoBufferEPKtj(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef nonnull %22, i32 noundef %24) #15
  br label %29

25:                                               ; preds = %15, %19
  %26 = phi ptr [ %7, %15 ], [ %20, %19 ]
  %27 = phi ptr [ %16, %15 ], [ %6, %19 ]
  %28 = icmp ugt ptr %26, %27
  br i1 %28, label %29, label %5, !llvm.loop !352

29:                                               ; preds = %25, %21, %3
  %30 = phi i1 [ true, %3 ], [ true, %21 ], [ false, %25 ]
  ret i1 %30
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014FormatterToXML20writeNormalizedCharsEPKtjjb(ptr noundef nonnull align 8 dereferenceable(1709), ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML15writeAttrStringEPKtj(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 align 2 !prof !353 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %70, label %5, !prof !354

5:                                                ; preds = %3, %66
  %6 = phi i32 [ %68, %66 ], [ 0, %3 ]
  %7 = phi i32 [ %67, %66 ], [ 0, %3 ]
  %8 = zext i32 %6 to i64
  %9 = getelementptr inbounds i16, ptr %1, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !332
  %11 = icmp ult i16 %10, 256
  br i1 %11, label %12, label %29, !prof !355

12:                                               ; preds = %5
  %13 = zext nneg i16 %10 to i64
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !332
  %16 = icmp eq i16 %15, 83
  br i1 %16, label %19, label %17, !prof !356

17:                                               ; preds = %12
  %18 = add nuw i32 %6, 1
  br label %66

19:                                               ; preds = %12
  %20 = icmp eq i16 %10, 38
  br i1 %20, label %21, label %29

21:                                               ; preds = %19
  %22 = add i32 %6, 1
  %23 = icmp ult i32 %22, %2
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = zext i32 %22 to i64
  %26 = getelementptr inbounds i16, ptr %1, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !332
  %28 = icmp eq i16 %27, 123
  br i1 %28, label %66, label %29

29:                                               ; preds = %5, %24, %21, %19
  %30 = sub i32 %6, %7
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull %1, i32 noundef %7, i32 noundef %30) #15
  %31 = load ptr, ptr %0, align 8, !tbaa !307
  %32 = getelementptr inbounds ptr, ptr %31, i64 21
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef zeroext i1 %33(ptr noundef nonnull align 8 dereferenceable(1912) %0, i16 noundef zeroext %10, i1 noundef zeroext true) #15
  br i1 %34, label %63, label %35

35:                                               ; preds = %29
  %36 = and i16 %10, -1024
  %37 = icmp eq i16 %36, -10240
  br i1 %37, label %38, label %61

38:                                               ; preds = %35
  %39 = add i32 %6, 1
  %40 = icmp ult i32 %39, %2
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014FormatterToXML16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #15
  tail call void @_ZN11xalanc_1_1014FormatterToXML35throwInvalidUTF16SurrogateExceptionEtRN11xercesc_2_713MemoryManagerE(i16 noundef zeroext %10, ptr noundef nonnull align 8 dereferenceable(8) %42) #15
  br label %55

43:                                               ; preds = %38
  %44 = zext i32 %39 to i64
  %45 = getelementptr inbounds i16, ptr %1, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !332
  %47 = and i16 %46, -1024
  %48 = icmp eq i16 %47, -9216
  br i1 %48, label %51, label %49

49:                                               ; preds = %43
  %50 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014FormatterToXML16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #15
  tail call void @_ZN11xalanc_1_1014FormatterToXML35throwInvalidUTF16SurrogateExceptionEttRN11xercesc_2_713MemoryManagerE(i16 noundef zeroext %10, i16 noundef zeroext %46, ptr noundef nonnull align 8 dereferenceable(8) %50) #15
  br label %51

51:                                               ; preds = %43, %49
  %52 = shl i16 %10, 10
  %53 = add i16 %52, 9216
  %54 = add i16 %53, %46
  br label %55

55:                                               ; preds = %51, %41
  %56 = phi i32 [ %6, %41 ], [ %39, %51 ]
  %57 = phi i16 [ 0, %41 ], [ %54, %51 ]
  %58 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 38) #15
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 35) #15
  %59 = zext i16 %57 to i64
  %60 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1023UnsignedLongToDOMStringEmRNS_14XalanDOMStringE(i64 noundef %59, ptr noundef nonnull align 8 dereferenceable(36) %58) #15
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull align 8 dereferenceable(36) %60) #15
  tail call void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %58) #15
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 59) #15
  br label %63

61:                                               ; preds = %35
  %62 = zext i16 %10 to i64
  tail call void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %62) #15
  br label %63

63:                                               ; preds = %55, %61, %29
  %64 = phi i32 [ %56, %55 ], [ %6, %61 ], [ %6, %29 ]
  %65 = add i32 %64, 1
  br label %66

66:                                               ; preds = %24, %63, %17
  %67 = phi i32 [ %7, %17 ], [ %65, %63 ], [ %7, %24 ]
  %68 = phi i32 [ %18, %17 ], [ %65, %63 ], [ %22, %24 ]
  %69 = icmp ult i32 %68, %2
  br i1 %69, label %5, label %70, !prof !357, !llvm.loop !358

70:                                               ; preds = %66, %3
  %71 = phi i32 [ 0, %3 ], [ %67, %66 ]
  %72 = sub i32 %2, %71
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %71, i32 noundef %72) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML16accumCommentDataEPKt(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !331 {
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML16processAttributeEPKtS2_RKNS_27XalanHTMLElementsProperties17ElementPropertiesE(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #1 align 2 !prof !359 {
  %5 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %1) #15
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 32) #15
  %6 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %2) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8, !prof !360

8:                                                ; preds = %4
  %9 = tail call noundef zeroext i1 @_ZN11xalanc_1_1021equalsIgnoreCaseASCIIEPKtjS1_j(ptr noundef %1, i32 noundef %5, ptr noundef %2, i32 noundef %6) #15
  br i1 %9, label %10, label %13, !prof !360

10:                                               ; preds = %8, %4
  %11 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1027XalanHTMLElementsProperties17ElementProperties11isAttributeEPKth(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1, i8 noundef zeroext 4) #15
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1) #15
  br label %21

13:                                               ; preds = %10, %8
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef 0, i32 noundef %5) #15
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 61) #15
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 34) #15
  %14 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1027XalanHTMLElementsProperties17ElementProperties11isAttributeEPKth(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1, i8 noundef zeroext 2) #15
  br i1 %14, label %15, label %16, !prof !361

15:                                               ; preds = %13
  tail call void @_ZN11xalanc_1_1015FormatterToHTML12writeAttrURIEPKtj(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %2, i32 noundef %6) #15
  br label %20

16:                                               ; preds = %13
  %17 = load ptr, ptr %0, align 8, !tbaa !307
  %18 = getelementptr inbounds ptr, ptr %17, i64 23
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %2, i32 noundef %6) #15
  br label %20

20:                                               ; preds = %16, %15
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 34) #15
  br label %21

21:                                               ; preds = %20, %12
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #3 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #15
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1015FormatterToHTML13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_1015FormatterToHTML13s_emptyStringE, ptr nonnull @__dso_handle) #16
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #0 comdat align 2 !prof !362 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !363 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !364
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !365

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #15
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !366
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #15
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !367 {
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !368 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !369

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #15
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !370, !llvm.loop !371

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !372 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !366
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !373 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !368 {
  %3 = load ptr, ptr %0, align 8, !tbaa !374
  %4 = load ptr, ptr %3, align 8, !tbaa !307
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #0 comdat align 2 !prof !375 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !376 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !366
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !377
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTMLC2ERNS_6WriterERKNS_14XalanDOMStringES5_S5_S5_bibbRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5, i1 noundef zeroext %6, i32 noundef %7, i1 noundef zeroext %8, i1 noundef zeroext %9, ptr noundef nonnull align 8 dereferenceable(8) %10) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !315 {
  %12 = zext i1 %8 to i8
  %13 = zext i1 %9 to i8
  tail call void @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1015FormatterToHTML13s_emptyStringE, i1 noundef zeroext %6, i32 noundef %7, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1015FormatterToHTML13s_emptyStringE, i32 noundef 2, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(8) %10) #15
  store ptr getelementptr inbounds ({ [28 x ptr] }, ptr @_ZTVN11xalanc_1_1015FormatterToHTMLE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !307
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %14, ptr noundef nonnull align 8 dereferenceable(8) %10) #15
          to label %15 unwind label %37

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 3
  store i8 0, ptr %16, align 8, !tbaa !322
  %17 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 0) #15
          to label %18 unwind label %39

18:                                               ; preds = %15
  %19 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 5
  store i8 0, ptr %19, align 8, !tbaa !335
  %20 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 6
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 0) #15
          to label %21 unwind label %41

21:                                               ; preds = %18
  %22 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 7
  store i8 %12, ptr %22, align 8, !tbaa !378
  %23 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 8
  store i8 0, ptr %23, align 1, !tbaa !333
  %24 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 19
  %25 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices14encodingIsUTF8ERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %24) #15
          to label %26 unwind label %43

26:                                               ; preds = %21
  %27 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 9
  %28 = zext i1 %25 to i8
  store i8 %28, ptr %27, align 2, !tbaa !379
  %29 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 10
  store i32 0, ptr %29, align 4, !tbaa !330
  %30 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 11
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 0) #15
          to label %31 unwind label %43

31:                                               ; preds = %26
  %32 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 12
  store i8 %13, ptr %32, align 8, !tbaa !345
  %33 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 13
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 0) #15
          to label %34 unwind label %45

34:                                               ; preds = %31
  invoke void @_ZN11xalanc_1_1015FormatterToHTML12initCharsMapEv(ptr noundef nonnull align 8 dereferenceable(1912) %0) #15
          to label %35 unwind label %47

35:                                               ; preds = %34
  %36 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 6
  store i8 0, ptr %36, align 2, !tbaa !334
  ret void

37:                                               ; preds = %11
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %57

39:                                               ; preds = %15
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %55

41:                                               ; preds = %18
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %53

43:                                               ; preds = %26, %21
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %51

45:                                               ; preds = %31
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %49

47:                                               ; preds = %34
  %48 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %33) #13
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi { ptr, i32 } [ %48, %47 ], [ %46, %45 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %30) #13
  br label %51

51:                                               ; preds = %49, %43
  %52 = phi { ptr, i32 } [ %50, %49 ], [ %44, %43 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %20) #13
  br label %53

53:                                               ; preds = %51, %41
  %54 = phi { ptr, i32 } [ %52, %51 ], [ %42, %41 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %17) #13
  br label %55

55:                                               ; preds = %53, %39
  %56 = phi { ptr, i32 } [ %54, %53 ], [ %40, %39 ]
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %14) #13
  br label %57

57:                                               ; preds = %55, %37
  %58 = phi { ptr, i32 } [ %56, %55 ], [ %38, %37 ]
  tail call void @_ZN11xalanc_1_1014FormatterToXMLD2Ev(ptr noundef nonnull align 8 dereferenceable(1709) %0) #13
  resume { ptr, i32 } %58
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1709), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36), i1 noundef zeroext, i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 !prof !380 {
  store ptr %1, ptr %0, align 8, !tbaa !381
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !382
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !383
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !384

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #15
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !385
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices14encodingIsUTF8ERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 !prof !386 {
  store ptr %1, ptr %0, align 8, !tbaa !387
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !388
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !389
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !390

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #15
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !391
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML12initCharsMapEv(ptr noundef nonnull align 8 dereferenceable(1912) %0) local_unnamed_addr #1 align 2 !prof !315 {
  tail call void @_ZN11xalanc_1_1015FormatterToHTML16initAttrCharsMapEv(ptr noundef nonnull align 8 dereferenceable(1912) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %3, i8 0, i64 502, i1 false)
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 10
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 60
  store i16 83, ptr %5, align 2, !tbaa !332
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 62
  store i16 83, ptr %6, align 2, !tbaa !332
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 38
  store i16 83, ptr %7, align 2, !tbaa !332
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %2, i8 83, i64 10, i1 false)
  store i16 83, ptr %4, align 2, !tbaa !332
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 13
  store i16 83, ptr %8, align 4, !tbaa !332
  br label %9

9:                                                ; preds = %9, %1
  %10 = phi i64 [ 0, %1 ], [ %13, %9 ]
  %11 = add i64 %10, 160
  %12 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 %11
  store <8 x i16> <i16 83, i16 83, i16 83, i16 83, i16 83, i16 83, i16 83, i16 83>, ptr %12, align 2, !tbaa !332
  %13 = add nuw i64 %10, 8
  %14 = icmp eq i64 %13, 96
  br i1 %14, label %15, label %9, !prof !392, !llvm.loop !393

15:                                               ; preds = %9
  %16 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %17 = load i16, ptr %16, align 8, !tbaa !396
  %18 = icmp ult i16 %17, 256
  br i1 %18, label %19, label %21, !prof !397

19:                                               ; preds = %15
  %20 = zext nneg i16 %17 to i64
  br label %22

21:                                               ; preds = %22, %15
  ret void

22:                                               ; preds = %19, %22
  %23 = phi i64 [ %20, %19 ], [ %25, %22 ]
  %24 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 %23
  store i16 83, ptr %24, align 2, !tbaa !332
  %25 = add nuw nsw i64 %23, 1
  %26 = icmp eq i64 %25, 256
  br i1 %26, label %21, label %22, !prof !398, !llvm.loop !399
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !400 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !389
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !401

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %6, ptr noundef %7) #15
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !391
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #15
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !402 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !383
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !403

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE7destroyEPbS4_(ptr noundef %6, ptr noundef %7) #15
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !385
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10deallocateEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #15
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #17
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1014FormatterToXMLD2Ev(ptr noundef nonnull align 8 dereferenceable(1709)) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !404 {
  %3 = load ptr, ptr %0, align 8, !tbaa !381
  %4 = load ptr, ptr %3, align 8, !tbaa !307
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %1) #15
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !405 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !386 {
  %3 = shl i64 %1, 3
  %4 = load ptr, ptr %0, align 8, !tbaa !387
  %5 = load ptr, ptr %4, align 8, !tbaa !307
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #15
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !406 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !386 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !407

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !408, !llvm.loop !409

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !410 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !391
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !410 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !386 {
  %3 = load ptr, ptr %0, align 8, !tbaa !387
  %4 = load ptr, ptr %3, align 8, !tbaa !307
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !411 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !412 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !391
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !388
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE7destroyEPbS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !404 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !413

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE7destroyERb(ptr noundef nonnull align 1 dereferenceable(1) %5) #15
  %6 = getelementptr inbounds i8, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !414, !llvm.loop !415

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !416 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !385
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !416 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10deallocateEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !404 {
  %3 = load ptr, ptr %0, align 8, !tbaa !381
  %4 = load ptr, ptr %3, align 8, !tbaa !307
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE7destroyERb(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 !prof !417 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !418 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !385
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !382
  %6 = getelementptr inbounds i8, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1015FormatterToHTML6createERN11xercesc_2_713MemoryManagerERNS_6WriterERKNS_14XalanDOMStringES8_S8_S8_bibb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5, i1 noundef zeroext %6, i32 noundef %7, i1 noundef zeroext %8, i1 noundef zeroext %9) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !315 {
  %11 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #16
  %12 = load ptr, ptr %0, align 8, !tbaa !307
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 1912) #15
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %15) #15
  %16 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #15
  invoke void @_ZN11xalanc_1_1015FormatterToHTMLC2ERNS_6WriterERKNS_14XalanDOMStringES5_S5_S5_bibbRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1912) %16, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5, i1 noundef zeroext %6, i32 noundef %7, i1 noundef zeroext %8, i1 noundef zeroext %9, ptr noundef nonnull align 8 dereferenceable(8) %0) #15
          to label %17 unwind label %20

17:                                               ; preds = %10
  %18 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #15
          to label %19 unwind label %20

19:                                               ; preds = %17
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #16
  ret ptr %16

20:                                               ; preds = %17, %10
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #16
  resume { ptr, i32 } %21
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !315 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !315 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !419
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !315 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #15
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !315 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #15
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #17
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !315 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !421
  store ptr %2, ptr %5, align 8, !tbaa !421
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1015FormatterToHTMLEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1015FormatterToHTMLEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 !prof !315 {
  %4 = load ptr, ptr %1, align 8, !tbaa !421
  store ptr %4, ptr %0, align 8, !tbaa !422
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !421
  store ptr %6, ptr %5, align 8, !tbaa !419
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !423 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !315 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #15
  store ptr %1, ptr %0, align 8, !tbaa !422
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !419
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !315 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #15
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #15
  br i1 %2, label %3, label %10, !prof !424

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !422
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !419
  %7 = load ptr, ptr %4, align 8, !tbaa !307
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #15
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !315 {
  %2 = load ptr, ptr %0, align 8, !tbaa !422
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTMLD2Ev(ptr noundef nonnull align 8 dereferenceable(1912) %0) unnamed_addr #0 align 2 !prof !315 {
  store ptr getelementptr inbounds ({ [28 x ptr] }, ptr @_ZTVN11xalanc_1_1015FormatterToHTMLE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !307
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 13
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 11
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %6) #13
  tail call void @_ZN11xalanc_1_1014FormatterToXMLD2Ev(ptr noundef nonnull align 8 dereferenceable(1709) %0) #13
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML16initAttrCharsMapEv(ptr noundef nonnull align 8 dereferenceable(1912) %0) local_unnamed_addr #1 align 2 !prof !315 {
  tail call void @_ZN11xalanc_1_1014FormatterToXML16initAttrCharsMapEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 10
  store i16 83, ptr %2, align 2, !tbaa !332
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 9
  store i16 0, ptr %3, align 4, !tbaa !332
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 60
  store i16 0, ptr %4, align 2, !tbaa !332
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 62
  store i16 0, ptr %5, align 2, !tbaa !332
  br label %6

6:                                                ; preds = %6, %1
  %7 = phi i64 [ 0, %1 ], [ %10, %6 ]
  %8 = add i64 %7, 160
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 %8
  store <8 x i16> <i16 83, i16 83, i16 83, i16 83, i16 83, i16 83, i16 83, i16 83>, ptr %9, align 2, !tbaa !332
  %10 = add nuw i64 %7, 8
  %11 = icmp eq i64 %10, 96
  br i1 %11, label %12, label %6, !prof !392, !llvm.loop !425

12:                                               ; preds = %6
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014FormatterToXML16initAttrCharsMapEv(ptr noundef nonnull align 8 dereferenceable(1709)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat !prof !426 {
  tail call void @_ZN11xalanc_1_1014XalanDOMString5clearEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !427 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !382
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5, !prof !428

5:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #15
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9push_backERKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #1 comdat align 2 !prof !429 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #15
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !315 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !388
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5, !prof !348

5:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #15
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_107isEmptyERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat !prof !430 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014XalanDOMString5emptyEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  ret i1 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014FormatterToXML12accumContentEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat align 2 !prof !431 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45
  %6 = load i64, ptr %5, align 8, !tbaa !432
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !432
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = and i64 %6, 1
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %4
  %13 = load ptr, ptr %9, align 8, !tbaa !307
  %14 = getelementptr i8, ptr %13, i64 %6
  %15 = getelementptr i8, ptr %14, i64 -1
  %16 = load ptr, ptr %15, align 8, !nosanitize !305
  br label %19

17:                                               ; preds = %4
  %18 = inttoptr i64 %6 to ptr
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi ptr [ %16, %12 ], [ %18, %17 ]
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(1709) %9, ptr noundef %1, i32 noundef %2, i32 noundef %3) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014FormatterToXML12accumContentERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat align 2 !prof !331 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 44
  %4 = load i64, ptr %3, align 8, !tbaa !433
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 44, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !433
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = and i64 %4, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %7, align 8, !tbaa !307
  %12 = getelementptr i8, ptr %11, i64 %4
  %13 = getelementptr i8, ptr %12, i64 -1
  %14 = load ptr, ptr %13, align 8, !nosanitize !305
  br label %17

15:                                               ; preds = %2
  %16 = inttoptr i64 %4 to ptr
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi ptr [ %14, %10 ], [ %16, %15 ]
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(1709) %7, ptr noundef nonnull align 8 dereferenceable(36) %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !434 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %4 = load i64, ptr %3, align 8, !tbaa !435
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !435
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = and i64 %4, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %7, align 8, !tbaa !307
  %12 = getelementptr i8, ptr %11, i64 %4
  %13 = getelementptr i8, ptr %12, i64 -1
  %14 = load ptr, ptr %13, align 8, !nosanitize !305
  br label %17

15:                                               ; preds = %2
  %16 = inttoptr i64 %4 to ptr
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi ptr [ %14, %10 ], [ %16, %15 ]
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(1709) %7, i16 noundef zeroext %1) #15
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014FormatterToXML13outputLineSepEv(ptr noundef nonnull align 8 dereferenceable(1709)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMString5clearEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !436 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %3 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %4 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #15
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !437
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !438 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !439 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %9, label %5, !prof !440

5:                                                ; preds = %3
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %7 = tail call noundef ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_(ptr noundef %2, ptr noundef %6, ptr noundef %1) #15
  %8 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #15
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8) #15
  br label %9

9:                                                ; preds = %5, %3
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !441 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) #15
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %1) #15
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #15
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !441 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %8, label %4, !prof !442

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %6, %4 ], [ %1, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %6 = add i64 %5, -1
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %4, !prof !443, !llvm.loop !444

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !445 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #15
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !441 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !421
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) #13
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %1) #13
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #13
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #15
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #15
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !446 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !447 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !441 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !448 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !441 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !447 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !449

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %2, ptr align 2 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !450 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !377
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !377
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !366
  %7 = getelementptr inbounds i16, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %7) #15
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !445 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !421
  call void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  %4 = call noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #15
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !445 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 1
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !445 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !331 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %5 = load i64, ptr %3, align 8, !tbaa !382
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !llvm.loop !451

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !429 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !382
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !382
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !385
  %7 = getelementptr inbounds i8, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE7destroyERb(ptr noundef nonnull align 1 dereferenceable(1) %7) #15
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !452 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !382
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !383
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !453

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %11 = load ptr, ptr %0, align 8, !tbaa !381
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIbE9constructEPbRKbRN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #15
  %13 = load i64, ptr %4, align 8, !tbaa !382
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !382
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !454
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %21 = load ptr, ptr %0, align 8, !tbaa !381
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #15
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #15
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIbE9constructEPbRKbRN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !455 {
  %4 = load i8, ptr %1, align 1, !tbaa !310, !range !304, !noundef !305
  store i8 %4, ptr %0, align 1, !tbaa !310
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !404 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !381
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !382
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !456

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #15
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #15
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #15
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #15
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #15
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !457

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #15
  store ptr %24, ptr %8, align 8, !tbaa !385
  store i64 %3, ptr %7, align 8, !tbaa !383
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !416 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %3 = load ptr, ptr %0, align 8, !tbaa !381
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !385
  %7 = load ptr, ptr %1, align 8, !tbaa !381
  store ptr %7, ptr %0, align 8, !tbaa !381
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !458
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !385
  store ptr %11, ptr %5, align 8, !tbaa !385
  store ptr %3, ptr %1, align 8, !tbaa !381
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !458
  store <2 x i64> %9, ptr %4, align 8, !tbaa !458
  store <2 x i64> %12, ptr %8, align 8, !tbaa !458
  store ptr %6, ptr %10, align 8, !tbaa !385
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !459 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !459 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE14local_distanceEPKbS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #15
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8, !prof !460

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28, !prof !461

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #15
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16, !prof !462

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !381
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIbE9constructEPbRKbRN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 1 dereferenceable(1) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #15
  %23 = getelementptr inbounds i8, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !382
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !382
  %26 = getelementptr inbounds i8, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !prof !463, !llvm.loop !464

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %32 = load ptr, ptr %0, align 8, !tbaa !381
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #15
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #15
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #15
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #15
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE14local_distanceEPKbS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #15
  %50 = icmp ugt i64 %49, %6
  br i1 %50, label %66, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds i8, ptr %2, i64 %49
  %53 = icmp eq ptr %52, %3
  br i1 %53, label %54, label %56

54:                                               ; preds = %56, %51
  %55 = icmp eq ptr %48, %1
  br i1 %55, label %64, label %60

56:                                               ; preds = %51, %56
  %57 = phi ptr [ %58, %56 ], [ %52, %51 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %57) #15
  %58 = getelementptr inbounds i8, ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !llvm.loop !465

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %61) #15
  %62 = getelementptr inbounds i8, ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !llvm.loop !466

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKbPbET0_T_S4_S3_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #15
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds i8, ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %72) #15
  %73 = getelementptr inbounds i8, ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !467

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds i8, ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPbS0_ET0_T_S2_S1_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #15
  %78 = tail call noundef ptr @_ZSt4copyIPKbPbET0_T_S4_S3_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #15
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !468 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !385
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !469 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE14local_distanceEPKbS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !459 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKbENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #15
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !470 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !382
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !459 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6, !prof !460

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #15
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !459 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !383
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKbPbET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !331 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKbET_S2_(ptr noundef %0) #15
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKbET_S2_(ptr noundef %1) #15
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKbPbET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #15
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPbS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !331 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPbET_S1_(ptr noundef %0) #15
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPbET_S1_(ptr noundef %1) #15
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPbS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #15
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKbENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !459 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !421
  call void @_ZSt19__iterator_categoryIPKbENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  %4 = call noundef i64 @_ZSt10__distanceIPKbENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #15
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKbENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !459 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKbENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !468 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !315 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !381
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #15
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKbPbET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !331 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !421
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKbET_S2_(ptr noundef %0) #13
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKbET_S2_(ptr noundef %1) #13
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPbET_S1_(ptr noundef %2) #13
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKbPbET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #15
  %9 = call noundef ptr @_ZSt12__niter_wrapIPbET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #15
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKbET_S2_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !331 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPbET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !331 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKbPbET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !331 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKbPbET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKbET_S2_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !331 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPbET_S1_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !331 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKbPbET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !331 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIbEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIbEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !331 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %2, ptr align 1 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPbS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !331 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !421
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPbET_S1_(ptr noundef %0) #13
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPbET_S1_(ptr noundef %1) #13
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPbET_S1_(ptr noundef %2) #13
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPbS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #15
  %9 = call noundef ptr @_ZSt12__niter_wrapIPbET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #15
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPbET_S1_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !331 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPbS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !331 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPbS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPbS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !331 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIbEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIbEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !331 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  %8 = sub i64 0, %6
  br i1 %7, label %11, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %10, ptr align 1 %0, i64 %6, i1 false)
  br label %11

11:                                               ; preds = %3, %9
  %12 = getelementptr inbounds i8, ptr %2, i64 %8
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !469 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !385
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !382
  %6 = getelementptr inbounds i8, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !331 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %5 = load i64, ptr %3, align 8, !tbaa !388
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !llvm.loop !471

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !316 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !388
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !388
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !391
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %7) #15
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014XalanDOMString5emptyEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !472 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !437
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014FormatterToXML11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(1709)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1015FormatterToHTML16pushHasNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !316 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterListener", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !473
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7, !prof !317

7:                                                ; preds = %2
  %8 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %1) #15
  %9 = tail call noundef i32 @_ZN11xalanc_1_107indexOfEPKtt(ptr noundef %1, i16 noundef zeroext 58) #15
  %10 = icmp ult i32 %9, %8
  br i1 %10, label %11, label %14, !prof !317

11:                                               ; preds = %7
  %12 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23
  %13 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_109substringEPKtRNS_14XalanDOMStringEjj(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %12, i32 noundef 0, i32 noundef %9) #15
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %12, %11 ], [ @_ZN11xalanc_1_1015FormatterToHTML13s_emptyStringE, %7 ]
  %16 = load ptr, ptr %4, align 8, !tbaa !473
  %17 = load ptr, ptr %16, align 8, !tbaa !307
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(36) %15) #15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22, !prof !474

22:                                               ; preds = %14
  %23 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %20) #15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #16
  store i8 1, ptr %3, align 1, !tbaa !310
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9push_backERKb(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 1 dereferenceable(1) %3) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #16
  br label %27

27:                                               ; preds = %25, %22, %14
  %28 = phi i1 [ true, %25 ], [ false, %22 ], [ false, %14 ]
  %29 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23
  call void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %29) #15
  br label %30

30:                                               ; preds = %27, %2
  %31 = phi i1 [ %28, %27 ], [ false, %2 ]
  ret i1 %31
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014FormatterToXML12startElementEPKtRN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(1709), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv(ptr noundef nonnull align 8 dereferenceable(1709)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XalanHTMLElementsProperties4findEPKt(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties") align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !316 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1027XalanHTMLElementsProperties17ElementProperties2isEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !475 {
  %3 = load ptr, ptr %0, align 8, !tbaa !476
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1027XalanHTMLElementsProperties25InternalElementProperties2isEj(ptr noundef nonnull align 4 dereferenceable(168) %3, i32 noundef %1) #15
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !478 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !385
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !382
  %6 = getelementptr i8, ptr %3, i64 %5
  %7 = getelementptr i8, ptr %6, i64 -1
  ret ptr %7
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014FormatterToXML6indentEi(ptr noundef nonnull align 8 dereferenceable(1709), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014FormatterToXML9accumNameEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !479 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39
  %4 = load i64, ptr %3, align 8, !tbaa !480
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !480
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = and i64 %4, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %7, align 8, !tbaa !307
  %12 = getelementptr i8, ptr %11, i64 %4
  %13 = getelementptr i8, ptr %12, i64 -1
  %14 = load ptr, ptr %13, align 8, !nosanitize !305
  br label %17

15:                                               ; preds = %2
  %16 = inttoptr i64 %4 to ptr
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi ptr [ %14, %10 ], [ %16, %15 ]
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(1709) %7, ptr noundef %1) #15
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014FormatterToXML22openElementForChildrenEv(ptr noundef nonnull align 8 dereferenceable(1709)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !481 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !388
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !389
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !482

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %11 = load ptr, ptr %0, align 8, !tbaa !387
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_27XalanHTMLElementsProperties17ElementPropertiesEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #15
  %13 = load i64, ptr %4, align 8, !tbaa !388
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !388
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !483
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %21 = load ptr, ptr %0, align 8, !tbaa !387
  call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #15
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_27XalanHTMLElementsProperties17ElementPropertiesEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 !prof !411 {
  tail call void @_ZN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !386 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  store ptr %2, ptr %0, align 8, !tbaa !387
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !388
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !483

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #15
  call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #15
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #15
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #15
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #15
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !424

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #15
  store ptr %24, ptr %8, align 8, !tbaa !391
  store i64 %3, ptr %7, align 8, !tbaa !389
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !410 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %3 = load ptr, ptr %0, align 8, !tbaa !387
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !391
  %7 = load ptr, ptr %1, align 8, !tbaa !387
  store ptr %7, ptr %0, align 8, !tbaa !387
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !458
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !391
  store ptr %11, ptr %5, align 8, !tbaa !391
  store ptr %3, ptr %1, align 8, !tbaa !387
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !458
  store <2 x i64> %9, ptr %4, align 8, !tbaa !458
  store <2 x i64> %12, ptr %8, align 8, !tbaa !458
  store ptr %6, ptr %10, align 8, !tbaa !391
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !484 {
  %3 = load ptr, ptr %1, align 8, !tbaa !476
  store ptr %3, ptr %0, align 8, !tbaa !476
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !423 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !423 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #15
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8, !prof !485

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28, !prof !486

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #15
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16, !prof !487

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !387
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_27XalanHTMLElementsProperties17ElementPropertiesEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #15
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !388
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !388
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !prof !488, !llvm.loop !489

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %32 = load ptr, ptr %0, align 8, !tbaa !387
  call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #15
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #15
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #15
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #15
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #15
  %50 = icmp ugt i64 %49, %6
  br i1 %50, label %66, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %2, i64 %49
  %53 = icmp eq ptr %52, %3
  br i1 %53, label %54, label %56

54:                                               ; preds = %56, %51
  %55 = icmp eq ptr %48, %1
  br i1 %55, label %64, label %60

56:                                               ; preds = %51, %56
  %57 = phi ptr [ %58, %56 ], [ %52, %51 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %57) #15
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !llvm.loop !490

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %61) #15
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !llvm.loop !491

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #15
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %72) #15
  %73 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !492

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesES3_ET0_T_S5_S4_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #15
  %78 = tail call noundef ptr @_ZSt4copyIPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #15
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !423 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !391
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !423 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !423 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %1, ptr noundef %2) #15
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !423 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !388
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !423 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6, !prof !485

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #15
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !423 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !389
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !331 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEET_S5_(ptr noundef %0) #15
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEET_S5_(ptr noundef %1) #15
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEPS2_ET1_T0_S7_S6_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #15
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !331 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEET_S4_(ptr noundef %0) #15
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEET_S4_(ptr noundef %1) #15
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesES3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #15
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !423 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !421
  call void @_ZSt19__iterator_categoryIPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  %4 = call noundef i64 @_ZSt10__distanceIPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #15
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !423 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !423 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !331 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !387
  call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #15
  call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  call void @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !331 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !421
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEET_S5_(ptr noundef %0) #13
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEET_S5_(ptr noundef %1) #13
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEET_S4_(ptr noundef %2) #13
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEPS2_ET1_T0_S7_S6_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #15
  %9 = call noundef ptr @_ZSt12__niter_wrapIPN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #15
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEET_S5_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !331 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !331 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !331 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEET_S5_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !331 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEET_S4_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !331 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !331 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEPS5_EET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEPS5_EET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !331 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %11, %3
  %10 = phi ptr [ %2, %3 ], [ %17, %11 ]
  ret ptr %10

11:                                               ; preds = %3, %11
  %12 = phi i64 [ %18, %11 ], [ %7, %3 ]
  %13 = phi ptr [ %17, %11 ], [ %2, %3 ]
  %14 = phi ptr [ %16, %11 ], [ %0, %3 ]
  %15 = load i64, ptr %14, align 8, !tbaa !421
  store i64 %15, ptr %13, align 8, !tbaa !421
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %14, i64 1
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %13, i64 1
  %18 = add nsw i64 %12, -1
  %19 = icmp ugt i64 %12, 1
  br i1 %19, label %11, label %9, !llvm.loop !493
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !331 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !421
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEET_S4_(ptr noundef %0) #13
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEET_S4_(ptr noundef %1) #13
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEET_S4_(ptr noundef %2) #13
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesES3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #15
  %9 = call noundef ptr @_ZSt12__niter_wrapIPN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #15
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEET_S4_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !331 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !331 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !331 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesES6_EET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesES6_EET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !331 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3, %9
  %10 = phi i64 [ %16, %9 ], [ %7, %3 ]
  %11 = phi ptr [ %14, %9 ], [ %2, %3 ]
  %12 = phi ptr [ %13, %9 ], [ %1, %3 ]
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %12, i64 -1
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %11, i64 -1
  %15 = load i64, ptr %13, align 8, !tbaa !421
  store i64 %15, ptr %14, align 8, !tbaa !421
  %16 = add nsw i64 %10, -1
  %17 = icmp ugt i64 %10, 1
  br i1 %17, label %9, label %18, !llvm.loop !494

18:                                               ; preds = %9, %3
  %19 = phi ptr [ %2, %3 ], [ %14, %9 ]
  ret ptr %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !423 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !391
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !388
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1027XalanHTMLElementsProperties25InternalElementProperties2isEj(ptr noundef nonnull align 4 dereferenceable(168) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !475 {
  %3 = getelementptr inbounds %"struct.xalanc_1_10::XalanHTMLElementsProperties::InternalElementProperties", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !495
  %5 = and i32 %4, %1
  %6 = icmp ne i32 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1015FormatterToHTML15popHasNamespaceEv(ptr noundef nonnull align 8 dereferenceable(1912) %0) local_unnamed_addr #0 align 2 !prof !316 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 11
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  br i1 %3, label %8, label %4, !prof !474

4:                                                ; preds = %1
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  %6 = load i8, ptr %5, align 1, !tbaa !310, !range !304, !noundef !305
  %7 = icmp ne i8 %6, 0
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i1 [ %7, %4 ], [ false, %1 ]
  ret i1 %9
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014FormatterToXML10endElementEPKt(ptr noundef nonnull align 8 dereferenceable(1709), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1014FormatterToXML19childNodesWereAddedEv(ptr noundef nonnull align 8 dereferenceable(1709)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !316 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !391
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !388
  %6 = getelementptr %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %3, i64 %5
  %7 = getelementptr %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %6, i64 -1
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !497 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !382
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014FormatterToXML12shouldIndentEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) local_unnamed_addr #0 comdat align 2 !prof !331 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 8
  %3 = load i8, ptr %2, align 4, !tbaa !320, !range !304, !noundef !305
  %4 = icmp ne i8 %3, 0
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  %6 = load i8, ptr %5, align 1, !range !304
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %4, i1 %7, i1 false
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 11
  %11 = load i8, ptr %10, align 1, !tbaa !313, !range !304, !noundef !305
  %12 = icmp eq i8 %11, 0
  br label %13

13:                                               ; preds = %9, %1
  %14 = phi i1 [ false, %1 ], [ %12, %9 ]
  ret i1 %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML15writeCharactersEPKtj(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !285 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %74, label %5, !prof !498

5:                                                ; preds = %3, %70
  %6 = phi i32 [ %72, %70 ], [ 0, %3 ]
  %7 = phi i32 [ %71, %70 ], [ 0, %3 ]
  %8 = zext i32 %6 to i64
  %9 = getelementptr inbounds i16, ptr %1, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !332
  %11 = icmp ult i16 %10, 256
  br i1 %11, label %12, label %24, !prof !499

12:                                               ; preds = %5
  %13 = zext nneg i16 %10 to i64
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !332
  %16 = icmp eq i16 %15, 83
  br i1 %16, label %19, label %17, !prof !500

17:                                               ; preds = %12
  %18 = add nuw i32 %6, 1
  br label %70

19:                                               ; preds = %12
  %20 = icmp eq i16 %10, 10
  br i1 %20, label %21, label %24, !prof !501

21:                                               ; preds = %19
  %22 = sub i32 %6, %7
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull %1, i32 noundef %7, i32 noundef %22) #15
  tail call void @_ZN11xalanc_1_1014FormatterToXML13outputLineSepEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #15
  %23 = add nuw i32 %6, 1
  br label %70

24:                                               ; preds = %5, %19
  %25 = sub i32 %6, %7
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull %1, i32 noundef %7, i32 noundef %25) #15
  %26 = load ptr, ptr %0, align 8, !tbaa !307
  %27 = getelementptr inbounds ptr, ptr %26, i64 21
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef zeroext i1 %28(ptr noundef nonnull align 8 dereferenceable(1912) %0, i16 noundef zeroext %10, i1 noundef zeroext true) #15
  br i1 %29, label %67, label %30, !prof !348

30:                                               ; preds = %24
  %31 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 9
  %32 = load i8, ptr %31, align 2, !tbaa !379, !range !304, !noundef !305
  %33 = icmp ne i8 %32, 0
  %34 = and i16 %10, -1024
  %35 = icmp eq i16 %34, -10240
  %36 = and i1 %35, %33
  br i1 %36, label %37, label %58

37:                                               ; preds = %30
  %38 = add i32 %6, 1
  %39 = icmp ult i32 %38, %2
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014FormatterToXML16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #15
  tail call void @_ZN11xalanc_1_1014FormatterToXML35throwInvalidUTF16SurrogateExceptionEtRN11xercesc_2_713MemoryManagerE(i16 noundef zeroext %10, ptr noundef nonnull align 8 dereferenceable(8) %41) #15
  br label %54

42:                                               ; preds = %37
  %43 = zext i32 %38 to i64
  %44 = getelementptr inbounds i16, ptr %1, i64 %43
  %45 = load i16, ptr %44, align 2, !tbaa !332
  %46 = and i16 %45, -1024
  %47 = icmp eq i16 %46, -9216
  br i1 %47, label %50, label %48

48:                                               ; preds = %42
  %49 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014FormatterToXML16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #15
  tail call void @_ZN11xalanc_1_1014FormatterToXML35throwInvalidUTF16SurrogateExceptionEttRN11xercesc_2_713MemoryManagerE(i16 noundef zeroext %10, i16 noundef zeroext %45, ptr noundef nonnull align 8 dereferenceable(8) %49) #15
  br label %50

50:                                               ; preds = %42, %48
  %51 = shl i16 %10, 10
  %52 = add i16 %51, 9216
  %53 = add i16 %52, %45
  br label %54

54:                                               ; preds = %50, %40
  %55 = phi i32 [ %6, %40 ], [ %38, %50 ]
  %56 = phi i16 [ 0, %40 ], [ %53, %50 ]
  %57 = zext i16 %56 to i64
  tail call void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %57) #15
  br label %67

58:                                               ; preds = %30
  %59 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %60 = icmp ult i16 %10, 127
  %61 = load i16, ptr %59, align 8
  %62 = icmp ugt i16 %10, %61
  %63 = select i1 %60, i1 true, i1 %62
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %10) #15
  br label %67

65:                                               ; preds = %58
  %66 = zext i16 %10 to i64
  tail call void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %66) #15
  br label %67

67:                                               ; preds = %54, %65, %64, %24
  %68 = phi i32 [ %55, %54 ], [ %6, %64 ], [ %6, %65 ], [ %6, %24 ]
  %69 = add i32 %68, 1
  br label %70

70:                                               ; preds = %21, %67, %17
  %71 = phi i32 [ %7, %17 ], [ %23, %21 ], [ %69, %67 ]
  %72 = phi i32 [ %18, %17 ], [ %23, %21 ], [ %69, %67 ]
  %73 = icmp ult i32 %72, %2
  br i1 %73, label %5, label %74, !prof !502, !llvm.loop !503

74:                                               ; preds = %70, %3
  %75 = phi i32 [ 0, %3 ], [ %71, %70 ]
  %76 = sub i32 %2, %75
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %75, i32 noundef %76) #15
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1014FormatterToXML18accumDefaultEntityEtb(ptr noundef nonnull align 8 dereferenceable(1709), i16 noundef zeroext, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML20copyEntityIntoBufferEPKtj(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !331 {
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 38) #15
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef 0, i32 noundef %2) #15
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 59) #15
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014FormatterToXML5cdataEPKtj(ptr noundef nonnull align 8 dereferenceable(1709), ptr noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %0) local_unnamed_addr #0 comdat !prof !504 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ]
  %4 = load i16, ptr %3, align 2, !tbaa !332
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds i16, ptr %3, i64 1
  br i1 %5, label %7, label %2, !prof !505, !llvm.loop !506

7:                                                ; preds = %2
  %8 = ptrtoint ptr %3 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = lshr exact i64 %10, 1
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtjS1_j(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat !prof !331 {
  %5 = icmp eq i32 %1, %3
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %0, ptr noundef %2, i32 noundef %1) #15
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi i1 [ %7, %6 ], [ false, %4 ]
  ret i1 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015isXMLWhitespaceEt(i16 noundef zeroext %0) local_unnamed_addr #1 comdat !prof !507 {
  %2 = tail call noundef zeroext i1 @_ZN11xalanc_1_1012XalanXMLChar12isWhitespaceEt(i16 noundef zeroext %0) #15
  ret i1 %2
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1012XalanXMLChar12isWhitespaceEt(i16 noundef zeroext %0) local_unnamed_addr #0 comdat align 2 !prof !507 {
  %2 = zext i16 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !508
  %5 = icmp eq i8 %4, 6
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML15writeCharactersERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 align 2 !prof !331 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1011toCharArrayERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %1) #15
  %4 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %1) #15
  tail call void @_ZN11xalanc_1_1015FormatterToHTML15writeCharactersEPKtj(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %3, i32 noundef %4) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011toCharArrayERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat !prof !509 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat !prof !510 {
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  ret i32 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !511 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  br i1 %2, label %5, label %3, !prof !512

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #15
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !513 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !377
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !514 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !366
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !515 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !516 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !437
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014FormatterToXML35throwInvalidUTF16SurrogateExceptionEtRN11xercesc_2_713MemoryManagerE(i16 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014FormatterToXML16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) local_unnamed_addr #1 comdat align 2 !prof !331 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(36) %2) #15
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014FormatterToXML35throwInvalidUTF16SurrogateExceptionEttRN11xercesc_2_713MemoryManagerE(i16 noundef zeroext, i16 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !517 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !518 {
  %2 = load ptr, ptr %0, align 8, !tbaa !374
  ret ptr %2
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1023UnsignedLongToDOMStringEmRNS_14XalanDOMStringE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !331 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38
  %4 = load i64, ptr %3, align 8, !tbaa !519
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !519
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = and i64 %4, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %7, align 8, !tbaa !307
  %12 = getelementptr i8, ptr %11, i64 %4
  %13 = getelementptr i8, ptr %12, i64 -1
  %14 = load ptr, ptr %13, align 8, !nosanitize !305
  br label %17

15:                                               ; preds = %2
  %16 = inttoptr i64 %4 to ptr
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi ptr [ %14, %10 ], [ %16, %15 ]
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(1709) %7, i16 noundef zeroext %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014FormatterToXML9accumNameEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat align 2 !prof !359 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 41
  %6 = load i64, ptr %5, align 8, !tbaa !520
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 41, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !520
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = and i64 %6, 1
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %4
  %13 = load ptr, ptr %9, align 8, !tbaa !307
  %14 = getelementptr i8, ptr %13, i64 %6
  %15 = getelementptr i8, ptr %14, i64 -1
  %16 = load ptr, ptr %15, align 8, !nosanitize !305
  br label %19

17:                                               ; preds = %4
  %18 = inttoptr i64 %6 to ptr
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi ptr [ %16, %12 ], [ %18, %17 ]
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(1709) %9, ptr noundef %1, i32 noundef %2, i32 noundef %3) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML20copyEntityIntoBufferERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 align 2 !prof !331 {
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 38) #15
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #15
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 59) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014FormatterToXML9accumNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat align 2 !prof !331 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 40
  %4 = load i64, ptr %3, align 8, !tbaa !521
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 40, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !521
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = and i64 %4, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %7, align 8, !tbaa !307
  %12 = getelementptr i8, ptr %11, i64 %4
  %13 = getelementptr i8, ptr %12, i64 -1
  %14 = load ptr, ptr %13, align 8, !nosanitize !305
  br label %17

15:                                               ; preds = %2
  %16 = inttoptr i64 %4 to ptr
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi ptr [ %14, %10 ], [ %16, %15 ]
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(1709) %7, ptr noundef nonnull align 8 dereferenceable(36) %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1021equalsIgnoreCaseASCIIEPKtjS1_j(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat !prof !359 {
  %5 = icmp eq i32 %1, %3
  br i1 %5, label %6, label %8, !prof !360

6:                                                ; preds = %4
  %7 = tail call noundef zeroext i1 @_ZN11xalanc_1_1021equalsIgnoreCaseASCIIEPKtS1_j(ptr noundef %0, ptr noundef %2, i32 noundef %1) #15
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi i1 [ %7, %6 ], [ false, %4 ]
  ret i1 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1027XalanHTMLElementsProperties17ElementProperties11isAttributeEPKth(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #1 comdat align 2 !prof !359 {
  %4 = load ptr, ptr %0, align 8, !tbaa !476
  %5 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1027XalanHTMLElementsProperties25InternalElementProperties11isAttributeEPKth(ptr noundef nonnull align 4 dereferenceable(168) %4, ptr noundef %1, i8 noundef zeroext %2) #15
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML12writeAttrURIEPKtj(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !522 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %6, !prof !523

5:                                                ; preds = %90, %3
  ret void

6:                                                ; preds = %3, %90
  %7 = phi i32 [ %92, %90 ], [ 0, %3 ]
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i16, ptr %1, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !332
  %11 = add i16 %10, -127
  %12 = icmp ult i16 %11, -94
  br i1 %12, label %13, label %73, !prof !524

13:                                               ; preds = %6
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 7
  %15 = load i8, ptr %14, align 8, !tbaa !378, !range !304, !noundef !305
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %64, label %17

17:                                               ; preds = %13
  %18 = icmp eq i16 %10, 32
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 32) #15
  br label %90

20:                                               ; preds = %17
  %21 = icmp ult i16 %10, 128
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  tail call void @_ZN11xalanc_1_1015FormatterToHTML14accumHexNumberEt(ptr noundef nonnull align 8 dereferenceable(1912) %0, i16 noundef zeroext %10) #15
  br label %90

23:                                               ; preds = %20
  %24 = icmp ult i16 %10, 2048
  br i1 %24, label %25, label %30

25:                                               ; preds = %23
  %26 = lshr i16 %10, 6
  %27 = or disjoint i16 %26, 192
  %28 = and i16 %10, 63
  %29 = or disjoint i16 %28, 128
  tail call void @_ZN11xalanc_1_1015FormatterToHTML14accumHexNumberEt(ptr noundef nonnull align 8 dereferenceable(1912) %0, i16 noundef zeroext %27) #15
  tail call void @_ZN11xalanc_1_1015FormatterToHTML14accumHexNumberEt(ptr noundef nonnull align 8 dereferenceable(1912) %0, i16 noundef zeroext %29) #15
  br label %90

30:                                               ; preds = %23
  %31 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014FormatterToXML16isUTF16SurrogateEt(i16 noundef zeroext %10) #15
  br i1 %31, label %32, label %56

32:                                               ; preds = %30
  %33 = lshr i16 %10, 6
  %34 = and i16 %33, 15
  %35 = add nuw nsw i16 %34, 1
  %36 = lshr i16 %10, 2
  %37 = and i16 %36, 15
  %38 = shl i16 %10, 4
  %39 = and i16 %38, 48
  %40 = add nuw i32 %7, 1
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i16, ptr %1, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !332
  %44 = lshr i16 %43, 6
  %45 = and i16 %44, 15
  %46 = and i16 %43, 63
  %47 = lshr i16 %35, 2
  %48 = or disjoint i16 %47, 240
  %49 = shl nuw nsw i16 %35, 4
  %50 = and i16 %49, 48
  %51 = or disjoint i16 %37, %50
  %52 = or disjoint i16 %51, 128
  %53 = or disjoint i16 %39, %45
  %54 = or disjoint i16 %53, 128
  %55 = or disjoint i16 %46, 128
  tail call void @_ZN11xalanc_1_1015FormatterToHTML14accumHexNumberEt(ptr noundef nonnull align 8 dereferenceable(1912) %0, i16 noundef zeroext %48) #15
  tail call void @_ZN11xalanc_1_1015FormatterToHTML14accumHexNumberEt(ptr noundef nonnull align 8 dereferenceable(1912) %0, i16 noundef zeroext %52) #15
  tail call void @_ZN11xalanc_1_1015FormatterToHTML14accumHexNumberEt(ptr noundef nonnull align 8 dereferenceable(1912) %0, i16 noundef zeroext %54) #15
  tail call void @_ZN11xalanc_1_1015FormatterToHTML14accumHexNumberEt(ptr noundef nonnull align 8 dereferenceable(1912) %0, i16 noundef zeroext %55) #15
  br label %90

56:                                               ; preds = %30
  %57 = lshr i16 %10, 12
  %58 = or disjoint i16 %57, 224
  %59 = lshr i16 %10, 6
  %60 = and i16 %59, 63
  %61 = or disjoint i16 %60, 128
  %62 = and i16 %10, 63
  %63 = or disjoint i16 %62, 128
  tail call void @_ZN11xalanc_1_1015FormatterToHTML14accumHexNumberEt(ptr noundef nonnull align 8 dereferenceable(1912) %0, i16 noundef zeroext %58) #15
  tail call void @_ZN11xalanc_1_1015FormatterToHTML14accumHexNumberEt(ptr noundef nonnull align 8 dereferenceable(1912) %0, i16 noundef zeroext %61) #15
  tail call void @_ZN11xalanc_1_1015FormatterToHTML14accumHexNumberEt(ptr noundef nonnull align 8 dereferenceable(1912) %0, i16 noundef zeroext %63) #15
  br label %90

64:                                               ; preds = %13
  %65 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %66 = load i16, ptr %65, align 8, !tbaa !396
  %67 = icmp ult i16 %10, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %10) #15
  br label %90

69:                                               ; preds = %64
  %70 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 38) #15
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 35) #15
  %71 = zext i16 %10 to i64
  %72 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1023UnsignedLongToDOMStringEmRNS_14XalanDOMStringE(i64 noundef %71, ptr noundef nonnull align 8 dereferenceable(36) %70) #15
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull align 8 dereferenceable(36) %72) #15
  tail call void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %70) #15
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 59) #15
  br label %90

73:                                               ; preds = %6
  switch i16 %10, label %89 [
    i16 34, label %74
    i16 38, label %84
  ], !prof !525

74:                                               ; preds = %73
  %75 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 7
  %76 = load i8, ptr %75, align 8, !tbaa !378, !range !304, !noundef !305
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 37) #15
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 50) #15
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 50) #15
  br label %90

79:                                               ; preds = %74
  %80 = load ptr, ptr %0, align 8, !tbaa !307
  %81 = getelementptr inbounds ptr, ptr %80, i64 21
  %82 = load ptr, ptr %81, align 8
  %83 = tail call noundef zeroext i1 %82(ptr noundef nonnull align 8 dereferenceable(1912) %0, i16 noundef zeroext 34, i1 noundef zeroext true) #15
  br label %90

84:                                               ; preds = %73
  %85 = load ptr, ptr %0, align 8, !tbaa !307
  %86 = getelementptr inbounds ptr, ptr %85, i64 21
  %87 = load ptr, ptr %86, align 8
  %88 = tail call noundef zeroext i1 %87(ptr noundef nonnull align 8 dereferenceable(1912) %0, i16 noundef zeroext 38, i1 noundef zeroext true) #15
  br label %90

89:                                               ; preds = %73
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %10) #15
  br label %90

90:                                               ; preds = %79, %78, %89, %84, %22, %32, %56, %25, %19, %69, %68
  %91 = phi i32 [ %7, %19 ], [ %7, %22 ], [ %7, %25 ], [ %40, %32 ], [ %7, %56 ], [ %7, %68 ], [ %7, %69 ], [ %7, %78 ], [ %7, %79 ], [ %7, %84 ], [ %7, %89 ]
  %92 = add i32 %91, 1
  %93 = icmp ult i32 %92, %2
  br i1 %93, label %6, label %5, !prof !526, !llvm.loop !527
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1021equalsIgnoreCaseASCIIEPKtS1_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1027XalanHTMLElementsProperties25InternalElementProperties11isAttributeEPKth(ptr noundef nonnull align 4 dereferenceable(168), ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML14accumHexNumberEt(ptr noundef nonnull align 8 dereferenceable(1912) %0, i16 noundef zeroext %1) local_unnamed_addr #1 align 2 !prof !331 {
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 37) #15
  %3 = zext i16 %1 to i64
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1026UnsignedLongToHexDOMStringEmRNS_14XalanDOMStringE(i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  %6 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 48) #15
  br label %9

9:                                                ; preds = %8, %2
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  tail call void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014FormatterToXML16isUTF16SurrogateEt(i16 noundef zeroext %0) local_unnamed_addr #0 comdat align 2 !prof !331 {
  %2 = and i16 %0, -1024
  %3 = icmp eq i16 %2, -10240
  ret i1 %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1026UnsignedLongToHexDOMStringEmRNS_14XalanDOMStringE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_107indexOfEPKtt(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 comdat !prof !528 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %9, %3 ]
  %5 = load i16, ptr %4, align 2, !tbaa !332
  %6 = icmp eq i16 %5, %1
  %7 = icmp eq i16 %5, 0
  %8 = or i1 %6, %7
  %9 = getelementptr inbounds i16, ptr %4, i64 1
  br i1 %8, label %10, label %3, !prof !529, !llvm.loop !530

10:                                               ; preds = %3
  %11 = ptrtoint ptr %4 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 1
  %15 = trunc i64 %14 to i32
  ret i32 %15
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_109substringEPKtRNS_14XalanDOMStringEjj(ptr noundef, ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_FormatterToHTML.cpp() #3 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind optsize }
attributes #14 = { builtin nounwind optsize }
attributes #15 = { optsize }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!284}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283}
!36 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML10charactersEPKtj, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4backEv, i64 1886764}
!37 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML10charactersEPKtj, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5emptyEv, i64 943382}
!38 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML10charactersEPKtj, ptr @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv, i64 943382}
!39 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML10charactersEPKtj, ptr @_ZNK11xalanc_1_1014FormatterToXML12shouldIndentEv, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML10charactersEPKtj, ptr @_ZN11xalanc_1_1015FormatterToHTML15writeCharactersEPKtj, i64 943381}
!41 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML11endDocumentEv, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8pop_backEv, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML11endDocumentEv, ptr @_ZN11xalanc_1_1014FormatterToXML11endDocumentEv, i64 1}
!43 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML10endElementEPKt, ptr @_ZN11xalanc_1_1015FormatterToHTML15popHasNamespaceEv, i64 1048804}
!44 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML10endElementEPKt, ptr @_ZN11xalanc_1_1014FormatterToXML10endElementEPKt, i64 1}
!45 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML10endElementEPKt, ptr @_ZN11xalanc_1_1014FormatterToXML19childNodesWereAddedEv, i64 1048803}
!46 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML10endElementEPKt, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8pop_backEv, i64 2796600}
!47 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML10endElementEPKt, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv, i64 1048803}
!48 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML10endElementEPKt, ptr @_ZN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesC2ERKS1_, i64 1048803}
!49 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML10endElementEPKt, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, i64 1048803}
!50 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML10endElementEPKt, ptr @_ZNK11xalanc_1_1027XalanHTMLElementsProperties17ElementProperties2isEj, i64 3146409}
!51 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML10endElementEPKt, ptr @_ZN11xalanc_1_1014FormatterToXML6indentEi, i64 239668}
!52 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML10endElementEPKt, ptr @_ZN11xalanc_1_1014FormatterToXML12accumContentEt, i64 2745584}
!53 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML10endElementEPKt, ptr @_ZN11xalanc_1_1014FormatterToXML9accumNameEPKt, i64 798592}
!54 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML10endElementEPKt, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5emptyEv, i64 698995}
!55 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML13startDocumentEv, ptr @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE, i64 1}
!56 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML13startDocumentEv, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5clearEv, i64 2}
!57 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML13startDocumentEv, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9push_backERKb, i64 1}
!58 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML13startDocumentEv, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, i64 1}
!59 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML13startDocumentEv, ptr @_ZN11xalanc_1_107isEmptyERKNS_14XalanDOMStringE, i64 2}
!60 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML13startDocumentEv, ptr @_ZN11xalanc_1_1014FormatterToXML12accumContentEPKtjj, i64 1}
!61 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML13startDocumentEv, ptr @_ZN11xalanc_1_1014FormatterToXML12accumContentEt, i64 1}
!62 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML13startDocumentEv, ptr @_ZN11xalanc_1_1014FormatterToXML13outputLineSepEv, i64 1}
!63 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML12startElementEPKtRN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1015FormatterToHTML16pushHasNamespaceEPKt, i64 1048804}
!64 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML12startElementEPKtRN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1014FormatterToXML12startElementEPKtRN11xercesc_2_713AttributeListE, i64 1}
!65 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML12startElementEPKtRN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv, i64 1048804}
!66 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML12startElementEPKtRN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1027XalanHTMLElementsProperties4findEPKt, i64 1048803}
!67 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML12startElementEPKtRN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, i64 1048803}
!68 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML12startElementEPKtRN11xercesc_2_713AttributeListE, ptr @_ZNK11xalanc_1_1027XalanHTMLElementsProperties17ElementProperties2isEj, i64 5244014}
!69 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML12startElementEPKtRN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9push_backERKb, i64 2097606}
!70 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML12startElementEPKtRN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4backEv, i64 1048802}
!71 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML12startElementEPKtRN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1014FormatterToXML6indentEi, i64 355356}
!72 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML12startElementEPKtRN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1014FormatterToXML12accumContentEt, i64 1048803}
!73 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML12startElementEPKtRN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1014FormatterToXML9accumNameEPKt, i64 1048803}
!74 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML12startElementEPKtRN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1014FormatterToXML22openElementForChildrenEv, i64 1048803}
!75 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML18accumDefaultEntityEtb, ptr @_ZN11xalanc_1_1014FormatterToXML18accumDefaultEntityEtb, i64 1}
!76 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML15writeAttrStringEPKtj, ptr @_ZN11xalanc_1_1014FormatterToXML12accumContentEPKtjj, i64 35030}
!77 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML16processAttributeEPKtS2_RKNS_27XalanHTMLElementsProperties17ElementPropertiesE, ptr @_ZN11xalanc_1_106lengthEPKt, i64 150180}
!78 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML16processAttributeEPKtS2_RKNS_27XalanHTMLElementsProperties17ElementPropertiesE, ptr @_ZN11xalanc_1_1014FormatterToXML12accumContentEt, i64 300357}
!79 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML16processAttributeEPKtS2_RKNS_27XalanHTMLElementsProperties17ElementPropertiesE, ptr @_ZN11xalanc_1_1021equalsIgnoreCaseASCIIEPKtjS1_j, i64 75089}
!80 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML16processAttributeEPKtS2_RKNS_27XalanHTMLElementsProperties17ElementPropertiesE, ptr @_ZNK11xalanc_1_1027XalanHTMLElementsProperties17ElementProperties11isAttributeEPKth, i64 75091}
!81 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML16processAttributeEPKtS2_RKNS_27XalanHTMLElementsProperties17ElementPropertiesE, ptr @_ZN11xalanc_1_1014FormatterToXML9accumNameEPKt, i64 1}
!82 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML16processAttributeEPKtS2_RKNS_27XalanHTMLElementsProperties17ElementPropertiesE, ptr @_ZN11xalanc_1_1014FormatterToXML9accumNameEPKtjj, i64 75089}
!83 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML16processAttributeEPKtS2_RKNS_27XalanHTMLElementsProperties17ElementPropertiesE, ptr @_ZN11xalanc_1_1015FormatterToHTML12writeAttrURIEPKtj, i64 40061}
!84 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!85 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!86 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!87 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!88 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!89 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!90 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!91 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!92 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!93 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!94 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!95 = !{ptr @_ZN11xalanc_1_1015FormatterToHTMLC2ERNS_6WriterERKNS_14XalanDOMStringES5_S5_S5_bibbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE, i64 1}
!96 = !{ptr @_ZN11xalanc_1_1015FormatterToHTMLC2ERNS_6WriterERKNS_14XalanDOMStringES5_S5_S5_bibbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!97 = !{ptr @_ZN11xalanc_1_1015FormatterToHTMLC2ERNS_6WriterERKNS_14XalanDOMStringES5_S5_S5_bibbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 3}
!98 = !{ptr @_ZN11xalanc_1_1015FormatterToHTMLC2ERNS_6WriterERKNS_14XalanDOMStringES5_S5_S5_bibbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1024XalanTranscodingServices14encodingIsUTF8ERKNS_14XalanDOMStringE, i64 1}
!99 = !{ptr @_ZN11xalanc_1_1015FormatterToHTMLC2ERNS_6WriterERKNS_14XalanDOMStringES5_S5_S5_bibbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!100 = !{ptr @_ZN11xalanc_1_1015FormatterToHTMLC2ERNS_6WriterERKNS_14XalanDOMStringES5_S5_S5_bibbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1015FormatterToHTML12initCharsMapEv, i64 1}
!101 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8allocateEm, i64 1}
!102 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 41}
!103 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm, i64 1}
!104 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 5}
!105 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML12initCharsMapEv, ptr @_ZN11xalanc_1_1015FormatterToHTML16initAttrCharsMapEv, i64 1}
!106 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 10}
!107 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 5}
!108 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 5}
!109 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_, i64 5}
!110 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_, i64 5}
!111 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 76}
!112 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5beginEv, i64 35}
!113 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv, i64 35}
!114 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE7destroyEPbS4_, i64 35}
!115 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10deallocateEPb, i64 35}
!116 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_, i64 10}
!117 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 9}
!118 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 9}
!119 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 9}
!120 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE7destroyEPbS4_, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE7destroyERb, i64 73}
!121 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 60}
!122 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 60}
!123 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10endPointerEv, i64 60}
!124 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML6createERN11xercesc_2_713MemoryManagerERNS_6WriterERKNS_14XalanDOMStringES8_S8_S8_bibb, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_, i64 1}
!125 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML6createERN11xercesc_2_713MemoryManagerERNS_6WriterERKNS_14XalanDOMStringES8_S8_S8_bibb, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE3getEv, i64 1}
!126 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML6createERN11xercesc_2_713MemoryManagerERNS_6WriterERKNS_14XalanDOMStringES8_S8_S8_bibb, ptr @_ZN11xalanc_1_1015FormatterToHTMLC2ERNS_6WriterERKNS_14XalanDOMStringES5_S5_S5_bibbRN11xercesc_2_713MemoryManagerE, i64 1}
!127 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML6createERN11xercesc_2_713MemoryManagerERNS_6WriterERKNS_14XalanDOMStringES8_S8_S8_bibb, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE7releaseEv, i64 1}
!128 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML6createERN11xercesc_2_713MemoryManagerERNS_6WriterERKNS_14XalanDOMStringES8_S8_S8_bibb, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EED2Ev, i64 1}
!129 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, i64 1}
!130 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE7releaseEv, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_, i64 1}
!131 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EED2Ev, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE17MemMgrAutoPtrData10deallocateEv, i64 1}
!132 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1015FormatterToHTMLEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_, i64 1}
!133 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE17MemMgrAutoPtrData10invariantsEv, i64 1}
!134 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE17MemMgrAutoPtrData10invariantsEv, i64 2}
!135 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE17MemMgrAutoPtrData10deallocateEv, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE17MemMgrAutoPtrData10invariantsEv, i64 1}
!136 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE17MemMgrAutoPtrData10deallocateEv, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_15FormatterToHTMLELb0EE17MemMgrAutoPtrData12isInitilizedEv, i64 1}
!137 = !{ptr @_ZN11xalanc_1_1015FormatterToHTMLD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!138 = !{ptr @_ZN11xalanc_1_1015FormatterToHTMLD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev, i64 3}
!139 = !{ptr @_ZN11xalanc_1_1015FormatterToHTMLD2Ev, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 1}
!140 = !{ptr @_ZN11xalanc_1_1015FormatterToHTMLD2Ev, ptr @_ZN11xalanc_1_1014FormatterToXMLD2Ev, i64 1}
!141 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML16initAttrCharsMapEv, ptr @_ZN11xalanc_1_1014FormatterToXML16initAttrCharsMapEv, i64 1}
!142 = !{ptr @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, i64 48076702}
!143 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5clearEv, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 366}
!144 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE12shrinkToSizeEm, i64 1}
!145 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9push_backERKb, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 9950242}
!146 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9push_backERKb, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, i64 4975121}
!147 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2}
!148 = !{ptr @_ZN11xalanc_1_107isEmptyERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString5emptyEv, i64 3312604}
!149 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 96538440}
!150 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 48269220}
!151 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 48269220}
!152 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, i64 48269220}
!153 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 241572884}
!154 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 28158502}
!155 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_, i64 28158502}
!156 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, i64 28158502}
!157 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm, i64 28158502}
!158 = !{ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_, ptr @_ZSt12__miter_baseIPtET_S1_, i64 56317002}
!159 = !{ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_, ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, i64 28158501}
!160 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, i64 1279868488}
!161 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 185895030}
!162 = !{ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt12__niter_baseIPtET_S1_, i64 84475503}
!163 = !{ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_, i64 28158501}
!164 = !{ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_, i64 28158501}
!165 = !{ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_, i64 28158501}
!166 = !{ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_, i64 28158501}
!167 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 2689195954}
!168 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 1344597977}
!169 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 185895030}
!170 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 185895030}
!171 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 9950242}
!172 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE7destroyERb, i64 4975121}
!173 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 9950310}
!174 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10endPointerEv, i64 4975120}
!175 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIbE9constructEPbRKbRN11xercesc_2_713MemoryManagerE, i64 4975120}
!176 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 35}
!177 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, i64 35}
!178 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4swapERS3_, i64 35}
!179 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev, i64 35}
!180 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9local_maxEmm, i64 25}
!181 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 25}
!182 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5beginEv, i64 25}
!183 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5beginEv, i64 25}
!184 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv, i64 25}
!185 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_, i64 25}
!186 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4swapERS3_, i64 25}
!187 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev, i64 25}
!188 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8allocateEm, i64 10}
!189 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 35}
!190 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4swapERS3_, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 120}
!191 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 49}
!192 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE14local_distanceEPKbS5_, i64 25}
!193 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4sizeEv, i64 24}
!194 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv, i64 24}
!195 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE14ensureCapacityEm, i64 23}
!196 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIbE9constructEPbRKbRN11xercesc_2_713MemoryManagerE, i64 67}
!197 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8capacityEv, i64 1}
!198 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, i64 12}
!199 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 59}
!200 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 93}
!201 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10endPointerEv, i64 93}
!202 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE14local_distanceEPKbS5_, ptr @_ZSt8distanceIPKbENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 25}
!203 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 167745}
!204 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE14ensureCapacityEm, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8capacityEv, i64 25}
!205 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm, i64 1}
!206 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10endPointerEv, i64 25}
!207 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8capacityEv, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 25}
!208 = !{ptr @_ZSt8distanceIPKbENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKbENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 25}
!209 = !{ptr @_ZSt8distanceIPKbENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKbENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 25}
!210 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 2}
!211 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 1}
!212 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4swapERS3_, i64 1}
!213 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev, i64 1}
!214 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2097608}
!215 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_, i64 1048804}
!216 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5emptyEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 6299974}
!217 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML16pushHasNamespaceEPKt, ptr @_ZN11xalanc_1_106lengthEPKt, i64 1048803}
!218 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML16pushHasNamespaceEPKt, ptr @_ZN11xalanc_1_107indexOfEPKtt, i64 1048803}
!219 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML16pushHasNamespaceEPKt, ptr @_ZN11xalanc_1_109substringEPKtRNS_14XalanDOMStringEjj, i64 1}
!220 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML16pushHasNamespaceEPKt, ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, i64 1}
!221 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML16pushHasNamespaceEPKt, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9push_backERKb, i64 1}
!222 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML16pushHasNamespaceEPKt, ptr @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE, i64 1048803}
!223 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2097608}
!224 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 1048804}
!225 = !{ptr @_ZNK11xalanc_1_1027XalanHTMLElementsProperties17ElementProperties2isEj, ptr @_ZNK11xalanc_1_1027XalanHTMLElementsProperties25InternalElementProperties2isEj, i64 8390432}
!226 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2097618}
!227 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 1048803}
!228 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_27XalanHTMLElementsProperties17ElementPropertiesEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE, i64 1048803}
!229 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 6}
!230 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 6}
!231 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 6}
!232 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 6}
!233 = !{ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_27XalanHTMLElementsProperties17ElementPropertiesEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesC2ERKS1_, i64 1048815}
!234 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm, i64 4}
!235 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 4}
!236 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 4}
!237 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 4}
!238 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 4}
!239 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, i64 4}
!240 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 4}
!241 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 4}
!242 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm, i64 1}
!243 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 5}
!244 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, ptr @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 18}
!245 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 7}
!246 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_, i64 4}
!247 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, i64 3}
!248 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 3}
!249 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, i64 3}
!250 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_27XalanHTMLElementsProperties17ElementPropertiesEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE, i64 7}
!251 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, i64 1}
!252 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 9}
!253 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 4}
!254 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 4}
!255 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 4}
!256 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_, ptr @_ZSt8distanceIPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEENSt15iterator_traitsIT_E15difference_typeES6_S6_, i64 4}
!257 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 4}
!258 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, i64 4}
!259 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 1}
!260 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 4}
!261 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 4}
!262 = !{ptr @_ZSt8distanceIPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEENSt15iterator_traitsIT_E15difference_typeES6_S6_, ptr @_ZSt19__iterator_categoryIPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEENSt15iterator_traitsIT_E17iterator_categoryERKS6_, i64 4}
!263 = !{ptr @_ZSt8distanceIPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEENSt15iterator_traitsIT_E15difference_typeES6_S6_, ptr @_ZSt10__distanceIPKN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag, i64 4}
!264 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML15popHasNamespaceEv, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5emptyEv, i64 1048804}
!265 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML15popHasNamespaceEv, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4backEv, i64 1}
!266 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML15popHasNamespaceEv, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8pop_backEv, i64 1}
!267 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 6781385}
!268 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML15writeCharactersEPKtj, ptr @_ZN11xalanc_1_1014FormatterToXML12accumContentEPKtjj, i64 1077013}
!269 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML15writeCharactersEPKtj, ptr @_ZN11xalanc_1_1014FormatterToXML13outputLineSepEv, i64 133625}
!270 = !{ptr @_ZN11xalanc_1_1015isXMLWhitespaceEt, ptr @_ZN11xalanc_1_1012XalanXMLChar12isWhitespaceEt, i64 1282548}
!271 = !{ptr @_ZN11xalanc_1_1011toCharArrayERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 45868073}
!272 = !{ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, i64 66708615}
!273 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!274 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!275 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!276 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!277 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 230527000}
!278 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, i64 230527000}
!279 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 1414337976}
!280 = !{ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv, i64 832918}
!281 = !{ptr @_ZN11xalanc_1_1021equalsIgnoreCaseASCIIEPKtjS1_j, ptr @_ZN11xalanc_1_1021equalsIgnoreCaseASCIIEPKtS1_j, i64 1}
!282 = !{ptr @_ZNK11xalanc_1_1027XalanHTMLElementsProperties17ElementProperties11isAttributeEPKth, ptr @_ZNK11xalanc_1_1027XalanHTMLElementsProperties25InternalElementProperties11isAttributeEPKth, i64 75090}
!283 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML12writeAttrURIEPKtj, ptr @_ZN11xalanc_1_1014FormatterToXML12accumContentEt, i64 1000458}
!284 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!285 = !{!"function_entry_count", i64 943386}
!286 = !{!"branch_weights", i32 1, i32 943387}
!287 = !{!288, !297, i64 1074}
!288 = !{!"_ZTSN11xalanc_1_1014FormatterToXMLE", !289, i64 0, !291, i64 24, !291, i64 32, !296, i64 40, !292, i64 42, !292, i64 554, !297, i64 1066, !297, i64 1067, !297, i64 1068, !297, i64 1069, !297, i64 1070, !297, i64 1071, !297, i64 1072, !297, i64 1073, !297, i64 1074, !297, i64 1075, !298, i64 1080, !298, i64 1120, !298, i64 1160, !301, i64 1200, !301, i64 1204, !302, i64 1208, !298, i64 1240, !297, i64 1280, !297, i64 1281, !297, i64 1282, !297, i64 1283, !298, i64 1288, !298, i64 1328, !298, i64 1368, !298, i64 1408, !299, i64 1448, !301, i64 1480, !303, i64 1488, !302, i64 1520, !292, i64 1552, !292, i64 1568, !292, i64 1584, !292, i64 1600, !292, i64 1616, !292, i64 1632, !292, i64 1648, !292, i64 1664, !292, i64 1680, !291, i64 1696, !301, i64 1704, !297, i64 1708}
!289 = !{!"_ZTSN11xalanc_1_1017FormatterListenerE", !290, i64 0, !291, i64 8, !294, i64 16, !295, i64 20}
!290 = !{!"_ZTSN11xercesc_2_715DocumentHandlerE"}
!291 = !{!"any pointer", !292, i64 0}
!292 = !{!"omnipotent char", !293, i64 0}
!293 = !{!"Simple C++ TBAA"}
!294 = !{!"_ZTSN11xalanc_1_1017FormatterListener7eFormatE", !292, i64 0}
!295 = !{!"_ZTSN11xalanc_1_1017FormatterListener11eXMLVersionE", !292, i64 0}
!296 = !{!"short", !292, i64 0}
!297 = !{!"bool", !292, i64 0}
!298 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !299, i64 0, !301, i64 32}
!299 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !291, i64 0, !300, i64 8, !300, i64 16, !291, i64 24}
!300 = !{!"long", !292, i64 0}
!301 = !{!"int", !292, i64 0}
!302 = !{!"_ZTSN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEE", !291, i64 0, !300, i64 8, !300, i64 16, !291, i64 24}
!303 = !{!"_ZTSN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE", !291, i64 0, !300, i64 8, !300, i64 16, !291, i64 24}
!304 = !{i8 0, i8 2}
!305 = !{}
!306 = !{!"branch_weights", i32 943387, i32 1}
!307 = !{!308, !308, i64 0}
!308 = !{!"vtable pointer", !293, i64 0}
!309 = !{!288, !297, i64 1073}
!310 = !{!297, !297, i64 0}
!311 = !{!288, !297, i64 1067}
!312 = !{!288, !301, i64 1200}
!313 = !{!288, !297, i64 1071}
!314 = !{!"branch_weights", i32 838602, i32 104786}
!315 = !{!"function_entry_count", i64 1}
!316 = !{!"function_entry_count", i64 1048804}
!317 = !{!"branch_weights", i32 1, i32 1048805}
!318 = !{!288, !301, i64 1204}
!319 = !{!"branch_weights", i32 484369, i32 564437}
!320 = !{!288, !297, i64 1068}
!321 = !{!"branch_weights", i32 1, i32 484369}
!322 = !{!323, !297, i64 1752}
!323 = !{!"_ZTSN11xalanc_1_1015FormatterToHTMLE", !288, i64 0, !298, i64 1712, !297, i64 1752, !302, i64 1760, !297, i64 1792, !302, i64 1800, !297, i64 1832, !297, i64 1833, !297, i64 1834, !301, i64 1836, !302, i64 1840, !297, i64 1872, !324, i64 1880}
!324 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEEE", !291, i64 0, !300, i64 8, !300, i64 16, !291, i64 24}
!325 = !{!"branch_weights", i32 -2098948744, i32 761862535}
!326 = !{!"branch_weights", i32 698997, i32 349809}
!327 = !{!288, !297, i64 1069}
!328 = !{!"branch_weights", i32 1, i32 698997}
!329 = !{!"branch_weights", i32 250211, i32 99599}
!330 = !{!323, !301, i64 1836}
!331 = !{!"function_entry_count", i64 0}
!332 = !{!296, !296, i64 0}
!333 = !{!323, !297, i64 1833}
!334 = !{!288, !297, i64 1066}
!335 = !{!323, !297, i64 1792}
!336 = !{!"branch_weights", i32 4, i32 5}
!337 = !{!288, !297, i64 1070}
!338 = !{!"branch_weights", i32 774640, i32 274166}
!339 = !{!"branch_weights", i32 -831673676, i32 17882}
!340 = !{!"branch_weights", i32 -1720819575, i32 -1257780206}
!341 = !{!"branch_weights", i32 973714, i32 75091}
!342 = !{!"branch_weights", i32 75091, i32 0}
!343 = distinct !{!343, !344}
!344 = !{!"llvm.loop.mustprogress"}
!345 = !{!323, !297, i64 1872}
!346 = !{!"branch_weights", i32 1048804, i32 2}
!347 = !{!288, !297, i64 1072}
!348 = !{!"branch_weights", i32 2, i32 1}
!349 = !{!350, !296, i64 0}
!350 = !{!"_ZTSN11xalanc_1_1015FormatterToHTML6EntityE", !296, i64 0, !301, i64 4, !292, i64 8}
!351 = !{!350, !301, i64 4}
!352 = distinct !{!352, !344}
!353 = !{!"function_entry_count", i64 35028}
!354 = !{!"branch_weights", i32 1, i32 35028}
!355 = !{!"branch_weights", i32 93083, i32 1}
!356 = !{!"branch_weights", i32 1, i32 93083}
!357 = !{!"branch_weights", i32 58055, i32 35028}
!358 = distinct !{!358, !344}
!359 = !{!"function_entry_count", i64 75090}
!360 = !{!"branch_weights", i32 1, i32 75091}
!361 = !{!"branch_weights", i32 40063, i32 35029}
!362 = !{!"function_entry_count", i64 43398227}
!363 = !{!"function_entry_count", i64 128698679}
!364 = !{!299, !300, i64 16}
!365 = !{!"branch_weights", i32 43398290, i32 85300391}
!366 = !{!299, !291, i64 24}
!367 = !{!"function_entry_count", i64 6521798503}
!368 = !{!"function_entry_count", i64 85300390}
!369 = !{!"branch_weights", i32 1, i32 12185770}
!370 = !{!"branch_weights", i32 12185770, i32 -193930395}
!371 = distinct !{!371, !344}
!372 = !{!"function_entry_count", i64 227375739}
!373 = !{!"function_entry_count", i64 568333389}
!374 = !{!299, !291, i64 0}
!375 = !{!"function_entry_count", i64 30137156670}
!376 = !{!"function_entry_count", i64 825654975}
!377 = !{!299, !300, i64 8}
!378 = !{!323, !297, i64 1832}
!379 = !{!323, !297, i64 1834}
!380 = !{!"function_entry_count", i64 41}
!381 = !{!302, !291, i64 0}
!382 = !{!302, !300, i64 8}
!383 = !{!302, !300, i64 16}
!384 = !{!"branch_weights", i32 42, i32 1}
!385 = !{!302, !291, i64 24}
!386 = !{!"function_entry_count", i64 5}
!387 = !{!324, !291, i64 0}
!388 = !{!324, !300, i64 8}
!389 = !{!324, !300, i64 16}
!390 = !{!"branch_weights", i32 6, i32 1}
!391 = !{!324, !291, i64 24}
!392 = !{!"branch_weights", i32 2, i32 10}
!393 = distinct !{!393, !344, !394, !395}
!394 = !{!"llvm.loop.isvectorized", i32 1}
!395 = !{!"llvm.loop.unroll.runtime.disable"}
!396 = !{!288, !296, i64 40}
!397 = !{!"branch_weights", i32 1, i32 1}
!398 = !{!"branch_weights", i32 1, i32 0}
!399 = distinct !{!399, !344}
!400 = !{!"function_entry_count", i64 10}
!401 = !{!"branch_weights", i32 6, i32 6}
!402 = !{!"function_entry_count", i64 76}
!403 = !{!"branch_weights", i32 42, i32 36}
!404 = !{!"function_entry_count", i64 35}
!405 = !{!"function_entry_count", i64 36800913}
!406 = !{!"function_entry_count", i64 6292916}
!407 = !{!"branch_weights", i32 1, i32 191}
!408 = !{!"branch_weights", i32 191, i32 193}
!409 = distinct !{!409, !344}
!410 = !{!"function_entry_count", i64 9}
!411 = !{!"function_entry_count", i64 1048815}
!412 = !{!"function_entry_count", i64 1048817}
!413 = !{!"branch_weights", i32 1, i32 143}
!414 = !{!"branch_weights", i32 143, i32 157}
!415 = distinct !{!415, !344}
!416 = !{!"function_entry_count", i64 60}
!417 = !{!"function_entry_count", i64 4975195}
!418 = !{!"function_entry_count", i64 4975206}
!419 = !{!420, !291, i64 8}
!420 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1015FormatterToHTMLEE", !291, i64 0, !291, i64 8}
!421 = !{!291, !291, i64 0}
!422 = !{!420, !291, i64 0}
!423 = !{!"function_entry_count", i64 4}
!424 = !{!"branch_weights", i32 1, i32 2}
!425 = distinct !{!425, !344, !394, !395}
!426 = !{!"function_entry_count", i64 48076702}
!427 = !{!"function_entry_count", i64 183}
!428 = !{!"branch_weights", i32 184, i32 1}
!429 = !{!"function_entry_count", i64 4975121}
!430 = !{!"function_entry_count", i64 3312604}
!431 = !{!"function_entry_count", i64 1710420}
!432 = !{!288, !292, i64 1664}
!433 = !{!288, !292, i64 1648}
!434 = !{!"function_entry_count", i64 5794236}
!435 = !{!288, !292, i64 1616}
!436 = !{!"function_entry_count", i64 48269220}
!437 = !{!298, !301, i64 32}
!438 = !{!"function_entry_count", i64 3070433826}
!439 = !{!"function_entry_count", i64 120786442}
!440 = !{!"branch_weights", i32 92627942, i32 28158502}
!441 = !{!"function_entry_count", i64 28158501}
!442 = !{!"branch_weights", i32 1, i32 28158501}
!443 = !{!"branch_weights", i32 28158501, i32 1251710039}
!444 = distinct !{!444, !344}
!445 = !{!"function_entry_count", i64 185895030}
!446 = !{!"function_entry_count", i64 56317002}
!447 = !{!"function_entry_count", i64 30109074}
!448 = !{!"function_entry_count", i64 86426076}
!449 = !{!"branch_weights", i32 28199083, i32 1909993}
!450 = !{!"function_entry_count", i64 1344597977}
!451 = distinct !{!451, !344}
!452 = !{!"function_entry_count", i64 4975155}
!453 = !{!"branch_weights", i32 4975122, i32 35}
!454 = !{!"branch_weights", i32 10, i32 26}
!455 = !{!"function_entry_count", i64 4975201}
!456 = !{!"branch_weights", i32 11, i32 26}
!457 = !{!"branch_weights", i32 1, i32 11}
!458 = !{!300, !300, i64 0}
!459 = !{!"function_entry_count", i64 25}
!460 = !{!"branch_weights", i32 1, i32 26}
!461 = !{!"branch_weights", i32 26, i32 1}
!462 = !{!"branch_weights", i32 1, i32 207}
!463 = !{!"branch_weights", i32 207, i32 393}
!464 = distinct !{!464, !344}
!465 = distinct !{!465, !344}
!466 = distinct !{!466, !344}
!467 = distinct !{!467, !344}
!468 = !{!"function_entry_count", i64 59}
!469 = !{!"function_entry_count", i64 93}
!470 = !{!"function_entry_count", i64 167745}
!471 = distinct !{!471, !344}
!472 = !{!"function_entry_count", i64 6299974}
!473 = !{!289, !291, i64 8}
!474 = !{!"branch_weights", i32 1048805, i32 1}
!475 = !{!"function_entry_count", i64 8390432}
!476 = !{!477, !291, i64 0}
!477 = !{!"_ZTSN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesE", !291, i64 0}
!478 = !{!"function_entry_count", i64 7805345}
!479 = !{!"function_entry_count", i64 1847398}
!480 = !{!288, !292, i64 1568}
!481 = !{!"function_entry_count", i64 1048809}
!482 = !{!"branch_weights", i32 1048805, i32 6}
!483 = !{!"branch_weights", i32 2, i32 5}
!484 = !{!"function_entry_count", i64 2097619}
!485 = !{!"branch_weights", i32 1, i32 5}
!486 = !{!"branch_weights", i32 5, i32 1}
!487 = !{!"branch_weights", i32 1, i32 159}
!488 = !{!"branch_weights", i32 159, i32 225}
!489 = distinct !{!489, !344}
!490 = distinct !{!490, !344}
!491 = distinct !{!491, !344}
!492 = distinct !{!492, !344}
!493 = distinct !{!493, !344}
!494 = distinct !{!494, !344}
!495 = !{!496, !301, i64 24}
!496 = !{!"_ZTSN11xalanc_1_1027XalanHTMLElementsProperties25InternalElementPropertiesE", !292, i64 0, !301, i64 24, !292, i64 28}
!497 = !{!"function_entry_count", i64 6781385}
!498 = !{!"branch_weights", i32 1, i32 943386}
!499 = !{!"branch_weights", i32 52579069, i32 1}
!500 = !{!"branch_weights", i32 133626, i32 52445444}
!501 = !{!"branch_weights", i32 2147467640, i32 16008}
!502 = !{!"branch_weights", i32 51635683, i32 943386}
!503 = distinct !{!503, !344}
!504 = !{!"function_entry_count", i64 21552397}
!505 = !{!"branch_weights", i32 21552398, i32 128560690}
!506 = distinct !{!506, !344}
!507 = !{!"function_entry_count", i64 1282548}
!508 = !{!292, !292, i64 0}
!509 = !{!"function_entry_count", i64 45868073}
!510 = !{!"function_entry_count", i64 66708615}
!511 = !{!"function_entry_count", i64 967143541}
!512 = !{!"branch_weights", i32 403628487, i32 563515056}
!513 = !{!"function_entry_count", i64 1083116306}
!514 = !{!"function_entry_count", i64 565220908}
!515 = !{!"function_entry_count", i64 230527000}
!516 = !{!"function_entry_count", i64 1414337976}
!517 = !{!"function_entry_count", i64 832918}
!518 = !{!"function_entry_count", i64 833358}
!519 = !{!288, !292, i64 1552}
!520 = !{!288, !292, i64 1600}
!521 = !{!288, !292, i64 1584}
!522 = !{!"function_entry_count", i64 40062}
!523 = !{!"branch_weights", i32 1, i32 40062}
!524 = !{!"branch_weights", i32 7816, i32 -384942948}
!525 = !{!"branch_weights", i32 -384942948, i32 3908, i32 3908}
!526 = !{!"branch_weights", i32 960421, i32 40062}
!527 = distinct !{!527, !344}
!528 = !{!"function_entry_count", i64 1963805}
!529 = !{!"branch_weights", i32 575723646, i32 -2055874256}
!530 = distinct !{!530, !344}
