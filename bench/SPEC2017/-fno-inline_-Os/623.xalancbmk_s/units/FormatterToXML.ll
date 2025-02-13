; ModuleID = 'FormatterToXML.cpp'
source_filename = "FormatterToXML.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::FormatterToXML" = type <{ %"class.xalanc_1_10::FormatterListener", ptr, ptr, i16, [256 x i16], [256 x i16], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", i32, i32, %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanDOMString", i8, i8, i8, i8, [4 x i8], %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanVector", i32, [4 x i8], %"class.xalanc_1_10::XalanVector.1", %"class.xalanc_1_10::XalanVector.0", { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, ptr, i32, i8, [3 x i8] }>
%"class.xalanc_1_10::FormatterListener" = type { %"class.xercesc_2_7::DocumentHandler", ptr, i32, i32 }
%"class.xercesc_2_7::DocumentHandler" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::ConstructValueWithNoMemoryManager" = type { i16 }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::FormatterToXML, false>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::FormatterToXML, false>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }
%"class.xalanc_1_10::XalanOutputStream" = type { ptr, i32, ptr, i32, %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanDOMString", i8, i8, %"class.xalanc_1_10::XalanVector.1" }
%"class.xercesc_2_7::SAXException" = type { ptr, ptr, ptr }

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_107isEmptyERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1014XalanDOMStringaSERKS0_ = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1010startsWithERKNS_14XalanDOMStringEPKt = comdat any

$_ZN11xalanc_1_1017XalanOutputStream20defaultNewlineStringEv = comdat any

$_ZN11xalanc_1_1014XalanDOMStringaSEPKt = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_106lengthEPKt = comdat any

$_ZNK11xalanc_1_1014XalanDOMString6lengthEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5emptyEv = comdat any

$_ZN11xalanc_1_1017DOMStringToDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1014XalanDOMString6assignERKS0_ = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZSt4copyIPKtPtET0_T_S4_S3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_ = comdat any

$_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPtET_S1_ = comdat any

$_ZSt12__niter_wrapIPtET_RKS1_S1_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__niter_baseIPtET_S1_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_ = comdat any

$_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZSt12__miter_baseIPKtET_S2_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPKtET_S2_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_ = comdat any

$_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZN11xalanc_1_1014XalanDOMString6assignEPKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6appendEPKt = comdat any

$_ZNK11xalanc_1_1014XalanDOMString4sizeEv = comdat any

$_ZN11xalanc_1_1033ConstructValueWithNoMemoryManagerItEC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE7destroyEPbS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10deallocateEPb = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE7destroyERb = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyEPcS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10deallocateEPc = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyERc = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14FormatterToXMLELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14FormatterToXMLELb0EE3getEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14FormatterToXMLELb0EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14FormatterToXMLELb0EED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14FormatterToXMLELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1014FormatterToXMLEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14FormatterToXMLELb0EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14FormatterToXMLELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14FormatterToXMLELb0EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14FormatterToXMLELb0EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZN11xalanc_1_106charAtERKNS_14XalanDOMStringEj = comdat any

$_ZNK11xalanc_1_1014XalanDOMStringixEj = comdat any

$_ZN11xalanc_1_1014FormatterToXML9accumNameEPKtjj = comdat any

$_ZN11xalanc_1_1014FormatterToXML9accumNameEPKt = comdat any

$_ZN11xalanc_1_1014FormatterToXML9accumNameERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1014FormatterToXML9accumNameEt = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEixEm = comdat any

$_ZN11xalanc_1_1017XalanOutputStream5writeEc = comdat any

$_ZN11xalanc_1_1017XalanOutputStream5writeEPKcj = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZN11xalanc_1_1017XalanOutputStream5writeEt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9push_backERKt = comdat any

$_ZN11xalanc_1_1017XalanOutputStream5writeEPKt = comdat any

$_ZN11xalanc_1_1014FormatterToXML12accumContentEt = comdat any

$_ZN11xalanc_1_1014FormatterToXML12accumContentEPKtjj = comdat any

$_ZN11xercesc_2_712SAXExceptionC2EPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712SAXExceptionD2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712SAXExceptionD0Ev = comdat any

$_ZNK11xercesc_2_712SAXException10getMessageEv = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xalanc_1_1014FormatterToXML16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_105clearERNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1014XalanDOMString5clearEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_ = comdat any

$_ZSt4copyIPtS0_ET0_T_S2_S1_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm = comdat any

$_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZNK11xalanc_1_1014FormatterToXML12shouldIndentEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5emptyEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4backEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8pop_backEv = comdat any

$_ZN11xalanc_1_106equalsEPKtjS1_j = comdat any

$_ZN11xalanc_1_1015isXMLWhitespaceEt = comdat any

$_ZN11xalanc_1_1012XalanXMLChar12isWhitespaceEt = comdat any

$_ZN11xalanc_1_1014FormatterToXML12accumContentEPKt = comdat any

$_ZN11xalanc_1_1014FormatterToXML12accumContentERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9push_backERKb = comdat any

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

$_ZTSN11xercesc_2_712SAXExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_712SAXExceptionE = comdat any

$_ZTVN11xercesc_2_712SAXExceptionE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xalanc_1_1014FormatterToXMLE = dso_local unnamed_addr constant { [27 x ptr] } { [27 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1014FormatterToXMLE, ptr @_ZN11xalanc_1_1014FormatterToXMLD2Ev, ptr @_ZN11xalanc_1_1014FormatterToXMLD0Ev, ptr @_ZN11xalanc_1_1014FormatterToXML10charactersEPKtj, ptr @_ZN11xalanc_1_1014FormatterToXML11endDocumentEv, ptr @_ZN11xalanc_1_1014FormatterToXML10endElementEPKt, ptr @_ZN11xalanc_1_1014FormatterToXML19ignorableWhitespaceEPKtj, ptr @_ZN11xalanc_1_1014FormatterToXML21processingInstructionEPKtS2_, ptr @_ZN11xalanc_1_1014FormatterToXML13resetDocumentEv, ptr @_ZN11xalanc_1_1014FormatterToXML18setDocumentLocatorEPKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1014FormatterToXML13startDocumentEv, ptr @_ZN11xalanc_1_1014FormatterToXML12startElementEPKtRN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1014FormatterToXML13charactersRawEPKtj, ptr @_ZN11xalanc_1_1014FormatterToXML7commentEPKt, ptr @_ZN11xalanc_1_1014FormatterToXML5cdataEPKtj, ptr @_ZN11xalanc_1_1014FormatterToXML15entityReferenceEPKt, ptr @_ZNK11xalanc_1_1014FormatterToXML9getWriterEv, ptr @_ZNK11xalanc_1_1014FormatterToXML16getDoctypeSystemEv, ptr @_ZNK11xalanc_1_1014FormatterToXML16getDoctypePublicEv, ptr @_ZNK11xalanc_1_1014FormatterToXML11getEncodingEv, ptr @_ZNK11xalanc_1_1014FormatterToXML12getMediaTypeEv, ptr @_ZNK11xalanc_1_1014FormatterToXML9getIndentEv, ptr @_ZN11xalanc_1_1014FormatterToXML18accumDefaultEntityEtb, ptr @_ZN11xalanc_1_1014FormatterToXML20writeNormalizedCharsEPKtjjb, ptr @_ZN11xalanc_1_1014FormatterToXML15writeAttrStringEPKtj, ptr @_ZN11xalanc_1_1014FormatterToXML16accumCommentDataEPKt] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1014FormatterToXMLE = dso_local constant [32 x i8] c"N11xalanc_1_1014FormatterToXMLE\00", align 1
@_ZTIN11xalanc_1_1017FormatterListenerE = external constant ptr
@_ZTIN11xalanc_1_1014FormatterToXMLE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1014FormatterToXMLE, ptr @_ZTIN11xalanc_1_1017FormatterListenerE }, align 8
@_ZN11xalanc_1_10L26theDefaultAttrSpecialCharsE = internal constant [7 x i16] [i16 60, i16 62, i16 38, i16 34, i16 13, i16 10, i16 0], align 2
@_ZN11xalanc_1_1024XalanTranscodingServices12s_utf8StringE = external constant [0 x i16], align 2
@_ZTIN11xalanc_1_1017XalanOutputStream28UnsupportedEncodingExceptionE = external constant ptr
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@_ZN11xalanc_1_1017XalanOutputStream10s_nlStringE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_712SAXExceptionE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_712SAXExceptionE\00", comdat, align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_712SAXExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712SAXExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN11xercesc_2_712SAXExceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712SAXExceptionE, ptr @_ZN11xercesc_2_712SAXExceptionD2Ev, ptr @_ZN11xercesc_2_712SAXExceptionD0Ev, ptr @_ZNK11xercesc_2_712SAXException10getMessageEv] }, comdat, align 8
@_ZN11xalanc_1_1017FormatterListener10s_piTargetE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1017FormatterListener8s_piDataE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE = external local_unnamed_addr constant [0 x i8], align 1
@_ZN11xalanc_1_1014FormatterToXML26s_doctypeHeaderStartStringE = dso_local constant [11 x i16] [i16 60, i16 33, i16 68, i16 79, i16 67, i16 84, i16 89, i16 80, i16 69, i16 32, i16 0], align 16
@_ZN11xalanc_1_1014FormatterToXML32s_doctypeHeaderStartStringLengthE = dso_local local_unnamed_addr constant i32 10, align 4
@_ZN11xalanc_1_1014FormatterToXML27s_doctypeHeaderPublicStringE = dso_local constant [10 x i16] [i16 32, i16 80, i16 85, i16 66, i16 76, i16 73, i16 67, i16 32, i16 34, i16 0], align 16
@_ZN11xalanc_1_1014FormatterToXML33s_doctypeHeaderPublicStringLengthE = dso_local local_unnamed_addr constant i32 9, align 4
@_ZN11xalanc_1_1014FormatterToXML27s_doctypeHeaderSystemStringE = dso_local constant [10 x i16] [i16 32, i16 83, i16 89, i16 83, i16 84, i16 69, i16 77, i16 32, i16 34, i16 0], align 16
@_ZN11xalanc_1_1014FormatterToXML33s_doctypeHeaderSystemStringLengthE = dso_local local_unnamed_addr constant i32 9, align 4
@_ZN11xalanc_1_1014FormatterToXML22s_xmlHeaderStartStringE = dso_local constant [16 x i16] [i16 60, i16 63, i16 120, i16 109, i16 108, i16 32, i16 118, i16 101, i16 114, i16 115, i16 105, i16 111, i16 110, i16 61, i16 34, i16 0], align 16
@_ZN11xalanc_1_1014FormatterToXML28s_xmlHeaderStartStringLengthE = dso_local local_unnamed_addr constant i32 15, align 4
@_ZN11xalanc_1_1014FormatterToXML25s_xmlHeaderEncodingStringE = dso_local constant [13 x i16] [i16 34, i16 32, i16 101, i16 110, i16 99, i16 111, i16 100, i16 105, i16 110, i16 103, i16 61, i16 34, i16 0], align 16
@_ZN11xalanc_1_1014FormatterToXML31s_xmlHeaderEncodingStringLengthE = dso_local local_unnamed_addr constant i32 12, align 4
@_ZN11xalanc_1_1014FormatterToXML27s_xmlHeaderStandaloneStringE = dso_local constant [15 x i16] [i16 34, i16 32, i16 115, i16 116, i16 97, i16 110, i16 100, i16 97, i16 108, i16 111, i16 110, i16 101, i16 61, i16 34, i16 0], align 16
@_ZN11xalanc_1_1014FormatterToXML33s_xmlHeaderStandaloneStringLengthE = dso_local local_unnamed_addr constant i32 14, align 4
@_ZN11xalanc_1_1014FormatterToXML20s_xmlHeaderEndStringE = dso_local constant [4 x i16] [i16 34, i16 63, i16 62, i16 0], align 2
@_ZN11xalanc_1_1014FormatterToXML26s_xmlHeaderEndStringLengthE = dso_local local_unnamed_addr constant i32 3, align 4
@_ZN11xalanc_1_1014FormatterToXML22s_defaultVersionStringE = dso_local constant [4 x i16] [i16 49, i16 46, i16 48, i16 0], align 2
@_ZN11xalanc_1_1014FormatterToXML28s_defaultVersionStringLengthE = dso_local local_unnamed_addr constant i32 3, align 4
@_ZN11xalanc_1_1014FormatterToXML21s_dtdCDATACloseStringE = dso_local constant [4 x i16] [i16 93, i16 93, i16 62, i16 0], align 2
@_ZN11xalanc_1_1014FormatterToXML27s_dtdCDATACloseStringLengthE = dso_local local_unnamed_addr constant i32 3, align 4
@_ZN11xalanc_1_1014FormatterToXML20s_xhtmlDocTypeStringE = dso_local constant [18 x i16] [i16 45, i16 47, i16 47, i16 87, i16 51, i16 67, i16 47, i16 47, i16 68, i16 84, i16 68, i16 32, i16 88, i16 72, i16 84, i16 77, i16 76, i16 0], align 16
@_ZN11xalanc_1_1014FormatterToXML26s_xhtmlDocTypeStringLengthE = dso_local local_unnamed_addr constant i32 17, align 4
@_ZN11xalanc_1_1014FormatterToXML15s_maxBufferSizeE = dso_local local_unnamed_addr constant i32 512, align 4

@_ZN11xalanc_1_1014FormatterToXMLC1ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1, i32, ptr, ptr, ptr, ptr, i1, ptr, i32, i1, ptr), ptr @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1014FormatterToXMLD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1014FormatterToXMLD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXMLD0Ev(ptr noundef nonnull align 8 dereferenceable(1709) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1014FormatterToXMLD2Ev(ptr noundef nonnull align 8 dereferenceable(1709) %0) #15
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML10charactersEPKtj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 align 2 !prof !285 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %58, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 14
  %7 = load i8, ptr %6, align 2, !tbaa !286, !range !303, !noundef !304
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !305
  %11 = getelementptr inbounds ptr, ptr %10, i64 13
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %2) #17
  br label %58

13:                                               ; preds = %5
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 13
  %15 = load i8, ptr %14, align 1, !tbaa !307, !range !303, !noundef !304
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  store i8 0, ptr %14, align 1, !tbaa !307
  %18 = load ptr, ptr %0, align 8, !tbaa !305
  %19 = getelementptr inbounds ptr, ptr %18, i64 11
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %2) #17
  br label %58

21:                                               ; preds = %13
  tail call void @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  %22 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  store i8 1, ptr %22, align 1, !tbaa !308
  %23 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  br label %24

24:                                               ; preds = %21, %48
  %25 = phi i32 [ 0, %21 ], [ %50, %48 ]
  %26 = phi i32 [ 0, %21 ], [ %49, %48 ]
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds i16, ptr %1, i64 %27
  %29 = load i16, ptr %28, align 2, !tbaa !309
  %30 = icmp ult i16 %29, 256
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = zext nneg i16 %29 to i64
  %33 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 %32
  %34 = load i16, ptr %33, align 2, !tbaa !309
  %35 = icmp eq i16 %34, 83
  %36 = load i16, ptr %23, align 8
  %37 = icmp ugt i16 %29, %36
  %38 = select i1 %35, i1 true, i1 %37
  br i1 %38, label %42, label %46

39:                                               ; preds = %24
  %40 = load i16, ptr %23, align 8, !tbaa !310
  %41 = icmp ugt i16 %29, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %39, %31
  %43 = sub i32 %25, %26
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull %1, i32 noundef %26, i32 noundef %43) #17
  %44 = tail call noundef i32 @_ZN11xalanc_1_1014FormatterToXML18accumDefaultEscapeEtjPKtjb(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %29, i32 noundef %25, ptr noundef nonnull %1, i32 noundef %2, i1 noundef zeroext false) #17
  %45 = add i32 %44, 1
  br label %48

46:                                               ; preds = %31, %39
  %47 = add nuw i32 %25, 1
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi i32 [ %45, %42 ], [ %26, %46 ]
  %50 = phi i32 [ %45, %42 ], [ %47, %46 ]
  %51 = icmp ult i32 %50, %2
  br i1 %51, label %24, label %52, !llvm.loop !311

52:                                               ; preds = %48
  %53 = sub i32 %50, %49
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull %1, i32 noundef %49, i32 noundef %53) #17
  %54 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 11
  %55 = load i8, ptr %54, align 1, !tbaa !313, !range !303, !noundef !304
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i8 1, ptr %54, align 1, !tbaa !313
  br label %58

58:                                               ; preds = %52, %57, %9, %17, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) unnamed_addr #1 align 2 !prof !314 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 8
  %3 = load i8, ptr %2, align 4, !tbaa !315, !range !303, !noundef !304
  %4 = icmp ne i8 %3, 0
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 11
  %6 = load i8, ptr %5, align 1, !range !303
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %4, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !316

9:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1014FormatterToXML13outputLineSepEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 25
  %12 = load i8, ptr %11, align 1, !tbaa !317, !range !303, !noundef !304
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %31, label %14, !prof !318

14:                                               ; preds = %10
  %15 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 46
  %16 = load i64, ptr %15, align 8, !tbaa !319
  %17 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 46, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !319
  %19 = getelementptr inbounds i8, ptr %0, i64 %18
  %20 = and i64 %16, 1
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %14
  %23 = load ptr, ptr %19, align 8, !tbaa !305
  %24 = getelementptr i8, ptr %23, i64 %16
  %25 = getelementptr i8, ptr %24, i64 -1
  %26 = load ptr, ptr %25, align 8, !nosanitize !304
  br label %29

27:                                               ; preds = %14
  %28 = inttoptr i64 %16 to ptr
  br label %29

29:                                               ; preds = %27, %22
  %30 = phi ptr [ %26, %22 ], [ %28, %27 ]
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(1709) %19) #17
  br label %31

31:                                               ; preds = %29, %10
  tail call void @_ZN11xalanc_1_1014FormatterToXML11flushWriterEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML10endElementEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !285 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 21
  %4 = load i32, ptr %3, align 4, !tbaa !320
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 20
  %6 = load i32, ptr %5, align 8, !tbaa !321
  %7 = sub nsw i32 %6, %4
  store i32 %7, ptr %5, align 8, !tbaa !321
  %8 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014FormatterToXML19childNodesWereAddedEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014FormatterToXML12shouldIndentEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  br i1 %10, label %11, label %19

11:                                               ; preds = %9
  %12 = load i32, ptr %5, align 8, !tbaa !321
  tail call void @_ZN11xalanc_1_1014FormatterToXML6indentEi(ptr noundef nonnull align 8 dereferenceable(1709) %0, i32 noundef %12) #17
  br label %19

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 26
  %15 = load i8, ptr %14, align 2, !tbaa !322, !range !303, !noundef !304
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 32) #17
  br label %18

18:                                               ; preds = %13, %17
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 47) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 62) #17
  br label %28

19:                                               ; preds = %9, %11
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 60) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 47) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 62) #17
  %20 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 22
  %21 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %20) #17
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  store i8 0, ptr %23, align 1, !tbaa !308
  br label %28

