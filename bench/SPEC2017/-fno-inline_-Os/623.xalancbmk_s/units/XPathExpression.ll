; ModuleID = 'XPathExpression.cpp'
source_filename = "XPathExpression.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathExpression" = type { %"class.xalanc_1_10::XalanVector.0", i32, %"class.xalanc_1_10::XalanVector.1", i32, ptr, %"class.xalanc_1_10::XalanVector.2" }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XToken" = type <{ %"class.xalanc_1_10::XObject", ptr, double, i8, [7 x i8] }>
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"class.xalanc_1_10::PrintWriter" = type { %"class.xalanc_1_10::Writer", i8, ptr }
%"class.xalanc_1_10::Writer" = type { ptr }

$_ZNK11xalanc_1_1019XalanXPathException7getTypeEv = comdat any

$_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv = comdat any

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

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE7reserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE7reserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE4swapERS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE14local_distanceEPKiS5_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE14ensureCapacityEm = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIiE9constructEPiRKiRN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE8capacityEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi = comdat any

$_ZSt4copyIPKiPiET0_T_S4_S3_ = comdat any

$_ZSt13copy_backwardIPiS0_ET0_T_S2_S1_ = comdat any

$_ZSt8distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZSt10__distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKiENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10endPointerEv = comdat any

$_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_ = comdat any

$_ZSt12__miter_baseIPKiET_S2_ = comdat any

$_ZSt12__niter_wrapIPiET_RKS1_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPKiET_S2_ = comdat any

$_ZSt12__niter_baseIPiET_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPiET_S1_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIiEEPT_PKS3_S6_S4_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE14local_distanceEPKS1_S6_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE14ensureCapacityEm = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_6XTokenEE9constructEPS1_RKS1_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE8capacityEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_ = comdat any

$_ZSt4copyIPKN11xalanc_1_106XTokenEPS1_ET0_T_S6_S5_ = comdat any

$_ZSt13copy_backwardIPN11xalanc_1_106XTokenES2_ET0_T_S4_S3_ = comdat any

$_ZSt8distanceIPKN11xalanc_1_106XTokenEENSt15iterator_traitsIT_E15difference_typeES5_S5_ = comdat any

$_ZSt10__distanceIPKN11xalanc_1_106XTokenEENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKN11xalanc_1_106XTokenEENSt15iterator_traitsIT_E17iterator_categoryERKS5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv = comdat any

$_ZSt13__copy_move_aILb0EPKN11xalanc_1_106XTokenEPS1_ET1_T0_S6_S5_ = comdat any

$_ZSt12__miter_baseIPKN11xalanc_1_106XTokenEET_S4_ = comdat any

$_ZSt12__niter_wrapIPN11xalanc_1_106XTokenEET_RKS3_S3_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKN11xalanc_1_106XTokenEPS1_ET1_T0_S6_S5_ = comdat any

$_ZSt12__niter_baseIPKN11xalanc_1_106XTokenEET_S4_ = comdat any

$_ZSt12__niter_baseIPN11xalanc_1_106XTokenEET_S3_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKN11xalanc_1_106XTokenEPS1_ET1_T0_S6_S5_ = comdat any

$_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_106XTokenEPS4_EET0_T_S9_S8_ = comdat any

$_ZN11xalanc_1_106XTokenaSERKS0_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPN11xalanc_1_106XTokenES2_ET1_T0_S4_S3_ = comdat any

$_ZSt12__miter_baseIPN11xalanc_1_106XTokenEET_S3_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPN11xalanc_1_106XTokenES2_ET1_T0_S4_S3_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPN11xalanc_1_106XTokenES2_ET1_T0_S4_S3_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_106XTokenES5_EET0_T_S7_S6_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE7destroyEPdS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10deallocateEPd = comdat any

$_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE7destroyERd = comdat any

$_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyEPS1_S5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10deallocateEPS1_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyERS1_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE7destroyEPiS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10deallocateEPi = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE7destroyERi = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5clearEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE5clearEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE12shrinkToSizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE8pop_backEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE12shrinkToSizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE8pop_backEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1015getOpCodeLengthEi = comdat any

$_ZNK11xalanc_1_1015XPathExpression13opCodeMapSizeEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm = comdat any

$_ZN11xalanc_1_1015XPathExpression16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9push_backERKi = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi = comdat any

$_ZSt4fillIPiiEvT_S1_RKT0_ = comdat any

$_ZSt8__fill_aIPiiEvT_S1_RKT0_ = comdat any

$_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_ = comdat any

$_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEi = comdat any

$_ZNK11xalanc_1_1015XPathExpression15opCodeMapLengthEv = comdat any

$_ZNK11xalanc_1_1015XPathExpression14tokenQueueSizeEv = comdat any

$_ZN11xalanc_1_10lsERSoRKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1015XPathExpression8getTokenEi = comdat any

$_ZN11xalanc_1_1012OutputStringERSoRKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1012XalanMemMgrs10getDefaultEv = comdat any

$_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEixEm = comdat any

$_ZN11xalanc_1_1011PrintWriter16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_10lsERSoRNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEixEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE9push_backERKd = comdat any

$_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIdE9constructEPdRKdRN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE4swapERS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6insertEPdPKdS6_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE14local_distanceEPKdS5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE14ensureCapacityEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE8capacityEv = comdat any

$_ZSt4copyIPKdPdET0_T_S4_S3_ = comdat any

$_ZSt13copy_backwardIPdS0_ET0_T_S2_S1_ = comdat any

$_ZSt8distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZSt10__distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKdENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE9doReserveEm = comdat any

$_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_ = comdat any

$_ZSt12__miter_baseIPKdET_S2_ = comdat any

$_ZSt12__niter_wrapIPdET_RKS1_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPKdET_S2_ = comdat any

$_ZSt12__niter_baseIPdET_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPdET_S1_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIdEEPT_PKS3_S6_S4_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10endPointerEv = comdat any

@_ZTVN11xalanc_1_1015XPathExpression24XPathExpressionExceptionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1015XPathExpression24XPathExpressionExceptionE, ptr @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev, ptr @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD0Ev, ptr @_ZNK11xalanc_1_1019XalanXPathException7getTypeEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1015XPathExpression24XPathExpressionExceptionE = dso_local constant [59 x i8] c"N11xalanc_1_1015XPathExpression24XPathExpressionExceptionE\00", align 1
@_ZTIN11xalanc_1_1019XalanXPathExceptionE = external constant ptr
@_ZTIN11xalanc_1_1015XPathExpression24XPathExpressionExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1015XPathExpression24XPathExpressionExceptionE, ptr @_ZTIN11xalanc_1_1019XalanXPathExceptionE }, align 8
@_ZTVN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, ptr @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev, ptr @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionD0Ev, ptr @_ZNK11xalanc_1_1019XalanXPathException7getTypeEv] }, align 8
@_ZTSN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE = dso_local constant [57 x i8] c"N11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE\00", align 1
@_ZTIN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, ptr @_ZTIN11xalanc_1_1015XPathExpression24XPathExpressionExceptionE }, align 8
@_ZTVN11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionE, ptr @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev, ptr @_ZN11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionD0Ev, ptr @_ZNK11xalanc_1_1019XalanXPathException7getTypeEv] }, align 8
@_ZTSN11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionE = dso_local constant [64 x i8] c"N11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionE\00", align 1
@_ZTIN11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionE, ptr @_ZTIN11xalanc_1_1015XPathExpression24XPathExpressionExceptionE }, align 8
@_ZTVN11xalanc_1_1015XPathExpression24InvalidArgumentExceptionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1015XPathExpression24InvalidArgumentExceptionE, ptr @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev, ptr @_ZN11xalanc_1_1015XPathExpression24InvalidArgumentExceptionD0Ev, ptr @_ZNK11xalanc_1_1019XalanXPathException7getTypeEv] }, align 8
@_ZTSN11xalanc_1_1015XPathExpression24InvalidArgumentExceptionE = dso_local constant [59 x i8] c"N11xalanc_1_1015XPathExpression24InvalidArgumentExceptionE\00", align 1
@_ZTIN11xalanc_1_1015XPathExpression24InvalidArgumentExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1015XPathExpression24InvalidArgumentExceptionE, ptr @_ZTIN11xalanc_1_1015XPathExpression24XPathExpressionExceptionE }, align 8
@_ZN11xalanc_1_1015XPathExpression22s_opCodeMapLengthIndexE = dso_local local_unnamed_addr constant i32 1, align 4
@_ZN11xalanc_1_10L13s_emptyStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZN11xalanc_1_10L20theOpCodeLengthArrayE = internal unnamed_addr constant [83 x i32] [i32 1, i32 1, i32 1, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 4, i32 4, i32 2, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 16
@.str = private unnamed_addr constant [3 x i8] c" '\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@.str.2 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@_ZN11xalanc_1_1019XalanXPathException6m_typeE = external constant [0 x i16], align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XPathExpression.cpp, ptr null }]

@_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionC1ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev
@_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionC1EiRNS_14XalanDOMStringE = dso_local unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionC2EiRNS_14XalanDOMStringE
@_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionD2Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev
@_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev
@_ZN11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionC1EiiiRNS_14XalanDOMStringE = dso_local unnamed_addr alias void (ptr, i32, i32, i32, ptr), ptr @_ZN11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionC2EiiiRNS_14XalanDOMStringE
@_ZN11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionD2Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev
@_ZN11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev
@_ZN11xalanc_1_1015XPathExpression24InvalidArgumentExceptionC1EiiRNS_14XalanDOMStringE = dso_local unnamed_addr alias void (ptr, i32, i32, ptr), ptr @_ZN11xalanc_1_1015XPathExpression24InvalidArgumentExceptionC2EiiRNS_14XalanDOMStringE
@_ZN11xalanc_1_1015XPathExpression24InvalidArgumentExceptionD2Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev
@_ZN11xalanc_1_1015XPathExpression24InvalidArgumentExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev
@_ZN11xalanc_1_1015XPathExpressionC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1015XPathExpressionC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1015XPathExpressionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1015XPathExpressionD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1019XalanXPathException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 comdat align 2 !prof !350 {
  ret ptr @_ZN11xalanc_1_1019XalanXPathException6m_typeE
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression24InvalidArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 !prof !350 {
  tail call void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1015XPathExpression24XPathExpressionExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !351
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 !prof !350 {
  tail call void @_ZN11xalanc_1_1019XalanXPathExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #14
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1019XalanXPathExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionC2EiRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #1 align 2 !prof !350 {
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeException18FormatErrorMessageEiRNS_14XalanDOMStringE(i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) #16
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(36) %2) #16
  tail call void @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !351
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeException18FormatErrorMessageEiRNS_14XalanDOMStringE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !350 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #17
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #16
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  %5 = sext i32 %0 to i64
  %6 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(36) %3) #16
          to label %7 unwind label %10

7:                                                ; preds = %2
  %8 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 15, ptr noundef nonnull align 8 dereferenceable(36) %3) #16
          to label %9 unwind label %10

9:                                                ; preds = %7
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  ret ptr %8

10:                                               ; preds = %7, %2
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !354 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !355 {
  %2 = load ptr, ptr %0, align 8, !tbaa !356
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #0 comdat align 2 !prof !361 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !362 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !363
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !364

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #16
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !365
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #16
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !366 {
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #17
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !367 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !368

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #16
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !369, !llvm.loop !370

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !372 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !365
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !373 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !367 {
  %3 = load ptr, ptr %0, align 8, !tbaa !356
  %4 = load ptr, ptr %3, align 8, !tbaa !351
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #0 comdat align 2 !prof !374 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !375 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !365
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !376
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionC2EiiiRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(36) %4) unnamed_addr #1 align 2 !prof !350 {
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015XPathExpression29InvalidArgumentCountException18FormatErrorMessageEiiiRNS_14XalanDOMStringE(i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(36) %4) #16
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(36) %4) #16
  tail call void @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #16
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !351
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015XPathExpression29InvalidArgumentCountException18FormatErrorMessageEiiiRNS_14XalanDOMStringE(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !350 {
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #17
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(36) %3) #16
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %8) #16
  %9 = sext i32 %0 to i64
  %10 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %9, ptr noundef nonnull align 8 dereferenceable(36) %5) #16
          to label %11 unwind label %26

11:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #17
  %12 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(36) %3) #16
          to label %13 unwind label %28

13:                                               ; preds = %11
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %12) #16
          to label %14 unwind label %28

14:                                               ; preds = %13
  %15 = sext i32 %1 to i64
  %16 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %15, ptr noundef nonnull align 8 dereferenceable(36) %6) #16
          to label %17 unwind label %30

17:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #17
  %18 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(36) %3) #16
          to label %19 unwind label %32

19:                                               ; preds = %17
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %18) #16
          to label %20 unwind label %32

20:                                               ; preds = %19
  %21 = sext i32 %2 to i64
  %22 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %21, ptr noundef nonnull align 8 dereferenceable(36) %7) #16
          to label %23 unwind label %34

23:                                               ; preds = %20
  %24 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 16, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %7) #16
          to label %25 unwind label %34

25:                                               ; preds = %23
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %7) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #17
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %6) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #17
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  ret ptr %24

26:                                               ; preds = %4
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %42

28:                                               ; preds = %13, %11
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %40

30:                                               ; preds = %14
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %38

32:                                               ; preds = %19, %17
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %36

34:                                               ; preds = %23, %20
  %35 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %7) #14
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi { ptr, i32 } [ %35, %34 ], [ %33, %32 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #17
  br label %38

38:                                               ; preds = %36, %30
  %39 = phi { ptr, i32 } [ %37, %36 ], [ %31, %30 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %6) #14
  br label %40

40:                                               ; preds = %38, %28
  %41 = phi { ptr, i32 } [ %39, %38 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #17
  br label %42

42:                                               ; preds = %40, %26
  %43 = phi { ptr, i32 } [ %41, %40 ], [ %27, %26 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  resume { ptr, i32 } %43
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression24InvalidArgumentExceptionC2EiiRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) unnamed_addr #1 align 2 !prof !350 {
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015XPathExpression24InvalidArgumentException18FormatErrorMessageEiiRNS_14XalanDOMStringE(i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) #16
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(36) %3) #16
  tail call void @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #16
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1015XPathExpression24InvalidArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !351
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015XPathExpression24InvalidArgumentException18FormatErrorMessageEiiRNS_14XalanDOMStringE(i32 noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !350 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #17
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(36) %2) #16
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %6) #16
  %7 = sext i32 %1 to i64
  %8 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %7, ptr noundef nonnull align 8 dereferenceable(36) %4) #16
          to label %9 unwind label %18

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #17
  %10 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(36) %2) #16
          to label %11 unwind label %20