24:                                               ; preds = %19
  %25 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %20) #17
  %26 = load i8, ptr %25, align 1, !tbaa !323, !range !303, !noundef !304
  %27 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  store i8 %26, ptr %27, align 1, !tbaa !308
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %20) #17
  br label %28

28:                                               ; preds = %18, %22, %24
  %29 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 11
  store i8 0, ptr %29, align 1, !tbaa !313
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML19ignorableWhitespaceEPKtj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 align 2 !prof !285 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !305
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %2) #17
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML21processingInstructionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !285 {
  %4 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %1) #17
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtjS1_j(ptr noundef %1, i32 noundef %4, ptr noundef nonnull @_ZN11xalanc_1_1017FormatterListener10s_piTargetE, i32 noundef 5) #17
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %2) #17
  %8 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtjS1_j(ptr noundef %2, i32 noundef %7, ptr noundef nonnull @_ZN11xalanc_1_1017FormatterListener8s_piDataE, i32 noundef 3) #17
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 13
  br label %29

11:                                               ; preds = %6, %3
  tail call void @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  %12 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014FormatterToXML12shouldIndentEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 20
  %15 = load i32, ptr %14, align 8, !tbaa !321
  tail call void @_ZN11xalanc_1_1014FormatterToXML6indentEi(ptr noundef nonnull align 8 dereferenceable(1709) %0, i32 noundef %15) #17
  br label %16

16:                                               ; preds = %13, %11
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 60) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 63) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1) #17
  %17 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %2) #17
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i16, ptr %2, align 2, !tbaa !309
  %21 = tail call noundef zeroext i1 @_ZN11xalanc_1_1015isXMLWhitespaceEt(i16 noundef zeroext %20) #17
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 32) #17
  br label %23

23:                                               ; preds = %22, %19, %16
  tail call void @_ZN11xalanc_1_1014FormatterToXML21accumNormalizedPIDataEPKtj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %2, i32 noundef %17) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 63) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 62) #17
  %24 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 37
  %25 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %24) #17
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  tail call void @_ZN11xalanc_1_1014FormatterToXML13outputLineSepEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  br label %27

27:                                               ; preds = %26, %23
  %28 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 9
  br label %29

29:                                               ; preds = %27, %9
  %30 = phi ptr [ %28, %27 ], [ %10, %9 ]
  store i8 1, ptr %30, align 1, !tbaa !323
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML13resetDocumentEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !285 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML18setDocumentLocatorEPKN11xercesc_2_77LocatorE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #2 align 2 !prof !285 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) unnamed_addr #1 align 2 !prof !285 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23
  tail call void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %2) #17
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 10
  store i8 1, ptr %3, align 2, !tbaa !324
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 9
  store i8 0, ptr %4, align 1, !tbaa !325
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 6
  %6 = load i8, ptr %5, align 2, !tbaa !326, !range !303, !noundef !304
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull @_ZN11xalanc_1_1014FormatterToXML22s_xmlHeaderStartStringE, i32 noundef 0, i32 noundef 15) #17
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 29
  %10 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %9) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull align 8 dereferenceable(36) %9) #17
  br label %14

13:                                               ; preds = %8
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull @_ZN11xalanc_1_1014FormatterToXML22s_defaultVersionStringE, i32 noundef 0, i32 noundef 3) #17
  br label %14

14:                                               ; preds = %13, %12
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull @_ZN11xalanc_1_1014FormatterToXML25s_xmlHeaderEncodingStringE, i32 noundef 0, i32 noundef 12) #17
  %15 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 19
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull align 8 dereferenceable(36) %15) #17
  %16 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 30
  %17 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %16) #17
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull @_ZN11xalanc_1_1014FormatterToXML27s_xmlHeaderStandaloneStringE, i32 noundef 0, i32 noundef 14) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull align 8 dereferenceable(36) %16) #17
  br label %20

20:                                               ; preds = %19, %14
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull @_ZN11xalanc_1_1014FormatterToXML20s_xmlHeaderEndStringE, i32 noundef 0, i32 noundef 3) #17
  %21 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 8
  %22 = load i8, ptr %21, align 4, !tbaa !315, !range !303, !noundef !304
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @_ZN11xalanc_1_1014FormatterToXML13outputLineSepEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  br label %25

25:                                               ; preds = %20, %24, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML12startElementEPKtRN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 !prof !285 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 10
  %5 = load i8, ptr %4, align 2, !tbaa !324, !range !303, !noundef !304
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 17
  %9 = tail call noundef zeroext i1 @_ZN11xalanc_1_107isEmptyERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %8) #17
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @_ZN11xalanc_1_1014FormatterToXML17outputDocTypeDeclEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1) #17
  store i8 0, ptr %4, align 2, !tbaa !324
  br label %11

11:                                               ; preds = %10, %7, %3
  tail call void @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  %12 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  store i8 0, ptr %12, align 1, !tbaa !308
  %13 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014FormatterToXML12shouldIndentEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 9
  %15 = load i8, ptr %14, align 1, !range !303
  %16 = icmp ne i8 %15, 0
  %17 = select i1 %13, i1 %16, i1 false
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 20
  %20 = load i32, ptr %19, align 8, !tbaa !321
  tail call void @_ZN11xalanc_1_1014FormatterToXML6indentEi(ptr noundef nonnull align 8 dereferenceable(1709) %0, i32 noundef %20) #17
  br label %21

21:                                               ; preds = %18, %11
  store i8 1, ptr %14, align 1, !tbaa !325
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 60) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1) #17
  %22 = load ptr, ptr %2, align 8, !tbaa !305
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef i32 %24(ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %34, %21
  tail call void @_ZN11xalanc_1_1014FormatterToXML22openElementForChildrenEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  %28 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 21
  %29 = load i32, ptr %28, align 4, !tbaa !320
  %30 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 20
  %31 = load i32, ptr %30, align 8, !tbaa !321
  %32 = add nsw i32 %31, %29
  store i32 %32, ptr %30, align 8, !tbaa !321
  %33 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 11
  store i8 0, ptr %33, align 1, !tbaa !313
  ret void

34:                                               ; preds = %21, %34
  %35 = phi i32 [ %44, %34 ], [ 0, %21 ]
  %36 = load ptr, ptr %2, align 8, !tbaa !305
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %35) #17
  %40 = load ptr, ptr %2, align 8, !tbaa !305
  %41 = getelementptr inbounds ptr, ptr %40, i64 5
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %35) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML16processAttributeEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %39, ptr noundef %43) #17
  %44 = add nuw i32 %35, 1
  %45 = icmp eq i32 %44, %25
  br i1 %45, label %27, label %34, !llvm.loop !327
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML13charactersRawEPKtj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 align 2 !prof !285 {
  tail call void @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  store i8 1, ptr %4, align 1, !tbaa !308
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef 0, i32 noundef %2) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML7commentEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !285 {
  tail call void @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014FormatterToXML12shouldIndentEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 20
  %6 = load i32, ptr %5, align 8, !tbaa !321
  tail call void @_ZN11xalanc_1_1014FormatterToXML6indentEi(ptr noundef nonnull align 8 dereferenceable(1709) %0, i32 noundef %6) #17
  br label %7

7:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 60) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 33) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 45) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 45) #17
  %8 = load ptr, ptr %0, align 8, !tbaa !305
  %9 = getelementptr inbounds ptr, ptr %8, i64 24
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 45) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 45) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 62) #17
  %11 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 9
  store i8 1, ptr %11, align 1, !tbaa !325
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML5cdataEPKtj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 align 2 !prof !285 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 13
  %5 = load i8, ptr %4, align 1, !tbaa !307, !range !303, !noundef !304
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  store i8 0, ptr %4, align 1, !tbaa !307
  %8 = load ptr, ptr %0, align 8, !tbaa !305
  %9 = getelementptr inbounds ptr, ptr %8, i64 11
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %2) #17
  br label %56

11:                                               ; preds = %3
  %12 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 27
  %13 = load i8, ptr %12, align 1, !tbaa !328, !range !303, !noundef !304
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !305
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %2) #17
  br label %56

19:                                               ; preds = %11
  tail call void @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  %20 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  store i8 1, ptr %20, align 1, !tbaa !308
  %21 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014FormatterToXML12shouldIndentEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 20
  %24 = load i32, ptr %23, align 8, !tbaa !321
  tail call void @_ZN11xalanc_1_1014FormatterToXML6indentEi(ptr noundef nonnull align 8 dereferenceable(1709) %0, i32 noundef %24) #17
  br label %25

25:                                               ; preds = %22, %19
  %26 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 12
  %27 = load i8, ptr %26, align 8, !tbaa !329, !range !303, !noundef !304
  %28 = icmp eq i8 %27, 0
  %29 = icmp ne i32 %2, 0
  %30 = and i1 %29, %28
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load i16, ptr %1, align 2, !tbaa !309
  %33 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %34 = load i16, ptr %33, align 8, !tbaa !310
  %35 = icmp ugt i16 %32, %34
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 60) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 33) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 91) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 67) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 68) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 65) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 84) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 65) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 91) #17
  %37 = load i8, ptr %26, align 8, !tbaa !329, !range !303
  br label %38

38:                                               ; preds = %31, %36, %25
  %39 = phi i8 [ 0, %31 ], [ %37, %36 ], [ %27, %25 ]
  %40 = icmp eq i8 %39, 0
  %41 = load ptr, ptr %0, align 8, !tbaa !305
  %42 = getelementptr inbounds ptr, ptr %41, i64 22
  %43 = load ptr, ptr %42, align 8
  tail call void %43(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef 0, i32 noundef %2, i1 noundef zeroext %40) #17
  %44 = load i8, ptr %26, align 8, !tbaa !329, !range !303, !noundef !304
  %45 = icmp eq i8 %44, 0
  %46 = and i1 %29, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %38
  %48 = add i32 %2, -1
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i16, ptr %1, i64 %49
  %51 = load i16, ptr %50, align 2, !tbaa !309
  %52 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %53 = load i16, ptr %52, align 8, !tbaa !310
  %54 = icmp ugt i16 %51, %53
  br i1 %54, label %56, label %55

55:                                               ; preds = %47
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 93) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 93) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 62) #17
  br label %56

56:                                               ; preds = %15, %47, %55, %38, %7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML15entityReferenceEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !285 {
  tail call void @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014FormatterToXML12shouldIndentEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 20
  %6 = load i32, ptr %5, align 8, !tbaa !321
  tail call void @_ZN11xalanc_1_1014FormatterToXML6indentEi(ptr noundef nonnull align 8 dereferenceable(1709) %0, i32 noundef %6) #17
  br label %7

7:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 38) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 59) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1014FormatterToXML9getWriterEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1709) %0) unnamed_addr #3 align 2 !prof !285 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !330
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1014FormatterToXML16getDoctypeSystemEv(ptr noundef nonnull readnone align 8 dereferenceable(1709) %0) unnamed_addr #2 align 2 !prof !285 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 17
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1014FormatterToXML16getDoctypePublicEv(ptr noundef nonnull readnone align 8 dereferenceable(1709) %0) unnamed_addr #2 align 2 !prof !285 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 18
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1014FormatterToXML11getEncodingEv(ptr noundef nonnull readnone align 8 dereferenceable(1709) %0) unnamed_addr #2 align 2 !prof !285 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 19
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1014FormatterToXML12getMediaTypeEv(ptr noundef nonnull readnone align 8 dereferenceable(1709) %0) unnamed_addr #2 align 2 !prof !285 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 31
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1014FormatterToXML9getIndentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1709) %0) unnamed_addr #3 align 2 !prof !285 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 21
  %3 = load i32, ptr %2, align 4, !tbaa !320
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1014FormatterToXML18accumDefaultEntityEtb(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 !prof !314 {
  %4 = icmp ne i16 %1, 10
  %5 = or i1 %4, %2
  br i1 %5, label %7, label %6, !prof !331

6:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1014FormatterToXML13outputLineSepEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  br label %13

7:                                                ; preds = %3
  switch i16 %1, label %13 [
    i16 60, label %8
    i16 62, label %9
    i16 38, label %10
    i16 34, label %11
    i16 39, label %12
  ], !prof !332

8:                                                ; preds = %7
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 38) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 108) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 116) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 59) #17
  br label %13

9:                                                ; preds = %7
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 38) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 103) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 116) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 59) #17
  br label %13

10:                                               ; preds = %7
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 38) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 97) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 109) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 112) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 59) #17
  br label %13

11:                                               ; preds = %7
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 38) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 113) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 117) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 111) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 116) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 59) #17
  br label %13

12:                                               ; preds = %7
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 38) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 97) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 112) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 111) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 115) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 59) #17
  br label %13

13:                                               ; preds = %6, %9, %11, %12, %10, %8, %7
  %14 = phi i1 [ false, %7 ], [ true, %8 ], [ true, %10 ], [ true, %12 ], [ true, %11 ], [ true, %9 ], [ true, %6 ]
  ret i1 %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML20writeNormalizedCharsEPKtjjb(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #1 align 2 !prof !285 {
  %6 = add i32 %3, %2
  %7 = icmp ugt i32 %6, %2
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %10 = add i32 %6, -2
  %11 = add i32 %6, -1
  br label %13

12:                                               ; preds = %106, %5
  ret void

13:                                               ; preds = %8, %106
  %14 = phi i32 [ %2, %8 ], [ %108, %106 ]
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i16, ptr %1, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !309
  switch i16 %17, label %28 [
    i16 13, label %18
    i16 10, label %27
  ]

18:                                               ; preds = %13
  %19 = add nuw i32 %14, 1
  %20 = icmp ult i32 %19, %6
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = zext i32 %19 to i64
  %23 = getelementptr inbounds i16, ptr %1, i64 %22
  %24 = load i16, ptr %23, align 2, !tbaa !309
  %25 = icmp eq i16 %24, 10
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1014FormatterToXML13outputLineSepEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  br label %106

27:                                               ; preds = %13
  tail call void @_ZN11xalanc_1_1014FormatterToXML13outputLineSepEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  br label %106

28:                                               ; preds = %18, %21, %13
  %29 = load i16, ptr %9, align 8
  %30 = icmp ugt i16 %17, %29
  %31 = select i1 %4, i1 %30, i1 false
  br i1 %31, label %32, label %63

32:                                               ; preds = %28
  %33 = icmp eq i32 %14, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %32
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull @_ZN11xalanc_1_1014FormatterToXML21s_dtdCDATACloseStringE, i32 noundef 0, i32 noundef 3) #17
  br label %35

35:                                               ; preds = %34, %32
  %36 = and i16 %17, -1024
  %37 = icmp eq i16 %36, -10240
  br i1 %37, label %38, label %56

38:                                               ; preds = %35
  %39 = add nuw i32 %14, 1
  %40 = icmp ult i32 %39, %6
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014FormatterToXML16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML35throwInvalidUTF16SurrogateExceptionEtRN11xercesc_2_713MemoryManagerE(i16 noundef zeroext %17, ptr noundef nonnull align 8 dereferenceable(8) %42) #17
  unreachable

43:                                               ; preds = %38
  %44 = zext i32 %39 to i64
  %45 = getelementptr inbounds i16, ptr %1, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !309
  %47 = and i16 %46, -1024
  %48 = icmp eq i16 %47, -9216
  br i1 %48, label %51, label %49

49:                                               ; preds = %43
  %50 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014FormatterToXML16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML35throwInvalidUTF16SurrogateExceptionEttRN11xercesc_2_713MemoryManagerE(i16 noundef zeroext %17, i16 noundef zeroext %46, ptr noundef nonnull align 8 dereferenceable(8) %50) #17
  unreachable

51:                                               ; preds = %43
  %52 = shl i16 %17, 10
  %53 = add i16 %52, 9216
  %54 = add i16 %53, %46
  %55 = zext i16 %54 to i64
  tail call void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %55) #17
  br label %59

56:                                               ; preds = %35
  %57 = zext i16 %17 to i64
  tail call void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %57) #17
  %58 = icmp eq i32 %14, 0
  br i1 %58, label %106, label %59

59:                                               ; preds = %51, %56
  %60 = phi i32 [ %39, %51 ], [ %14, %56 ]
  %61 = icmp ult i32 %60, %11
  br i1 %61, label %62, label %106

62:                                               ; preds = %59
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 60) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 33) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 91) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 67) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 68) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 65) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 84) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 65) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 91) #17
  br label %106

63:                                               ; preds = %28
  br i1 %4, label %64, label %81

64:                                               ; preds = %63
  %65 = icmp ult i32 %14, %10
  %66 = icmp eq i16 %17, 93
  %67 = and i1 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = add nuw i32 %14, 1
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i16, ptr %1, i64 %70
  %72 = load i16, ptr %71, align 2, !tbaa !309
  %73 = icmp eq i16 %72, 93
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = add i32 %14, 2
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i16, ptr %1, i64 %76
  %78 = load i16, ptr %77, align 2, !tbaa !309
  %79 = icmp eq i16 %78, 62
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 93) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 93) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 93) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 93) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 62) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 60) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 33) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 91) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 67) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 68) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 65) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 84) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 65) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 91) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 62) #17
  br label %106

81:                                               ; preds = %74, %68, %64, %63
  br i1 %30, label %83, label %82

82:                                               ; preds = %81
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %17) #17
  br label %106

83:                                               ; preds = %81
  %84 = and i16 %17, -1024
  %85 = icmp eq i16 %84, -10240
  br i1 %85, label %86, label %104

86:                                               ; preds = %83
  %87 = add nuw i32 %14, 1
  %88 = icmp ult i32 %87, %6
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014FormatterToXML16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML35throwInvalidUTF16SurrogateExceptionEtRN11xercesc_2_713MemoryManagerE(i16 noundef zeroext %17, ptr noundef nonnull align 8 dereferenceable(8) %90) #17
  unreachable

91:                                               ; preds = %86
  %92 = zext i32 %87 to i64
  %93 = getelementptr inbounds i16, ptr %1, i64 %92
  %94 = load i16, ptr %93, align 2, !tbaa !309
  %95 = and i16 %94, -1024
  %96 = icmp eq i16 %95, -9216
  br i1 %96, label %99, label %97

97:                                               ; preds = %91
  %98 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014FormatterToXML16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML35throwInvalidUTF16SurrogateExceptionEttRN11xercesc_2_713MemoryManagerE(i16 noundef zeroext %17, i16 noundef zeroext %94, ptr noundef nonnull align 8 dereferenceable(8) %98) #17
  unreachable

99:                                               ; preds = %91
  %100 = shl i16 %17, 10
  %101 = add i16 %100, 9216
  %102 = add i16 %101, %94
  %103 = zext i16 %102 to i64
  tail call void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %103) #17
  br label %106

104:                                              ; preds = %83
  %105 = zext i16 %17 to i64
  tail call void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %105) #17
  br label %106

106:                                              ; preds = %27, %80, %99, %104, %82, %56, %59, %62, %26
  %107 = phi i32 [ %19, %26 ], [ %14, %27 ], [ %60, %62 ], [ %60, %59 ], [ 0, %56 ], [ %75, %80 ], [ %14, %82 ], [ %87, %99 ], [ %14, %104 ]
  %108 = add i32 %107, 1
  %109 = icmp ult i32 %108, %6
  br i1 %109, label %13, label %12, !llvm.loop !333
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML15writeAttrStringEPKtj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 align 2 !prof !285 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %35, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  br label %7

7:                                                ; preds = %5, %31
  %8 = phi i32 [ 0, %5 ], [ %33, %31 ]
  %9 = phi i32 [ 0, %5 ], [ %32, %31 ]
  %10 = zext i32 %8 to i64
  %11 = getelementptr inbounds i16, ptr %1, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !309
  %13 = icmp ult i16 %12, 256
  br i1 %13, label %14, label %22

14:                                               ; preds = %7
  %15 = zext nneg i16 %12 to i64
  %16 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !309
  %18 = icmp eq i16 %17, 83
  %19 = load i16, ptr %6, align 8
  %20 = icmp ugt i16 %12, %19
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %25, label %29

22:                                               ; preds = %7
  %23 = load i16, ptr %6, align 8, !tbaa !310
  %24 = icmp ugt i16 %12, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %22, %14
  %26 = sub i32 %8, %9
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull %1, i32 noundef %9, i32 noundef %26) #17
  %27 = tail call noundef i32 @_ZN11xalanc_1_1014FormatterToXML18accumDefaultEscapeEtjPKtjb(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %12, i32 noundef %8, ptr noundef nonnull %1, i32 noundef %2, i1 noundef zeroext true) #17
  %28 = add i32 %27, 1
  br label %31

29:                                               ; preds = %14, %22
  %30 = add nuw i32 %8, 1
  br label %31

31:                                               ; preds = %29, %25
  %32 = phi i32 [ %28, %25 ], [ %9, %29 ]
  %33 = phi i32 [ %28, %25 ], [ %30, %29 ]
  %34 = icmp ult i32 %33, %2
  br i1 %34, label %7, label %35, !llvm.loop !334

35:                                               ; preds = %31, %3
  %36 = phi i32 [ 0, %3 ], [ %32, %31 ]
  %37 = phi i32 [ 0, %3 ], [ %33, %31 ]
  %38 = sub i32 %37, %36
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %36, i32 noundef %38) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML16accumCommentDataEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !285 {
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, i1 noundef zeroext %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(36) %8, i1 noundef zeroext %9, ptr noundef nonnull align 8 dereferenceable(36) %10, i32 noundef %11, i1 noundef zeroext %12, ptr noundef nonnull align 8 dereferenceable(8) %13) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !314 {
  %15 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %16 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %17 = zext i1 %12 to i8
  tail call void @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %11) #17
  store ptr getelementptr inbounds ({ [27 x ptr] }, ptr @_ZTVN11xalanc_1_1014FormatterToXMLE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !305
  %18 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 1
  store ptr %1, ptr %18, align 8, !tbaa !330
  %19 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %1, align 8, !tbaa !305
  %21 = getelementptr inbounds ptr, ptr %20, i64 4
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %1) #17
          to label %24 unwind label %91

24:                                               ; preds = %14
  %25 = zext i1 %9 to i8
  %26 = zext i1 %3 to i8
  store ptr %23, ptr %19, align 8, !tbaa !335
  %27 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %28 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1026) %27, i8 0, i64 1026, i1 false)
  store i8 %25, ptr %28, align 2, !tbaa !326
  %29 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  store i8 0, ptr %29, align 1, !tbaa !308
  %30 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 8
  store i8 %26, ptr %30, align 4, !tbaa !315
  %31 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 9
  store i8 0, ptr %31, align 1, !tbaa !325
  %32 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 10
  store i8 1, ptr %32, align 2, !tbaa !324
  %33 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 11
  %34 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 15
  %35 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %33, i8 0, i64 5, i1 false)
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %35, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 0, i32 noundef -1) #17
          to label %36 unwind label %91

36:                                               ; preds = %24
  %37 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 18
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %37, ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 0, i32 noundef -1) #17
          to label %38 unwind label %95

38:                                               ; preds = %36
  %39 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 19
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %39, ptr noundef nonnull align 8 dereferenceable(8) %13) #17
          to label %40 unwind label %99

40:                                               ; preds = %38
  %41 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 20
  store i32 0, ptr %41, align 8, !tbaa !321
  %42 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 21
  store i32 %4, ptr %42, align 4, !tbaa !320
  %43 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 22
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 0) #17
          to label %44 unwind label %103

44:                                               ; preds = %40
  %45 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %45, ptr noundef nonnull align 8 dereferenceable(8) %13) #17
          to label %46 unwind label %107

46:                                               ; preds = %44
  %47 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 24
  store i8 0, ptr %47, align 8, !tbaa !336
  %48 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 25
  store i8 %17, ptr %48, align 1, !tbaa !317
  %49 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 26
  store i8 0, ptr %49, align 2, !tbaa !322
  %50 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 27
  store i8 0, ptr %50, align 1, !tbaa !328
  %51 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 29
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %51, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 0, i32 noundef -1) #17
          to label %52 unwind label %111

52:                                               ; preds = %46
  %53 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 30
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %53, ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 0, i32 noundef -1) #17
          to label %54 unwind label %115

54:                                               ; preds = %52
  %55 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 31
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %55, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 0, i32 noundef -1) #17
          to label %56 unwind label %119

56:                                               ; preds = %54
  %57 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 32
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %57, ptr noundef nonnull @_ZN11xalanc_1_10L26theDefaultAttrSpecialCharsE, ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef -1) #17
          to label %58 unwind label %123

58:                                               ; preds = %56
  %59 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 33
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 0) #17
          to label %60 unwind label %127

60:                                               ; preds = %58
  %61 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 34
  store i32 0, ptr %61, align 8, !tbaa !337
  %62 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 36
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %62, ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 0) #17
          to label %63 unwind label %131

63:                                               ; preds = %60
  %64 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 37
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %64, ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 0) #17
          to label %65 unwind label %135

65:                                               ; preds = %63
  %66 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38
  %67 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38, i32 1
  %68 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39
  %69 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39, i32 1
  %70 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 40
  %71 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 40, i32 1
  %72 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 41
  %73 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 41, i32 1
  %74 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %75 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %76 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 43
  %77 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 43, i32 1
  %78 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 44
  %79 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 44, i32 1
  %80 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45
  %81 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45, i32 1
  %82 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 46
  %83 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 46, i32 1
  %84 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 47
  %85 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 48
  %86 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(157) %66, i8 0, i64 157, i1 false)
  %87 = invoke noundef zeroext i1 @_ZN11xalanc_1_107isEmptyERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %5) #17
          to label %88 unwind label %139

88:                                               ; preds = %65
  br i1 %87, label %143, label %89, !prof !318

89:                                               ; preds = %88
  %90 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %39, ptr noundef nonnull align 8 dereferenceable(36) %5) #17
          to label %155 unwind label %139

91:                                               ; preds = %24, %14
  %92 = landingpad { ptr, i32 }
          cleanup
  %93 = extractvalue { ptr, i32 } %92, 0
  %94 = extractvalue { ptr, i32 } %92, 1
  br label %293

95:                                               ; preds = %36
  %96 = landingpad { ptr, i32 }
          cleanup
  %97 = extractvalue { ptr, i32 } %96, 0
  %98 = extractvalue { ptr, i32 } %96, 1
  br label %290

99:                                               ; preds = %38
  %100 = landingpad { ptr, i32 }
          cleanup
  %101 = extractvalue { ptr, i32 } %100, 0
  %102 = extractvalue { ptr, i32 } %100, 1
  br label %287

103:                                              ; preds = %40
  %104 = landingpad { ptr, i32 }
          cleanup
  %105 = extractvalue { ptr, i32 } %104, 0
  %106 = extractvalue { ptr, i32 } %104, 1
  br label %284

107:                                              ; preds = %44
  %108 = landingpad { ptr, i32 }
          cleanup
  %109 = extractvalue { ptr, i32 } %108, 0
  %110 = extractvalue { ptr, i32 } %108, 1
  br label %281

111:                                              ; preds = %46
  %112 = landingpad { ptr, i32 }
          cleanup
  %113 = extractvalue { ptr, i32 } %112, 0
  %114 = extractvalue { ptr, i32 } %112, 1
  br label %278

115:                                              ; preds = %52
  %116 = landingpad { ptr, i32 }
          cleanup
  %117 = extractvalue { ptr, i32 } %116, 0
  %118 = extractvalue { ptr, i32 } %116, 1
  br label %275

119:                                              ; preds = %54
  %120 = landingpad { ptr, i32 }
          cleanup
  %121 = extractvalue { ptr, i32 } %120, 0
  %122 = extractvalue { ptr, i32 } %120, 1
  br label %272

123:                                              ; preds = %56
  %124 = landingpad { ptr, i32 }
          cleanup
  %125 = extractvalue { ptr, i32 } %124, 0
  %126 = extractvalue { ptr, i32 } %124, 1
  br label %269

127:                                              ; preds = %58
  %128 = landingpad { ptr, i32 }
          cleanup
  %129 = extractvalue { ptr, i32 } %128, 0
  %130 = extractvalue { ptr, i32 } %128, 1
  br label %266

131:                                              ; preds = %60
  %132 = landingpad { ptr, i32 }
          cleanup
  %133 = extractvalue { ptr, i32 } %132, 0
  %134 = extractvalue { ptr, i32 } %132, 1
  br label %263

135:                                              ; preds = %63
  %136 = landingpad { ptr, i32 }
          cleanup
  %137 = extractvalue { ptr, i32 } %136, 0
  %138 = extractvalue { ptr, i32 } %136, 1
  br label %260

139:                                              ; preds = %203, %181, %158, %155, %89, %65
  %140 = landingpad { ptr, i32 }
          cleanup
  %141 = extractvalue { ptr, i32 } %140, 0
  %142 = extractvalue { ptr, i32 } %140, 1
  br label %257

143:                                              ; preds = %88
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %15) #18
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %15, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices12s_utf8StringE, ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef -1) #17
          to label %144 unwind label %147

144:                                              ; preds = %143
  %145 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %39, ptr noundef nonnull align 8 dereferenceable(36) %15) #17
          to label %146 unwind label %149

146:                                              ; preds = %144
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %15) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %15) #18
  br label %155

147:                                              ; preds = %143
  %148 = landingpad { ptr, i32 }
          cleanup
  br label %151

149:                                              ; preds = %144
  %150 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %15) #15
  br label %151

151:                                              ; preds = %149, %147
  %152 = phi { ptr, i32 } [ %150, %149 ], [ %148, %147 ]
  %153 = extractvalue { ptr, i32 } %152, 0
  %154 = extractvalue { ptr, i32 } %152, 1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %15) #18
  br label %257

155:                                              ; preds = %89, %146
  %156 = invoke noundef zeroext i1 @_ZN11xalanc_1_107isEmptyERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %37) #17
          to label %157 unwind label %139

157:                                              ; preds = %155
  br i1 %156, label %162, label %158, !prof !338

158:                                              ; preds = %157
  %159 = invoke noundef zeroext i1 @_ZN11xalanc_1_1010startsWithERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %37, ptr noundef nonnull @_ZN11xalanc_1_1014FormatterToXML20s_xhtmlDocTypeStringE) #17
          to label %160 unwind label %139

160:                                              ; preds = %158
  br i1 %159, label %161, label %162

161:                                              ; preds = %160
  store i8 1, ptr %49, align 2, !tbaa !322
  br label %162

162:                                              ; preds = %160, %161, %157
  %163 = load ptr, ptr %19, align 8, !tbaa !335
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %167, !prof !318

165:                                              ; preds = %162
  %166 = call noundef ptr @_ZN11xalanc_1_1017XalanOutputStream20defaultNewlineStringEv() #17
  br label %203

167:                                              ; preds = %162
  invoke void @_ZN11xalanc_1_1017XalanOutputStream17setOutputEncodingERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(144) %163, ptr noundef nonnull align 8 dereferenceable(36) %39) #17
          to label %181 unwind label %168

168:                                              ; preds = %167
  %169 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1017XalanOutputStream28UnsupportedEncodingExceptionE
  %170 = extractvalue { ptr, i32 } %169, 0
  %171 = extractvalue { ptr, i32 } %169, 1
  %172 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xalanc_1_1017XalanOutputStream28UnsupportedEncodingExceptionE) #18
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %257

174:                                              ; preds = %168
  %175 = call ptr @__cxa_begin_catch(ptr %170) #18
  %176 = load ptr, ptr %19, align 8, !tbaa !335
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %16) #18
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %16, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices12s_utf8StringE, ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef -1) #17
          to label %177 unwind label %187

177:                                              ; preds = %174
  invoke void @_ZN11xalanc_1_1017XalanOutputStream17setOutputEncodingERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(144) %176, ptr noundef nonnull align 8 dereferenceable(36) %16) #17
          to label %178 unwind label %189

178:                                              ; preds = %177
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %16) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %16) #18
  %179 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt(ptr noundef nonnull align 8 dereferenceable(36) %39, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices12s_utf8StringE) #17
          to label %180 unwind label %193

180:                                              ; preds = %178
  invoke void @__cxa_end_catch()
          to label %181 unwind label %195

181:                                              ; preds = %180, %167
  %182 = load ptr, ptr %19, align 8, !tbaa !335
  %183 = load ptr, ptr %182, align 8, !tbaa !305
  %184 = getelementptr inbounds ptr, ptr %183, i64 3
  %185 = load ptr, ptr %184, align 8
  %186 = invoke noundef ptr %185(ptr noundef nonnull align 8 dereferenceable(144) %182) #17
          to label %203 unwind label %139

187:                                              ; preds = %174
  %188 = landingpad { ptr, i32 }
          cleanup
  br label %191

189:                                              ; preds = %177
  %190 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %16) #15
  br label %191

191:                                              ; preds = %189, %187
  %192 = phi { ptr, i32 } [ %190, %189 ], [ %188, %187 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %16) #18
  br label %197

193:                                              ; preds = %178
  %194 = landingpad { ptr, i32 }
          cleanup
  br label %197

195:                                              ; preds = %180
  %196 = landingpad { ptr, i32 }
          cleanup
  br label %199

197:                                              ; preds = %193, %191
  %198 = phi { ptr, i32 } [ %194, %193 ], [ %192, %191 ]
  invoke void @__cxa_end_catch()
          to label %199 unwind label %298

199:                                              ; preds = %197, %195
  %200 = phi { ptr, i32 } [ %196, %195 ], [ %198, %197 ]
  %201 = extractvalue { ptr, i32 } %200, 0
  %202 = extractvalue { ptr, i32 } %200, 1
  br label %257

203:                                              ; preds = %181, %165
  %204 = phi ptr [ %166, %165 ], [ %186, %181 ]
  store ptr %204, ptr %84, align 8, !tbaa !339
  %205 = call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %204) #17
  store i32 %205, ptr %85, align 8, !tbaa !340
  %206 = invoke noundef zeroext i16 @_ZN11xalanc_1_1024XalanTranscodingServices24getMaximumCharacterValueERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %39) #17
          to label %207 unwind label %139

207:                                              ; preds = %203
  store i16 %206, ptr %27, align 8, !tbaa !310
  %208 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices14encodingIsUTF8ERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %39) #17
          to label %209 unwind label %223

209:                                              ; preds = %207
  br i1 %208, label %213, label %210, !prof !338

210:                                              ; preds = %209
  %211 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices15encodingIsUTF16ERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %39) #17
          to label %212 unwind label %223

212:                                              ; preds = %210
  br i1 %211, label %213, label %217

213:                                              ; preds = %212, %209
  %214 = invoke noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %53) #17
          to label %215 unwind label %223

215:                                              ; preds = %213
  %216 = icmp eq i32 %214, 0
  br label %217

217:                                              ; preds = %215, %212
  %218 = phi i1 [ false, %212 ], [ %216, %215 ]
  %219 = load i8, ptr %28, align 2, !range !303
  %220 = icmp ne i8 %219, 0
  %221 = select i1 %218, i1 true, i1 %220
  br i1 %221, label %227, label %222, !prof !331

222:                                              ; preds = %217
  store i8 1, ptr %28, align 2, !tbaa !326
  br label %227

223:                                              ; preds = %247, %246, %244, %236, %234, %228, %213, %210, %207
  %224 = landingpad { ptr, i32 }
          cleanup
  %225 = extractvalue { ptr, i32 } %224, 0
  %226 = extractvalue { ptr, i32 } %224, 1
  br label %257

227:                                              ; preds = %222, %217
  br i1 %218, label %230, label %228, !prof !338

228:                                              ; preds = %227
  %229 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices15encodingIsUTF32ERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %39) #17
          to label %230 unwind label %223

230:                                              ; preds = %228, %227
  %231 = phi i1 [ true, %227 ], [ %229, %228 ]
  %232 = zext i1 %231 to i8
  store i8 %232, ptr %34, align 1, !tbaa !341
  %233 = call noundef zeroext i1 @_ZNK11xalanc_1_1014XalanDOMString5emptyEv(ptr noundef nonnull align 8 dereferenceable(36) %51) #17
  br i1 %233, label %240, label %234, !prof !338

234:                                              ; preds = %230
  %235 = invoke noundef double @_ZN11xalanc_1_1017DOMStringToDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %51, ptr noundef nonnull align 8 dereferenceable(8) %13) #17
          to label %236 unwind label %223

236:                                              ; preds = %234
  %237 = invoke noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %235, double noundef 1.100000e+00) #17
          to label %238 unwind label %223

238:                                              ; preds = %236
  br i1 %237, label %239, label %240

239:                                              ; preds = %238
  store i8 1, ptr %86, align 4, !tbaa !342
  br label %240

240:                                              ; preds = %239, %238, %230
  %241 = load i8, ptr %34, align 1, !tbaa !341, !range !303, !noundef !304
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %245, label %243, !prof !318

243:                                              ; preds = %240
  br i1 %12, label %244, label %247, !prof !338

244:                                              ; preds = %243
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %59, i64 noundef 512) #17
          to label %247 unwind label %223

245:                                              ; preds = %240
  br i1 %12, label %246, label %247

246:                                              ; preds = %245
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %59, i64 noundef 512) #17
          to label %247 unwind label %223