11:                                               ; preds = %9
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %10) #16
          to label %12 unwind label %20

12:                                               ; preds = %11
  %13 = sext i32 %0 to i64
  %14 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1023UnsignedLongToDOMStringEmRNS_14XalanDOMStringE(i64 noundef %13, ptr noundef nonnull align 8 dereferenceable(36) %5) #16
          to label %15 unwind label %22

15:                                               ; preds = %12
  %16 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 17, ptr noundef nonnull align 8 dereferenceable(36) %5) #16
          to label %17 unwind label %22

17:                                               ; preds = %15
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  ret ptr %16

18:                                               ; preds = %3
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %26

20:                                               ; preds = %11, %9
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %24

22:                                               ; preds = %15, %12
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #14
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi { ptr, i32 } [ %23, %22 ], [ %21, %20 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi { ptr, i32 } [ %25, %24 ], [ %19, %18 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  resume { ptr, i32 } %27
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1023UnsignedLongToDOMStringEmRNS_14XalanDOMStringE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #7 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #16
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L13s_emptyStringE, ptr nonnull @__dso_handle) #17
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpressionC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !377 {
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) #16
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !378
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) #16
          to label %5 unwind label %12

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 3
  store i32 0, ptr %6, align 8, !tbaa !384
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 4
  store ptr @_ZN11xalanc_1_10L13s_emptyStringE, ptr %7, align 8, !tbaa !385
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5
  invoke void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) #16
          to label %9 unwind label %14

9:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 100) #16
          to label %10 unwind label %16

10:                                               ; preds = %9
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 30) #16
          to label %11 unwind label %16

11:                                               ; preds = %10
  ret void

12:                                               ; preds = %2
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %20

14:                                               ; preds = %5
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %10, %9
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #14
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %13, %12 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  resume { ptr, i32 } %21
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 !prof !386 {
  store ptr %1, ptr %0, align 8, !tbaa !387
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !388
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !389
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !390

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #16
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !391
  tail call void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 !prof !377 {
  store ptr %1, ptr %0, align 8, !tbaa !392
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !393
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !394
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !395

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #16
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !396
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 !prof !397 {
  store ptr %1, ptr %0, align 8, !tbaa !398
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !399
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !400
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !401

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #16
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !402
  tail call void @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !377 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !389
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7, !prof !395

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #16
  br label %7

7:                                                ; preds = %6, %2
  tail call void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !377 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !394
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7, !prof !395

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #16
  br label %7

7:                                                ; preds = %6, %2
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !403 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !400
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !404

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE7destroyEPdS4_(ptr noundef %6, ptr noundef %7) #16
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !402
  invoke void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10deallocateEPd(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #16
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !405 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !394
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !406

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyEPS1_S5_(ptr noundef %6, ptr noundef %7) #16
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !396
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10deallocateEPS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #16
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !407 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !389
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !408

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE7destroyEPiS4_(ptr noundef %6, ptr noundef %7) #16
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !391
  invoke void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10deallocateEPi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #16
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #18
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !409 {
  %3 = shl i64 %1, 2
  %4 = load ptr, ptr %0, align 8, !tbaa !387
  %5 = load ptr, ptr %4, align 8, !tbaa !351
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #16
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !410 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !377 {
  %3 = mul i64 %1, 48
  %4 = load ptr, ptr %0, align 8, !tbaa !392
  %5 = load ptr, ptr %4, align 8, !tbaa !351
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #16
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !411 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !412 {
  %3 = shl i64 %1, 3
  %4 = load ptr, ptr %0, align 8, !tbaa !398
  %5 = load ptr, ptr %4, align 8, !tbaa !351
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #16
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !413 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !414 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %4 = load ptr, ptr %0, align 8, !tbaa !387
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #16
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !409 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !387
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !388
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !415

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #16
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #16
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #16
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #16
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #16
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !416

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #16
  store ptr %24, ptr %8, align 8, !tbaa !391
  store i64 %3, ptr %7, align 8, !tbaa !389
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !417 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %3 = load ptr, ptr %0, align 8, !tbaa !387
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !391
  %7 = load ptr, ptr %1, align 8, !tbaa !387
  store ptr %7, ptr %0, align 8, !tbaa !387
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !418
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !391
  store ptr %11, ptr %5, align 8, !tbaa !391
  store ptr %3, ptr %1, align 8, !tbaa !387
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !418
  store <2 x i64> %9, ptr %4, align 8, !tbaa !418
  store <2 x i64> %12, ptr %8, align 8, !tbaa !418
  store ptr %6, ptr %10, align 8, !tbaa !391
  tail call void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !419 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !419 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE14local_distanceEPKiS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #16
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8, !prof !420

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28, !prof !421

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #16
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16, !prof !422

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !387
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIiE9constructEPiRKiRN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 4 dereferenceable(4) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #16
  %23 = getelementptr inbounds i32, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !388
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !388
  %26 = getelementptr inbounds i32, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !prof !423, !llvm.loop !424

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %32 = load ptr, ptr %0, align 8, !tbaa !387
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #16
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  invoke void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #16
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #16
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #16
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE14local_distanceEPKiS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #16
  %50 = icmp ugt i64 %49, %6
  br i1 %50, label %66, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds i32, ptr %2, i64 %49
  %53 = icmp eq ptr %52, %3
  br i1 %53, label %54, label %56

54:                                               ; preds = %56, %51
  %55 = icmp eq ptr %48, %1
  br i1 %55, label %64, label %60

56:                                               ; preds = %51, %56
  %57 = phi ptr [ %58, %56 ], [ %52, %51 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %57) #16
  %58 = getelementptr inbounds i32, ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !llvm.loop !425

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %61) #16
  %62 = getelementptr inbounds i32, ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !llvm.loop !426

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKiPiET0_T_S4_S3_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #16
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds i32, ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %72) #16
  %73 = getelementptr inbounds i32, ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !427

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds i32, ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPiS0_ET0_T_S2_S1_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #16
  %78 = tail call noundef ptr @_ZSt4copyIPKiPiET0_T_S4_S3_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #16
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !428 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !391
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !429 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !391
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !419 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE14local_distanceEPKiS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !430 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #16
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !431 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !388
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !432 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !433 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6, !prof !434

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #16
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIiE9constructEPiRKiRN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !435 {
  %4 = load i32, ptr %1, align 4, !tbaa !436
  store i32 %4, ptr %0, align 4, !tbaa !436
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !437 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !389
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !438 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !388
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !389
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !439

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %11 = load ptr, ptr %0, align 8, !tbaa !387
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIiE9constructEPiRKiRN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #16
  %13 = load i64, ptr %4, align 8, !tbaa !388
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !388
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %21 = load ptr, ptr %0, align 8, !tbaa !387
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #16
  invoke void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %1) #16
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKiPiET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !350 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKiET_S2_(ptr noundef %0) #16
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKiET_S2_(ptr noundef %1) #16
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #16
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPiS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !440 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPiET_S1_(ptr noundef %0) #16
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPiET_S1_(ptr noundef %1) #16
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPiS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #16
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !430 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !441
  call void @_ZSt19__iterator_categoryIPKiENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %4 = call noundef i64 @_ZSt10__distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #16
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !430 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 2
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKiENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !430 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !442 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !391
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !388
  %6 = getelementptr inbounds i32, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !350 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !441
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKiET_S2_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKiET_S2_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %2) #14
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #16
  %9 = call noundef ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #16
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKiET_S2_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !350 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !440 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !350 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKiET_S2_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !350 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !443 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !350 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !350 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %2, ptr align 4 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPiS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !440 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !441
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %2) #14
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPiS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #16
  %9 = call noundef ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #16
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPiET_S1_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !444 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPiS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !440 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPiS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPiS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !440 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIiEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIiEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !440 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 2
  %8 = icmp eq ptr %1, %0
  %9 = sub nsw i64 0, %7
  br i1 %8, label %12, label %10, !prof !445

10:                                               ; preds = %3
  %11 = getelementptr inbounds i32, ptr %2, i64 %9
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %11, ptr align 4 %0, i64 %6, i1 false)
  br label %12

12:                                               ; preds = %3, %10
  %13 = getelementptr inbounds i32, ptr %2, i64 %9
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !419 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !391
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !388
  %6 = getelementptr inbounds i32, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !377 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %4 = load ptr, ptr %0, align 8, !tbaa !392
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #16
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !377 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  store ptr %2, ptr %0, align 8, !tbaa !392
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !393
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !395

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #16
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #16
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #16
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #16
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #16
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !446

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #16
  store ptr %24, ptr %8, align 8, !tbaa !396
  store i64 %3, ptr %7, align 8, !tbaa !394
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !377 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %3 = load ptr, ptr %0, align 8, !tbaa !392
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !396
  %7 = load ptr, ptr %1, align 8, !tbaa !392
  store ptr %7, ptr %0, align 8, !tbaa !392
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !418
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !396
  store ptr %11, ptr %5, align 8, !tbaa !396
  store ptr %3, ptr %1, align 8, !tbaa !392
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !418
  store <2 x i64> %9, ptr %4, align 8, !tbaa !418
  store <2 x i64> %12, ptr %8, align 8, !tbaa !418
  store ptr %6, ptr %10, align 8, !tbaa !396
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !350 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !350 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE14local_distanceEPKS1_S6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #16
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #16
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !392
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_6XTokenEE9constructEPS1_RKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(41) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #16
  %23 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !393
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !393
  %26 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !llvm.loop !447

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %32 = load ptr, ptr %0, align 8, !tbaa !392
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #16
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #16
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #16
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #16
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE14local_distanceEPKS1_S6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #16
  %50 = icmp ugt i64 %49, %6
  br i1 %50, label %66, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %2, i64 %49
  %53 = icmp eq ptr %52, %3
  br i1 %53, label %54, label %56

54:                                               ; preds = %56, %51
  %55 = icmp eq ptr %48, %1
  br i1 %55, label %64, label %60

56:                                               ; preds = %51, %56
  %57 = phi ptr [ %58, %56 ], [ %52, %51 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(41) %57) #16
  %58 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !llvm.loop !448

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(41) %61) #16
  %62 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !llvm.loop !449

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKN11xalanc_1_106XTokenEPS1_ET0_T_S6_S5_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #16
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(41) %72) #16
  %73 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !450

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPN11xalanc_1_106XTokenES2_ET0_T_S4_S3_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #16
  %78 = tail call noundef ptr @_ZSt4copyIPKN11xalanc_1_106XTokenEPS1_ET0_T_S6_S5_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #16
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !451 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !396
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !350 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !396
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !350 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE14local_distanceEPKS1_S6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !452 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKN11xalanc_1_106XTokenEENSt15iterator_traitsIT_E15difference_typeES5_S5_(ptr noundef %1, ptr noundef %2) #16
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !453 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !393
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !454 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !350 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #16
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_6XTokenEE9constructEPS1_RKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(41) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 !prof !455 {
  tail call void @_ZN11xalanc_1_106XTokenC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) #16
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !452 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !394
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !455 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !393
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !394
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !456

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %11 = load ptr, ptr %0, align 8, !tbaa !392
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_6XTokenEE9constructEPS1_RKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(41) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #16
  %13 = load i64, ptr %4, align 8, !tbaa !393
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !393
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %21 = load ptr, ptr %0, align 8, !tbaa !392
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #16
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(41) %1) #16
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKN11xalanc_1_106XTokenEPS1_ET0_T_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !350 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKN11xalanc_1_106XTokenEET_S4_(ptr noundef %0) #16
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKN11xalanc_1_106XTokenEET_S4_(ptr noundef %1) #16
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKN11xalanc_1_106XTokenEPS1_ET1_T0_S6_S5_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #16
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPN11xalanc_1_106XTokenES2_ET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !457 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPN11xalanc_1_106XTokenEET_S3_(ptr noundef %0) #16
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPN11xalanc_1_106XTokenEET_S3_(ptr noundef %1) #16
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPN11xalanc_1_106XTokenES2_ET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #16
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKN11xalanc_1_106XTokenEENSt15iterator_traitsIT_E15difference_typeES5_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !452 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !441
  call void @_ZSt19__iterator_categoryIPKN11xalanc_1_106XTokenEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %4 = call noundef i64 @_ZSt10__distanceIPKN11xalanc_1_106XTokenEENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #16
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKN11xalanc_1_106XTokenEENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !452 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = sdiv exact i64 %5, 48
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKN11xalanc_1_106XTokenEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !452 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !458 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !396
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !393
  %6 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_106XTokenC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef nonnull align 8 dereferenceable(41)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKN11xalanc_1_106XTokenEPS1_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !350 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !441
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKN11xalanc_1_106XTokenEET_S4_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKN11xalanc_1_106XTokenEET_S4_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_106XTokenEET_S3_(ptr noundef %2) #14
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKN11xalanc_1_106XTokenEPS1_ET1_T0_S6_S5_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #16
  %9 = call noundef ptr @_ZSt12__niter_wrapIPN11xalanc_1_106XTokenEET_RKS3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #16
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKN11xalanc_1_106XTokenEET_S4_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !350 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPN11xalanc_1_106XTokenEET_RKS3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !457 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKN11xalanc_1_106XTokenEPS1_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !350 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKN11xalanc_1_106XTokenEPS1_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKN11xalanc_1_106XTokenEET_S4_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !350 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_106XTokenEET_S3_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !419 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKN11xalanc_1_106XTokenEPS1_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !350 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_106XTokenEPS4_EET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_106XTokenEPS4_EET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !350 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = udiv exact i64 %6, 48
  br label %12

10:                                               ; preds = %12, %3
  %11 = phi ptr [ %2, %3 ], [ %18, %12 ]
  ret ptr %11

12:                                               ; preds = %8, %12
  %13 = phi i64 [ %19, %12 ], [ %9, %8 ]
  %14 = phi ptr [ %18, %12 ], [ %2, %8 ]
  %15 = phi ptr [ %17, %12 ], [ %0, %8 ]
  %16 = tail call noundef nonnull align 8 dereferenceable(41) ptr @_ZN11xalanc_1_106XTokenaSERKS0_(ptr noundef nonnull align 8 dereferenceable(41) %14, ptr noundef nonnull align 8 dereferenceable(41) %15) #16
  %17 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %15, i64 1
  %18 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %14, i64 1
  %19 = add nsw i64 %13, -1
  %20 = icmp ugt i64 %13, 1
  br i1 %20, label %12, label %10, !llvm.loop !459
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(41) ptr @_ZN11xalanc_1_106XTokenaSERKS0_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) local_unnamed_addr #0 comdat align 2 !prof !460 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !461
  %5 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !461
  %6 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %1, i64 0, i32 2
  %7 = load double, ptr %6, align 8, !tbaa !468
  %8 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 2
  store double %7, ptr %8, align 8, !tbaa !468
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPN11xalanc_1_106XTokenES2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !457 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !441
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_106XTokenEET_S3_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_106XTokenEET_S3_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_106XTokenEET_S3_(ptr noundef %2) #14
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPN11xalanc_1_106XTokenES2_ET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #16
  %9 = call noundef ptr @_ZSt12__niter_wrapIPN11xalanc_1_106XTokenEET_RKS3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #16
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPN11xalanc_1_106XTokenEET_S3_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !469 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPN11xalanc_1_106XTokenES2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !457 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPN11xalanc_1_106XTokenES2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPN11xalanc_1_106XTokenES2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !457 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_106XTokenES5_EET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_106XTokenES5_EET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !457 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %19, !prof !470

8:                                                ; preds = %3
  %9 = udiv exact i64 %6, 48
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ %17, %10 ], [ %9, %8 ]
  %12 = phi ptr [ %15, %10 ], [ %2, %8 ]
  %13 = phi ptr [ %14, %10 ], [ %1, %8 ]
  %14 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %13, i64 -1
  %15 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %12, i64 -1
  %16 = tail call noundef nonnull align 8 dereferenceable(41) ptr @_ZN11xalanc_1_106XTokenaSERKS0_(ptr noundef nonnull align 8 dereferenceable(41) %15, ptr noundef nonnull align 8 dereferenceable(41) %14) #16
  %17 = add nsw i64 %11, -1
  %18 = icmp ugt i64 %11, 1
  br i1 %18, label %10, label %19, !prof !471, !llvm.loop !472

19:                                               ; preds = %10, %3
  %20 = phi ptr [ %2, %3 ], [ %15, %10 ]
  ret ptr %20
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !350 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !396
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !393
  %6 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE7destroyEPdS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !412 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !473

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE7destroyERd(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  %6 = getelementptr inbounds double, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !474, !llvm.loop !475

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !476 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !402
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !476 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10deallocateEPd(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !412 {
  %3 = load ptr, ptr %0, align 8, !tbaa !398
  %4 = load ptr, ptr %3, align 8, !tbaa !351
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE7destroyERd(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !477 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !478 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !402
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !399
  %6 = getelementptr inbounds double, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyEPS1_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !377 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !479

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyERS1_(ptr noundef nonnull align 8 dereferenceable(41) %5) #16
  %6 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !480, !llvm.loop !481

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10deallocateEPS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !377 {
  %3 = load ptr, ptr %0, align 8, !tbaa !392
  %4 = load ptr, ptr %3, align 8, !tbaa !351
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyERS1_(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #0 comdat align 2 !prof !455 {
  %2 = load ptr, ptr %0, align 8, !tbaa !351
  %3 = load ptr, ptr %2, align 8
  tail call void %3(ptr noundef nonnull align 8 dereferenceable(41) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE7destroyEPiS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !409 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !482

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE7destroyERi(ptr noundef nonnull align 4 dereferenceable(4) %5) #16
  %6 = getelementptr inbounds i32, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !483, !llvm.loop !484

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10deallocateEPi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !409 {
  %3 = load ptr, ptr %0, align 8, !tbaa !387
  %4 = load ptr, ptr %3, align 8, !tbaa !351
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE7destroyERi(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 comdat align 2 !prof !435 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpressionD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !377 {
  invoke void @_ZN11xalanc_1_1015XPathExpression5resetEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #16
          to label %2 unwind label %5

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5
  tail call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #18
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression5resetEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #1 align 2 !prof !405 {
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !485 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !388
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5, !prof !486

5:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #16
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !405 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !393
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5, !prof !406

5:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #16
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !377 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %5 = load i64, ptr %3, align 8, !tbaa !388
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !prof !487, !llvm.loop !488

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !438 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !388
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !388
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !391
  %7 = getelementptr inbounds i32, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE7destroyERi(ptr noundef nonnull align 4 dereferenceable(4) %7) #16
  tail call void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !377 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %5 = load i64, ptr %3, align 8, !tbaa !393
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !prof !489, !llvm.loop !490

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !455 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !393
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !393
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !396
  %7 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyERS1_(ptr noundef nonnull align 8 dereferenceable(41) %7) #16
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression6shrinkEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #1 align 2 !prof !419 {
  %2 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %4 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %5 = icmp ugt i64 %3, %4
  br i1 %5, label %6, label %8, !prof !421

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #17
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 0) #16
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !491 {
  %2 = load ptr, ptr %0, align 8, !tbaa !387
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1015XPathExpression24getOpCodeLengthFromOpMapEPKiRN11xercesc_2_713MemoryManagerE(ptr nocapture noundef nonnull readnone align 8 dereferenceable(120) %0, ptr nocapture noundef readonly %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !350 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = load i32, ptr %1, align 4, !tbaa !436
  %6 = tail call noundef i32 @_ZN11xalanc_1_1015getOpCodeLengthEi(i32 noundef %5) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #17
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  %9 = call ptr @__cxa_allocate_exception(i64 112) #17
  invoke void @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionC2EiRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %9, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(36) %4) #16
          to label %10 unwind label %11

10:                                               ; preds = %8
  invoke void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, ptr nonnull @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev) #19
          to label %24 unwind label %13

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %9) #17
  br label %15

13:                                               ; preds = %10
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi { ptr, i32 } [ %14, %13 ], [ %12, %11 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  resume { ptr, i32 } %16

17:                                               ; preds = %3
  %18 = icmp sgt i32 %6, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = getelementptr inbounds i32, ptr %1, i64 1
  %21 = load i32, ptr %20, align 4, !tbaa !436
  br label %22

22:                                               ; preds = %17, %19
  %23 = phi i32 [ %21, %19 ], [ 0, %17 ]
  ret i32 %23

24:                                               ; preds = %10
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_1015getOpCodeLengthEi(i32 noundef %0) local_unnamed_addr #0 comdat !prof !492 {
  %2 = add i32 %0, -80
  %3 = icmp ult i32 %2, -83
  br i1 %3, label %9, label %4, !prof !493

4:                                                ; preds = %1
  %5 = add nsw i32 %0, 3
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds [83 x i32], ptr @_ZN11xalanc_1_10L20theOpCodeLengthArrayE, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !436
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i32 [ %8, %4 ], [ 0, %1 ]
  ret i32 %10
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1015XPathExpression24getOpCodeLengthFromOpMapEiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !350 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression13opCodeMapSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #16
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %17, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #17
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  %9 = call ptr @__cxa_allocate_exception(i64 112) #17
  invoke void @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionC2EiRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %9, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(36) %4) #16
          to label %10 unwind label %11

10:                                               ; preds = %8
  invoke void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, ptr nonnull @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev) #19
          to label %43 unwind label %13

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %9) #17
  br label %15

13:                                               ; preds = %10
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi { ptr, i32 } [ %14, %13 ], [ %12, %11 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  br label %41

17:                                               ; preds = %3
  %18 = sext i32 %1 to i64
  %19 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %18) #16
  %20 = load i32, ptr %19, align 4, !tbaa !436
  %21 = tail call noundef i32 @_ZN11xalanc_1_1015getOpCodeLengthEi(i32 noundef %20) #16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #17
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  %24 = call ptr @__cxa_allocate_exception(i64 112) #17
  invoke void @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionC2EiRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %24, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(36) %5) #16
          to label %25 unwind label %26

25:                                               ; preds = %23
  invoke void @__cxa_throw(ptr nonnull %24, ptr nonnull @_ZTIN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, ptr nonnull @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev) #19
          to label %43 unwind label %28

26:                                               ; preds = %23
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %24) #17
  br label %30

28:                                               ; preds = %25
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi { ptr, i32 } [ %29, %28 ], [ %27, %26 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  br label %41

32:                                               ; preds = %17
  %33 = icmp sgt i32 %21, 1
  br i1 %33, label %34, label %39

34:                                               ; preds = %32
  %35 = add nsw i32 %1, 1
  %36 = sext i32 %35 to i64
  %37 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %36) #16
  %38 = load i32, ptr %37, align 4, !tbaa !436
  br label %39

39:                                               ; preds = %32, %34
  %40 = phi i32 [ %38, %34 ], [ 0, %32 ]
  ret i32 %40

41:                                               ; preds = %30, %15
  %42 = phi { ptr, i32 } [ %16, %15 ], [ %31, %30 ]
  resume { ptr, i32 } %42

43:                                               ; preds = %25, %10
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1015XPathExpression13opCodeMapSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 comdat align 2 !prof !494 {
  %2 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !495 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !391
  %5 = getelementptr inbounds i32, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression13setOpCodeArgsENS0_8eOpCodesEiRKNS_11XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !496 {
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = tail call noundef i32 @_ZN11xalanc_1_1015getOpCodeLengthEi(i32 noundef %1) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !497

10:                                               ; preds = %4
  %11 = sext i32 %2 to i64
  %12 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %11) #16
  %13 = load i32, ptr %12, align 4, !tbaa !436
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %25, label %15, !prof !498

15:                                               ; preds = %10, %4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #17
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1015XPathExpression16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #16
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %16) #16
  %17 = call ptr @__cxa_allocate_exception(i64 112) #17
  invoke void @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionC2EiRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %17, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %5) #16
          to label %18 unwind label %19

18:                                               ; preds = %15
  invoke void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTIN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, ptr nonnull @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev) #19
          to label %74 unwind label %21

19:                                               ; preds = %15
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %17) #17
  br label %23

21:                                               ; preds = %18
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi { ptr, i32 } [ %22, %21 ], [ %20, %19 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  br label %72

25:                                               ; preds = %10
  %26 = add i32 %8, -2
  %27 = sext i32 %26 to i64
  %28 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  %29 = icmp eq i64 %28, %27
  br i1 %29, label %30, label %35, !prof !498

30:                                               ; preds = %25
  %31 = icmp sgt i32 %8, 2
  br i1 %31, label %32, label %45, !prof !499

32:                                               ; preds = %30
  %33 = add i32 %2, 2
  %34 = zext nneg i32 %26 to i64
  br label %46

35:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #17
  %36 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1015XPathExpression16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #16
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %36) #16
  %37 = call ptr @__cxa_allocate_exception(i64 112) #17
  invoke void @_ZN11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionC2EiiiRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %37, i32 noundef %1, i32 noundef %8, i32 noundef %26, ptr noundef nonnull align 8 dereferenceable(36) %6) #16
          to label %38 unwind label %39

38:                                               ; preds = %35
  invoke void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTIN11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionE, ptr nonnull @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev) #19
          to label %74 unwind label %41

39:                                               ; preds = %35
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %37) #17
  br label %43

41:                                               ; preds = %38
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi { ptr, i32 } [ %42, %41 ], [ %40, %39 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %6) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #17
  br label %72

45:                                               ; preds = %63, %30
  ret void

46:                                               ; preds = %32, %63
  %47 = phi i64 [ 0, %32 ], [ %70, %63 ]
  %48 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %47) #16
  %49 = load i32, ptr %48, align 4, !tbaa !436
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %63, !prof !500

51:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #17
  %52 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1015XPathExpression16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #16
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %52) #16
  %53 = call ptr @__cxa_allocate_exception(i64 112) #17
  %54 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %47) #16
  %55 = load i32, ptr %54, align 4, !tbaa !436
  invoke void @_ZN11xalanc_1_1015XPathExpression24InvalidArgumentExceptionC2EiiRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %53, i32 noundef %1, i32 noundef %55, ptr noundef nonnull align 8 dereferenceable(36) %7) #16
          to label %56 unwind label %57

56:                                               ; preds = %51
  invoke void @__cxa_throw(ptr nonnull %53, ptr nonnull @_ZTIN11xalanc_1_1015XPathExpression24InvalidArgumentExceptionE, ptr nonnull @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev) #19
          to label %74 unwind label %59

57:                                               ; preds = %51
  %58 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %53) #17
  br label %61

59:                                               ; preds = %56
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi { ptr, i32 } [ %60, %59 ], [ %58, %57 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %7) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #17
  br label %72

63:                                               ; preds = %46
  %64 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %47) #16
  %65 = load i32, ptr %64, align 4, !tbaa !436
  %66 = trunc i64 %47 to i32
  %67 = add i32 %33, %66
  %68 = sext i32 %67 to i64
  %69 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %68) #16
  store i32 %65, ptr %69, align 4, !tbaa !436
  %70 = add nuw nsw i64 %47, 1
  %71 = icmp eq i64 %70, %34
  br i1 %71, label %45, label %46, !prof !501, !llvm.loop !502

72:                                               ; preds = %43, %61, %23
  %73 = phi { ptr, i32 } [ %24, %23 ], [ %44, %43 ], [ %62, %61 ]
  resume { ptr, i32 } %73

74:                                               ; preds = %56, %38, %18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !503 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !391
  %5 = getelementptr inbounds i32, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1015XPathExpression16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 comdat align 2 !prof !504 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !505 {
  %3 = alloca i32, align 4
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  %7 = tail call noundef i32 @_ZN11xalanc_1_1015getOpCodeLengthEi(i32 noundef %1) #16
  store i32 %7, ptr %3, align 4, !tbaa !436
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %19, !prof !506

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #17
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1015XPathExpression16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #16
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %10) #16
  %11 = call ptr @__cxa_allocate_exception(i64 112) #17
  invoke void @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionC2EiRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %11, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %4) #16
          to label %12 unwind label %13

12:                                               ; preds = %9
  invoke void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, ptr nonnull @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev) #19
          to label %42 unwind label %15