247:                                              ; preds = %245, %246, %244, %243
  %248 = phi i64 [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML18accumCharUTFDirectEt to i64), %243 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML12accumCharUTFEt to i64), %244 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML21accumNameAsCharDirectEt to i64), %245 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML15accumNameAsCharEt to i64), %246 ]
  %249 = phi i64 [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML18accumCharUTFDirectEt to i64), %243 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML12accumCharUTFEt to i64), %244 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML24accumContentAsCharDirectEt to i64), %245 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML18accumContentAsCharEt to i64), %246 ]
  %250 = phi i64 [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML20accumStringUTFDirectEPKt to i64), %243 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML14accumStringUTFEPKt to i64), %244 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML15accumNameStringEPKt to i64), %245 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML15accumNameStringEPKt to i64), %246 ]
  %251 = phi i64 [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML20accumStringUTFDirectEPKt to i64), %243 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML14accumStringUTFEPKt to i64), %244 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML18accumContentStringEPKt to i64), %245 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML18accumContentStringEPKt to i64), %246 ]
  %252 = phi i64 [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML23accumDOMStringUTFDirectERKNS_14XalanDOMStringE to i64), %243 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML17accumDOMStringUTFERKNS_14XalanDOMStringE to i64), %244 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML18accumNameDOMStringERKNS_14XalanDOMStringE to i64), %245 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML18accumNameDOMStringERKNS_14XalanDOMStringE to i64), %246 ]
  %253 = phi i64 [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML23accumDOMStringUTFDirectERKNS_14XalanDOMStringE to i64), %243 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML17accumDOMStringUTFERKNS_14XalanDOMStringE to i64), %244 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML21accumContentDOMStringERKNS_14XalanDOMStringE to i64), %245 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML21accumContentDOMStringERKNS_14XalanDOMStringE to i64), %246 ]
  %254 = phi i64 [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML19accumArrayUTFDirectEPKtjj to i64), %243 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML13accumArrayUTFEPKtjj to i64), %244 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML14accumNameArrayEPKtjj to i64), %245 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML14accumNameArrayEPKtjj to i64), %246 ]
  %255 = phi i64 [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML19accumArrayUTFDirectEPKtjj to i64), %243 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML13accumArrayUTFEPKtjj to i64), %244 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML17accumContentArrayEPKtjj to i64), %245 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML17accumContentArrayEPKtjj to i64), %246 ]
  store i64 %248, ptr %66, align 8, !tbaa !343
  store i64 0, ptr %67, align 8, !tbaa !343
  store i64 %249, ptr %74, align 8, !tbaa !344
  store i64 0, ptr %75, align 8, !tbaa !344
  store i64 %250, ptr %68, align 8, !tbaa !345
  store i64 0, ptr %69, align 8, !tbaa !345
  store i64 %251, ptr %76, align 8, !tbaa !346
  store i64 0, ptr %77, align 8, !tbaa !346
  store i64 %252, ptr %70, align 8, !tbaa !347
  store i64 0, ptr %71, align 8, !tbaa !347
  store i64 %253, ptr %78, align 8, !tbaa !348
  store i64 0, ptr %79, align 8, !tbaa !348
  store i64 %254, ptr %72, align 8, !tbaa !349
  store i64 0, ptr %73, align 8, !tbaa !349
  store i64 %255, ptr %80, align 8, !tbaa !350
  store i64 0, ptr %81, align 8, !tbaa !350
  store i64 ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML10flushCharsEv to i64), ptr %82, align 8, !tbaa !319
  store i64 0, ptr %83, align 8, !tbaa !319
  invoke void @_ZN11xalanc_1_1014FormatterToXML12initCharsMapEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
          to label %256 unwind label %223

256:                                              ; preds = %247
  ret void

257:                                              ; preds = %223, %199, %168, %151, %139
  %258 = phi i32 [ %226, %223 ], [ %142, %139 ], [ %202, %199 ], [ %171, %168 ], [ %154, %151 ]
  %259 = phi ptr [ %225, %223 ], [ %141, %139 ], [ %201, %199 ], [ %170, %168 ], [ %153, %151 ]
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %64) #15
  br label %260

260:                                              ; preds = %257, %135
  %261 = phi i32 [ %258, %257 ], [ %138, %135 ]
  %262 = phi ptr [ %259, %257 ], [ %137, %135 ]
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %62) #15
  br label %263

263:                                              ; preds = %260, %131
  %264 = phi i32 [ %261, %260 ], [ %134, %131 ]
  %265 = phi ptr [ %262, %260 ], [ %133, %131 ]
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %59) #15
  br label %266

266:                                              ; preds = %263, %127
  %267 = phi i32 [ %264, %263 ], [ %130, %127 ]
  %268 = phi ptr [ %265, %263 ], [ %129, %127 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %57) #15
  br label %269

269:                                              ; preds = %266, %123
  %270 = phi i32 [ %267, %266 ], [ %126, %123 ]
  %271 = phi ptr [ %268, %266 ], [ %125, %123 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %55) #15
  br label %272

272:                                              ; preds = %269, %119
  %273 = phi i32 [ %270, %269 ], [ %122, %119 ]
  %274 = phi ptr [ %271, %269 ], [ %121, %119 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %53) #15
  br label %275

275:                                              ; preds = %272, %115
  %276 = phi i32 [ %273, %272 ], [ %118, %115 ]
  %277 = phi ptr [ %274, %272 ], [ %117, %115 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %51) #15
  br label %278

278:                                              ; preds = %275, %111
  %279 = phi i32 [ %276, %275 ], [ %114, %111 ]
  %280 = phi ptr [ %277, %275 ], [ %113, %111 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %45) #15
  br label %281

281:                                              ; preds = %278, %107
  %282 = phi i32 [ %279, %278 ], [ %110, %107 ]
  %283 = phi ptr [ %280, %278 ], [ %109, %107 ]
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %43) #15
  br label %284

284:                                              ; preds = %281, %103
  %285 = phi i32 [ %282, %281 ], [ %106, %103 ]
  %286 = phi ptr [ %283, %281 ], [ %105, %103 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %39) #15
  br label %287

287:                                              ; preds = %284, %99
  %288 = phi i32 [ %285, %284 ], [ %102, %99 ]
  %289 = phi ptr [ %286, %284 ], [ %101, %99 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %37) #15
  br label %290

290:                                              ; preds = %287, %95
  %291 = phi i32 [ %288, %287 ], [ %98, %95 ]
  %292 = phi ptr [ %289, %287 ], [ %97, %95 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %35) #15
  br label %293

293:                                              ; preds = %290, %91
  %294 = phi i32 [ %291, %290 ], [ %94, %91 ]
  %295 = phi ptr [ %292, %290 ], [ %93, %91 ]
  call void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %296 = insertvalue { ptr, i32 } poison, ptr %295, 0
  %297 = insertvalue { ptr, i32 } %296, i32 %294, 1
  resume { ptr, i32 } %297

298:                                              ; preds = %197
  %299 = landingpad { ptr, i32 }
          catch ptr null
  %300 = extractvalue { ptr, i32 } %299, 0
  call void @__clang_call_terminate(ptr %300) #19
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 !prof !351 {
  store ptr %1, ptr %0, align 8, !tbaa !352
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !353
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !354
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !355

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #17
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !356
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 !prof !357 {
  store ptr %1, ptr %0, align 8, !tbaa !358
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !359
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !360
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !361

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #17
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !362
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 !prof !363 {
  store ptr %1, ptr %0, align 8, !tbaa !364
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !365
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !366
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !367

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #17
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !368
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_107isEmptyERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat !prof !369 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014XalanDOMString5emptyEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  ret i1 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat align 2 !prof !370 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #17
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #0 comdat align 2 !prof !371 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1010startsWithERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !285 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  %4 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  %5 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %1) #17
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef %3, i32 noundef %4, ptr noundef %1, i32 noundef %5) #17
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1017XalanOutputStream20defaultNewlineStringEv() local_unnamed_addr #0 comdat align 2 !prof !314 {
  ret ptr @_ZN11xalanc_1_1017XalanOutputStream10s_nlStringE
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanOutputStream17setOutputEncodingERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #8

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !372 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #17
  ret ptr %3
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #18
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %0) local_unnamed_addr #0 comdat !prof !373 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ]
  %4 = load i16, ptr %3, align 2, !tbaa !309
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds i16, ptr %3, i64 1
  br i1 %5, label %7, label %2, !prof !374, !llvm.loop !375

7:                                                ; preds = %2
  %8 = ptrtoint ptr %3 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = lshr exact i64 %10, 1
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

; Function Attrs: optsize
declare noundef zeroext i16 @_ZN11xalanc_1_1024XalanTranscodingServices24getMaximumCharacterValueERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices14encodingIsUTF8ERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices15encodingIsUTF16ERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !376 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  ret i32 %2
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices15encodingIsUTF32ERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014XalanDOMString5emptyEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !377 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !378
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZN11xalanc_1_1017DOMStringToDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !285 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  %4 = tail call noundef double @_ZN11xalanc_1_1018WideStringToDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #17
  ret double %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML18accumCharUTFDirectEt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1709) %0, i16 noundef zeroext %1) #1 align 2 !prof !285 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !335
  tail call void @_ZN11xalanc_1_1017XalanOutputStream5writeEt(ptr noundef nonnull align 8 dereferenceable(144) %4, i16 noundef zeroext %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML20accumStringUTFDirectEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1709) %0, ptr noundef %1) #1 align 2 !prof !285 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !335
  tail call void @_ZN11xalanc_1_1017XalanOutputStream5writeEPKt(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML23accumDOMStringUTFDirectERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1709) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #1 align 2 !prof !285 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !335
  %5 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %1) #17
  %6 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %1) #17
  tail call void @_ZN11xalanc_1_1017XalanOutputStream5writeEPKtj(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef %5, i32 noundef %6) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML19accumArrayUTFDirectEPKtjj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 align 2 !prof !285 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !335
  %7 = zext i32 %2 to i64
  %8 = getelementptr inbounds i16, ptr %1, i64 %7
  tail call void @_ZN11xalanc_1_1017XalanOutputStream5writeEPKtj(ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef %8, i32 noundef %3) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !314 {
  %3 = alloca %"struct.xalanc_1_10::ConstructValueWithNoMemoryManager", align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #18
  %4 = load ptr, ptr %0, align 8, !tbaa !358
  call void @_ZN11xalanc_1_1033ConstructValueWithNoMemoryManagerItEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 2 dereferenceable(2) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %3) #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML12accumCharUTFEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %1) #1 align 2 !prof !379 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 33
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 34
  %5 = load i32, ptr %4, align 8, !tbaa !337
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !337
  %7 = zext i32 %5 to i64
  %8 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %7) #17
  store i16 %1, ptr %8, align 2, !tbaa !309
  %9 = load i32, ptr %4, align 8, !tbaa !337
  %10 = icmp eq i32 %9, 512
  br i1 %10, label %11, label %12, !prof !380

11:                                               ; preds = %2
  tail call void @_ZN11xalanc_1_1014FormatterToXML10flushCharsEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  br label %12

12:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML14accumStringUTFEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr nocapture noundef readonly %1) #1 align 2 !prof !381 {
  %3 = load i16, ptr %1, align 2, !tbaa !309
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %11, label %5, !prof !382

5:                                                ; preds = %2, %5
  %6 = phi i16 [ %9, %5 ], [ %3, %2 ]
  %7 = phi ptr [ %8, %5 ], [ %1, %2 ]
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumCharUTFEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %6) #17
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !309
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %5, !prof !383, !llvm.loop !384

11:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML17accumDOMStringUTFERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #1 align 2 !prof !285 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %1) #17
  %4 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %1) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML13accumArrayUTFEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %3, i32 noundef 0, i32 noundef %4) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML13accumArrayUTFEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #1 align 2 !prof !385 {
  %5 = add i32 %3, %2
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %7, label %9, !prof !386

7:                                                ; preds = %4
  %8 = zext i32 %2 to i64
  br label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %7, %10
  %11 = phi i64 [ %8, %7 ], [ %14, %10 ]
  %12 = getelementptr inbounds i16, ptr %1, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !309
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumCharUTFEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %13) #17
  %14 = add nuw nsw i64 %11, 1
  %15 = trunc i64 %14 to i32
  %16 = icmp eq i32 %5, %15
  br i1 %16, label %9, label %10, !prof !387, !llvm.loop !388
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML21accumNameAsCharDirectEt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1709) %0, i16 noundef zeroext %1) #1 align 2 !prof !285 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !310
  %5 = icmp ult i16 %4, %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !335
  %8 = select i1 %5, i16 63, i16 %1
  tail call void @_ZN11xalanc_1_1017XalanOutputStream5writeEt(ptr noundef nonnull align 8 dereferenceable(144) %7, i16 noundef zeroext %8) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML24accumContentAsCharDirectEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %1) #1 align 2 !prof !285 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !310
  %5 = icmp ult i16 %4, %1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = zext i16 %1 to i64
  tail call void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %7) #17
  br label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !335
  tail call void @_ZN11xalanc_1_1017XalanOutputStream5writeEt(ptr noundef nonnull align 8 dereferenceable(144) %10, i16 noundef zeroext %1) #17
  br label %11

11:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML15accumNameAsCharEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %1) #1 align 2 !prof !285 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !310
  %5 = icmp ult i16 %4, %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 33
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 34
  %8 = load i32, ptr %7, align 8, !tbaa !337
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 8, !tbaa !337
  %10 = zext i32 %8 to i64
  %11 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %10) #17
  %12 = select i1 %5, i16 63, i16 %1
  store i16 %12, ptr %11, align 2, !tbaa !309
  %13 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 34
  %14 = load i32, ptr %13, align 8, !tbaa !337
  %15 = icmp eq i32 %14, 512
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  tail call void @_ZN11xalanc_1_1014FormatterToXML10flushCharsEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  br label %17

17:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML18accumContentAsCharEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %1) #1 align 2 !prof !285 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !310
  %5 = icmp ult i16 %4, %1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = zext i16 %1 to i64
  tail call void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %7) #17
  br label %15

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 33
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 34
  %11 = load i32, ptr %10, align 8, !tbaa !337
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !337
  %13 = zext i32 %11 to i64
  %14 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %13) #17
  store i16 %1, ptr %14, align 2, !tbaa !309
  br label %15

15:                                               ; preds = %8, %6
  %16 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 34
  %17 = load i32, ptr %16, align 8, !tbaa !337
  %18 = icmp eq i32 %17, 512
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1014FormatterToXML10flushCharsEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  br label %20

20:                                               ; preds = %19, %15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML15accumNameStringEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr nocapture noundef readonly %1) #1 align 2 !prof !285 {
  %3 = load i16, ptr %1, align 2, !tbaa !309
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %2, %5
  %6 = phi i16 [ %9, %5 ], [ %3, %2 ]
  %7 = phi ptr [ %8, %5 ], [ %1, %2 ]
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %6) #17
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !309
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %5, !llvm.loop !389

11:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML18accumContentStringEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr nocapture noundef readonly %1) #1 align 2 !prof !285 {
  %3 = load i16, ptr %1, align 2, !tbaa !309
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %2, %5
  %6 = phi i16 [ %9, %5 ], [ %3, %2 ]
  %7 = phi ptr [ %8, %5 ], [ %1, %2 ]
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %6) #17
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !309
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %5, !llvm.loop !390

11:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML18accumNameDOMStringERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #1 align 2 !prof !285 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %1) #17
  %4 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %1) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %3, i32 noundef 0, i32 noundef %4) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML21accumContentDOMStringERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #1 align 2 !prof !285 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %1) #17
  %4 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %1) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %3, i32 noundef 0, i32 noundef %4) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML14accumNameArrayEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #1 align 2 !prof !285 {
  %5 = add i32 %3, %2
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = zext i32 %2 to i64
  br label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %7, %10
  %11 = phi i64 [ %8, %7 ], [ %14, %10 ]
  %12 = getelementptr inbounds i16, ptr %1, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !309
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %13) #17
  %14 = add nuw nsw i64 %11, 1
  %15 = trunc i64 %14 to i32
  %16 = icmp eq i32 %5, %15
  br i1 %16, label %9, label %10, !llvm.loop !391
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML17accumContentArrayEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #1 align 2 !prof !285 {
  %5 = add i32 %3, %2
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = zext i32 %2 to i64
  br label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %7, %10
  %11 = phi i64 [ %8, %7 ], [ %14, %10 ]
  %12 = getelementptr inbounds i16, ptr %1, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !309
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %13) #17
  %14 = add nuw nsw i64 %11, 1
  %15 = trunc i64 %14 to i32
  %16 = icmp eq i32 %5, %15
  br i1 %16, label %9, label %10, !llvm.loop !392
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML10flushCharsEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #1 align 2 !prof !393 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !330
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 33
  %5 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0) #17
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 34
  %7 = load i32, ptr %6, align 8, !tbaa !337
  %8 = load ptr, ptr %3, align 8, !tbaa !305
  %9 = getelementptr inbounds ptr, ptr %8, i64 7
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %5, i32 noundef 0, i32 noundef %7) #17
  store i32 0, ptr %6, align 8, !tbaa !337
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML12initCharsMapEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) local_unnamed_addr #1 align 2 !prof !314 {
  tail call void @_ZN11xalanc_1_1014FormatterToXML16initAttrCharsMapEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %2, i8 0, i64 512, i1 false)
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 60
  store i16 83, ptr %3, align 2, !tbaa !309
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 62
  store i16 83, ptr %4, align 2, !tbaa !309
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 38
  store i16 83, ptr %5, align 2, !tbaa !309
  br label %6

6:                                                ; preds = %1, %6
  %7 = phi i64 [ 1, %1 ], [ %9, %6 ]
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 %7
  store i16 83, ptr %8, align 2, !tbaa !309
  %9 = add nuw nsw i64 %7, 1
  %10 = icmp eq i64 %9, 32
  br i1 %10, label %11, label %6, !prof !394, !llvm.loop !395

11:                                               ; preds = %6, %11
  %12 = phi i64 [ %15, %11 ], [ 0, %6 ]
  %13 = add i64 %12, 127
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 %13
  store <8 x i16> <i16 83, i16 83, i16 83, i16 83, i16 83, i16 83, i16 83, i16 83>, ptr %14, align 8, !tbaa !309
  %15 = add nuw i64 %12, 8
  %16 = icmp eq i64 %15, 32
  br i1 %16, label %17, label %11, !prof !396, !llvm.loop !397

17:                                               ; preds = %11
  %18 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 9
  store i16 0, ptr %18, align 4, !tbaa !309
  %19 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %20 = load i16, ptr %19, align 8, !tbaa !310
  %21 = icmp ult i16 %20, 256
  br i1 %21, label %22, label %24, !prof !400

22:                                               ; preds = %17
  %23 = zext nneg i16 %20 to i64
  br label %25

24:                                               ; preds = %25, %17
  ret void

25:                                               ; preds = %22, %25
  %26 = phi i64 [ %23, %22 ], [ %28, %25 ]
  %27 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 %26
  store i16 83, ptr %27, align 2, !tbaa !309
  %28 = add nuw nsw i64 %26, 1
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 256
  br i1 %30, label %24, label %25, !prof !401, !llvm.loop !402
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !403 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !354
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !404

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE7destroyEPbS4_(ptr noundef %6, ptr noundef %7) #17
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !356
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10deallocateEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #17
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
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !405 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !366
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !406

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyEPcS4_(ptr noundef %6, ptr noundef %7) #17
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !368
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10deallocateEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #17
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
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !407 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !360
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %10, label %5, !prof !408

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #17
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !362
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #17
          to label %10 unwind label %11

10:                                               ; preds = %5, %1
  ret void

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  tail call void @__clang_call_terminate(ptr %13) #19
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !409 {
  %3 = load ptr, ptr %0, align 8, !tbaa !352
  %4 = load ptr, ptr %3, align 8, !tbaa !305
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %1) #17
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !410 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !411 {
  %3 = shl i64 %1, 1
  %4 = load ptr, ptr %0, align 8, !tbaa !358
  %5 = load ptr, ptr %4, align 8, !tbaa !305
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #17
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !412 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !413 {
  %3 = load ptr, ptr %0, align 8, !tbaa !364
  %4 = load ptr, ptr %3, align 8, !tbaa !305
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %1) #17
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !414 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat align 2 !prof !370 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %9, label %4, !prof !415

4:                                                ; preds = %2
  %5 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !378
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  store i32 %7, ptr %8, align 8, !tbaa !378
  br label %9

9:                                                ; preds = %4, %2
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !416 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !370 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %33, label %5, !prof !415

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !360
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !359
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %13, !prof !417

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  %12 = load ptr, ptr %0, align 8, !tbaa !358
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0) #17
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  br label %33

13:                                               ; preds = %5
  %14 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !359
  %17 = load i64, ptr %8, align 8, !tbaa !359
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %20, !prof !418

19:                                               ; preds = %13
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %17) #17
  br label %28

20:                                               ; preds = %13
  %21 = icmp ult i64 %16, %17
  br i1 %21, label %22, label %28, !prof !419

22:                                               ; preds = %20
  %23 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  %24 = load i64, ptr %15, align 8, !tbaa !359
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  %26 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %27 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %26, ptr noundef %25, ptr noundef %27) #17
  br label %28

28:                                               ; preds = %20, %22, %19
  %29 = phi ptr [ %14, %19 ], [ %25, %22 ], [ %14, %20 ]
  %30 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  %31 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %32 = tail call noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %30, ptr noundef %29, ptr noundef %31) #17
  br label %33

33:                                               ; preds = %11, %28, %2
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !420 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !358
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !359
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !421

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #17
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #17
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #17
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #17
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !422

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #17
  store ptr %24, ptr %8, align 8, !tbaa !362
  store i64 %3, ptr %7, align 8, !tbaa !360
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !423 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %3 = load ptr, ptr %0, align 8, !tbaa !358
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !362
  %7 = load ptr, ptr %1, align 8, !tbaa !358
  store ptr %7, ptr %0, align 8, !tbaa !358
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !424
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !362
  store ptr %11, ptr %5, align 8, !tbaa !362
  store ptr %3, ptr %1, align 8, !tbaa !358
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !424
  store <2 x i64> %9, ptr %4, align 8, !tbaa !424
  store <2 x i64> %12, ptr %8, align 8, !tbaa !424
  store ptr %6, ptr %10, align 8, !tbaa !362
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !425 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !426 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %5 = load i64, ptr %3, align 8, !tbaa !359
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !prof !427, !llvm.loop !428

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !425 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !362
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !429 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #17
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %76, label %8, !prof !430

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28, !prof !431

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #17
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %75, label %16, !prof !432

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !358
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 2 dereferenceable(2) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #17
  %23 = getelementptr inbounds i16, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !359
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !359
  %26 = getelementptr inbounds i16, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %75, label %18, !prof !433, !llvm.loop !434

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %43, !prof !435

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %32 = load ptr, ptr %0, align 8, !tbaa !358
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #17
  %33 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  %34 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %34, ptr noundef %1) #17
          to label %35 unwind label %41

35:                                               ; preds = %31
  %36 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %36, ptr noundef %2, ptr noundef %3) #17
          to label %37 unwind label %41

37:                                               ; preds = %35
  %38 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  %39 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %38, ptr noundef %1, ptr noundef %39) #17
          to label %40 unwind label %41

40:                                               ; preds = %37
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  br label %75

41:                                               ; preds = %37, %35, %31
  %42 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  resume { ptr, i32 } %42

43:                                               ; preds = %28
  %44 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %45 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %44) #17
  %46 = icmp ugt i64 %45, %6
  br i1 %46, label %62, label %47, !prof !436

47:                                               ; preds = %43
  %48 = getelementptr inbounds i16, ptr %2, i64 %45
  %49 = icmp eq ptr %48, %3
  br i1 %49, label %50, label %52, !prof !437

50:                                               ; preds = %52, %47
  %51 = icmp eq ptr %44, %1
  br i1 %51, label %60, label %56, !prof !437

52:                                               ; preds = %47, %52
  %53 = phi ptr [ %54, %52 ], [ %48, %47 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %53) #17
  %54 = getelementptr inbounds i16, ptr %53, i64 1
  %55 = icmp eq ptr %54, %3
  br i1 %55, label %50, label %52, !prof !438, !llvm.loop !439

56:                                               ; preds = %50, %56
  %57 = phi ptr [ %58, %56 ], [ %1, %50 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %57) #17
  %58 = getelementptr inbounds i16, ptr %57, i64 1
  %59 = icmp eq ptr %58, %44
  br i1 %59, label %60, label %56, !prof !440, !llvm.loop !441

60:                                               ; preds = %56, %50
  %61 = tail call noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %2, ptr noundef %48, ptr noundef %1) #17
  br label %75

62:                                               ; preds = %43
  %63 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %64 = sub i64 0, %6
  %65 = getelementptr inbounds i16, ptr %63, i64 %64
  %66 = icmp eq ptr %65, %44
  br i1 %66, label %71, label %67

67:                                               ; preds = %62, %67
  %68 = phi ptr [ %69, %67 ], [ %65, %62 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %68) #17
  %69 = getelementptr inbounds i16, ptr %68, i64 1
  %70 = icmp eq ptr %69, %44
  br i1 %70, label %71, label %67, !llvm.loop !442

71:                                               ; preds = %67, %62
  %72 = getelementptr inbounds i16, ptr %44, i64 %64
  %73 = tail call noundef ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_(ptr noundef %1, ptr noundef nonnull %72, ptr noundef %44) #17
  %74 = tail call noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #17
  br label %75

75:                                               ; preds = %18, %13, %60, %71, %40
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  br label %76

76:                                               ; preds = %4, %75
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !443 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !444 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %0) #17
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %1) #17
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #17
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !445 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !362
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !446 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !425 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !362
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !359
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !447 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !359
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !359
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !362
  %7 = getelementptr inbounds i16, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %7) #17
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #0 comdat align 2 !prof !448 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !449 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #17
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !450 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !359
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !451 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6, !prof !452

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #17
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !448 {
  %4 = load i16, ptr %1, align 2, !tbaa !309
  store i16 %4, ptr %0, align 2, !tbaa !309
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !453 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !360
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !454 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !359
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !360
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !455

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %11 = load ptr, ptr %0, align 8, !tbaa !358
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #17
  %13 = load i64, ptr %4, align 8, !tbaa !359
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !359
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  %21 = load ptr, ptr %0, align 8, !tbaa !358
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #17
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1) #17
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !285 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) #17
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %1) #17
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #17
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !449 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !456
  call void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %4 = call noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #17
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !449 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 1
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !449 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !457 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  %4 = load ptr, ptr %0, align 8, !tbaa !358
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #17
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !458 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !362
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !359
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !285 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !456
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) #15
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %1) #15
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #15
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #17
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #17
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !459 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !460 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !285 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !461 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !285 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !285 {
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

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !444 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !456
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %0) #15
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %1) #15
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #15
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #17
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #17
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !462 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !444 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !462 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !444 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !460 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !463

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %2, ptr align 2 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat !prof !464 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat !prof !465 {
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  ret i32 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !466 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  br i1 %2, label %5, label %3, !prof !467

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #17
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !468 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !359
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !469 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !362
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !470 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1) #17
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #17
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !471 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1) #17
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %3) #17
  ret ptr %4
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !472 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !378
  ret i32 %3
}

; Function Attrs: optsize
declare noundef double @_ZN11xalanc_1_1018WideStringToDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1033ConstructValueWithNoMemoryManagerItEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 2 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !314 {
  store i16 0, ptr %0, align 2, !tbaa !473
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #1 comdat align 2 !prof !475 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !359
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %7, label %8, !prof !476

7:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #17
  br label %24

8:                                                ; preds = %3
  %9 = icmp ult i64 %5, %1
  br i1 %9, label %10, label %24, !prof !477

10:                                               ; preds = %8
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #17
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !362
  %13 = getelementptr inbounds i16, ptr %12, i64 %1
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %24, label %16, !prof !478

16:                                               ; preds = %10, %16
  %17 = phi ptr [ %20, %16 ], [ %14, %10 ]
  %18 = load ptr, ptr %0, align 8, !tbaa !358
  %19 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %17, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 8 dereferenceable(8) %18) #17
  %20 = getelementptr inbounds i16, ptr %17, i64 1
  %21 = load i64, ptr %4, align 8, !tbaa !359
  %22 = add i64 %21, 1
  store i64 %22, ptr %4, align 8, !tbaa !359
  %23 = icmp eq ptr %20, %13
  br i1 %23, label %24, label %16, !prof !479, !llvm.loop !480

24:                                               ; preds = %16, %10, %8, %7
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !481 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !360
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7, !prof !482

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #17
  br label %7

7:                                                ; preds = %6, %2
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE7destroyEPbS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !409 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !483

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE7destroyERb(ptr noundef nonnull align 1 dereferenceable(1) %5) #17
  %6 = getelementptr inbounds i8, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !484, !llvm.loop !485

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !486 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !356
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !486 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10deallocateEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !409 {
  %3 = load ptr, ptr %0, align 8, !tbaa !352
  %4 = load ptr, ptr %3, align 8, !tbaa !305
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE7destroyERb(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 !prof !487 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !488 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !356
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !353
  %6 = getelementptr inbounds i8, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyEPcS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !413 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !489

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyERc(ptr noundef nonnull align 1 dereferenceable(1) %5) #17
  %6 = getelementptr inbounds i8, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !490, !llvm.loop !491

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !363 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !368
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !363 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10deallocateEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !413 {
  %3 = load ptr, ptr %0, align 8, !tbaa !364
  %4 = load ptr, ptr %3, align 8, !tbaa !305
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyERc(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 !prof !492 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !493 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !368
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !365
  %6 = getelementptr inbounds i8, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !411 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !494

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #17
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !495, !llvm.loop !496

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !411 {
  %3 = load ptr, ptr %0, align 8, !tbaa !358
  %4 = load ptr, ptr %3, align 8, !tbaa !305
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1014FormatterToXML6createERN11xercesc_2_713MemoryManagerERNS_6WriterERKNS_14XalanDOMStringEbiS8_S8_S8_S8_bS8_NS_17FormatterListener7eFormatEb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, i1 noundef zeroext %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(36) %8, i1 noundef zeroext %9, ptr noundef nonnull align 8 dereferenceable(36) %10, i32 noundef %11, i1 noundef zeroext %12) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !285 {
  %14 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #18
  %15 = load ptr, ptr %0, align 8, !tbaa !305
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 1712) #17
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14FormatterToXMLELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %18) #17
  %19 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14FormatterToXMLELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #17
  invoke void @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1709) %19, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, i1 noundef zeroext %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(36) %8, i1 noundef zeroext %9, ptr noundef nonnull align 8 dereferenceable(36) %10, i32 noundef %11, i1 noundef zeroext %12, ptr noundef nonnull align 8 dereferenceable(8) %0) #17
          to label %20 unwind label %23

20:                                               ; preds = %13
  %21 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14FormatterToXMLELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #17
          to label %22 unwind label %23

22:                                               ; preds = %20
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14FormatterToXMLELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %14) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #18
  ret ptr %19

23:                                               ; preds = %20, %13
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14FormatterToXMLELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %14) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #18
  resume { ptr, i32 } %24
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14FormatterToXMLELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !285 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14FormatterToXMLELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14FormatterToXMLELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !285 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !497
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14FormatterToXMLELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !285 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14FormatterToXMLELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #17
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14FormatterToXMLELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !285 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14FormatterToXMLELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #17
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
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14FormatterToXMLELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !285 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !456
  store ptr %2, ptr %5, align 8, !tbaa !456
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1014FormatterToXMLEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14FormatterToXMLELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1014FormatterToXMLEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 !prof !285 {
  %4 = load ptr, ptr %1, align 8, !tbaa !456
  store ptr %4, ptr %0, align 8, !tbaa !499
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !456
  store ptr %6, ptr %5, align 8, !tbaa !497
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14FormatterToXMLELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !285 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14FormatterToXMLELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !285 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14FormatterToXMLELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #17
  store ptr %1, ptr %0, align 8, !tbaa !499
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !497
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14FormatterToXMLELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14FormatterToXMLELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !285 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14FormatterToXMLELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #17
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14FormatterToXMLELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #17
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !499
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !497
  %7 = load ptr, ptr %4, align 8, !tbaa !305
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #17
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14FormatterToXMLELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !285 {
  %2 = load ptr, ptr %0, align 8, !tbaa !499
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXMLD2Ev(ptr noundef nonnull align 8 dereferenceable(1709) %0) unnamed_addr #0 align 2 !prof !314 {
  store ptr getelementptr inbounds ({ [27 x ptr] }, ptr @_ZTVN11xalanc_1_1014FormatterToXMLE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !305
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 37
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 36
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 33
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #15
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 32
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #15
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 31
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %6) #15
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 30
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %7) #15
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 29
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %8) #15
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %9) #15
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 22
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #15
  %11 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 19
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %11) #15
  %12 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 18
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %12) #15
  %13 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 17
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %13) #15
  tail call void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML16initAttrCharsMapEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) local_unnamed_addr #1 align 2 !prof !413 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %2, i8 0, i64 512, i1 false)
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 32
  %4 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %3) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10, !prof !489

6:                                                ; preds = %10, %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 9
  store i16 83, ptr %7, align 4, !tbaa !309
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 10
  store i16 83, ptr %8, align 2, !tbaa !309
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 13
  store i16 83, ptr %9, align 4, !tbaa !309
  br label %17

10:                                               ; preds = %1, %10
  %11 = phi i32 [ %15, %10 ], [ 0, %1 ]
  %12 = tail call noundef zeroext i16 @_ZN11xalanc_1_106charAtERKNS_14XalanDOMStringEj(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef %11) #17
  %13 = zext i16 %12 to i64
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 %13
  store i16 83, ptr %14, align 2, !tbaa !309
  %15 = add nuw i32 %11, 1
  %16 = icmp eq i32 %15, %4
  br i1 %16, label %6, label %10, !prof !500, !llvm.loop !501

17:                                               ; preds = %6, %17
  %18 = phi i64 [ 1, %6 ], [ %20, %17 ]
  %19 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 %18
  store i16 83, ptr %19, align 2, !tbaa !309
  %20 = add nuw nsw i64 %18, 1
  %21 = icmp eq i64 %20, 32
  br i1 %21, label %22, label %17, !prof !502, !llvm.loop !503

22:                                               ; preds = %17, %22
  %23 = phi i64 [ %26, %22 ], [ 0, %17 ]
  %24 = add i64 %23, 127
  %25 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 %24
  store <8 x i16> <i16 83, i16 83, i16 83, i16 83, i16 83, i16 83, i16 83, i16 83>, ptr %25, align 8, !tbaa !309
  %26 = add nuw i64 %23, 8
  %27 = icmp eq i64 %26, 32
  br i1 %27, label %28, label %22, !prof !504, !llvm.loop !505

28:                                               ; preds = %22
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i16 @_ZN11xalanc_1_106charAtERKNS_14XalanDOMStringEj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1) local_unnamed_addr #1 comdat !prof !506 {
  %3 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1014XalanDOMStringixEj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1) #17
  %4 = load i16, ptr %3, align 2, !tbaa !309
  ret i16 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1014XalanDOMStringixEj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !506 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  %3 = zext i32 %1 to i64
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML17outputDocTypeDeclEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !285 {
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull @_ZN11xalanc_1_1014FormatterToXML26s_doctypeHeaderStartStringE, i32 noundef 0, i32 noundef 10) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1) #17
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 18
  %4 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %3) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull @_ZN11xalanc_1_1014FormatterToXML27s_doctypeHeaderPublicStringE, i32 noundef 0, i32 noundef 9) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull align 8 dereferenceable(36) %3) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 34) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 32) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 34) #17
  br label %8

7:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull @_ZN11xalanc_1_1014FormatterToXML27s_doctypeHeaderSystemStringE, i32 noundef 0, i32 noundef 9) #17
  br label %8

8:                                                ; preds = %7, %6
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 17
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull align 8 dereferenceable(36) %9) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 34) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 62) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML13outputLineSepEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014FormatterToXML9accumNameEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat align 2 !prof !507 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 41
  %6 = load i64, ptr %5, align 8, !tbaa !349
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 41, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !349
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = and i64 %6, 1
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %4
  %13 = load ptr, ptr %9, align 8, !tbaa !305
  %14 = getelementptr i8, ptr %13, i64 %6
  %15 = getelementptr i8, ptr %14, i64 -1
  %16 = load ptr, ptr %15, align 8, !nosanitize !304
  br label %19

17:                                               ; preds = %4
  %18 = inttoptr i64 %6 to ptr
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi ptr [ %16, %12 ], [ %18, %17 ]
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(1709) %9, ptr noundef %1, i32 noundef %2, i32 noundef %3) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014FormatterToXML9accumNameEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !381 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39
  %4 = load i64, ptr %3, align 8, !tbaa !345
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !345
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = and i64 %4, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %7, align 8, !tbaa !305
  %12 = getelementptr i8, ptr %11, i64 %4
  %13 = getelementptr i8, ptr %12, i64 -1
  %14 = load ptr, ptr %13, align 8, !nosanitize !304
  br label %17

15:                                               ; preds = %2
  %16 = inttoptr i64 %4 to ptr
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi ptr [ %14, %10 ], [ %16, %15 ]
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(1709) %7, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014FormatterToXML9accumNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat align 2 !prof !285 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 40
  %4 = load i64, ptr %3, align 8, !tbaa !347
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 40, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !347
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = and i64 %4, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %7, align 8, !tbaa !305
  %12 = getelementptr i8, ptr %11, i64 %4
  %13 = getelementptr i8, ptr %12, i64 -1
  %14 = load ptr, ptr %13, align 8, !nosanitize !304
  br label %17

15:                                               ; preds = %2
  %16 = inttoptr i64 %4 to ptr
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi ptr [ %14, %10 ], [ %16, %15 ]
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(1709) %7, ptr noundef nonnull align 8 dereferenceable(36) %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014FormatterToXML9accumNameEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !285 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38
  %4 = load i64, ptr %3, align 8, !tbaa !343
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !343
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = and i64 %4, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %7, align 8, !tbaa !305
  %12 = getelementptr i8, ptr %11, i64 %4
  %13 = getelementptr i8, ptr %12, i64 -1
  %14 = load ptr, ptr %13, align 8, !nosanitize !304
  br label %17