13:                                               ; preds = %9
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %11) #17
  br label %17

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi { ptr, i32 } [ %16, %15 ], [ %14, %13 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  resume { ptr, i32 } %18

19:                                               ; preds = %2
  %20 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression13opCodeMapSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #16
  %21 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 1
  store i32 %20, ptr %21, align 8, !tbaa !378
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 %1, ptr %5, align 4, !tbaa !436
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  %22 = icmp sgt i32 %7, 1
  br i1 %22, label %23, label %31, !prof !507

23:                                               ; preds = %19
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %3) #16
  %24 = load i32, ptr %3, align 4, !tbaa !436
  %25 = icmp sgt i32 %24, 2
  br i1 %25, label %26, label %31, !prof !508

26:                                               ; preds = %23, %26
  %27 = phi i32 [ %28, %26 ], [ 2, %23 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store i32 -1, ptr %6, align 4, !tbaa !436
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  %28 = add nuw nsw i32 %27, 1
  %29 = load i32, ptr %3, align 4, !tbaa !436
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %26, label %31, !prof !509, !llvm.loop !510

31:                                               ; preds = %26, %23, %19
  %32 = phi i32 [ %24, %23 ], [ %7, %19 ], [ %29, %26 ]
  %33 = load i32, ptr %21, align 8, !tbaa !378
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35, !prof !511

35:                                               ; preds = %31
  %36 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1) #16
  %37 = load i32, ptr %36, align 4, !tbaa !436
  %38 = add nsw i32 %37, %32
  store i32 %38, ptr %36, align 4, !tbaa !436
  %39 = load i32, ptr %21, align 8, !tbaa !378
  br label %40

40:                                               ; preds = %31, %35
  %41 = phi i32 [ 0, %31 ], [ %39, %35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret i32 %41

42:                                               ; preds = %12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 !prof !512 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #16
  tail call void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression13replaceOpCodeEiNS0_8eOpCodesES1_(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !513 {
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression13opCodeMapSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #16
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %8, label %17, !prof !514

8:                                                ; preds = %4
  %9 = sext i32 %1 to i64
  %10 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %9) #16
  %11 = load i32, ptr %10, align 4, !tbaa !436
  %12 = icmp eq i32 %11, %2
  br i1 %12, label %13, label %17, !prof !514

13:                                               ; preds = %8
  %14 = tail call noundef i32 @_ZN11xalanc_1_1015getOpCodeLengthEi(i32 noundef %2) #16
  %15 = tail call noundef i32 @_ZN11xalanc_1_1015getOpCodeLengthEi(i32 noundef %3) #16
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %27, label %17, !prof !514

17:                                               ; preds = %13, %8, %4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #17
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1015XPathExpression16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #16
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %18) #16
  %19 = call ptr @__cxa_allocate_exception(i64 112) #17
  invoke void @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionC2EiRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %19, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(36) %5) #16
          to label %20 unwind label %21

20:                                               ; preds = %17
  invoke void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, ptr nonnull @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev) #19
          to label %29 unwind label %23

21:                                               ; preds = %17
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %19) #17
  br label %25

23:                                               ; preds = %20
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi { ptr, i32 } [ %24, %23 ], [ %22, %21 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  resume { ptr, i32 } %26

27:                                               ; preds = %13
  %28 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %9) #16
  store i32 %3, ptr %28, align 4, !tbaa !436
  ret void

29:                                               ; preds = %20
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1015XPathExpression12insertOpCodeENS0_8eOpCodesEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !440 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca i32, align 4
  %6 = tail call noundef i32 @_ZN11xalanc_1_1015getOpCodeLengthEi(i32 noundef %1) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %18, !prof !445

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #17
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1015XPathExpression16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #16
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %9) #16
  %10 = call ptr @__cxa_allocate_exception(i64 112) #17
  invoke void @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionC2EiRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %10, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %4) #16
          to label %11 unwind label %12

11:                                               ; preds = %8
  invoke void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, ptr nonnull @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev) #19
          to label %28 unwind label %14

12:                                               ; preds = %8
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %10) #17
  br label %16

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  resume { ptr, i32 } %17

18:                                               ; preds = %3
  %19 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %20 = sext i32 %2 to i64
  %21 = getelementptr inbounds i32, ptr %19, i64 %20
  %22 = sext i32 %6 to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 -1, ptr %5, align 4, !tbaa !436
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %21, i64 noundef %22, ptr noundef nonnull align 4 dereferenceable(4) %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  %23 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 1
  store i32 %2, ptr %23, align 8, !tbaa !378
  %24 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %20) #16
  store i32 %1, ptr %24, align 4, !tbaa !436
  %25 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1) #16
  %26 = load i32, ptr %25, align 4, !tbaa !436
  %27 = add nsw i32 %26, %6
  store i32 %27, ptr %25, align 4, !tbaa !436
  ret i32 %6

28:                                               ; preds = %11
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !515 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %6 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %7 = add i64 %6, %2
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %25, !prof !516

10:                                               ; preds = %4
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %7) #16
  %12 = icmp eq i64 %2, 0
  br i1 %12, label %76, label %13, !prof !517

13:                                               ; preds = %10
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi ptr [ %11, %13 ], [ %20, %15 ]
  %17 = phi i64 [ 0, %13 ], [ %23, %15 ]
  %18 = load ptr, ptr %0, align 8, !tbaa !387
  %19 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIiE9constructEPiRKiRN11xercesc_2_713MemoryManagerE(ptr noundef %16, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %18) #16
  %20 = getelementptr inbounds i32, ptr %16, i64 1
  %21 = load i64, ptr %14, align 8, !tbaa !388
  %22 = add i64 %21, 1
  store i64 %22, ptr %14, align 8, !tbaa !388
  %23 = add nuw i64 %17, 1
  %24 = icmp eq i64 %23, %2
  br i1 %24, label %76, label %15, !prof !501, !llvm.loop !518

25:                                               ; preds = %4
  %26 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %27 = icmp ugt i64 %7, %26
  br i1 %27, label %28, label %44, !prof !445

28:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %29 = load ptr, ptr %0, align 8, !tbaa !387
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %29, i64 noundef %7) #16
  %30 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
          to label %31 unwind label %42

31:                                               ; preds = %28
  %32 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  invoke void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %30, ptr noundef %32, ptr noundef %1) #16
          to label %33 unwind label %42

33:                                               ; preds = %31
  %34 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
          to label %35 unwind label %42

35:                                               ; preds = %33
  invoke void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %34, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #16
          to label %36 unwind label %42

36:                                               ; preds = %35
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
          to label %38 unwind label %42

38:                                               ; preds = %36
  %39 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
          to label %40 unwind label %42

40:                                               ; preds = %38
  invoke void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %1, ptr noundef %39) #16
          to label %41 unwind label %42

41:                                               ; preds = %40
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %76

42:                                               ; preds = %40, %38, %36, %35, %33, %31, %28
  %43 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %43

44:                                               ; preds = %25
  %45 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %46 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE14local_distanceEPKiS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %45) #16
  %47 = icmp ugt i64 %46, %2
  br i1 %47, label %63, label %48, !prof !519

48:                                               ; preds = %44
  %49 = sub i64 %2, %46
  %50 = icmp eq i64 %46, %2
  br i1 %50, label %51, label %53

51:                                               ; preds = %53, %48
  %52 = icmp eq ptr %45, %1
  br i1 %52, label %61, label %57

53:                                               ; preds = %48, %53
  %54 = phi i64 [ %55, %53 ], [ 0, %48 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %3) #16
  %55 = add nuw i64 %54, 1
  %56 = icmp eq i64 %55, %49
  br i1 %56, label %51, label %53, !llvm.loop !520

57:                                               ; preds = %51, %57
  %58 = phi ptr [ %59, %57 ], [ %1, %51 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %58) #16
  %59 = getelementptr inbounds i32, ptr %58, i64 1
  %60 = icmp eq ptr %59, %45
  br i1 %60, label %61, label %57, !llvm.loop !521

61:                                               ; preds = %57, %51
  %62 = getelementptr inbounds i32, ptr %1, i64 %46
  tail call void @_ZSt4fillIPiiEvT_S1_RKT0_(ptr noundef %1, ptr noundef %62, ptr noundef nonnull align 4 dereferenceable(4) %3) #16
  br label %76

63:                                               ; preds = %44
  %64 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %65 = sub i64 0, %2
  %66 = getelementptr inbounds i32, ptr %64, i64 %65
  %67 = icmp eq ptr %66, %45
  br i1 %67, label %72, label %68, !prof !522

68:                                               ; preds = %63, %68
  %69 = phi ptr [ %70, %68 ], [ %66, %63 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %69) #16
  %70 = getelementptr inbounds i32, ptr %69, i64 1
  %71 = icmp eq ptr %70, %45
  br i1 %71, label %72, label %68, !prof !523, !llvm.loop !524

72:                                               ; preds = %68, %63
  %73 = getelementptr inbounds i32, ptr %45, i64 %65
  %74 = tail call noundef ptr @_ZSt13copy_backwardIPiS0_ET0_T_S2_S1_(ptr noundef %1, ptr noundef %73, ptr noundef %45) #16
  %75 = getelementptr inbounds i32, ptr %1, i64 %2
  tail call void @_ZSt4fillIPiiEvT_S1_RKT0_(ptr noundef %1, ptr noundef %75, ptr noundef nonnull align 4 dereferenceable(4) %3) #16
  br label %76

76:                                               ; preds = %15, %10, %61, %72, %41
  call void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4fillIPiiEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat !prof !440 {
  tail call void @_ZSt8__fill_aIPiiEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIPiiEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat !prof !440 {
  tail call void @_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat !prof !440 {
  %4 = load i32, ptr %2, align 4, !tbaa !436
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %10, label %6, !prof !522

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  store i32 %4, ptr %7, align 4, !tbaa !436
  %8 = getelementptr inbounds i32, ptr %7, i64 1
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %6, !prof !523, !llvm.loop !525

10:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression25updateShiftedOpCodeLengthEiii(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !350 {
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = tail call noundef i32 @_ZN11xalanc_1_1015getOpCodeLengthEi(i32 noundef %1) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = sext i32 %3 to i64
  %11 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #16
  %12 = load i32, ptr %11, align 4, !tbaa !436
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %24, label %14

14:                                               ; preds = %9, %4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #17
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1015XPathExpression16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #16
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %15) #16
  %16 = call ptr @__cxa_allocate_exception(i64 112) #17
  invoke void @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionC2EiRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %16, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %5) #16
          to label %17 unwind label %18

17:                                               ; preds = %14
  invoke void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTIN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, ptr nonnull @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev) #19
          to label %52 unwind label %20

18:                                               ; preds = %14
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %16) #17
  br label %22

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi { ptr, i32 } [ %21, %20 ], [ %19, %18 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  br label %50

24:                                               ; preds = %9
  %25 = add nsw i32 %3, 1
  %26 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression13opCodeMapSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #16
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #17
  %29 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1015XPathExpression16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #16
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %29) #16
  %30 = call ptr @__cxa_allocate_exception(i64 112) #17
  invoke void @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionC2EiRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %30, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %6) #16
          to label %31 unwind label %32

31:                                               ; preds = %28
  invoke void @__cxa_throw(ptr nonnull %30, ptr nonnull @_ZTIN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, ptr nonnull @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev) #19
          to label %52 unwind label %34

32:                                               ; preds = %28
  %33 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %30) #17
  br label %36

34:                                               ; preds = %31
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi { ptr, i32 } [ %35, %34 ], [ %33, %32 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %6) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #17
  br label %50

38:                                               ; preds = %24
  %39 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %3) #16
  %40 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression13opCodeMapSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #16
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1015XPathExpression16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #16
  %44 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression24getOpCodeLengthFromOpMapEiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %39, ptr noundef nonnull align 8 dereferenceable(8) %43) #16
  %45 = sext i32 %25 to i64
  %46 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %45) #16
  %47 = load i32, ptr %46, align 4, !tbaa !436
  %48 = add nsw i32 %47, %44
  store i32 %48, ptr %46, align 4, !tbaa !436
  br label %49

49:                                               ; preds = %42, %38
  ret void

50:                                               ; preds = %36, %22
  %51 = phi { ptr, i32 } [ %23, %22 ], [ %37, %36 ]
  resume { ptr, i32 } %51

52:                                               ; preds = %31, %17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1015XPathExpression21getNextOpCodePositionEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !350 {
  %3 = add nsw i32 %1, 1
  %4 = sext i32 %3 to i64
  %5 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %4) #16
  %6 = load i32, ptr %5, align 4, !tbaa !436
  %7 = add nsw i32 %6, %1
  ret i32 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !526 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = tail call noundef i32 @_ZN11xalanc_1_1015getOpCodeLengthEi(i32 noundef %1) #16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7, !prof !527

7:                                                ; preds = %3
  %8 = sext i32 %2 to i64
  %9 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8) #16
  %10 = load i32, ptr %9, align 4, !tbaa !436
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %22, label %12, !prof !528

12:                                               ; preds = %7, %3
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #17
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1015XPathExpression16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #16
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %13) #16
  %14 = call ptr @__cxa_allocate_exception(i64 112) #17
  invoke void @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionC2EiRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %14, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %4) #16
          to label %15 unwind label %16

15:                                               ; preds = %12
  invoke void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, ptr nonnull @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev) #19
          to label %28 unwind label %18

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %14) #17
  br label %20

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  resume { ptr, i32 } %21

22:                                               ; preds = %7
  %23 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression15opCodeMapLengthEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #16
  %24 = sub nsw i32 %23, %2
  %25 = add nsw i32 %2, 1
  %26 = sext i32 %25 to i64
  %27 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %26) #16
  store i32 %24, ptr %27, align 4, !tbaa !436
  ret void

28:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1015XPathExpression15opCodeMapLengthEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 comdat align 2 !prof !529 {
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression13opCodeMapSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #16
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %4, label %7, !prof !530

4:                                                ; preds = %1
  %5 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1) #16
  %6 = load i32, ptr %5, align 4, !tbaa !436
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi i32 [ %6, %4 ], [ %2, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1015XPathExpression16isNodeTestOpCodeEi(i32 noundef %0) local_unnamed_addr #11 align 2 !prof !531 {
  %2 = icmp ult i32 %0, 53
  %3 = zext nneg i32 %0 to i64
  %4 = lshr i64 8022019656384516, %3
  %5 = and i64 %4, 1
  %6 = icmp ne i64 %5, 0
  %7 = select i1 %2, i1 %6, i1 false, !prof !532
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression31updateOpCodeLengthAfterNodeTestEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !531 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %4 = sext i32 %1 to i64
  %5 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %4) #16
  %6 = load i32, ptr %5, align 4, !tbaa !436
  %7 = tail call noundef i32 @_ZN11xalanc_1_1015getOpCodeLengthEi(i32 noundef %6) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !533