15:                                               ; preds = %2
  %16 = inttoptr i64 %4 to ptr
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi ptr [ %14, %10 ], [ %16, %15 ]
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(1709) %7, i16 noundef zeroext %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML13outputLineSepEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) local_unnamed_addr #1 align 2 !prof !508 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 47
  %3 = load ptr, ptr %2, align 8, !tbaa !339
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 48
  %5 = load i32, ptr %4, align 8, !tbaa !340
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %3, i32 noundef 0, i32 noundef %5) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML15accumNameAsByteEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %1) local_unnamed_addr #1 align 2 !prof !285 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !310
  %5 = icmp ult i16 %4, %1
  %6 = trunc i16 %1 to i8
  %7 = select i1 %5, i8 63, i8 %6
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 36
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 34
  %10 = load i32, ptr %9, align 8, !tbaa !337
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 8, !tbaa !337
  %12 = zext i32 %10 to i64
  %13 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %12) #17
  store i8 %7, ptr %13, align 1, !tbaa !509
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 34
  %15 = load i32, ptr %14, align 8, !tbaa !337
  %16 = icmp eq i32 %15, 512
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  tail call void @_ZN11xalanc_1_1014FormatterToXML10flushBytesEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  br label %18

18:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !510 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !368
  %5 = getelementptr inbounds i8, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML10flushBytesEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) local_unnamed_addr #1 align 2 !prof !285 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !330
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 36
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0) #17
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 34
  %7 = load i32, ptr %6, align 8, !tbaa !337
  %8 = zext i32 %7 to i64
  %9 = load ptr, ptr %3, align 8, !tbaa !305
  %10 = getelementptr inbounds ptr, ptr %9, i64 6
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %5, i64 noundef 0, i64 noundef %8) #17
  store i32 0, ptr %6, align 8, !tbaa !337
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML21accumNameAsByteDirectEt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1709) %0, i16 noundef zeroext %1) local_unnamed_addr #1 align 2 !prof !285 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !310
  %5 = icmp ult i16 %4, %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !335
  %8 = trunc i16 %1 to i8
  %9 = select i1 %5, i8 63, i8 %8
  tail call void @_ZN11xalanc_1_1017XalanOutputStream5writeEc(ptr noundef nonnull align 8 dereferenceable(144) %7, i8 noundef signext %9) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017XalanOutputStream5writeEc(ptr noundef nonnull align 8 dereferenceable(144) %0, i8 noundef signext %1) local_unnamed_addr #1 comdat align 2 !prof !285 {
  %3 = alloca i8, align 1
  store i8 %1, ptr %3, align 1, !tbaa !509
  call void @_ZN11xalanc_1_1017XalanOutputStream5writeEPKcj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %3, i32 noundef 1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017XalanOutputStream5writeEPKcj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !285 {
  %4 = load ptr, ptr %0, align 8, !tbaa !305
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, i32 noundef %2) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML18accumContentAsByteEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %1) local_unnamed_addr #1 align 2 !prof !285 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !310
  %5 = icmp ult i16 %4, %1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = zext i16 %1 to i64
  tail call void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %7) #17
  br label %16

8:                                                ; preds = %2
  %9 = trunc i16 %1 to i8
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 36
  %11 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 34
  %12 = load i32, ptr %11, align 8, !tbaa !337
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 8, !tbaa !337
  %14 = zext i32 %12 to i64
  %15 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %14) #17
  store i8 %9, ptr %15, align 1, !tbaa !509
  br label %16

16:                                               ; preds = %8, %6
  %17 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 34
  %18 = load i32, ptr %17, align 8, !tbaa !337
  %19 = icmp eq i32 %18, 512
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void @_ZN11xalanc_1_1014FormatterToXML10flushBytesEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  br label %21

21:                                               ; preds = %20, %16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %1) local_unnamed_addr #1 align 2 !prof !285 {
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 38) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 35) #17
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1023UnsignedLongToDOMStringEmRNS_14XalanDOMStringE(i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %3) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull align 8 dereferenceable(36) %4) #17
  tail call void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %3) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 59) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML24accumContentAsByteDirectEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %1) local_unnamed_addr #1 align 2 !prof !285 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !310
  %5 = icmp ult i16 %4, %1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = zext i16 %1 to i64
  tail call void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %7) #17
  br label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !335
  %11 = trunc i16 %1 to i8
  tail call void @_ZN11xalanc_1_1017XalanOutputStream5writeEc(ptr noundef nonnull align 8 dereferenceable(144) %10, i8 noundef signext %11) #17
  br label %12

12:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !511 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !362
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017XalanOutputStream5writeEt(ptr noundef nonnull align 8 dereferenceable(144) %0, i16 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !285 {
  %3 = alloca i16, align 2
  store i16 %1, ptr %3, align 2, !tbaa !309
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 4
  %5 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !512
  %8 = zext i32 %7 to i64
  %9 = icmp eq i64 %5, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call void @_ZN11xalanc_1_1017XalanOutputStream11flushBufferEv(ptr noundef nonnull align 8 dereferenceable(144) %0) #17
  br label %11

11:                                               ; preds = %10, %2
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9push_backERKt(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 2 dereferenceable(2) %3) #17
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanOutputStream11flushBufferEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9push_backERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #1 comdat align 2 !prof !514 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) #17
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017XalanOutputStream5writeEPKt(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !285 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %1) #17
  tail call void @_ZN11xalanc_1_1017XalanOutputStream5writeEPKtj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, i32 noundef %3) #17
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanOutputStream5writeEPKtj(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !515 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %4 = load i64, ptr %3, align 8, !tbaa !344
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !344
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = and i64 %4, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %7, align 8, !tbaa !305
  %12 = getelementptr i8, ptr %11, i64 %4
  %13 = getelementptr i8, ptr %12, i64 -1
  %14 = load ptr, ptr %13, align 8, !nosanitize !304
  br label %17

15:                                               ; preds = %2
  %16 = inttoptr i64 %4 to ptr
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi ptr [ %14, %10 ], [ %16, %15 ]
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(1709) %7, i16 noundef zeroext %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014FormatterToXML12accumContentEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat align 2 !prof !516 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45
  %6 = load i64, ptr %5, align 8, !tbaa !350
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !350
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = and i64 %6, 1
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %4
  %13 = load ptr, ptr %9, align 8, !tbaa !305
  %14 = getelementptr i8, ptr %13, i64 %6
  %15 = getelementptr i8, ptr %14, i64 -1
  %16 = load ptr, ptr %15, align 8, !nosanitize !304
  br label %19

17:                                               ; preds = %4
  %18 = inttoptr i64 %6 to ptr
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi ptr [ %16, %12 ], [ %18, %17 ]
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(1709) %9, ptr noundef %1, i32 noundef %2, i32 noundef %3) #17
  ret void
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML35throwInvalidUTF16SurrogateExceptionEtRN11xercesc_2_713MemoryManagerE(i16 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 !prof !285 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #18
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #17
  %5 = zext i16 %0 to i64
  %6 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1026UnsignedLongToHexDOMStringEmRNS_14XalanDOMStringE(i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(36) %3) #17
          to label %7 unwind label %15

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #18
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #17
          to label %8 unwind label %17

8:                                                ; preds = %7
  %9 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef 143, ptr noundef nonnull align 8 dereferenceable(36) %3) #17
          to label %10 unwind label %19

10:                                               ; preds = %8
  %11 = call ptr @__cxa_allocate_exception(i64 24) #18
  %12 = invoke noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %4) #17
          to label %13 unwind label %21

13:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_712SAXExceptionC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef %12, ptr noundef nonnull %1) #17
          to label %14 unwind label %21

14:                                               ; preds = %13
  invoke void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_712SAXExceptionE, ptr nonnull @_ZN11xercesc_2_712SAXExceptionD2Ev) #20
          to label %29 unwind label %19

15:                                               ; preds = %2
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %27

17:                                               ; preds = %7
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %25

19:                                               ; preds = %14, %8
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %23

21:                                               ; preds = %13, %10
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %11) #18
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi { ptr, i32 } [ %20, %19 ], [ %22, %21 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi { ptr, i32 } [ %24, %23 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #18
  br label %27

27:                                               ; preds = %25, %15
  %28 = phi { ptr, i32 } [ %26, %25 ], [ %16, %15 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #18
  resume { ptr, i32 } %28

29:                                               ; preds = %14
  unreachable
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1026UnsignedLongToHexDOMStringEmRNS_14XalanDOMStringE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712SAXExceptionC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !285 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712SAXExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !305
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %2) #17
  store ptr %5, ptr %4, align 8, !tbaa !517
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !519
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712SAXExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !285 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712SAXExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !305
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !519
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !517
  %6 = load ptr, ptr %3, align 8, !tbaa !305
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #17
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable
}

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !520 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !521 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !522

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #17
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !305
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #17
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712SAXExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712SAXExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SAXException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 !prof !285 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !517
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #0 comdat align 2 !prof !523 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !524

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !309
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !525

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !309
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !526, !llvm.loop !527

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 1
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %1, %3, %11
  %18 = phi i32 [ %16, %11 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML30throwInvalidCharacterExceptionEjRN11xercesc_2_713MemoryManagerE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 !prof !285 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #18
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #17
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #18
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #17
          to label %5 unwind label %15

5:                                                ; preds = %2
  %6 = zext i32 %0 to i64
  %7 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1026UnsignedLongToHexDOMStringEmRNS_14XalanDOMStringE(i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(36) %4) #17
          to label %8 unwind label %17

8:                                                ; preds = %5
  %9 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 177, ptr noundef nonnull align 8 dereferenceable(36) %7) #17
          to label %10 unwind label %17

10:                                               ; preds = %8
  %11 = call ptr @__cxa_allocate_exception(i64 24) #18
  %12 = invoke noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %3) #17
          to label %13 unwind label %19

13:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_712SAXExceptionC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef %12, ptr noundef nonnull %1) #17
          to label %14 unwind label %19

14:                                               ; preds = %13
  invoke void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_712SAXExceptionE, ptr nonnull @_ZN11xercesc_2_712SAXExceptionD2Ev) #20
          to label %25 unwind label %17

15:                                               ; preds = %2
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %23

17:                                               ; preds = %14, %8, %5
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %21

19:                                               ; preds = %13, %10
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %11) #18
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi { ptr, i32 } [ %18, %17 ], [ %20, %19 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  br label %23

23:                                               ; preds = %21, %15
  %24 = phi { ptr, i32 } [ %22, %21 ], [ %16, %15 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #18
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #18
  resume { ptr, i32 } %24

25:                                               ; preds = %14
  unreachable
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML35throwInvalidUTF16SurrogateExceptionEttRN11xercesc_2_713MemoryManagerE(i16 noundef zeroext %0, i16 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 !prof !285 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #18
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #18
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #17
          to label %7 unwind label %21

7:                                                ; preds = %3
  %8 = zext i16 %0 to i64
  %9 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1026UnsignedLongToHexDOMStringEmRNS_14XalanDOMStringE(i64 noundef %8, ptr noundef nonnull align 8 dereferenceable(36) %4) #17
          to label %10 unwind label %23

10:                                               ; preds = %7
  %11 = zext i16 %1 to i64
  %12 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1026UnsignedLongToHexDOMStringEmRNS_14XalanDOMStringE(i64 noundef %11, ptr noundef nonnull align 8 dereferenceable(36) %5) #17
          to label %13 unwind label %23

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #18
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #17
          to label %14 unwind label %25

14:                                               ; preds = %13
  %15 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36) %6, i32 noundef 144, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5) #17
          to label %16 unwind label %27

16:                                               ; preds = %14
  %17 = call ptr @__cxa_allocate_exception(i64 24) #18
  %18 = invoke noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %6) #17
          to label %19 unwind label %29

19:                                               ; preds = %16
  invoke void @_ZN11xercesc_2_712SAXExceptionC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef %18, ptr noundef nonnull %2) #17
          to label %20 unwind label %29

20:                                               ; preds = %19
  invoke void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTIN11xercesc_2_712SAXExceptionE, ptr nonnull @_ZN11xercesc_2_712SAXExceptionD2Ev) #20
          to label %39 unwind label %27

21:                                               ; preds = %3
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %37

23:                                               ; preds = %10, %7
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %35

25:                                               ; preds = %13
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %33

27:                                               ; preds = %20, %14
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %31

29:                                               ; preds = %19, %16
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %17) #18
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi { ptr, i32 } [ %28, %27 ], [ %30, %29 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %6) #15
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi { ptr, i32 } [ %32, %31 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #18
  br label %35

35:                                               ; preds = %33, %23
  %36 = phi { ptr, i32 } [ %34, %33 ], [ %24, %23 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #15
  br label %37

37:                                               ; preds = %35, %21
  %38 = phi { ptr, i32 } [ %36, %35 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #18
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #18
  resume { ptr, i32 } %38

39:                                               ; preds = %20
  unreachable
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1014FormatterToXML18accumDefaultEscapeEtjPKtjb(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #1 align 2 !prof !285 {
  %7 = load ptr, ptr %0, align 8, !tbaa !305
  %8 = getelementptr inbounds ptr, ptr %7, i64 21
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %1, i1 noundef zeroext %5) #17
  br i1 %10, label %75, label %11

11:                                               ; preds = %6
  %12 = zext i16 %1 to i32
  %13 = and i16 %1, -1024
  %14 = icmp eq i16 %13, -10240
  br i1 %14, label %15, label %34

15:                                               ; preds = %11
  %16 = add i32 %2, 1
  %17 = icmp ult i32 %16, %4
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014FormatterToXML16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML35throwInvalidUTF16SurrogateExceptionEtRN11xercesc_2_713MemoryManagerE(i16 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(8) %19) #17
  unreachable

20:                                               ; preds = %15
  %21 = zext i32 %16 to i64
  %22 = getelementptr inbounds i16, ptr %3, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !309
  %24 = and i16 %23, -1024
  %25 = icmp eq i16 %24, -9216
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014FormatterToXML16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML35throwInvalidUTF16SurrogateExceptionEttRN11xercesc_2_713MemoryManagerE(i16 noundef zeroext %1, i16 noundef zeroext %23, ptr noundef nonnull align 8 dereferenceable(8) %27) #17
  unreachable

28:                                               ; preds = %20
  %29 = zext i16 %23 to i64
  %30 = shl nuw nsw i32 %12, 10
  %31 = add nsw i32 %30, -56613888
  %32 = zext nneg i32 %31 to i64
  %33 = add nuw nsw i64 %32, %29
  tail call void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %33) #17
  br label %75

34:                                               ; preds = %11
  %35 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %36 = load i16, ptr %35, align 8, !tbaa !310
  %37 = icmp ult i16 %36, %1
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 49
  %40 = load i8, ptr %39, align 4, !tbaa !342, !range !303, !noundef !304
  %41 = icmp eq i8 %40, 0
  %42 = icmp eq i16 %1, 8232
  %43 = and i1 %42, %41
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014FormatterToXML16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML30throwInvalidCharacterExceptionEjRN11xercesc_2_713MemoryManagerE(i32 noundef 8232, ptr noundef nonnull align 8 dereferenceable(8) %45) #17
  unreachable

46:                                               ; preds = %38
  %47 = zext i16 %1 to i64
  tail call void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %47) #17
  br label %75

48:                                               ; preds = %34
  %49 = icmp ult i16 %1, 256
  br i1 %49, label %50, label %74

50:                                               ; preds = %48
  %51 = zext nneg i16 %1 to i64
  %52 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 %51
  %53 = load i16, ptr %52, align 2, !tbaa !309
  %54 = icmp eq i16 %53, 83
  br i1 %54, label %55, label %74

55:                                               ; preds = %50
  %56 = icmp ult i16 %1, 32
  br i1 %56, label %57, label %64

57:                                               ; preds = %55
  %58 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 49
  %59 = load i8, ptr %58, align 4, !tbaa !342, !range !303, !noundef !304
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  tail call void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %51) #17
  br label %75

62:                                               ; preds = %57
  %63 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014FormatterToXML16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML30throwInvalidCharacterExceptionEjRN11xercesc_2_713MemoryManagerE(i32 noundef %12, ptr noundef nonnull align 8 dereferenceable(8) %63) #17
  unreachable

64:                                               ; preds = %55
  %65 = icmp eq i16 %1, 133
  br i1 %65, label %66, label %73

66:                                               ; preds = %64
  %67 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 49
  %68 = load i8, ptr %67, align 4, !tbaa !342, !range !303, !noundef !304
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  tail call void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %51) #17
  br label %75

71:                                               ; preds = %66
  %72 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014FormatterToXML16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML30throwInvalidCharacterExceptionEjRN11xercesc_2_713MemoryManagerE(i32 noundef 133, ptr noundef nonnull align 8 dereferenceable(8) %72) #17
  unreachable

73:                                               ; preds = %64
  tail call void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %51) #17
  br label %75

74:                                               ; preds = %50, %48
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %1) #17
  br label %75

75:                                               ; preds = %28, %74, %73, %70, %61, %46, %6
  %76 = phi i32 [ %2, %6 ], [ %16, %28 ], [ %2, %46 ], [ %2, %61 ], [ %2, %70 ], [ %2, %73 ], [ %2, %74 ]
  ret i32 %76
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014FormatterToXML16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) local_unnamed_addr #1 comdat align 2 !prof !285 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(36) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !528 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !529 {
  %2 = load ptr, ptr %0, align 8, !tbaa !358
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML11flushWriterEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1709) %0) local_unnamed_addr #1 align 2 !prof !314 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !330
  %4 = load ptr, ptr %3, align 8, !tbaa !305
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat !prof !530 {
  tail call void @_ZN11xalanc_1_1014XalanDOMString5clearEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMString5clearEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !531 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %3 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %4 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #17
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !378
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !532 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %9, label %5, !prof !533

5:                                                ; preds = %3
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %7 = tail call noundef ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_(ptr noundef %2, ptr noundef %6, ptr noundef %1) #17
  %8 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #17
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8) #17
  br label %9

9:                                                ; preds = %5, %3
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !534 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) #17
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %1) #17
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #17
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !534 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %8, label %4, !prof !535

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %6, %4 ], [ %1, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %6 = add i64 %5, -1
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %4, !prof !536, !llvm.loop !537

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !534 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !456
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) #15
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %1) #15
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #15
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #17
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #17
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !534 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !534 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) local_unnamed_addr #1 align 2 !prof !538 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 37
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  br i1 %3, label %13, label %4, !prof !539

4:                                                ; preds = %1
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  %6 = load i8, ptr %5, align 1, !tbaa !323, !range !303, !noundef !304
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %13, !prof !540

8:                                                ; preds = %4
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 62) #17
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 11
  store i8 0, ptr %9, align 1, !tbaa !313
  %10 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  store i8 1, ptr %10, align 1, !tbaa !323
  %11 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 22
  %12 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9push_backERKb(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 1 dereferenceable(1) %12) #17
  br label %13

13:                                               ; preds = %4, %8, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014FormatterToXML12shouldIndentEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) local_unnamed_addr #0 comdat align 2 !prof !285 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 8
  %3 = load i8, ptr %2, align 4, !tbaa !315, !range !303, !noundef !304
  %4 = icmp ne i8 %3, 0
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  %6 = load i8, ptr %5, align 1, !range !303
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %4, i1 %7, i1 false
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 11
  %11 = load i8, ptr %10, align 1, !tbaa !313, !range !303, !noundef !304
  %12 = icmp eq i8 %11, 0
  br label %13