9:                                                ; preds = %2
  %10 = tail call noundef zeroext i1 @_ZN11xalanc_1_1015XPathExpression16isNodeTestOpCodeEi(i32 noundef %6) #16
  br i1 %10, label %21, label %11, !prof !532

11:                                               ; preds = %9, %2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #17
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1015XPathExpression16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #16
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %12) #16
  %13 = call ptr @__cxa_allocate_exception(i64 112) #17
  invoke void @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionC2EiRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %13, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(36) %3) #16
          to label %14 unwind label %15

14:                                               ; preds = %11
  invoke void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, ptr nonnull @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev) #19
          to label %27 unwind label %17

15:                                               ; preds = %11
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %13) #17
  br label %19

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi { ptr, i32 } [ %18, %17 ], [ %16, %15 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  resume { ptr, i32 } %20

21:                                               ; preds = %9
  %22 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression15opCodeMapLengthEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #16
  %23 = sub nsw i32 %22, %1
  %24 = add nsw i32 %1, 2
  %25 = sext i32 %24 to i64
  %26 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %25) #16
  store i32 %23, ptr %26, align 4, !tbaa !436
  ret void

27:                                               ; preds = %14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1015XPathExpression13dumpOpCodeMapERNS_11PrintWriterEi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !350 {
  %4 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression13opCodeMapSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #16
  %5 = icmp sgt i32 %4, %2
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = sext i32 %2 to i64
  br label %9

8:                                                ; preds = %9, %3
  ret void

9:                                                ; preds = %6, %9
  %10 = phi i64 [ %7, %6 ], [ %22, %9 ]
  %11 = load ptr, ptr %1, align 8, !tbaa !351
  %12 = getelementptr inbounds ptr, ptr %11, i64 13
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str, i64 noundef 4294967295) #16
  %14 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #16
  %15 = load i32, ptr %14, align 4, !tbaa !436
  %16 = load ptr, ptr %1, align 8, !tbaa !351
  %17 = getelementptr inbounds ptr, ptr %16, i64 16
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %15) #16
  %19 = load ptr, ptr %1, align 8, !tbaa !351
  %20 = getelementptr inbounds ptr, ptr %19, i64 13
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.1, i64 noundef 4294967295) #16
  %22 = add nsw i64 %10, 1
  %23 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression13opCodeMapSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #16
  %24 = sext i32 %23 to i64
  %25 = icmp slt i64 %22, %24
  br i1 %25, label %9, label %8, !llvm.loop !534
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1015XPathExpression13dumpOpCodeMapERSoi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !350 {
  %4 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression13opCodeMapSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #16
  %5 = icmp sgt i32 %4, %2
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = sext i32 %2 to i64
  br label %9

8:                                                ; preds = %9, %3
  ret void

9:                                                ; preds = %6, %9
  %10 = phi i64 [ %7, %6 ], [ %16, %9 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str) #16
  %12 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #16
  %13 = load i32, ptr %12, align 4, !tbaa !436
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef %13) #16
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @.str.1) #16
  %16 = add nsw i64 %10, 1
  %17 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression13opCodeMapSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #16
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %9, label %8, !llvm.loop !535
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1015XPathExpression14dumpTokenQueueERSoi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !350 {
  %4 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression14tokenQueueSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #16
  %5 = icmp sgt i32 %4, %2
  br i1 %5, label %7, label %6

6:                                                ; preds = %7, %3
  ret void

7:                                                ; preds = %3, %7
  %8 = phi i32 [ %17, %7 ], [ %2, %3 ]
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str) #16
  %10 = tail call noundef ptr @_ZNK11xalanc_1_1015XPathExpression8getTokenEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %8) #16
  %11 = load ptr, ptr %10, align 8, !tbaa !351
  %12 = getelementptr inbounds ptr, ptr %11, i64 8
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(41) %10) #16
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_10lsERSoRKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(36) %14) #16
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull @.str.1) #16
  %17 = add nsw i32 %8, 1
  %18 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression14tokenQueueSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #16
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %7, label %6, !llvm.loop !536
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1015XPathExpression14tokenQueueSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 comdat align 2 !prof !537 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_10lsERSoRKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat !prof !350 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs10getDefaultEv() #16
  tail call void @_ZN11xalanc_1_1012OutputStringERSoRKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1015XPathExpression8getTokenEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !538 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2
  %4 = sext i32 %1 to i64
  %5 = tail call noundef nonnull align 8 dereferenceable(41) ptr @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4) #16
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1012OutputStringERSoRKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat !prof !350 {
  %4 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %1) #16
  tail call void @_ZN11xalanc_1_1012OutputStringERSoPKtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs10getDefaultEv() local_unnamed_addr #1 comdat align 2 !prof !513 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() #16
  ret ptr %1
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1012OutputStringERSoPKtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat !prof !539 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #16
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !540 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #16
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  br i1 %2, label %5, label %3, !prof !541

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #16
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !542 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !543 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !376
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !544 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !365
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(41) ptr @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !538 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !396
  %5 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1015XPathExpression14dumpTokenQueueERNS_11PrintWriterEi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !350 {
  %4 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression14tokenQueueSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #16
  %5 = icmp sgt i32 %4, %2
  br i1 %5, label %7, label %6

6:                                                ; preds = %7, %3
  ret void

7:                                                ; preds = %3, %7
  %8 = phi i32 [ %25, %7 ], [ %2, %3 ]
  %9 = icmp sgt i32 %8, 0
  %10 = load ptr, ptr %1, align 8, !tbaa !351
  %11 = getelementptr inbounds ptr, ptr %10, i64 13
  %12 = load ptr, ptr %11, align 8
  %13 = select i1 %9, ptr @.str, ptr @.str.1
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %13, i64 noundef 4294967295) #16
  %14 = tail call noundef ptr @_ZNK11xalanc_1_1015XPathExpression8getTokenEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %8) #16
  %15 = load ptr, ptr %14, align 8, !tbaa !351
  %16 = getelementptr inbounds ptr, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef nonnull align 8 dereferenceable(36) ptr %17(ptr noundef nonnull align 8 dereferenceable(41) %14) #16
  %19 = load ptr, ptr %1, align 8, !tbaa !351
  %20 = getelementptr inbounds ptr, ptr %19, i64 18
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %18) #16
  %22 = load ptr, ptr %1, align 8, !tbaa !351
  %23 = getelementptr inbounds ptr, ptr %22, i64 13
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.1, i64 noundef 4294967295) #16
  %25 = add nsw i32 %8, 1
  %26 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression14tokenQueueSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #16
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %7, label %6, !llvm.loop !545
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1015XPathExpression23dumpRemainingTokenQueueERNS_11PrintWriterE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !350 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #17
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011PrintWriter16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  %5 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 18) #16
          to label %6 unwind label %22

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !351
  %8 = getelementptr inbounds ptr, ptr %7, i64 18
  %9 = load ptr, ptr %8, align 8
  invoke void %9(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %5) #16
          to label %10 unwind label %22

10:                                               ; preds = %6
  %11 = load ptr, ptr %1, align 8, !tbaa !351
  %12 = getelementptr inbounds ptr, ptr %11, i64 13
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.2, i64 noundef 4294967295) #16
          to label %14 unwind label %22

14:                                               ; preds = %10
  %15 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !384
  invoke void @_ZNK11xalanc_1_1015XPathExpression14dumpTokenQueueERNS_11PrintWriterEi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %16) #16
          to label %17 unwind label %22

17:                                               ; preds = %14
  %18 = load ptr, ptr %1, align 8, !tbaa !351
  %19 = getelementptr inbounds ptr, ptr %18, i64 13
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.3, i64 noundef 4294967295) #16
          to label %21 unwind label %22

21:                                               ; preds = %17
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  ret void

22:                                               ; preds = %17, %14, %10, %6, %2
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  resume { ptr, i32 } %23
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011PrintWriter16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !350 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::PrintWriter", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !546
  ret ptr %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1015XPathExpression23dumpRemainingTokenQueueERSoRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !350 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #17
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  %5 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef 18) #16
          to label %6 unwind label %16

6:                                                ; preds = %3
  %7 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_10lsERSoRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %5) #16
          to label %8 unwind label %16

8:                                                ; preds = %6
  %9 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.2) #16
          to label %10 unwind label %16

10:                                               ; preds = %8
  %11 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !384
  invoke void @_ZNK11xalanc_1_1015XPathExpression14dumpTokenQueueERSoi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %12) #16
          to label %13 unwind label %16

13:                                               ; preds = %10
  %14 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3) #16
          to label %15 unwind label %16

15:                                               ; preds = %13
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  ret void

16:                                               ; preds = %13, %10, %8, %6, %3
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_10lsERSoRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat !prof !350 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #16
  tail call void @_ZN11xalanc_1_1012OutputStringERSoRKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression23pushArgumentOnOpCodeMapERKNS_6XTokenE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) local_unnamed_addr #1 align 2 !prof !350 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !384
  %6 = add nsw i32 %5, -1
  store i32 %6, ptr %3, align 4, !tbaa !436
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2
  %8 = sext i32 %6 to i64
  %9 = tail call noundef nonnull align 8 dereferenceable(41) ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %8) #16
  %10 = tail call noundef nonnull align 8 dereferenceable(41) ptr @_ZN11xalanc_1_106XTokenaSERKS0_(ptr noundef nonnull align 8 dereferenceable(41) %9, ptr noundef nonnull align 8 dereferenceable(41) %1) #16
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %3) #16
  %11 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1) #16
  %12 = load i32, ptr %11, align 4, !tbaa !436
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %11, align 4, !tbaa !436
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(41) ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !549 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !396
  %5 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression23pushArgumentOnOpCodeMapERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 align 2 !prof !550 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !384
  %6 = add nsw i32 %5, -1
  store i32 %6, ptr %3, align 4, !tbaa !436
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2
  %8 = sext i32 %6 to i64
  %9 = tail call noundef nonnull align 8 dereferenceable(41) ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %8) #16
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1015XPathExpression16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #16
  tail call void @_ZN11xalanc_1_106XToken3setERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %9, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %10) #16
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %3) #16
  %11 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1) #16
  %12 = load i32, ptr %11, align 4, !tbaa !436
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %11, align 4, !tbaa !436
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_106XToken3setERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression23pushArgumentOnOpCodeMapEdRKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #1 align 2 !prof !551 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !384
  %7 = add nsw i32 %6, -1
  store i32 %7, ptr %4, align 4, !tbaa !436
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2
  %9 = sext i32 %7 to i64
  %10 = tail call noundef nonnull align 8 dereferenceable(41) ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %9) #16
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1015XPathExpression16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #16
  tail call void @_ZN11xalanc_1_106XToken3setEdRKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %10, double noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %11) #16
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %4) #16
  %12 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1) #16
  %13 = load i32, ptr %12, align 4, !tbaa !436
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr %12, align 4, !tbaa !436
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_106XToken3setEdRKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), double noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression28pushNumberLiteralOnOpCodeMapEd(ptr noundef nonnull align 8 dereferenceable(120) %0, double noundef %1) local_unnamed_addr #1 align 2 !prof !551 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  store double %1, ptr %3, align 8, !tbaa !552
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5
  %6 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  %7 = trunc i64 %6 to i32
  store i32 %7, ptr %4, align 4, !tbaa !436
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %4) #16
  %8 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1) #16
  %9 = load i32, ptr %8, align 4, !tbaa !436
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %8, align 4, !tbaa !436
  call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE9push_backERKd(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !553 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !399
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE9push_backERKd(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !551 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  tail call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  tail call void @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !554 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !399
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !400
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !555

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %11 = load ptr, ptr %0, align 8, !tbaa !398
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIdE9constructEPdRKdRN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #16
  %13 = load i64, ptr %4, align 8, !tbaa !399
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !399
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !556
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %21 = load ptr, ptr %0, align 8, !tbaa !398
  call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #16
  invoke void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIdE9constructEPdRKdRN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %4 = load double, ptr %1, align 8, !tbaa !552
  store double %4, ptr %0, align 8, !tbaa !552
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !557 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  store ptr %2, ptr %0, align 8, !tbaa !398
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !399
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !558

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #16
  call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #16
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #16
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #16
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6insertEPdPKdS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #16
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !559

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #16
  store ptr %24, ptr %8, align 8, !tbaa !402
  store i64 %3, ptr %7, align 8, !tbaa !400
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !560 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %3 = load ptr, ptr %0, align 8, !tbaa !398
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !402
  %7 = load ptr, ptr %1, align 8, !tbaa !398
  store ptr %7, ptr %0, align 8, !tbaa !398
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !418
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !402
  store ptr %11, ptr %5, align 8, !tbaa !402
  store ptr %3, ptr %1, align 8, !tbaa !398
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !418
  store <2 x i64> %9, ptr %4, align 8, !tbaa !418
  store <2 x i64> %12, ptr %8, align 8, !tbaa !418
  store ptr %6, ptr %10, align 8, !tbaa !402
  tail call void @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !561 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6insertEPdPKdS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !561 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE14local_distanceEPKdS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #16
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8, !prof !562

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28, !prof !563

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #16
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16, !prof !564

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !398
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIdE9constructEPdRKdRN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #16
  %23 = getelementptr inbounds double, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !399
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !399
  %26 = getelementptr inbounds double, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !prof !565, !llvm.loop !566

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %32 = load ptr, ptr %0, align 8, !tbaa !398
  call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #16
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  invoke void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6insertEPdPKdS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #16
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6insertEPdPKdS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #16
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6insertEPdPKdS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #16
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE14local_distanceEPKdS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #16
  %50 = icmp ugt i64 %49, %6
  br i1 %50, label %66, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds double, ptr %2, i64 %49
  %53 = icmp eq ptr %52, %3
  br i1 %53, label %54, label %56

54:                                               ; preds = %56, %51
  %55 = icmp eq ptr %48, %1
  br i1 %55, label %64, label %60

56:                                               ; preds = %51, %56
  %57 = phi ptr [ %58, %56 ], [ %52, %51 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %57) #16
  %58 = getelementptr inbounds double, ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !llvm.loop !567

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %61) #16
  %62 = getelementptr inbounds double, ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !llvm.loop !568

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKdPdET0_T_S4_S3_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #16
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds double, ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %72) #16
  %73 = getelementptr inbounds double, ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !569

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds double, ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPdS0_ET0_T_S2_S1_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #16
  %78 = tail call noundef ptr @_ZSt4copyIPKdPdET0_T_S4_S3_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #16
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !561 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !402
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !561 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE14local_distanceEPKdS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !561 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #16
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !561 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6, !prof !562

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #16
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !561 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !400
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKdPdET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !350 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKdET_S2_(ptr noundef %0) #16
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKdET_S2_(ptr noundef %1) #16
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #16
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPdS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !350 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0) #16
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %1) #16
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPdS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #16
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !561 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !441
  call void @_ZSt19__iterator_categoryIPKdENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %4 = call noundef i64 @_ZSt10__distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #16
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !561 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKdENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !561 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !570 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %4 = load ptr, ptr %0, align 8, !tbaa !398
  call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #16
  call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !350 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !441
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKdET_S2_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKdET_S2_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %2) #14
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #16
  %9 = call noundef ptr @_ZSt12__niter_wrapIPdET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #16
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKdET_S2_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !350 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPdET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !350 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !350 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKdET_S2_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !350 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !350 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !350 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !350 {
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
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPdS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !350 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !441
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %2) #14
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPdS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #16
  %9 = call noundef ptr @_ZSt12__niter_wrapIPdET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #16
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !350 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPdS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !350 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPdS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPdS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !350 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIdEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIdEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !350 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = icmp eq ptr %1, %0
  %9 = sub nsw i64 0, %7
  br i1 %8, label %12, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds double, ptr %2, i64 %9
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %11, ptr align 8 %0, i64 %6, i1 false)
  br label %12

12:                                               ; preds = %3, %10
  %13 = getelementptr inbounds double, ptr %2, i64 %9
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !561 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !402
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !399
  %6 = getelementptr inbounds double, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression27pushCurrentTokenOnOpCodeMapEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #1 align 2 !prof !571 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !384
  %5 = add nsw i32 %4, -1
  store i32 %5, ptr %2, align 4, !tbaa !436
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %2) #16
  %6 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1) #16
  %7 = load i32, ptr %6, align 4, !tbaa !436
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %6, align 4, !tbaa !436
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_XPathExpression.cpp() #7 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind optsize }
attributes #15 = { builtin nounwind optsize }
attributes #16 = { optsize }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!349}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348}
!36 = !{ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv, i64 832918}
!37 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!47 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!48 = !{ptr @_ZN11xalanc_1_1015XPathExpressionC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 164}
!49 = !{ptr @_ZN11xalanc_1_1015XPathExpressionC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 164}
!50 = !{ptr @_ZN11xalanc_1_1015XPathExpressionC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 164}
!51 = !{ptr @_ZN11xalanc_1_1015XPathExpressionC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE7reserveEm, i64 164}
!52 = !{ptr @_ZN11xalanc_1_1015XPathExpressionC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE7reserveEm, i64 164}
!53 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE8allocateEm, i64 1}
!54 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv, i64 220}
!55 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE8allocateEm, i64 1}
!56 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 164}
!57 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE8allocateEm, i64 1}
!58 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv, i64 190}
!59 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE7reserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv, i64 328}
!60 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE7reserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9doReserveEm, i64 163}
!61 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE7reserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 328}
!62 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE7reserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm, i64 163}
!63 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv, i64 235}
!64 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE5beginEv, i64 45}
!65 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE3endEv, i64 45}
!66 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE7destroyEPdS4_, i64 45}
!67 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10deallocateEPd, i64 45}
!68 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 328}
!69 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv, i64 164}
!70 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv, i64 164}
!71 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyEPS1_S5_, i64 164}
!72 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10deallocateEPS1_, i64 164}
!73 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv, i64 467}
!74 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv, i64 219}
!75 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE3endEv, i64 219}
!76 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE7destroyEPiS4_, i64 219}
!77 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10deallocateEPi, i64 219}
!78 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv, i64 384}
!79 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 192}
!80 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE4swapERS3_, i64 192}
!81 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEED2Ev, i64 192}
!82 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9local_maxEmm, i64 28}
!83 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 28}
!84 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv, i64 28}
!85 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv, i64 28}
!86 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE3endEv, i64 28}
!87 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_, i64 28}
!88 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE4swapERS3_, i64 28}
!89 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEED2Ev, i64 28}
!90 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE8allocateEm, i64 190}
!91 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv, i64 219}
!92 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE4swapERS3_, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv, i64 548}
!93 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv, i64 53}
!94 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE14local_distanceEPKiS5_, i64 27}
!95 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE4sizeEv, i64 26}
!96 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE3endEv, i64 26}
!97 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE14ensureCapacityEm, i64 25}
!98 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIiE9constructEPiRKiRN11xercesc_2_713MemoryManagerE, i64 351}
!99 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE8capacityEv, i64 1}
!100 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi, i64 12}
!101 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv, i64 306}
!102 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv, i64 68609147}
!103 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv, i64 27}
!104 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10endPointerEv, i64 27}
!105 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE14local_distanceEPKiS5_, ptr @_ZSt8distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 59}
!106 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv, i64 5501}
!107 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv, i64 370}
!108 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10endPointerEv, i64 370}
!109 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE14ensureCapacityEm, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE8capacityEv, i64 55}
!110 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9doReserveEm, i64 28}
!111 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10endPointerEv, i64 55}
!112 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE8capacityEv, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv, i64 114}
!113 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv, i64 5124}
!114 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10endPointerEv, i64 2561}
!115 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIiE9constructEPiRKiRN11xercesc_2_713MemoryManagerE, i64 2561}
!116 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 1}
!117 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi, i64 1}
!118 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE4swapERS3_, i64 1}
!119 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEED2Ev, i64 1}
!120 = !{ptr @_ZSt13copy_backwardIPiS0_ET0_T_S2_S1_, ptr @_ZSt12__miter_baseIPiET_S1_, i64 64}
!121 = !{ptr @_ZSt13copy_backwardIPiS0_ET0_T_S2_S1_, ptr @_ZSt22__copy_move_backward_aILb0EPiS0_ET1_T0_S2_S1_, i64 32}
!122 = !{ptr @_ZSt8distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKiENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 59}
!123 = !{ptr @_ZSt8distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 59}
!124 = !{ptr @_ZSt22__copy_move_backward_aILb0EPiS0_ET1_T0_S2_S1_, ptr @_ZSt12__niter_baseIPiET_S1_, i64 96}
!125 = !{ptr @_ZSt22__copy_move_backward_aILb0EPiS0_ET1_T0_S2_S1_, ptr @_ZSt23__copy_move_backward_a1ILb0EPiS0_ET1_T0_S2_S1_, i64 32}
!126 = !{ptr @_ZSt22__copy_move_backward_aILb0EPiS0_ET1_T0_S2_S1_, ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_, i64 32}
!127 = !{ptr @_ZSt23__copy_move_backward_a1ILb0EPiS0_ET1_T0_S2_S1_, ptr @_ZSt23__copy_move_backward_a2ILb0EPiS0_ET1_T0_S2_S1_, i64 32}
!128 = !{ptr @_ZSt23__copy_move_backward_a2ILb0EPiS0_ET1_T0_S2_S1_, ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIiEEPT_PKS3_S6_S4_, i64 32}
!129 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 328}
!130 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, i64 164}
!131 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_, i64 164}
!132 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, i64 164}
!133 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE9local_maxEmm, i64 1}
!134 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!135 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv, i64 1}
!136 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv, i64 1}
!137 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv, i64 1}
!138 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_, i64 1}
!139 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_, i64 1}
!140 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, i64 1}
!141 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE8allocateEm, i64 162}
!142 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 164}
!143 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_, ptr @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 328}
!144 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 176}
!145 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE14local_distanceEPKS1_S6_, ptr @_ZSt8distanceIPKN11xalanc_1_106XTokenEENSt15iterator_traitsIT_E15difference_typeES5_S5_, i64 12}
!146 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 3619}
!147 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 197}
!148 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv, i64 197}
!149 = !{ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_6XTokenEE9constructEPS1_RKS1_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_106XTokenC1ERKS0_, i64 983}
!150 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE8capacityEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 12}
!151 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 1966}
!152 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv, i64 982}
!153 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_6XTokenEE9constructEPS1_RKS1_RN11xercesc_2_713MemoryManagerE, i64 982}
!154 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, i64 1}
!155 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, i64 1}
!156 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_, i64 1}
!157 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, i64 1}
!158 = !{ptr @_ZSt13copy_backwardIPN11xalanc_1_106XTokenES2_ET0_T_S4_S3_, ptr @_ZSt12__miter_baseIPN11xalanc_1_106XTokenEET_S3_, i64 18}
!159 = !{ptr @_ZSt13copy_backwardIPN11xalanc_1_106XTokenES2_ET0_T_S4_S3_, ptr @_ZSt22__copy_move_backward_aILb0EPN11xalanc_1_106XTokenES2_ET1_T0_S4_S3_, i64 9}
!160 = !{ptr @_ZSt8distanceIPKN11xalanc_1_106XTokenEENSt15iterator_traitsIT_E15difference_typeES5_S5_, ptr @_ZSt19__iterator_categoryIPKN11xalanc_1_106XTokenEENSt15iterator_traitsIT_E17iterator_categoryERKS5_, i64 12}
!161 = !{ptr @_ZSt8distanceIPKN11xalanc_1_106XTokenEENSt15iterator_traitsIT_E15difference_typeES5_S5_, ptr @_ZSt10__distanceIPKN11xalanc_1_106XTokenEENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag, i64 12}
!162 = !{ptr @_ZSt22__copy_move_backward_aILb0EPN11xalanc_1_106XTokenES2_ET1_T0_S4_S3_, ptr @_ZSt12__niter_baseIPN11xalanc_1_106XTokenEET_S3_, i64 27}
!163 = !{ptr @_ZSt22__copy_move_backward_aILb0EPN11xalanc_1_106XTokenES2_ET1_T0_S4_S3_, ptr @_ZSt23__copy_move_backward_a1ILb0EPN11xalanc_1_106XTokenES2_ET1_T0_S4_S3_, i64 9}
!164 = !{ptr @_ZSt22__copy_move_backward_aILb0EPN11xalanc_1_106XTokenES2_ET1_T0_S4_S3_, ptr @_ZSt12__niter_wrapIPN11xalanc_1_106XTokenEET_RKS3_S3_, i64 9}
!165 = !{ptr @_ZSt23__copy_move_backward_a1ILb0EPN11xalanc_1_106XTokenES2_ET1_T0_S4_S3_, ptr @_ZSt23__copy_move_backward_a2ILb0EPN11xalanc_1_106XTokenES2_ET1_T0_S4_S3_, i64 9}
!166 = !{ptr @_ZSt23__copy_move_backward_a2ILb0EPN11xalanc_1_106XTokenES2_ET1_T0_S4_S3_, ptr @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_106XTokenES5_EET0_T_S7_S6_, i64 9}
!167 = !{ptr @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_106XTokenES5_EET0_T_S7_S6_, ptr @_ZN11xalanc_1_106XTokenaSERKS0_, i64 35}
!168 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE7destroyEPdS4_, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE7destroyERd, i64 5947}
!169 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv, i64 70}
!170 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv, i64 70}
!171 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10endPointerEv, i64 70}
!172 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyEPS1_S5_, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyERS1_, i64 1}
!173 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE7destroyEPiS4_, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE7destroyERi, i64 433}
!174 = !{ptr @_ZN11xalanc_1_1015XPathExpressionD2Ev, ptr @_ZN11xalanc_1_1015XPathExpression5resetEv, i64 164}
!175 = !{ptr @_ZN11xalanc_1_1015XPathExpressionD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEED2Ev, i64 164}
!176 = !{ptr @_ZN11xalanc_1_1015XPathExpressionD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, i64 164}
!177 = !{ptr @_ZN11xalanc_1_1015XPathExpressionD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEED2Ev, i64 164}
!178 = !{ptr @_ZN11xalanc_1_1015XPathExpression5resetEv, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5clearEv, i64 328}
!179 = !{ptr @_ZN11xalanc_1_1015XPathExpression5resetEv, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE5clearEv, i64 328}
!180 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5clearEv, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv, i64 662}
!181 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE12shrinkToSizeEm, i64 164}
!182 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE5clearEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 656}
!183 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE12shrinkToSizeEm, i64 164}
!184 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE12shrinkToSizeEm, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE8pop_backEv, i64 2548}
!185 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv, i64 5124}
!186 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE7destroyERi, i64 2562}
!187 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE12shrinkToSizeEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE8pop_backEv, i64 979}
!188 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 1966}
!189 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyERS1_, i64 983}
!190 = !{ptr @_ZN11xalanc_1_1015XPathExpression6shrinkEv, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE8capacityEv, i64 27}
!191 = !{ptr @_ZN11xalanc_1_1015XPathExpression6shrinkEv, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE4sizeEv, i64 27}
!192 = !{ptr @_ZN11xalanc_1_1015XPathExpression6shrinkEv, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE16getMemoryManagerEv, i64 26}
!193 = !{ptr @_ZN11xalanc_1_1015XPathExpression6shrinkEv, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 26}
!194 = !{ptr @_ZN11xalanc_1_1015XPathExpression6shrinkEv, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE4swapERS3_, i64 26}
!195 = !{ptr @_ZN11xalanc_1_1015XPathExpression6shrinkEv, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEED2Ev, i64 26}
!196 = !{ptr @_ZNK11xalanc_1_1015XPathExpression13opCodeMapSizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE4sizeEv, i64 5359}
!197 = !{ptr @_ZN11xalanc_1_1015XPathExpression13setOpCodeArgsENS0_8eOpCodesEiRKNS_11XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE, ptr @_ZN11xalanc_1_1015getOpCodeLengthEi, i64 28}
!198 = !{ptr @_ZN11xalanc_1_1015XPathExpression13setOpCodeArgsENS0_8eOpCodesEiRKNS_11XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm, i64 66}
!199 = !{ptr @_ZN11xalanc_1_1015XPathExpression13setOpCodeArgsENS0_8eOpCodesEiRKNS_11XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE, ptr @_ZN11xalanc_1_1015XPathExpression16getMemoryManagerEv, i64 4}
!200 = !{ptr @_ZN11xalanc_1_1015XPathExpression13setOpCodeArgsENS0_8eOpCodesEiRKNS_11XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 4}
!201 = !{ptr @_ZN11xalanc_1_1015XPathExpression13setOpCodeArgsENS0_8eOpCodesEiRKNS_11XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE, ptr @__cxa_allocate_exception, i64 4}
!202 = !{ptr @_ZN11xalanc_1_1015XPathExpression13setOpCodeArgsENS0_8eOpCodesEiRKNS_11XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE, ptr @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionC2EiRNS_14XalanDOMStringE, i64 2}
!203 = !{ptr @_ZN11xalanc_1_1015XPathExpression13setOpCodeArgsENS0_8eOpCodesEiRKNS_11XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE, ptr @__cxa_throw, i64 1}
!204 = !{ptr @_ZN11xalanc_1_1015XPathExpression13setOpCodeArgsENS0_8eOpCodesEiRKNS_11XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE, ptr @__cxa_free_exception, i64 1}
!205 = !{ptr @_ZN11xalanc_1_1015XPathExpression13setOpCodeArgsENS0_8eOpCodesEiRKNS_11XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 4}
!206 = !{ptr @_ZN11xalanc_1_1015XPathExpression13setOpCodeArgsENS0_8eOpCodesEiRKNS_11XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE4sizeEv, i64 26}
!207 = !{ptr @_ZN11xalanc_1_1015XPathExpression13setOpCodeArgsENS0_8eOpCodesEiRKNS_11XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE, ptr @_ZN11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionC2EiiiRNS_14XalanDOMStringE, i64 1}
!208 = !{ptr @_ZN11xalanc_1_1015XPathExpression13setOpCodeArgsENS0_8eOpCodesEiRKNS_11XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm, i64 80}
!209 = !{ptr @_ZN11xalanc_1_1015XPathExpression13setOpCodeArgsENS0_8eOpCodesEiRKNS_11XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE, ptr @_ZN11xalanc_1_1015XPathExpression24InvalidArgumentExceptionC2EiiRNS_14XalanDOMStringE, i64 1}
!210 = !{ptr @_ZN11xalanc_1_1015XPathExpression16getMemoryManagerEv, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE16getMemoryManagerEv, i64 1198}
!211 = !{ptr @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE, ptr @_ZN11xalanc_1_1015getOpCodeLengthEi, i64 1165}
!212 = !{ptr @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE, ptr @_ZN11xalanc_1_1015XPathExpression16getMemoryManagerEv, i64 1}
!213 = !{ptr @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!214 = !{ptr @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE, ptr @__cxa_allocate_exception, i64 1}
!215 = !{ptr @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE, ptr @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionC2EiRNS_14XalanDOMStringE, i64 1}
!216 = !{ptr @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 1}
!217 = !{ptr @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE, ptr @_ZNK11xalanc_1_1015XPathExpression13opCodeMapSizeEv, i64 1164}
!218 = !{ptr @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9push_backERKi, i64 2026}
!219 = !{ptr @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm, i64 999}
!220 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9push_backERKi, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv, i64 4996}
!221 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9push_backERKi, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi, i64 2498}
!222 = !{ptr @_ZN11xalanc_1_1015XPathExpression13replaceOpCodeEiNS0_8eOpCodesES1_, ptr @_ZNK11xalanc_1_1015XPathExpression13opCodeMapSizeEv, i64 2}
!223 = !{ptr @_ZN11xalanc_1_1015XPathExpression13replaceOpCodeEiNS0_8eOpCodesES1_, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm, i64 3}
!224 = !{ptr @_ZN11xalanc_1_1015XPathExpression13replaceOpCodeEiNS0_8eOpCodesES1_, ptr @_ZN11xalanc_1_1015getOpCodeLengthEi, i64 2}
!225 = !{ptr @_ZN11xalanc_1_1015XPathExpression13replaceOpCodeEiNS0_8eOpCodesES1_, ptr @_ZN11xalanc_1_1015XPathExpression16getMemoryManagerEv, i64 1}
!226 = !{ptr @_ZN11xalanc_1_1015XPathExpression13replaceOpCodeEiNS0_8eOpCodesES1_, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!227 = !{ptr @_ZN11xalanc_1_1015XPathExpression13replaceOpCodeEiNS0_8eOpCodesES1_, ptr @__cxa_allocate_exception, i64 1}
!228 = !{ptr @_ZN11xalanc_1_1015XPathExpression13replaceOpCodeEiNS0_8eOpCodesES1_, ptr @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionC2EiRNS_14XalanDOMStringE, i64 1}
!229 = !{ptr @_ZN11xalanc_1_1015XPathExpression13replaceOpCodeEiNS0_8eOpCodesES1_, ptr @__cxa_throw, i64 1}
!230 = !{ptr @_ZN11xalanc_1_1015XPathExpression13replaceOpCodeEiNS0_8eOpCodesES1_, ptr @__cxa_free_exception, i64 1}
!231 = !{ptr @_ZN11xalanc_1_1015XPathExpression13replaceOpCodeEiNS0_8eOpCodesES1_, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 1}
!232 = !{ptr @_ZN11xalanc_1_1015XPathExpression12insertOpCodeENS0_8eOpCodesEi, ptr @_ZN11xalanc_1_1015getOpCodeLengthEi, i64 32}
!233 = !{ptr @_ZN11xalanc_1_1015XPathExpression12insertOpCodeENS0_8eOpCodesEi, ptr @_ZN11xalanc_1_1015XPathExpression16getMemoryManagerEv, i64 1}
!234 = !{ptr @_ZN11xalanc_1_1015XPathExpression12insertOpCodeENS0_8eOpCodesEi, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!235 = !{ptr @_ZN11xalanc_1_1015XPathExpression12insertOpCodeENS0_8eOpCodesEi, ptr @__cxa_allocate_exception, i64 1}
!236 = !{ptr @_ZN11xalanc_1_1015XPathExpression12insertOpCodeENS0_8eOpCodesEi, ptr @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionC2EiRNS_14XalanDOMStringE, i64 1}
!237 = !{ptr @_ZN11xalanc_1_1015XPathExpression12insertOpCodeENS0_8eOpCodesEi, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 1}
!238 = !{ptr @_ZN11xalanc_1_1015XPathExpression12insertOpCodeENS0_8eOpCodesEi, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv, i64 31}
!239 = !{ptr @_ZN11xalanc_1_1015XPathExpression12insertOpCodeENS0_8eOpCodesEi, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi, i64 31}
!240 = !{ptr @_ZN11xalanc_1_1015XPathExpression12insertOpCodeENS0_8eOpCodesEi, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm, i64 62}
!241 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv, i64 120}
!242 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE4sizeEv, i64 60}
!243 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE3endEv, i64 125}
!244 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE14ensureCapacityEm, i64 28}
!245 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIiE9constructEPiRKiRN11xercesc_2_713MemoryManagerE, i64 45}
!246 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE8capacityEv, i64 32}
!247 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!248 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv, i64 1}
!249 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_, i64 2}
!250 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi, i64 1}
!251 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE4swapERS3_, i64 1}
!252 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEED2Ev, i64 1}
!253 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE14local_distanceEPKiS5_, i64 31}
!254 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi, i64 92}
!255 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi, ptr @_ZSt4fillIPiiEvT_S1_RKT0_, i64 31}
!256 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi, ptr @_ZSt13copy_backwardIPiS0_ET0_T_S2_S1_, i64 30}
!257 = !{ptr @_ZSt4fillIPiiEvT_S1_RKT0_, ptr @_ZSt8__fill_aIPiiEvT_S1_RKT0_, i64 32}
!258 = !{ptr @_ZSt8__fill_aIPiiEvT_S1_RKT0_, ptr @_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_, i64 32}
!259 = !{ptr @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii, ptr @_ZN11xalanc_1_1015getOpCodeLengthEi, i64 803}
!260 = !{ptr @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm, i64 1603}
!261 = !{ptr @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii, ptr @_ZN11xalanc_1_1015XPathExpression16getMemoryManagerEv, i64 2}
!262 = !{ptr @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 2}
!263 = !{ptr @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii, ptr @__cxa_allocate_exception, i64 2}
!264 = !{ptr @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii, ptr @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionC2EiRNS_14XalanDOMStringE, i64 2}
!265 = !{ptr @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii, ptr @__cxa_throw, i64 1}
!266 = !{ptr @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii, ptr @__cxa_free_exception, i64 1}
!267 = !{ptr @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 2}
!268 = !{ptr @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii, ptr @_ZNK11xalanc_1_1015XPathExpression15opCodeMapLengthEv, i64 801}
!269 = !{ptr @_ZNK11xalanc_1_1015XPathExpression15opCodeMapLengthEv, ptr @_ZNK11xalanc_1_1015XPathExpression13opCodeMapSizeEv, i64 4192}
!270 = !{ptr @_ZNK11xalanc_1_1015XPathExpression15opCodeMapLengthEv, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm, i64 4191}
!271 = !{ptr @_ZN11xalanc_1_1015XPathExpression31updateOpCodeLengthAfterNodeTestEi, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm, i64 396}
!272 = !{ptr @_ZN11xalanc_1_1015XPathExpression31updateOpCodeLengthAfterNodeTestEi, ptr @_ZN11xalanc_1_1015getOpCodeLengthEi, i64 199}
!273 = !{ptr @_ZN11xalanc_1_1015XPathExpression31updateOpCodeLengthAfterNodeTestEi, ptr @_ZN11xalanc_1_1015XPathExpression16isNodeTestOpCodeEi, i64 198}
!274 = !{ptr @_ZN11xalanc_1_1015XPathExpression31updateOpCodeLengthAfterNodeTestEi, ptr @_ZN11xalanc_1_1015XPathExpression16getMemoryManagerEv, i64 2}
!275 = !{ptr @_ZN11xalanc_1_1015XPathExpression31updateOpCodeLengthAfterNodeTestEi, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 2}
!276 = !{ptr @_ZN11xalanc_1_1015XPathExpression31updateOpCodeLengthAfterNodeTestEi, ptr @__cxa_allocate_exception, i64 2}
!277 = !{ptr @_ZN11xalanc_1_1015XPathExpression31updateOpCodeLengthAfterNodeTestEi, ptr @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionC2EiRNS_14XalanDOMStringE, i64 2}
!278 = !{ptr @_ZN11xalanc_1_1015XPathExpression31updateOpCodeLengthAfterNodeTestEi, ptr @__cxa_throw, i64 1}
!279 = !{ptr @_ZN11xalanc_1_1015XPathExpression31updateOpCodeLengthAfterNodeTestEi, ptr @__cxa_free_exception, i64 1}
!280 = !{ptr @_ZN11xalanc_1_1015XPathExpression31updateOpCodeLengthAfterNodeTestEi, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 2}
!281 = !{ptr @_ZN11xalanc_1_1015XPathExpression31updateOpCodeLengthAfterNodeTestEi, ptr @_ZNK11xalanc_1_1015XPathExpression15opCodeMapLengthEv, i64 197}
!282 = !{ptr @_ZNK11xalanc_1_1015XPathExpression14tokenQueueSizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv, i64 3607}
!283 = !{ptr @_ZNK11xalanc_1_1015XPathExpression8getTokenEi, ptr @_ZNK11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEixEm, i64 316041560}
!284 = !{ptr @_ZN11xalanc_1_1012XalanMemMgrs10getDefaultEv, ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv, i64 2}
!285 = !{ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 12093723}
!286 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!287 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!288 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!289 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!290 = !{ptr @_ZN11xalanc_1_1015XPathExpression23pushArgumentOnOpCodeMapERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEixEm, i64 7}
!291 = !{ptr @_ZN11xalanc_1_1015XPathExpression23pushArgumentOnOpCodeMapERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1015XPathExpression16getMemoryManagerEv, i64 7}
!292 = !{ptr @_ZN11xalanc_1_1015XPathExpression23pushArgumentOnOpCodeMapERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_106XToken3setERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, i64 7}
!293 = !{ptr @_ZN11xalanc_1_1015XPathExpression23pushArgumentOnOpCodeMapERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9push_backERKi, i64 7}
!294 = !{ptr @_ZN11xalanc_1_1015XPathExpression23pushArgumentOnOpCodeMapERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm, i64 7}
!295 = !{ptr @_ZN11xalanc_1_1015XPathExpression23pushArgumentOnOpCodeMapEdRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEixEm, i64 43}
!296 = !{ptr @_ZN11xalanc_1_1015XPathExpression23pushArgumentOnOpCodeMapEdRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1015XPathExpression16getMemoryManagerEv, i64 43}
!297 = !{ptr @_ZN11xalanc_1_1015XPathExpression23pushArgumentOnOpCodeMapEdRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_106XToken3setEdRKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, i64 43}
!298 = !{ptr @_ZN11xalanc_1_1015XPathExpression23pushArgumentOnOpCodeMapEdRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9push_backERKi, i64 43}
!299 = !{ptr @_ZN11xalanc_1_1015XPathExpression23pushArgumentOnOpCodeMapEdRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm, i64 43}
!300 = !{ptr @_ZN11xalanc_1_1015XPathExpression28pushNumberLiteralOnOpCodeMapEd, ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE4sizeEv, i64 43}
!301 = !{ptr @_ZN11xalanc_1_1015XPathExpression28pushNumberLiteralOnOpCodeMapEd, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9push_backERKi, i64 43}
!302 = !{ptr @_ZN11xalanc_1_1015XPathExpression28pushNumberLiteralOnOpCodeMapEd, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm, i64 43}
!303 = !{ptr @_ZN11xalanc_1_1015XPathExpression28pushNumberLiteralOnOpCodeMapEd, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE9push_backERKd, i64 43}
!304 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv, i64 68}
!305 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE9push_backERKd, ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv, i64 86}
!306 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE9push_backERKd, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd, i64 43}
!307 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd, ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv, i64 172}
!308 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10endPointerEv, i64 43}
!309 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIdE9constructEPdRKdRN11xercesc_2_713MemoryManagerE, i64 43}
!310 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 43}
!311 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd, i64 43}
!312 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE4swapERS3_, i64 43}
!313 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEED2Ev, i64 43}
!314 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE9local_maxEmm, i64 25}
!315 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 25}
!316 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE5beginEv, i64 25}
!317 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE5beginEv, i64 25}
!318 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE3endEv, i64 25}
!319 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6insertEPdPKdS6_, i64 25}
!320 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE4swapERS3_, i64 25}
!321 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEED2Ev, i64 25}
!322 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE8allocateEm, i64 18}
!323 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv, i64 45}
!324 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE4swapERS3_, ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv, i64 138}
!325 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6insertEPdPKdS6_, ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv, i64 49}
!326 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6insertEPdPKdS6_, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE14local_distanceEPKdS5_, i64 25}
!327 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6insertEPdPKdS6_, ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE4sizeEv, i64 24}
!328 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6insertEPdPKdS6_, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE3endEv, i64 24}
!329 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6insertEPdPKdS6_, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE14ensureCapacityEm, i64 23}
!330 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6insertEPdPKdS6_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIdE9constructEPdRKdRN11xercesc_2_713MemoryManagerE, i64 35}
!331 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6insertEPdPKdS6_, ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE8capacityEv, i64 1}
!332 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6insertEPdPKdS6_, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd, i64 12}
!333 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv, i64 25}
!334 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv, i64 25}
!335 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10endPointerEv, i64 25}
!336 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE14local_distanceEPKdS5_, ptr @_ZSt8distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 25}
!337 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE14ensureCapacityEm, ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE8capacityEv, i64 25}
!338 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE9doReserveEm, i64 1}
!339 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10endPointerEv, i64 25}
!340 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE8capacityEv, ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv, i64 25}
!341 = !{ptr @_ZSt8distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKdENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 25}
!342 = !{ptr @_ZSt8distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 25}
!343 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10invariantsEv, i64 2}
!344 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 1}
!345 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE4swapERS3_, i64 1}
!346 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEED2Ev, i64 1}
!347 = !{ptr @_ZN11xalanc_1_1015XPathExpression27pushCurrentTokenOnOpCodeMapEv, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9push_backERKi, i64 377}
!348 = !{ptr @_ZN11xalanc_1_1015XPathExpression27pushCurrentTokenOnOpCodeMapEv, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEixEm, i64 377}
!349 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!350 = !{!"function_entry_count", i64 0}
!351 = !{!352, !352, i64 0}
!352 = !{!"vtable pointer", !353, i64 0}
!353 = !{!"Simple C++ TBAA"}
!354 = !{!"function_entry_count", i64 832918}
!355 = !{!"function_entry_count", i64 833358}
!356 = !{!357, !358, i64 0}
!357 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !358, i64 0, !360, i64 8, !360, i64 16, !358, i64 24}
!358 = !{!"any pointer", !359, i64 0}
!359 = !{!"omnipotent char", !353, i64 0}
!360 = !{!"long", !359, i64 0}
!361 = !{!"function_entry_count", i64 43398227}
!362 = !{!"function_entry_count", i64 128698679}
!363 = !{!357, !360, i64 16}
!364 = !{!"branch_weights", i32 43398290, i32 85300391}
!365 = !{!357, !358, i64 24}
!366 = !{!"function_entry_count", i64 6521798503}
!367 = !{!"function_entry_count", i64 85300390}
!368 = !{!"branch_weights", i32 1, i32 12185770}
!369 = !{!"branch_weights", i32 12185770, i32 -193930395}
!370 = distinct !{!370, !371}
!371 = !{!"llvm.loop.mustprogress"}
!372 = !{!"function_entry_count", i64 227375739}
!373 = !{!"function_entry_count", i64 568333389}
!374 = !{!"function_entry_count", i64 30137156670}
!375 = !{!"function_entry_count", i64 825654975}
!376 = !{!357, !360, i64 8}
!377 = !{!"function_entry_count", i64 164}
!378 = !{!379, !381, i64 32}
!379 = !{!"_ZTSN11xalanc_1_1015XPathExpressionE", !380, i64 0, !381, i64 32, !382, i64 40, !381, i64 72, !358, i64 80, !383, i64 88}
!380 = !{!"_ZTSN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE", !358, i64 0, !360, i64 8, !360, i64 16, !358, i64 24}
!381 = !{!"int", !359, i64 0}
!382 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEE", !358, i64 0, !360, i64 8, !360, i64 16, !358, i64 24}
!383 = !{!"_ZTSN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEE", !358, i64 0, !360, i64 8, !360, i64 16, !358, i64 24}
!384 = !{!379, !381, i64 72}
!385 = !{!379, !358, i64 80}
!386 = !{!"function_entry_count", i64 220}
!387 = !{!380, !358, i64 0}
!388 = !{!380, !360, i64 8}
!389 = !{!380, !360, i64 16}
!390 = !{!"branch_weights", i32 221, i32 1}
!391 = !{!380, !358, i64 24}
!392 = !{!382, !358, i64 0}
!393 = !{!382, !360, i64 8}
!394 = !{!382, !360, i64 16}
!395 = !{!"branch_weights", i32 165, i32 1}
!396 = !{!382, !358, i64 24}
!397 = !{!"function_entry_count", i64 190}
!398 = !{!383, !358, i64 0}
!399 = !{!383, !360, i64 8}
!400 = !{!383, !360, i64 16}
!401 = !{!"branch_weights", i32 191, i32 1}
!402 = !{!383, !358, i64 24}
!403 = !{!"function_entry_count", i64 235}
!404 = !{!"branch_weights", i32 192, i32 45}
!405 = !{!"function_entry_count", i64 328}
!406 = !{!"branch_weights", i32 165, i32 165}
!407 = !{!"function_entry_count", i64 467}
!408 = !{!"branch_weights", i32 249, i32 220}
!409 = !{!"function_entry_count", i64 219}
!410 = !{!"function_entry_count", i64 68633739}
!411 = !{!"function_entry_count", i64 12198}
!412 = !{!"function_entry_count", i64 44}
!413 = !{!"function_entry_count", i64 83661}
!414 = !{!"function_entry_count", i64 192}
!415 = !{!"branch_weights", i32 193, i32 28}
!416 = !{!"branch_weights", i32 1, i32 193}
!417 = !{!"function_entry_count", i64 274}
!418 = !{!360, !360, i64 0}
!419 = !{!"function_entry_count", i64 27}
!420 = !{!"branch_weights", i32 1, i32 28}
!421 = !{!"branch_weights", i32 28, i32 1}
!422 = !{!"branch_weights", i32 1, i32 223}
!423 = !{!"branch_weights", i32 223, i32 2897}
!424 = distinct !{!424, !371}
!425 = distinct !{!425, !371}
!426 = distinct !{!426, !371}
!427 = distinct !{!427, !371}
!428 = !{!"function_entry_count", i64 306}
!429 = !{!"function_entry_count", i64 68609147}
!430 = !{!"function_entry_count", i64 59}
!431 = !{!"function_entry_count", i64 5501}
!432 = !{!"function_entry_count", i64 370}
!433 = !{!"function_entry_count", i64 55}
!434 = !{!"branch_weights", i32 29, i32 28}
!435 = !{!"function_entry_count", i64 2996}
!436 = !{!381, !381, i64 0}
!437 = !{!"function_entry_count", i64 114}
!438 = !{!"function_entry_count", i64 2562}
!439 = !{!"branch_weights", i32 2563, i32 1}
!440 = !{!"function_entry_count", i64 32}
!441 = !{!358, !358, i64 0}
!442 = !{!"function_entry_count", i64 2987}
!443 = !{!"function_entry_count", i64 96}
!444 = !{!"function_entry_count", i64 64}
!445 = !{!"branch_weights", i32 1, i32 33}
!446 = !{!"branch_weights", i32 1, i32 165}
!447 = distinct !{!447, !371}
!448 = distinct !{!448, !371}
!449 = distinct !{!449, !371}
!450 = distinct !{!450, !371}
!451 = !{!"function_entry_count", i64 176}
!452 = !{!"function_entry_count", i64 12}
!453 = !{!"function_entry_count", i64 3619}
!454 = !{!"function_entry_count", i64 197}
!455 = !{!"function_entry_count", i64 983}
!456 = !{!"branch_weights", i32 984, i32 1}
!457 = !{!"function_entry_count", i64 9}
!458 = !{!"function_entry_count", i64 1180}
!459 = distinct !{!459, !371}
!460 = !{!"function_entry_count", i64 50}
!461 = !{!462, !358, i64 24}
!462 = !{!"_ZTSN11xalanc_1_106XTokenE", !463, i64 0, !358, i64 24, !466, i64 32, !467, i64 40}
!463 = !{!"_ZTSN11xalanc_1_107XObjectE", !464, i64 0, !465, i64 12, !358, i64 16}
!464 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !381, i64 8}
!465 = !{!"_ZTSN11xalanc_1_107XObject11eObjectTypeE", !359, i64 0}
!466 = !{!"double", !359, i64 0}
!467 = !{!"bool", !359, i64 0}
!468 = !{!462, !466, i64 32}
!469 = !{!"function_entry_count", i64 18}
!470 = !{!"branch_weights", i32 159, i32 1}
!471 = !{!"branch_weights", i32 465, i32 159}
!472 = distinct !{!472, !371}
!473 = !{!"branch_weights", i32 1, i32 179}
!474 = !{!"branch_weights", i32 179, i32 24149}
!475 = distinct !{!475, !371}
!476 = !{!"function_entry_count", i64 70}
!477 = !{!"function_entry_count", i64 6081}
!478 = !{!"function_entry_count", i64 139}
!479 = !{!"branch_weights", i32 164, i32 1}
!480 = !{!"branch_weights", i32 1, i32 0}
!481 = distinct !{!481, !371}
!482 = !{!"branch_weights", i32 1, i32 219}
!483 = !{!"branch_weights", i32 219, i32 216}
!484 = distinct !{!484, !371}
!485 = !{!"function_entry_count", i64 331}
!486 = !{!"branch_weights", i32 168, i32 165}
!487 = !{!"branch_weights", i32 2399, i32 165}
!488 = distinct !{!488, !371}
!489 = !{!"branch_weights", i32 820, i32 165}
!490 = distinct !{!490, !371}
!491 = !{!"function_entry_count", i64 1225}
!492 = !{!"function_entry_count", i64 2231}
!493 = !{!"branch_weights", i32 4465, i32 4981824}
!494 = !{!"function_entry_count", i64 5359}
!495 = !{!"function_entry_count", i64 233670}
!496 = !{!"function_entry_count", i64 28}
!497 = !{!"branch_weights", i32 1, i32 29}
!498 = !{!"branch_weights", i32 29, i32 1}
!499 = !{!"branch_weights", i32 231, i32 1}
!500 = !{!"branch_weights", i32 1, i32 46}
!501 = !{!"branch_weights", i32 231, i32 137}
!502 = distinct !{!502, !371}
!503 = !{!"function_entry_count", i64 4183}
!504 = !{!"function_entry_count", i64 1198}
!505 = !{!"function_entry_count", i64 1165}
!506 = !{!"branch_weights", i32 1, i32 1166}
!507 = !{!"branch_weights", i32 655, i32 512}
!508 = !{!"branch_weights", i32 210, i32 445}
!509 = !{!"branch_weights", i32 0, i32 210}
!510 = distinct !{!510, !371}
!511 = !{!"branch_weights", i32 165, i32 1002}
!512 = !{!"function_entry_count", i64 2498}
!513 = !{!"function_entry_count", i64 2}
!514 = !{!"branch_weights", i32 3, i32 1}
!515 = !{!"function_entry_count", i64 60}
!516 = !{!"branch_weights", i32 29, i32 33}
!517 = !{!"branch_weights", i32 1, i32 231}
!518 = distinct !{!518, !371}
!519 = !{!"branch_weights", i32 33, i32 1}
!520 = distinct !{!520, !371}
!521 = distinct !{!521, !371}
!522 = !{!"branch_weights", i32 1, i32 131}
!523 = !{!"branch_weights", i32 131, i32 129}
!524 = distinct !{!524, !371}
!525 = distinct !{!525, !371}
!526 = !{!"function_entry_count", i64 803}
!527 = !{!"branch_weights", i32 1, i32 804}
!528 = !{!"branch_weights", i32 804, i32 1}
!529 = !{!"function_entry_count", i64 4192}
!530 = !{!"branch_weights", i32 4193, i32 1}
!531 = !{!"function_entry_count", i64 199}
!532 = !{!"branch_weights", i32 200, i32 1}
!533 = !{!"branch_weights", i32 1, i32 200}
!534 = distinct !{!534, !371}
!535 = distinct !{!535, !371}
!536 = distinct !{!536, !371}
!537 = !{!"function_entry_count", i64 3607}
!538 = !{!"function_entry_count", i64 316041560}
!539 = !{!"function_entry_count", i64 12093723}
!540 = !{!"function_entry_count", i64 967143541}
!541 = !{!"branch_weights", i32 403628487, i32 563515056}
!542 = !{!"function_entry_count", i64 3070433826}
!543 = !{!"function_entry_count", i64 1083116306}
!544 = !{!"function_entry_count", i64 565220908}
!545 = distinct !{!545, !371}
!546 = !{!547, !358, i64 16}
!547 = !{!"_ZTSN11xalanc_1_1011PrintWriterE", !548, i64 0, !467, i64 8, !358, i64 16}
!548 = !{!"_ZTSN11xalanc_1_106WriterE"}
!549 = !{!"function_entry_count", i64 215}
!550 = !{!"function_entry_count", i64 7}
!551 = !{!"function_entry_count", i64 43}
!552 = !{!466, !466, i64 0}
!553 = !{!"function_entry_count", i64 68}
!554 = !{!"function_entry_count", i64 86}
!555 = !{!"branch_weights", i32 44, i32 44}
!556 = !{!"branch_weights", i32 19, i32 26}
!557 = !{!"function_entry_count", i64 45}
!558 = !{!"branch_weights", i32 21, i32 26}
!559 = !{!"branch_weights", i32 2, i32 20}
!560 = !{!"function_entry_count", i64 69}
!561 = !{!"function_entry_count", i64 25}
!562 = !{!"branch_weights", i32 1, i32 26}
!563 = !{!"branch_weights", i32 26, i32 1}
!564 = !{!"branch_weights", i32 1, i32 207}
!565 = !{!"branch_weights", i32 207, i32 105}
!566 = distinct !{!566, !371}
!567 = distinct !{!567, !371}
!568 = distinct !{!568, !371}
!569 = distinct !{!569, !371}
!570 = !{!"function_entry_count", i64 1}
!571 = !{!"function_entry_count", i64 377}