13:                                               ; preds = %9, %1
  %14 = phi i1 [ false, %1 ], [ %12, %9 ]
  ret i1 %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML6indentEi(ptr noundef nonnull align 8 dereferenceable(1709) %0, i32 noundef %1) local_unnamed_addr #1 align 2 !prof !541 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 9
  %4 = load i8, ptr %3, align 1, !tbaa !325, !range !303, !noundef !304
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6, !prof !542

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1014FormatterToXML13outputLineSepEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) #17
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 8
  %9 = load i8, ptr %8, align 4, !tbaa !315, !range !303, !noundef !304
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11, !prof !542

11:                                               ; preds = %7
  tail call void @_ZN11xalanc_1_1014FormatterToXML10printSpaceEi(ptr noundef nonnull align 8 dereferenceable(1709) %0, i32 noundef %1) #17
  br label %12

12:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML16processAttributeEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 !prof !285 {
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 32) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML9accumNameEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 61) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 34) #17
  %4 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %2) #17
  %5 = load ptr, ptr %0, align 8, !tbaa !305
  %6 = getelementptr inbounds ptr, ptr %5, i64 23
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %2, i32 noundef %4) #17
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 34) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML22openElementForChildrenEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) local_unnamed_addr #1 align 2 !prof !543 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 37
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #18
  store i8 0, ptr %2, align 1, !tbaa !323
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9push_backERKb(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %2) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1014FormatterToXML19childNodesWereAddedEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) local_unnamed_addr #0 align 2 !prof !543 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 37
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  br i1 %3, label %8, label %4, !prof !544

4:                                                ; preds = %1
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  %6 = load i8, ptr %5, align 1, !tbaa !323, !range !303, !noundef !304
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  %7 = icmp ne i8 %6, 0
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i1 [ %7, %4 ], [ false, %1 ]
  ret i1 %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !545 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !353
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !546 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !356
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !353
  %6 = getelementptr i8, ptr %3, i64 %5
  %7 = getelementptr i8, ptr %6, i64 -1
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !547 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !353
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !353
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !356
  %7 = getelementptr inbounds i8, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE7destroyERb(ptr noundef nonnull align 1 dereferenceable(1) %7) #17
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtjS1_j(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat !prof !285 {
  %5 = icmp eq i32 %1, %3
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %0, ptr noundef %2, i32 noundef %1) #17
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi i1 [ %7, %6 ], [ false, %4 ]
  ret i1 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015isXMLWhitespaceEt(i16 noundef zeroext %0) local_unnamed_addr #1 comdat !prof !548 {
  %2 = tail call noundef zeroext i1 @_ZN11xalanc_1_1012XalanXMLChar12isWhitespaceEt(i16 noundef zeroext %0) #17
  ret i1 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML21accumNormalizedPIDataEPKtj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !285 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = zext i32 %2 to i64
  br label %8

7:                                                ; preds = %8, %3
  ret void

8:                                                ; preds = %5, %8
  %9 = phi i64 [ 0, %5 ], [ %12, %8 ]
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !309
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %11) #17
  %12 = add nuw nsw i64 %9, 1
  %13 = icmp eq i64 %12, %6
  br i1 %13, label %7, label %8, !llvm.loop !549
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1012XalanXMLChar12isWhitespaceEt(i16 noundef zeroext %0) local_unnamed_addr #0 comdat align 2 !prof !548 {
  %2 = zext i16 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !509
  %5 = icmp eq i8 %4, 6
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014FormatterToXML12accumContentEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !285 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 43
  %4 = load i64, ptr %3, align 8, !tbaa !346
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 43, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !346
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = and i64 %4, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %7, align 8, !tbaa !305
  %12 = getelementptr i8, ptr %11, i64 %4
  %13 = getelementptr i8, ptr %12, i64 -1
  %14 = load ptr, ptr %13, align 8, !nosanitize !304
  br label %17

15:                                               ; preds = %2
  %16 = inttoptr i64 %4 to ptr
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi ptr [ %14, %10 ], [ %16, %15 ]
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(1709) %7, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014FormatterToXML12accumContentERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat align 2 !prof !285 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 44
  %4 = load i64, ptr %3, align 8, !tbaa !348
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 44, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !348
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = and i64 %4, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %7, align 8, !tbaa !305
  %12 = getelementptr i8, ptr %11, i64 %4
  %13 = getelementptr i8, ptr %12, i64 -1
  %14 = load ptr, ptr %13, align 8, !nosanitize !304
  br label %17

15:                                               ; preds = %2
  %16 = inttoptr i64 %4 to ptr
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi ptr [ %14, %10 ], [ %16, %15 ]
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(1709) %7, ptr noundef nonnull align 8 dereferenceable(36) %1) #17
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1023UnsignedLongToDOMStringEmRNS_14XalanDOMStringE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9push_backERKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #1 comdat align 2 !prof !547 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #17
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !550 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !353
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !354
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !551

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %11 = load ptr, ptr %0, align 8, !tbaa !352
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIbE9constructEPbRKbRN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #17
  %13 = load i64, ptr %4, align 8, !tbaa !353
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !353
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !552
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  %21 = load ptr, ptr %0, align 8, !tbaa !352
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #17
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #17
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIbE9constructEPbRKbRN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !553 {
  %4 = load i8, ptr %1, align 1, !tbaa !323, !range !303, !noundef !304
  store i8 %4, ptr %0, align 1, !tbaa !323
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !409 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !352
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !353
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !554

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #17
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #17
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #17
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #17
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !555

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #17
  store ptr %24, ptr %8, align 8, !tbaa !356
  store i64 %3, ptr %7, align 8, !tbaa !354
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !486 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %3 = load ptr, ptr %0, align 8, !tbaa !352
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !356
  %7 = load ptr, ptr %1, align 8, !tbaa !352
  store ptr %7, ptr %0, align 8, !tbaa !352
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !424
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !356
  store ptr %11, ptr %5, align 8, !tbaa !356
  store ptr %3, ptr %1, align 8, !tbaa !352
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !424
  store <2 x i64> %9, ptr %4, align 8, !tbaa !424
  store <2 x i64> %12, ptr %8, align 8, !tbaa !424
  store ptr %6, ptr %10, align 8, !tbaa !356
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !556 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !556 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE14local_distanceEPKbS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #17
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8, !prof !557

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28, !prof !558

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #17
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16, !prof !559

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !352
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIbE9constructEPbRKbRN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 1 dereferenceable(1) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #17
  %23 = getelementptr inbounds i8, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !353
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !353
  %26 = getelementptr inbounds i8, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !prof !560, !llvm.loop !561

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %32 = load ptr, ptr %0, align 8, !tbaa !352
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #17
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #17
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #17
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #17
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE14local_distanceEPKbS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #17
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %57) #17
  %58 = getelementptr inbounds i8, ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !llvm.loop !562

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %61) #17
  %62 = getelementptr inbounds i8, ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !llvm.loop !563

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKbPbET0_T_S4_S3_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #17
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds i8, ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %72) #17
  %73 = getelementptr inbounds i8, ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !564

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds i8, ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPbS0_ET0_T_S2_S1_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #17
  %78 = tail call noundef ptr @_ZSt4copyIPKbPbET0_T_S4_S3_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #17
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !565 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !356
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !566 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE14local_distanceEPKbS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !556 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKbENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #17
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !567 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !353
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !556 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6, !prof !557

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #17
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !556 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !354
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKbPbET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !285 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKbET_S2_(ptr noundef %0) #17
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKbET_S2_(ptr noundef %1) #17
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKbPbET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #17
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPbS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !285 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPbET_S1_(ptr noundef %0) #17
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPbET_S1_(ptr noundef %1) #17
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPbS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #17
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKbENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !556 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !456
  call void @_ZSt19__iterator_categoryIPKbENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %4 = call noundef i64 @_ZSt10__distanceIPKbENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #17
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKbENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !556 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKbENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !565 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !314 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  %4 = load ptr, ptr %0, align 8, !tbaa !352
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #17
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKbPbET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !285 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !456
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKbET_S2_(ptr noundef %0) #15
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKbET_S2_(ptr noundef %1) #15
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPbET_S1_(ptr noundef %2) #15
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKbPbET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #17
  %9 = call noundef ptr @_ZSt12__niter_wrapIPbET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #17
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKbET_S2_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !285 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPbET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !285 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKbPbET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !285 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKbPbET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKbET_S2_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !285 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPbET_S1_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !285 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKbPbET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !285 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIbEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIbEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !285 {
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
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPbS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !285 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !456
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPbET_S1_(ptr noundef %0) #15
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPbET_S1_(ptr noundef %1) #15
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPbET_S1_(ptr noundef %2) #15
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPbS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #17
  %9 = call noundef ptr @_ZSt12__niter_wrapIPbET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #17
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPbET_S1_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !285 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPbS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !285 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPbS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPbS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !285 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIbEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIbEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !285 {
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
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !566 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !356
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !353
  %6 = getelementptr inbounds i8, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML10printSpaceEi(ptr noundef nonnull align 8 dereferenceable(1709) %0, i32 noundef %1) local_unnamed_addr #1 align 2 !prof !541 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %5, label %4, !prof !568

4:                                                ; preds = %5, %2
  ret void

5:                                                ; preds = %2, %5
  %6 = phi i32 [ %7, %5 ], [ 0, %2 ]
  tail call void @_ZN11xalanc_1_1014FormatterToXML12accumContentEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext 32) #17
  %7 = add nuw nsw i32 %6, 1
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %4, label %5, !prof !401, !llvm.loop !569
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nosync nounwind memory(none) }
attributes #9 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind optsize }
attributes #16 = { builtin nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { noreturn }

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
!36 = !{ptr @_ZN11xalanc_1_1014FormatterToXML11endDocumentEv, ptr @_ZN11xalanc_1_1014FormatterToXML11flushWriterEv, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj, i64 5}
!39 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 2}
!40 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 2}
!41 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!43 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!44 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_107isEmptyERKNS_14XalanDOMStringE, i64 2}
!45 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringaSERKS0_, i64 1}
!46 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1017XalanOutputStream17setOutputEncodingERKNS_14XalanDOMStringE, i64 1}
!47 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_106lengthEPKt, i64 1}
!48 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1024XalanTranscodingServices24getMaximumCharacterValueERKNS_14XalanDOMStringE, i64 1}
!49 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1024XalanTranscodingServices14encodingIsUTF8ERKNS_14XalanDOMStringE, i64 1}
!50 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, i64 1}
!51 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1014XalanDOMString5emptyEv, i64 1}
!52 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014FormatterToXML12initCharsMapEv, i64 1}
!53 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8allocateEm, i64 1}
!54 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 41}
!55 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm, i64 1}
!56 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 64147281}
!57 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8allocateEm, i64 1}
!58 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 3}
!59 = !{ptr @_ZN11xalanc_1_107isEmptyERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString5emptyEv, i64 3312604}
!60 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringaSERKS0_, ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_, i64 41614}
!61 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!62 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, i64 1084346}
!63 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 230527000}
!64 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, i64 230527000}
!65 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5emptyEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 6299974}
!66 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEm, ptr @_ZN11xalanc_1_1033ConstructValueWithNoMemoryManagerItEC2ERN11xercesc_2_713MemoryManagerE, i64 1}
!67 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt, i64 1}
!68 = !{ptr @_ZN11xalanc_1_1014FormatterToXML12accumCharUTFEt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 62663220}
!69 = !{ptr @_ZN11xalanc_1_1014FormatterToXML12accumCharUTFEt, ptr @_ZN11xalanc_1_1014FormatterToXML10flushCharsEv, i64 122390}
!70 = !{ptr @_ZN11xalanc_1_1014FormatterToXML14accumStringUTFEPKt, ptr @_ZN11xalanc_1_1014FormatterToXML12accumCharUTFEt, i64 3361657}
!71 = !{ptr @_ZN11xalanc_1_1014FormatterToXML13accumArrayUTFEPKtjj, ptr @_ZN11xalanc_1_1014FormatterToXML12accumCharUTFEt, i64 53507297}
!72 = !{ptr @_ZN11xalanc_1_1014FormatterToXML10flushCharsEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 122390}
!73 = !{ptr @_ZN11xalanc_1_1014FormatterToXML12initCharsMapEv, ptr @_ZN11xalanc_1_1014FormatterToXML16initAttrCharsMapEv, i64 1}
!74 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 76}
!75 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5beginEv, i64 35}
!76 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv, i64 35}
!77 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE7destroyEPbS4_, i64 35}
!78 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10deallocateEPb, i64 35}
!79 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 6}
!80 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv, i64 2}
!81 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv, i64 2}
!82 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyEPcS4_, i64 2}
!83 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10deallocateEPc, i64 2}
!84 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!85 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!86 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!87 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300390}
!88 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300390}
!89 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 81}
!90 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 83228}
!91 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, i64 41613}
!92 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 83228}
!93 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 13}
!94 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 13}
!95 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 13}
!96 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 82485}
!97 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm, i64 355}
!98 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 82485}
!99 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 40885}
!100 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40885}
!101 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 41600}
!102 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, i64 41600}
!103 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm, i64 19}
!104 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 19}
!105 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 19}
!106 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 19}
!107 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 19}
!108 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 19}
!109 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 19}
!110 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 19}
!111 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm, i64 64551584}
!112 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 64551608}
!113 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 170601494}
!114 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 82509}
!115 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 82509}
!116 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, i64 64729253}
!117 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 82509}
!118 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 311656032}
!119 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, i64 157736530}
!120 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv, i64 155828045}
!121 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 240731574}
!122 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, i64 133170775}
!123 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE, i64 30012996397}
!124 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, i64 22657270}
!125 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 20748786}
!126 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 20748786}
!127 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246298}
!128 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 20748726}
!129 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 20748785}
!130 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614813}
!131 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, i64 1908484}
!132 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_, i64 1}
!133 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!134 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!135 = !{ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, ptr @_ZSt12__miter_baseIPKtET_S2_, i64 3901146}
!136 = !{ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!137 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!138 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 2689195954}
!139 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 1344597977}
!140 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 185895030}
!141 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 156073599}
!142 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, i64 133170778}
!143 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 22}
!144 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 133170778}
!145 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 155828047}
!146 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 248301312}
!147 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 124150655}
!148 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE, i64 124150655}
!149 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 1}
!150 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 1}
!151 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 1}
!152 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 1}
!153 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 185895030}
!154 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 185895030}
!155 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 129103172}
!156 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 64551586}
!157 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 64551586}
!158 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 64551586}
!159 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_baseIPKtET_S2_, i64 3901146}
!160 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_baseIPtET_S1_, i64 1950573}
!161 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!162 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_, i64 1950573}
!163 = !{ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!164 = !{ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_, i64 1950573}
!165 = !{ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 12093723}
!166 = !{ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, i64 66708615}
!167 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!168 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!169 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!170 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!171 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 2169010}
!172 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 1084505}
!173 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, i64 1084505}
!174 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 1179818}
!175 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 1179818}
!176 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 1414337976}
!177 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 304}
!178 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm, i64 1}
!179 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm, i64 150}
!180 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 150}
!181 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE, i64 8205}
!182 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 141227382}
!183 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 64551564}
!184 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE7destroyEPbS4_, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE7destroyERb, i64 73}
!185 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 60}
!186 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 60}
!187 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10endPointerEv, i64 60}
!188 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyEPcS4_, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyERc, i64 36}
!189 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 3}
!190 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 3}
!191 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv, i64 3}
!192 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!193 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev, i64 2}
!194 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, i64 1}
!195 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 1}
!196 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLD2Ev, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 8}
!197 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLD2Ev, ptr @_ZN11xalanc_1_1017FormatterListenerD2Ev, i64 1}
!198 = !{ptr @_ZN11xalanc_1_1014FormatterToXML16initAttrCharsMapEv, ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, i64 2}
!199 = !{ptr @_ZN11xalanc_1_1014FormatterToXML16initAttrCharsMapEv, ptr @_ZN11xalanc_1_106charAtERKNS_14XalanDOMStringEj, i64 9}
!200 = !{ptr @_ZN11xalanc_1_106charAtERKNS_14XalanDOMStringEj, ptr @_ZNK11xalanc_1_1014XalanDOMStringixEj, i64 1705853}
!201 = !{ptr @_ZNK11xalanc_1_1014XalanDOMStringixEj, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 1705853}
!202 = !{ptr @_ZNK11xalanc_1_1014XalanDOMStringixEj, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 1705853}
!203 = !{ptr @_ZN11xalanc_1_1014FormatterToXML13outputLineSepEv, ptr @_ZN11xalanc_1_1014FormatterToXML12accumContentEPKtjj, i64 598381}
!204 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9push_backERKt, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 141071668}
!205 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9push_backERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 70535834}
!206 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!207 = !{ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv, i64 832918}
!208 = !{ptr @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, i64 48076702}
!209 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 96538440}
!210 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 48269220}
!211 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 48269220}
!212 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, i64 48269220}
!213 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 241572884}
!214 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 28158502}
!215 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_, i64 28158502}
!216 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, i64 28158502}
!217 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm, i64 28158502}
!218 = !{ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_, ptr @_ZSt12__miter_baseIPtET_S1_, i64 56317002}
!219 = !{ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_, ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, i64 28158501}
!220 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, i64 1279868488}
!221 = !{ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt12__niter_baseIPtET_S1_, i64 84475503}
!222 = !{ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_, i64 28158501}
!223 = !{ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_, i64 28158501}
!224 = !{ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_, i64 28158501}
!225 = !{ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_, i64 28158501}
!226 = !{ptr @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5emptyEv, i64 1992190}
!227 = !{ptr @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4backEv, i64 2691184}
!228 = !{ptr @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv, ptr @_ZN11xalanc_1_1014FormatterToXML12accumContentEt, i64 698996}
!229 = !{ptr @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9push_backERKb, i64 698996}
!230 = !{ptr @_ZN11xalanc_1_1014FormatterToXML6indentEi, ptr @_ZN11xalanc_1_1014FormatterToXML13outputLineSepEv, i64 464755}
!231 = !{ptr @_ZN11xalanc_1_1014FormatterToXML6indentEi, ptr @_ZN11xalanc_1_1014FormatterToXML10printSpaceEi, i64 464755}
!232 = !{ptr @_ZN11xalanc_1_1014FormatterToXML22openElementForChildrenEv, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9push_backERKb, i64 1048804}
!233 = !{ptr @_ZN11xalanc_1_1014FormatterToXML19childNodesWereAddedEv, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5emptyEv, i64 1048804}
!234 = !{ptr @_ZN11xalanc_1_1014FormatterToXML19childNodesWereAddedEv, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4backEv, i64 1048803}
!235 = !{ptr @_ZN11xalanc_1_1014FormatterToXML19childNodesWereAddedEv, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8pop_backEv, i64 1048803}
!236 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 6781385}
!237 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 9950242}
!238 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE7destroyERb, i64 4975121}
!239 = !{ptr @_ZN11xalanc_1_1015isXMLWhitespaceEt, ptr @_ZN11xalanc_1_1012XalanXMLChar12isWhitespaceEt, i64 1282548}
!240 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9push_backERKb, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 9950242}
!241 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9push_backERKb, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, i64 4975121}
!242 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 9950310}
!243 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10endPointerEv, i64 4975120}
!244 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIbE9constructEPbRKbRN11xercesc_2_713MemoryManagerE, i64 4975120}
!245 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 35}
!246 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, i64 35}
!247 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4swapERS3_, i64 35}
!248 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev, i64 35}
!249 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9local_maxEmm, i64 25}
!250 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 25}
!251 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5beginEv, i64 25}
!252 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5beginEv, i64 25}
!253 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv, i64 25}
!254 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_, i64 25}
!255 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4swapERS3_, i64 25}
!256 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev, i64 25}
!257 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8allocateEm, i64 10}
!258 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 35}
!259 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4swapERS3_, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 120}
!260 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 49}
!261 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE14local_distanceEPKbS5_, i64 25}
!262 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4sizeEv, i64 24}
!263 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv, i64 24}
!264 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE14ensureCapacityEm, i64 23}
!265 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIbE9constructEPbRKbRN11xercesc_2_713MemoryManagerE, i64 67}
!266 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8capacityEv, i64 1}
!267 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, i64 12}
!268 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 59}
!269 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 93}
!270 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10endPointerEv, i64 93}
!271 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE14local_distanceEPKbS5_, ptr @_ZSt8distanceIPKbENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 25}
!272 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 167745}
!273 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE14ensureCapacityEm, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8capacityEv, i64 25}
!274 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm, i64 1}
!275 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10endPointerEv, i64 25}
!276 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE8capacityEv, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 25}
!277 = !{ptr @_ZSt8distanceIPKbENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKbENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 25}
!278 = !{ptr @_ZSt8distanceIPKbENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKbENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 25}
!279 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10invariantsEv, i64 2}
!280 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 1}
!281 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE4swapERS3_, i64 1}
!282 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev, i64 1}
!283 = !{ptr @_ZN11xalanc_1_1014FormatterToXML10printSpaceEi, ptr @_ZN11xalanc_1_1014FormatterToXML12accumContentEt, i64 1}
!284 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!285 = !{!"function_entry_count", i64 0}
!286 = !{!287, !296, i64 1074}
!287 = !{!"_ZTSN11xalanc_1_1014FormatterToXMLE", !288, i64 0, !290, i64 24, !290, i64 32, !295, i64 40, !291, i64 42, !291, i64 554, !296, i64 1066, !296, i64 1067, !296, i64 1068, !296, i64 1069, !296, i64 1070, !296, i64 1071, !296, i64 1072, !296, i64 1073, !296, i64 1074, !296, i64 1075, !297, i64 1080, !297, i64 1120, !297, i64 1160, !300, i64 1200, !300, i64 1204, !301, i64 1208, !297, i64 1240, !296, i64 1280, !296, i64 1281, !296, i64 1282, !296, i64 1283, !297, i64 1288, !297, i64 1328, !297, i64 1368, !297, i64 1408, !298, i64 1448, !300, i64 1480, !302, i64 1488, !301, i64 1520, !291, i64 1552, !291, i64 1568, !291, i64 1584, !291, i64 1600, !291, i64 1616, !291, i64 1632, !291, i64 1648, !291, i64 1664, !291, i64 1680, !290, i64 1696, !300, i64 1704, !296, i64 1708}
!288 = !{!"_ZTSN11xalanc_1_1017FormatterListenerE", !289, i64 0, !290, i64 8, !293, i64 16, !294, i64 20}
!289 = !{!"_ZTSN11xercesc_2_715DocumentHandlerE"}
!290 = !{!"any pointer", !291, i64 0}
!291 = !{!"omnipotent char", !292, i64 0}
!292 = !{!"Simple C++ TBAA"}
!293 = !{!"_ZTSN11xalanc_1_1017FormatterListener7eFormatE", !291, i64 0}
!294 = !{!"_ZTSN11xalanc_1_1017FormatterListener11eXMLVersionE", !291, i64 0}
!295 = !{!"short", !291, i64 0}
!296 = !{!"bool", !291, i64 0}
!297 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !298, i64 0, !300, i64 32}
!298 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !290, i64 0, !299, i64 8, !299, i64 16, !290, i64 24}
!299 = !{!"long", !291, i64 0}
!300 = !{!"int", !291, i64 0}
!301 = !{!"_ZTSN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEE", !290, i64 0, !299, i64 8, !299, i64 16, !290, i64 24}
!302 = !{!"_ZTSN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE", !290, i64 0, !299, i64 8, !299, i64 16, !290, i64 24}
!303 = !{i8 0, i8 2}
!304 = !{}
!305 = !{!306, !306, i64 0}
!306 = !{!"vtable pointer", !292, i64 0}
!307 = !{!287, !296, i64 1073}
!308 = !{!287, !296, i64 1067}
!309 = !{!295, !295, i64 0}
!310 = !{!287, !295, i64 40}
!311 = distinct !{!311, !312}
!312 = !{!"llvm.loop.mustprogress"}
!313 = !{!287, !296, i64 1071}
!314 = !{!"function_entry_count", i64 1}
!315 = !{!287, !296, i64 1068}
!316 = !{!"branch_weights", i32 4, i32 5}
!317 = !{!287, !296, i64 1281}
!318 = !{!"branch_weights", i32 1, i32 2}
!319 = !{!287, !291, i64 1680}
!320 = !{!287, !300, i64 1204}
!321 = !{!287, !300, i64 1200}
!322 = !{!287, !296, i64 1282}
!323 = !{!296, !296, i64 0}
!324 = !{!287, !296, i64 1070}
!325 = !{!287, !296, i64 1069}
!326 = !{!287, !296, i64 1066}
!327 = distinct !{!327, !312}
!328 = !{!287, !296, i64 1283}
!329 = !{!287, !296, i64 1072}
!330 = !{!287, !290, i64 24}
!331 = !{!"branch_weights", i32 5, i32 1}
!332 = !{!"branch_weights", i32 2, i32 24, i32 32, i32 8, i32 4, i32 2}
!333 = distinct !{!333, !312}
!334 = distinct !{!334, !312}
!335 = !{!287, !290, i64 32}
!336 = !{!287, !296, i64 1280}
!337 = !{!287, !300, i64 1480}
!338 = !{!"branch_weights", i32 2, i32 1}
!339 = !{!287, !290, i64 1696}
!340 = !{!287, !300, i64 1704}
!341 = !{!287, !296, i64 1075}
!342 = !{!287, !296, i64 1708}
!343 = !{!287, !291, i64 1552}
!344 = !{!287, !291, i64 1616}
!345 = !{!287, !291, i64 1568}
!346 = !{!287, !291, i64 1632}
!347 = !{!287, !291, i64 1584}
!348 = !{!287, !291, i64 1648}
!349 = !{!287, !291, i64 1600}
!350 = !{!287, !291, i64 1664}
!351 = !{!"function_entry_count", i64 41}
!352 = !{!301, !290, i64 0}
!353 = !{!301, !299, i64 8}
!354 = !{!301, !299, i64 16}
!355 = !{!"branch_weights", i32 42, i32 1}
!356 = !{!301, !290, i64 24}
!357 = !{!"function_entry_count", i64 64147281}
!358 = !{!298, !290, i64 0}
!359 = !{!298, !299, i64 8}
!360 = !{!298, !299, i64 16}
!361 = !{!"branch_weights", i32 64147282, i32 1}
!362 = !{!298, !290, i64 24}
!363 = !{!"function_entry_count", i64 3}
!364 = !{!302, !290, i64 0}
!365 = !{!302, !299, i64 8}
!366 = !{!302, !299, i64 16}
!367 = !{!"branch_weights", i32 4, i32 1}
!368 = !{!302, !290, i64 24}
!369 = !{!"function_entry_count", i64 3312604}
!370 = !{!"function_entry_count", i64 41614}
!371 = !{!"function_entry_count", i64 43398227}
!372 = !{!"function_entry_count", i64 1084346}
!373 = !{!"function_entry_count", i64 21552397}
!374 = !{!"branch_weights", i32 21552398, i32 128560690}
!375 = distinct !{!375, !312}
!376 = !{!"function_entry_count", i64 230527000}
!377 = !{!"function_entry_count", i64 6299974}
!378 = !{!297, !300, i64 32}
!379 = !{!"function_entry_count", i64 62663220}
!380 = !{!"branch_weights", i32 122390, i32 62540832}
!381 = !{!"function_entry_count", i64 1847398}
!382 = !{!"branch_weights", i32 1, i32 1847398}
!383 = !{!"branch_weights", i32 1847398, i32 1514261}
!384 = distinct !{!384, !312}
!385 = !{!"function_entry_count", i64 1785510}
!386 = !{!"branch_weights", i32 1785510, i32 1}
!387 = !{!"branch_weights", i32 1785510, i32 51721817}
!388 = distinct !{!388, !312}
!389 = distinct !{!389, !312}
!390 = distinct !{!390, !312}
!391 = distinct !{!391, !312}
!392 = distinct !{!392, !312}
!393 = !{!"function_entry_count", i64 122390}
!394 = !{!"branch_weights", i32 2, i32 30}
!395 = distinct !{!395, !312}
!396 = !{!"branch_weights", i32 2, i32 2}
!397 = distinct !{!397, !312, !398, !399}
!398 = !{!"llvm.loop.isvectorized", i32 1}
!399 = !{!"llvm.loop.unroll.runtime.disable"}
!400 = !{!"branch_weights", i32 1, i32 1}
!401 = !{!"branch_weights", i32 1, i32 0}
!402 = distinct !{!402, !312}
!403 = !{!"function_entry_count", i64 76}
!404 = !{!"branch_weights", i32 42, i32 36}
!405 = !{!"function_entry_count", i64 6}
!406 = !{!"branch_weights", i32 5, i32 3}
!407 = !{!"function_entry_count", i64 128698679}
!408 = !{!"branch_weights", i32 43398290, i32 85300391}
!409 = !{!"function_entry_count", i64 35}
!410 = !{!"function_entry_count", i64 36800913}
!411 = !{!"function_entry_count", i64 85300390}
!412 = !{!"function_entry_count", i64 6521798503}
!413 = !{!"function_entry_count", i64 2}
!414 = !{!"function_entry_count", i64 126551194}
!415 = !{!"branch_weights", i32 1, i32 41615}
!416 = !{!"function_entry_count", i64 3070433826}
!417 = !{!"branch_weights", i32 13, i32 41603}
!418 = !{!"branch_weights", i32 355, i32 41249}
!419 = !{!"branch_weights", i32 40890, i32 360}
!420 = !{!"function_entry_count", i64 64551608}
!421 = !{!"branch_weights", i32 64551591, i32 19}
!422 = !{!"branch_weights", i32 5, i32 64551587}
!423 = !{!"function_entry_count", i64 85300747}
!424 = !{!299, !299, i64 0}
!425 = !{!"function_entry_count", i64 82509}
!426 = !{!"function_entry_count", i64 348020}
!427 = !{!"branch_weights", i32 64381419, i32 348021}
!428 = distinct !{!428, !312}
!429 = !{!"function_entry_count", i64 155828046}
!430 = !{!"branch_weights", i32 1, i32 155828047}
!431 = !{!"branch_weights", i32 133170778, i32 22657270}
!432 = !{!"branch_weights", i32 1, i32 19024396}
!433 = !{!"branch_weights", i32 19024396, i32 -26420600}
!434 = distinct !{!434, !312}
!435 = !{!"branch_weights", i32 20748787, i32 1908484}
!436 = !{!"branch_weights", i32 1, i32 1908484}
!437 = !{!"branch_weights", i32 1, i32 1908483}
!438 = !{!"branch_weights", i32 1908483, i32 49797857}
!439 = distinct !{!439, !312}
!440 = !{!"branch_weights", i32 1908483, i32 1}
!441 = distinct !{!441, !312}
!442 = distinct !{!442, !312}
!443 = !{!"function_entry_count", i64 568333389}
!444 = !{!"function_entry_count", i64 1950573}
!445 = !{!"function_entry_count", i64 227375739}
!446 = !{!"function_entry_count", i64 18}
!447 = !{!"function_entry_count", i64 1344597977}
!448 = !{!"function_entry_count", i64 30137156670}
!449 = !{!"function_entry_count", i64 185895030}
!450 = !{!"function_entry_count", i64 156073599}
!451 = !{!"function_entry_count", i64 133170778}
!452 = !{!"branch_weights", i32 22, i32 133170758}
!453 = !{!"function_entry_count", i64 155828047}
!454 = !{!"function_entry_count", i64 124150656}
!455 = !{!"branch_weights", i32 124150657, i32 1}
!456 = !{!290, !290, i64 0}
!457 = !{!"function_entry_count", i64 64551586}
!458 = !{!"function_entry_count", i64 825654975}
!459 = !{!"function_entry_count", i64 56317002}
!460 = !{!"function_entry_count", i64 30109074}
!461 = !{!"function_entry_count", i64 86426076}
!462 = !{!"function_entry_count", i64 3901146}
!463 = !{!"branch_weights", i32 28199083, i32 1909993}
!464 = !{!"function_entry_count", i64 12093723}
!465 = !{!"function_entry_count", i64 66708615}
!466 = !{!"function_entry_count", i64 967143541}
!467 = !{!"branch_weights", i32 403628487, i32 563515056}
!468 = !{!"function_entry_count", i64 1083116306}
!469 = !{!"function_entry_count", i64 565220908}
!470 = !{!"function_entry_count", i64 1084505}
!471 = !{!"function_entry_count", i64 1179818}
!472 = !{!"function_entry_count", i64 1414337976}
!473 = !{!474, !295, i64 0}
!474 = !{!"_ZTSN11xalanc_1_1033ConstructValueWithNoMemoryManagerItEE", !295, i64 0}
!475 = !{!"function_entry_count", i64 152}
!476 = !{!"branch_weights", i32 1, i32 153}
!477 = !{!"branch_weights", i32 153, i32 1}
!478 = !{!"branch_weights", i32 1, i32 152}
!479 = !{!"branch_weights", i32 152, i32 8215}
!480 = distinct !{!480, !312}
!481 = !{!"function_entry_count", i64 70613691}
!482 = !{!"branch_weights", i32 64551566, i32 6062127}
!483 = !{!"branch_weights", i32 1, i32 143}
!484 = !{!"branch_weights", i32 143, i32 157}
!485 = distinct !{!485, !312}
!486 = !{!"function_entry_count", i64 60}
!487 = !{!"function_entry_count", i64 4975195}
!488 = !{!"function_entry_count", i64 4975206}
!489 = !{!"branch_weights", i32 1, i32 191}
!490 = !{!"branch_weights", i32 191, i32 3265}
!491 = distinct !{!491, !312}
!492 = !{!"function_entry_count", i64 62786071}
!493 = !{!"function_entry_count", i64 122394}
!494 = !{!"branch_weights", i32 1, i32 12185770}
!495 = !{!"branch_weights", i32 12185770, i32 -193930395}
!496 = distinct !{!496, !312}
!497 = !{!498, !290, i64 8}
!498 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1014FormatterToXMLEE", !290, i64 0, !290, i64 8}
!499 = !{!498, !290, i64 0}
!500 = !{!"branch_weights", i32 191, i32 641}
!501 = distinct !{!501, !312}
!502 = !{!"branch_weights", i32 3, i32 60}
!503 = distinct !{!503, !312}
!504 = !{!"branch_weights", i32 3, i32 3}
!505 = distinct !{!505, !312, !398, !399}
!506 = !{!"function_entry_count", i64 1705853}
!507 = !{!"function_entry_count", i64 75090}
!508 = !{!"function_entry_count", i64 598381}
!509 = !{!291, !291, i64 0}
!510 = !{!"function_entry_count", i64 244780}
!511 = !{!"function_entry_count", i64 62785610}
!512 = !{!513, !300, i64 24}
!513 = !{!"_ZTSN11xalanc_1_1017XalanOutputStreamE", !300, i64 8, !290, i64 16, !300, i64 24, !298, i64 32, !297, i64 64, !296, i64 104, !296, i64 105, !302, i64 112}
!514 = !{!"function_entry_count", i64 70535834}
!515 = !{!"function_entry_count", i64 5794236}
!516 = !{!"function_entry_count", i64 1710420}
!517 = !{!518, !290, i64 8}
!518 = !{!"_ZTSN11xercesc_2_712SAXExceptionE", !290, i64 8, !290, i64 16}
!519 = !{!518, !290, i64 16}
!520 = !{!"function_entry_count", i64 5836268}
!521 = !{!"function_entry_count", i64 558789}
!522 = !{!"branch_weights", i32 158605, i32 400186}
!523 = !{!"function_entry_count", i64 2453164456}
!524 = !{!"branch_weights", i32 1, i32 -1841802839}
!525 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!526 = !{!"branch_weights", i32 408669070, i32 -279908792}
!527 = distinct !{!527, !312}
!528 = !{!"function_entry_count", i64 832918}
!529 = !{!"function_entry_count", i64 833358}
!530 = !{!"function_entry_count", i64 48076702}
!531 = !{!"function_entry_count", i64 48269220}
!532 = !{!"function_entry_count", i64 120786442}
!533 = !{!"branch_weights", i32 92627942, i32 28158502}
!534 = !{!"function_entry_count", i64 28158501}
!535 = !{!"branch_weights", i32 1, i32 28158501}
!536 = !{!"branch_weights", i32 28158501, i32 1251710039}
!537 = distinct !{!537, !312}
!538 = !{!"function_entry_count", i64 1992190}
!539 = !{!"branch_weights", i32 2, i32 1992190}
!540 = !{!"branch_weights", i32 698997, i32 1293194}
!541 = !{!"function_entry_count", i64 464756}
!542 = !{!"branch_weights", i32 1, i32 464757}
!543 = !{!"function_entry_count", i64 1048804}
!544 = !{!"branch_weights", i32 1, i32 1048805}
!545 = !{!"function_entry_count", i64 6781385}
!546 = !{!"function_entry_count", i64 7805345}
!547 = !{!"function_entry_count", i64 4975121}
!548 = !{!"function_entry_count", i64 1282548}
!549 = distinct !{!549, !312}
!550 = !{!"function_entry_count", i64 4975155}
!551 = !{!"branch_weights", i32 4975122, i32 35}
!552 = !{!"branch_weights", i32 10, i32 26}
!553 = !{!"function_entry_count", i64 4975201}
!554 = !{!"branch_weights", i32 11, i32 26}
!555 = !{!"branch_weights", i32 1, i32 11}
!556 = !{!"function_entry_count", i64 25}
!557 = !{!"branch_weights", i32 1, i32 26}
!558 = !{!"branch_weights", i32 26, i32 1}
!559 = !{!"branch_weights", i32 1, i32 207}
!560 = !{!"branch_weights", i32 207, i32 393}
!561 = distinct !{!561, !312}
!562 = distinct !{!562, !312}
!563 = distinct !{!563, !312}
!564 = distinct !{!564, !312}
!565 = !{!"function_entry_count", i64 59}
!566 = !{!"function_entry_count", i64 93}
!567 = !{!"function_entry_count", i64 167745}
!568 = !{!"branch_weights", i32 1, i32 464756}
!569 = distinct !{!569, !312}
