; ModuleID = 'OutputContextStack.cpp'
source_filename = "OutputContextStack.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::OutputContextStack" = type { %"class.xalanc_1_10::XalanDeque", %"struct.xalanc_1_10::XalanDequeIterator", i64 }
%"class.xalanc_1_10::XalanDeque" = type { ptr, i64, %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanVector" }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanDequeIterator" = type { ptr, i64 }
%"struct.xalanc_1_10::ConstructValueWithMemoryManager" = type { %"struct.xalanc_1_10::OutputContextStack::OutputContext" }
%"struct.xalanc_1_10::OutputContextStack::OutputContext" = type <{ ptr, %"class.xalanc_1_10::AttributeListImpl", %"class.xalanc_1_10::XalanDOMString", i8, i8, [6 x i8] }>
%"class.xalanc_1_10::AttributeListImpl" = type { %"class.xercesc_2_7::AttributeList", %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanVector.0" }
%"class.xercesc_2_7::AttributeList" = type { ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.1", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%"class.std::back_insert_iterator" = type { ptr }

$_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEmm = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5beginEv = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEppEv = comdat any

$_ZNK11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEeqERKS9_ = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE6resizeEm = comdat any

$_ZNK11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE4sizeEv = comdat any

$_ZNK11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEmiEl = comdat any

$_ZN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEaSERKS9_ = comdat any

$_ZN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEdeEv = comdat any

$_ZN11xalanc_1_1018OutputContextStack13OutputContext5resetEv = comdat any

$_ZN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEmmEv = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE4swapERS5_ = comdat any

$_ZNK11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEneERKS9_ = comdat any

$_ZN11xalanc_1_1014XalanDOMString5clearEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

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

$_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEixEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEixEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEixEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1031ConstructValueWithMemoryManagerINS_18OutputContextStack13OutputContextEEC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZSt6fill_nISt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS1_18OutputContextStack13OutputContextENS1_32ConstructWithMemoryManagerTraitsIS4_EEEEEmS4_ET_S9_T0_RKT1_ = comdat any

$_ZSt13back_inserterIN11xalanc_1_1010XalanDequeINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEESt20back_insert_iteratorIT_ERS8_ = comdat any

$_ZN11xalanc_1_1031ConstructValueWithMemoryManagerINS_18OutputContextStack13OutputContextEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1018OutputContextStack13OutputContextC2ERN11xercesc_2_713MemoryManagerEPNS_17FormatterListenerE = comdat any

$_ZSt10__fill_n_aISt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS1_18OutputContextStack13OutputContextENS1_32ConstructWithMemoryManagerTraitsIS4_EEEEEmS4_ET_S9_T0_RKT1_St19output_iterator_tag = comdat any

$_ZSt17__size_to_integerm = comdat any

$_ZSt19__iterator_categoryISt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS1_18OutputContextStack13OutputContextENS1_32ConstructWithMemoryManagerTraitsIS4_EEEEEENSt15iterator_traitsIT_E17iterator_categoryERKSA_ = comdat any

$_ZSt11__fill_n_a1ISt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS1_18OutputContextStack13OutputContextENS1_32ConstructWithMemoryManagerTraitsIS4_EEEEEmS4_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT1_EE7__valueET_E6__typeESC_T0_RKSB_ = comdat any

$_ZNSt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEEdeEv = comdat any

$_ZNSt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEEaSERKS3_ = comdat any

$_ZNSt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEEppEv = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE5emptyEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE4backEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9push_backERKS6_ = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE11getNewBlockEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_ = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_11XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS3_EEEEE9constructEPS7_RKS7_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERKS9_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE4swapERS9_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE6insertEPS6_PKS6_SC_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE14local_distanceEPKS6_SB_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE14ensureCapacityEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE8capacityEv = comdat any

$_ZSt4copyIPKPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEPS7_ET0_T_SC_SB_ = comdat any

$_ZSt13copy_backwardIPPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEES8_ET0_T_SA_S9_ = comdat any

$_ZSt8distanceIPKPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEENSt15iterator_traitsIT_E15difference_typeESB_SB_ = comdat any

$_ZSt10__distanceIPKPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSB_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9doReserveEm = comdat any

$_ZSt13__copy_move_aILb0EPKPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEPS7_ET1_T0_SC_SB_ = comdat any

$_ZSt12__miter_baseIPKPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEET_SA_ = comdat any

$_ZSt12__niter_wrapIPPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEET_RKS9_S9_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEPS7_ET1_T0_SC_SB_ = comdat any

$_ZSt12__niter_baseIPKPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEET_SA_ = comdat any

$_ZSt12__niter_baseIPPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEET_S9_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEPS7_ET1_T0_SC_SB_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_1011XalanVectorINS3_18OutputContextStack13OutputContextENS3_32ConstructWithMemoryManagerTraitsIS6_EEEEEEPT_PKSB_SE_SC_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEES8_ET1_T0_SA_S9_ = comdat any

$_ZSt12__miter_baseIPPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEET_S9_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEES8_ET1_T0_SA_S9_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEES8_ET1_T0_SA_S9_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1011XalanVectorINS3_18OutputContextStack13OutputContextENS3_32ConstructWithMemoryManagerTraitsIS6_EEEEEEPT_PKSB_SE_SC_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE8allocateEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE8pop_backEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE8allocateEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE7destroyERS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1026ConstructWithMemoryManagerINS_18OutputContextStack13OutputContextEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE4swapERS5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1018OutputContextStack13OutputContextC2ERKS1_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE14local_distanceEPKS2_S7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE14ensureCapacityEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE8capacityEv = comdat any

$_ZSt4copyIPKN11xalanc_1_1018OutputContextStack13OutputContextEPS2_ET0_T_S7_S6_ = comdat any

$_ZSt13copy_backwardIPN11xalanc_1_1018OutputContextStack13OutputContextES3_ET0_T_S5_S4_ = comdat any

$_ZSt8distanceIPKN11xalanc_1_1018OutputContextStack13OutputContextEENSt15iterator_traitsIT_E15difference_typeES6_S6_ = comdat any

$_ZSt10__distanceIPKN11xalanc_1_1018OutputContextStack13OutputContextEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKN11xalanc_1_1018OutputContextStack13OutputContextEENSt15iterator_traitsIT_E17iterator_categoryERKS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9doReserveEm = comdat any

$_ZSt13__copy_move_aILb0EPKN11xalanc_1_1018OutputContextStack13OutputContextEPS2_ET1_T0_S7_S6_ = comdat any

$_ZSt12__miter_baseIPKN11xalanc_1_1018OutputContextStack13OutputContextEET_S5_ = comdat any

$_ZSt12__niter_wrapIPN11xalanc_1_1018OutputContextStack13OutputContextEET_RKS4_S4_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKN11xalanc_1_1018OutputContextStack13OutputContextEPS2_ET1_T0_S7_S6_ = comdat any

$_ZSt12__niter_baseIPKN11xalanc_1_1018OutputContextStack13OutputContextEET_S5_ = comdat any

$_ZSt12__niter_baseIPN11xalanc_1_1018OutputContextStack13OutputContextEET_S4_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKN11xalanc_1_1018OutputContextStack13OutputContextEPS2_ET1_T0_S7_S6_ = comdat any

$_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1018OutputContextStack13OutputContextEPS5_EET0_T_SA_S9_ = comdat any

$_ZN11xalanc_1_1018OutputContextStack13OutputContextaSERKS1_ = comdat any

$_ZN11xalanc_1_1014XalanDOMStringaSERKS0_ = comdat any

$_ZN11xalanc_1_1014XalanDOMString6assignERKS0_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZSt4copyIPKtPtET0_T_S4_S3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_ = comdat any

$_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZSt12__miter_baseIPKtET_S2_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPKtET_S2_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPN11xalanc_1_1018OutputContextStack13OutputContextES3_ET1_T0_S5_S4_ = comdat any

$_ZSt12__miter_baseIPN11xalanc_1_1018OutputContextStack13OutputContextEET_S4_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPN11xalanc_1_1018OutputContextStack13OutputContextES3_ET1_T0_S5_S4_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPN11xalanc_1_1018OutputContextStack13OutputContextES3_ET1_T0_S5_S4_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1018OutputContextStack13OutputContextES6_EET0_T_S8_S7_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE7destroyEPS2_S6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10deallocateEPS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE7destroyERS2_ = comdat any

$_ZN11xalanc_1_1018OutputContextStack13OutputContextD2Ev = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZNSt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEEC2ERS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE7destroyEPS6_SA_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10deallocateEPS6_ = comdat any

$_ZN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEC2EPS8_m = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5clearEv = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10deallocateEPNS_11XalanVectorIS2_S4_EE = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE7reserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5clearEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE5clearEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE12shrinkToSizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE8pop_backEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE12shrinkToSizeEm = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE8pop_backEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE4backEv = comdat any

@_ZN11xalanc_1_1018OutputContextStackC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1018OutputContextStackC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1018OutputContextStackD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1018OutputContextStackD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1018OutputContextStackC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !278 {
  tail call void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 1, i64 noundef 10) #10
  %3 = getelementptr inbounds %"class.xalanc_1_10::OutputContextStack", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanDequeIterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(80) %0) #10
          to label %4 unwind label %6

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::OutputContextStack", ptr %0, i64 0, i32 2
  store i64 0, ptr %5, align 8, !tbaa !279
  ret void

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #11
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !278 {
  %5 = alloca %"struct.xalanc_1_10::ConstructValueWithMemoryManager", align 8
  store ptr %1, ptr %0, align 8, !tbaa !288
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !289
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2
  %8 = udiv i64 %2, %3
  %9 = urem i64 %2, %3
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = add i64 %8, %11
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %12) #10
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) #10
          to label %14 unwind label %21

14:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #12
  %15 = load ptr, ptr %0, align 8, !tbaa !288
  invoke void @_ZN11xalanc_1_1031ConstructValueWithMemoryManagerINS_18OutputContextStack13OutputContextEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(8) %15) #10
          to label %16 unwind label %23

16:                                               ; preds = %14
  %17 = invoke ptr @_ZSt13back_inserterIN11xalanc_1_1010XalanDequeINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEESt20back_insert_iteratorIT_ERS8_(ptr noundef nonnull align 8 dereferenceable(80) %0) #10
          to label %18 unwind label %25

18:                                               ; preds = %16
  %19 = invoke ptr @_ZSt6fill_nISt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS1_18OutputContextStack13OutputContextENS1_32ConstructWithMemoryManagerTraitsIS4_EEEEEmS4_ET_S9_T0_RKT1_(ptr %17, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(122) %5) #10
          to label %20 unwind label %25

20:                                               ; preds = %18
  call void @_ZN11xalanc_1_1031ConstructValueWithMemoryManagerINS_18OutputContextStack13OutputContextEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #12
  ret void

21:                                               ; preds = %4
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %29

23:                                               ; preds = %14
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %27

25:                                               ; preds = %18, %16
  %26 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1031ConstructValueWithMemoryManagerINS_18OutputContextStack13OutputContextEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #11
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi { ptr, i32 } [ %26, %25 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #12
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #11
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi { ptr, i32 } [ %28, %27 ], [ %22, %21 ]
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #11
  resume { ptr, i32 } %30
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5beginEv(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanDequeIterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 comdat align 2 !prof !290 {
  tail call void @_ZN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEC2EPS8_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, i64 noundef 0) #10
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !278 {
  invoke void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #10
          to label %2 unwind label %19

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3
  %4 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %5 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %15, label %7, !prof !291

7:                                                ; preds = %2, %11
  %8 = phi ptr [ %12, %11 ], [ %4, %2 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !292
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #11
  %10 = load ptr, ptr %8, align 8, !tbaa !292
  invoke void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10deallocateEPNS_11XalanVectorIS2_S4_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %10) #10
          to label %11 unwind label %17

11:                                               ; preds = %7
  %12 = getelementptr inbounds ptr, ptr %8, i64 1
  %13 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %15, label %7, !prof !293, !llvm.loop !294

15:                                               ; preds = %11, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %16) #11
  ret void

17:                                               ; preds = %7
  %18 = landingpad { ptr, i32 }
          catch ptr null
  br label %21

19:                                               ; preds = %1
  %20 = landingpad { ptr, i32 }
          catch ptr null
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi { ptr, i32 } [ %18, %17 ], [ %20, %19 ]
  %23 = extractvalue { ptr, i32 } %22, 0
  tail call void @__clang_call_terminate(ptr %23) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1018OutputContextStackD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 align 2 !prof !278 {
  tail call void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1018OutputContextStack11pushContextEPNS_17FormatterListenerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !296 {
  %3 = alloca %"struct.xalanc_1_10::XalanDequeIterator", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanDequeIterator", align 8
  %5 = alloca %"struct.xalanc_1_10::XalanDequeIterator", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::OutputContextStack", ptr %0, i64 0, i32 1
  %7 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEppEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #10
  %8 = getelementptr inbounds %"class.xalanc_1_10::OutputContextStack", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !279
  %10 = add i64 %9, 1
  store i64 %10, ptr %8, align 8, !tbaa !279
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  call void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanDequeIterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(80) %0) #10
  %11 = call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEeqERKS9_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  br i1 %11, label %12, label %16, !prof !297

12:                                               ; preds = %2
  %13 = call noundef i64 @_ZNK11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #10
  %14 = add i64 %13, 1
  call void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %14) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  call void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanDequeIterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(80) %0) #10
  call void @_ZNK11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEmiEl(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanDequeIterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef 1) #10
  %15 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEaSERKS9_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  br label %16

16:                                               ; preds = %12, %2
  %17 = icmp eq ptr %1, null
  br i1 %17, label %20, label %18, !prof !298

18:                                               ; preds = %16
  %19 = call noundef nonnull align 8 dereferenceable(122) ptr @_ZN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #10
  store ptr %1, ptr %19, align 8, !tbaa !299
  br label %20

20:                                               ; preds = %18, %16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEppEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !296 {
  %2 = getelementptr inbounds %"struct.xalanc_1_10::XalanDequeIterator", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !308
  %4 = add i64 %3, 1
  store i64 %4, ptr %2, align 8, !tbaa !308
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEeqERKS9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 !prof !309 {
  %3 = load ptr, ptr %1, align 8, !tbaa !310
  %4 = load ptr, ptr %0, align 8, !tbaa !310
  %5 = icmp eq ptr %3, %4
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanDequeIterator", ptr %1, i64 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds %"struct.xalanc_1_10::XalanDequeIterator", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8
  %10 = icmp eq i64 %7, %9
  %11 = select i1 %5, i1 %10, i1 false, !prof !311
  ret i1 %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE3endEv(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanDequeIterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 comdat align 2 !prof !312 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #10
  tail call void @_ZN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEC2EPS8_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, i64 noundef %3) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !313 {
  %3 = alloca %"struct.xalanc_1_10::ConstructValueWithMemoryManager", align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #12
  %4 = load ptr, ptr %0, align 8, !tbaa !288
  call void @_ZN11xalanc_1_1031ConstructValueWithMemoryManagerINS_18OutputContextStack13OutputContextEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  %5 = invoke noundef i64 @_ZNK11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #10
          to label %6 unwind label %14

6:                                                ; preds = %2
  %7 = icmp ult i64 %5, %1
  br i1 %7, label %8, label %21, !prof !314

8:                                                ; preds = %6, %19
  %9 = phi i64 [ %20, %19 ], [ 0, %6 ]
  %10 = invoke noundef i64 @_ZNK11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #10
          to label %11 unwind label %16

11:                                               ; preds = %8
  %12 = sub i64 %1, %10
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %18, label %32, !prof !315

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %33

16:                                               ; preds = %18, %8
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %33

18:                                               ; preds = %11
  invoke void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(122) %3) #10
          to label %19 unwind label %16

19:                                               ; preds = %18
  %20 = add nuw i64 %9, 1
  br label %8, !llvm.loop !316

21:                                               ; preds = %6, %30
  %22 = phi i64 [ %31, %30 ], [ 0, %6 ]
  %23 = invoke noundef i64 @_ZNK11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #10
          to label %24 unwind label %27

24:                                               ; preds = %21
  %25 = sub i64 %23, %1
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %29, label %32

27:                                               ; preds = %29, %21
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %33

29:                                               ; preds = %24
  invoke void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #10
          to label %30 unwind label %27

30:                                               ; preds = %29
  %31 = add nuw i64 %22, 1
  br label %21, !llvm.loop !317

32:                                               ; preds = %24, %11
  call void @_ZN11xalanc_1_1031ConstructValueWithMemoryManagerINS_18OutputContextStack13OutputContextEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #12
  ret void

33:                                               ; preds = %27, %16, %14
  %34 = phi { ptr, i32 } [ %17, %16 ], [ %28, %27 ], [ %15, %14 ]
  call void @_ZN11xalanc_1_1031ConstructValueWithMemoryManagerINS_18OutputContextStack13OutputContextEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #12
  resume { ptr, i32 } %34
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 !prof !318 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  br i1 %3, label %14, label %4, !prof !319

4:                                                ; preds = %1
  %5 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %6 = add i64 %5, -1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !289
  %9 = mul i64 %6, %8
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %11 = load ptr, ptr %10, align 8, !tbaa !292
  %12 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %11) #10
  %13 = add i64 %12, %9
  br label %14

14:                                               ; preds = %1, %4
  %15 = phi i64 [ %13, %4 ], [ 0, %1 ]
  ret i64 %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEmiEl(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanDequeIterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !313 {
  %4 = load ptr, ptr %1, align 8, !tbaa !310
  %5 = getelementptr inbounds %"struct.xalanc_1_10::XalanDequeIterator", ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !308
  %7 = sub i64 %6, %2
  tail call void @_ZN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEC2EPS8_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %4, i64 noundef %7) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEaSERKS9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 !prof !313 {
  %3 = load ptr, ptr %1, align 8, !tbaa !310
  store ptr %3, ptr %0, align 8, !tbaa !310
  %4 = getelementptr inbounds %"struct.xalanc_1_10::XalanDequeIterator", ptr %1, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !308
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanDequeIterator", ptr %0, i64 0, i32 1
  store i64 %5, ptr %6, align 8, !tbaa !308
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(122) ptr @_ZN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !320 {
  %2 = load ptr, ptr %0, align 8, !tbaa !310
  %3 = getelementptr inbounds %"struct.xalanc_1_10::XalanDequeIterator", ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !308
  %5 = tail call noundef nonnull align 8 dereferenceable(122) ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(80) %2, i64 noundef %4) #10
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1018OutputContextStack10popContextEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 !prof !321 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::OutputContextStack", ptr %0, i64 0, i32 1
  %3 = tail call noundef nonnull align 8 dereferenceable(122) ptr @_ZN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  tail call void @_ZN11xalanc_1_1018OutputContextStack13OutputContext5resetEv(ptr noundef nonnull align 8 dereferenceable(122) %3) #10
  %4 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEmmEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  %5 = getelementptr inbounds %"class.xalanc_1_10::OutputContextStack", ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !279
  %7 = add i64 %6, -1
  store i64 %7, ptr %5, align 8, !tbaa !279
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018OutputContextStack13OutputContext5resetEv(ptr noundef nonnull align 8 dereferenceable(122) %0) local_unnamed_addr #0 comdat align 2 !prof !321 {
  store ptr null, ptr %0, align 8, !tbaa !299
  %2 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1017AttributeListImpl5clearEv(ptr noundef nonnull align 8 dereferenceable(72) %2) #10
  %3 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1014XalanDOMString5clearEv(ptr noundef nonnull align 8 dereferenceable(36) %3) #10
  %4 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %0, i64 0, i32 3
  store i8 0, ptr %4, align 8, !tbaa !322
  %5 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %0, i64 0, i32 4
  store i8 0, ptr %5, align 1, !tbaa !323
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEmmEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !321 {
  %2 = getelementptr inbounds %"struct.xalanc_1_10::XalanDequeIterator", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !308
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !308
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1018OutputContextStack5clearEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !324 {
  %2 = alloca %"class.xalanc_1_10::XalanDeque", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanDequeIterator", align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %2) #12
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #10
  call void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEmm(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 1, i64 noundef 10) #10
  call void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(80) %0) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  invoke void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanDequeIterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(80) %0) #10
          to label %5 unwind label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::OutputContextStack", ptr %0, i64 0, i32 1
  %7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEaSERKS9_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  %8 = getelementptr inbounds %"class.xalanc_1_10::OutputContextStack", ptr %0, i64 0, i32 2
  store i64 0, ptr %8, align 8, !tbaa !279
  call void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %2) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %2) #12
  ret void

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  call void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %2) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %2) #12
  resume { ptr, i32 } %10
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #1 comdat align 2 !prof !324 {
  %3 = load ptr, ptr %0, align 8, !tbaa !288
  %4 = load ptr, ptr %1, align 8, !tbaa !288
  store ptr %4, ptr %0, align 8, !tbaa !288
  store ptr %3, ptr %1, align 8, !tbaa !288
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %1, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE4swapERS9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) #10
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %1, i64 0, i32 3
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE4swapERS9_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1018OutputContextStack5resetEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 !prof !313 {
  %2 = alloca %"struct.xalanc_1_10::XalanDequeIterator", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::OutputContextStack", ptr %0, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  call void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanDequeIterator") align 8 %2, ptr noundef nonnull align 8 dereferenceable(80) %0) #10
  %4 = call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEneERKS9_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  br i1 %4, label %5, label %7, !prof !325

5:                                                ; preds = %1, %5
  call void @_ZN11xalanc_1_1018OutputContextStack10popContextEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  call void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanDequeIterator") align 8 %2, ptr noundef nonnull align 8 dereferenceable(80) %0) #10
  %6 = call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEneERKS9_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  br i1 %6, label %5, label %7, !prof !326, !llvm.loop !327

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEneERKS9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 !prof !328 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEeqERKS9_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017AttributeListImpl5clearEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMString5clearEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !329 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #10
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %3 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %4 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #10
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !330
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !331 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !332 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %9, label %5, !prof !333

5:                                                ; preds = %3
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %7 = tail call noundef ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_(ptr noundef %2, ptr noundef %6, ptr noundef %1) #10
  %8 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #10
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8) #10
  br label %9

9:                                                ; preds = %5, %3
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !334 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !335
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !336 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !337 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !338 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) #10
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %1) #10
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #10
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !338 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %8, label %4, !prof !339

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %6, %4 ], [ %1, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %6 = add i64 %5, -1
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %4, !prof !340, !llvm.loop !341

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !342 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #10
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !338 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !292
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #10
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #10
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !343 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !344 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !338 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !345 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !338 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !344 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !346

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %2, ptr align 2 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !347 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !348
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !348
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !335
  %7 = getelementptr inbounds i16, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %7) #10
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #1 comdat align 2 !prof !349 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !342 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !292
  call void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  %4 = call noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #10
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !342 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 1
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat !prof !342 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !350 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !335
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !348
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(122) ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !351 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !289
  %6 = udiv i64 %1, %5
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %6) #10
  %8 = load ptr, ptr %7, align 8, !tbaa !292
  %9 = load i64, ptr %4, align 8, !tbaa !289
  %10 = urem i64 %1, %9
  %11 = tail call noundef nonnull align 8 dereferenceable(122) ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %10) #10
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !351 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !352
  %5 = getelementptr inbounds ptr, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(122) ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !351 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !353
  %5 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 !prof !313 {
  store ptr %1, ptr %0, align 8, !tbaa !355
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !356
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !357
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !314

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #10
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !352
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1031ConstructValueWithMemoryManagerINS_18OutputContextStack13OutputContextEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !358 {
  tail call void @_ZN11xalanc_1_1018OutputContextStack13OutputContextC2ERN11xercesc_2_713MemoryManagerEPNS_17FormatterListenerE(ptr noundef nonnull align 8 dereferenceable(122) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt6fill_nISt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS1_18OutputContextStack13OutputContextENS1_32ConstructWithMemoryManagerTraitsIS4_EEEEEmS4_ET_S9_T0_RKT1_(ptr %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(122) %2) local_unnamed_addr #0 comdat !prof !278 {
  %4 = alloca %"class.std::back_insert_iterator", align 8
  store ptr %0, ptr %4, align 8
  %5 = tail call noundef i64 @_ZSt17__size_to_integerm(i64 noundef %1) #10
  call void @_ZSt19__iterator_categoryISt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS1_18OutputContextStack13OutputContextENS1_32ConstructWithMemoryManagerTraitsIS4_EEEEEENSt15iterator_traitsIT_E17iterator_categoryERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  %6 = call ptr @_ZSt10__fill_n_aISt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS1_18OutputContextStack13OutputContextENS1_32ConstructWithMemoryManagerTraitsIS4_EEEEEmS4_ET_S9_T0_RKT1_St19output_iterator_tag(ptr %0, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(122) %2) #10
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13back_inserterIN11xalanc_1_1010XalanDequeINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEESt20back_insert_iteratorIT_ERS8_(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat !prof !278 {
  %2 = alloca %"class.std::back_insert_iterator", align 8
  call void @_ZNSt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEEC2ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(80) %0) #10
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1031ConstructValueWithMemoryManagerINS_18OutputContextStack13OutputContextEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xalanc_1_1018OutputContextStack13OutputContextD2Ev(ptr noundef nonnull align 8 dereferenceable(122) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !358 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !357
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %10, label %5, !prof !359

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE7destroyEPS6_SA_(ptr noundef %6, ptr noundef %7) #10
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !352
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10deallocateEPS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #10
          to label %10 unwind label %11

10:                                               ; preds = %5, %1
  ret void

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  tail call void @__clang_call_terminate(ptr %13) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !313 {
  %3 = shl i64 %1, 3
  %4 = load ptr, ptr %0, align 8, !tbaa !355
  %5 = load ptr, ptr %4, align 8, !tbaa !360
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #10
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !362 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018OutputContextStack13OutputContextC2ERN11xercesc_2_713MemoryManagerEPNS_17FormatterListenerE(ptr noundef nonnull align 8 dereferenceable(122) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !358 {
  store ptr %2, ptr %0, align 8, !tbaa !299
  %4 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1017AttributeListImplC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %5 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
          to label %6 unwind label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %0, i64 0, i32 3
  store i8 0, ptr %7, align 8, !tbaa !322
  %8 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %0, i64 0, i32 4
  store i8 0, ptr %8, align 1, !tbaa !323
  ret void

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1017AttributeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %4) #11
  resume { ptr, i32 } %10
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017AttributeListImplC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017AttributeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt10__fill_n_aISt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS1_18OutputContextStack13OutputContextENS1_32ConstructWithMemoryManagerTraitsIS4_EEEEEmS4_ET_S9_T0_RKT1_St19output_iterator_tag(ptr %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(122) %2) local_unnamed_addr #0 comdat !prof !278 {
  %4 = tail call ptr @_ZSt11__fill_n_a1ISt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS1_18OutputContextStack13OutputContextENS1_32ConstructWithMemoryManagerTraitsIS4_EEEEEmS4_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT1_EE7__valueET_E6__typeESC_T0_RKSB_(ptr %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(122) %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt17__size_to_integerm(i64 noundef %0) local_unnamed_addr #1 comdat !prof !363 {
  ret i64 %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryISt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS1_18OutputContextStack13OutputContextENS1_32ConstructWithMemoryManagerTraitsIS4_EEEEEENSt15iterator_traitsIT_E17iterator_categoryERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat !prof !278 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt11__fill_n_a1ISt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS1_18OutputContextStack13OutputContextENS1_32ConstructWithMemoryManagerTraitsIS4_EEEEEmS4_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT1_EE7__valueET_E6__typeESC_T0_RKSB_(ptr %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(122) %2) local_unnamed_addr #0 comdat !prof !278 {
  %4 = alloca %"class.std::back_insert_iterator", align 8
  store ptr %0, ptr %4, align 8
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %15, label %6, !prof !291

6:                                                ; preds = %3, %6
  %7 = phi i64 [ %10, %6 ], [ %1, %3 ]
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(122) %2) #10
  %10 = add i64 %7, -1
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  %12 = icmp eq i64 %10, 0
  br i1 %12, label %13, label %6, !prof !293, !llvm.loop !364

13:                                               ; preds = %6
  %14 = load ptr, ptr %4, align 8
  br label %15

15:                                               ; preds = %13, %3
  %16 = phi ptr [ %14, %13 ], [ %0, %3 ]
  ret ptr %16
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !278 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(122) %1) local_unnamed_addr #0 comdat align 2 !prof !278 {
  %3 = load ptr, ptr %0, align 8, !tbaa !365
  tail call void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(122) %1) #10
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !278 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(122) %1) local_unnamed_addr #0 comdat align 2 !prof !358 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2
  %5 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  br i1 %5, label %13, label %6, !prof !359

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %8 = load ptr, ptr %7, align 8, !tbaa !292
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #10
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !289
  %12 = icmp ult i64 %9, %11
  br i1 %12, label %15, label %13, !prof !314

13:                                               ; preds = %6, %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %14 = tail call noundef ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE11getNewBlockEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #10
  store ptr %14, ptr %3, align 8, !tbaa !292
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9push_backERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  br label %15

15:                                               ; preds = %13, %6
  %16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %17 = load ptr, ptr %16, align 8, !tbaa !292
  call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(122) %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !367 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !356
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !290 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !352
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !356
  %6 = getelementptr ptr, ptr %3, i64 %5
  %7 = getelementptr ptr, ptr %6, i64 -1
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !368 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !369
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9push_backERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !313 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE11getNewBlockEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 !prof !278 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  br i1 %3, label %4, label %9, !prof !370

4:                                                ; preds = %1
  %5 = tail call noundef ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1) #10
  %6 = load ptr, ptr %0, align 8, !tbaa !288
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !289
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8) #10
  br label %12

9:                                                ; preds = %1
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %11 = load ptr, ptr %10, align 8, !tbaa !292
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  br label %12

12:                                               ; preds = %9, %4
  %13 = phi ptr [ %5, %4 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(122) %1) local_unnamed_addr #0 comdat align 2 !prof !358 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(122) %1) #10
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !371 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !313 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !356
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !357
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !314

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %11 = load ptr, ptr %0, align 8, !tbaa !355
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_11XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS3_EEEEE9constructEPS7_RKS7_RN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  %13 = load i64, ptr %4, align 8, !tbaa !356
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !356
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #12
  %21 = load ptr, ptr %0, align 8, !tbaa !355
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERKS9_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #10
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE4swapERS9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_11XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS3_EEEEE9constructEPS7_RKS7_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 !prof !313 {
  %4 = load ptr, ptr %1, align 8, !tbaa !292
  store ptr %4, ptr %0, align 8, !tbaa !292
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !372 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !352
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !356
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERKS9_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !278 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !355
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !356
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !370

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #12
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #10
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #10
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #10
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #10
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE6insertEPS6_PKS6_SC_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #10
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE4swapERS9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !373

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #10
  store ptr %24, ptr %8, align 8, !tbaa !352
  store i64 %3, ptr %7, align 8, !tbaa !357
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE4swapERS9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 !prof !278 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %3 = load ptr, ptr %0, align 8, !tbaa !355
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !352
  %7 = load ptr, ptr %1, align 8, !tbaa !355
  store ptr %7, ptr %0, align 8, !tbaa !355
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !374
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !352
  store ptr %11, ptr %5, align 8, !tbaa !352
  store ptr %3, ptr %1, align 8, !tbaa !355
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !374
  store <2 x i64> %9, ptr %4, align 8, !tbaa !374
  store <2 x i64> %12, ptr %8, align 8, !tbaa !374
  store ptr %6, ptr %10, align 8, !tbaa !352
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !324 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE6insertEPS6_PKS6_SC_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !324 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE14local_distanceEPKS6_SB_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #10
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %76, label %8

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #10
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %75, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !355
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_11XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS3_EEEEE9constructEPS7_RKS7_RN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #10
  %23 = getelementptr inbounds ptr, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !356
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !356
  %26 = getelementptr inbounds ptr, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %75, label %18, !llvm.loop !375

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #12
  %32 = load ptr, ptr %0, align 8, !tbaa !355
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #10
  %33 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  %34 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE6insertEPS6_PKS6_SC_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %34, ptr noundef %1) #10
          to label %35 unwind label %41

35:                                               ; preds = %31
  %36 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE6insertEPS6_PKS6_SC_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %36, ptr noundef %2, ptr noundef %3) #10
          to label %37 unwind label %41

37:                                               ; preds = %35
  %38 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  %39 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE6insertEPS6_PKS6_SC_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %38, ptr noundef %1, ptr noundef %39) #10
          to label %40 unwind label %41

40:                                               ; preds = %37
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE4swapERS9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  br label %75

41:                                               ; preds = %37, %35, %31
  %42 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  resume { ptr, i32 } %42

43:                                               ; preds = %28
  %44 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %45 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE14local_distanceEPKS6_SB_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %44) #10
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %53) #10
  %54 = getelementptr inbounds ptr, ptr %53, i64 1
  %55 = icmp eq ptr %54, %3
  br i1 %55, label %50, label %52, !llvm.loop !376

56:                                               ; preds = %50, %56
  %57 = phi ptr [ %58, %56 ], [ %1, %50 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %57) #10
  %58 = getelementptr inbounds ptr, ptr %57, i64 1
  %59 = icmp eq ptr %58, %44
  br i1 %59, label %60, label %56, !llvm.loop !377

60:                                               ; preds = %56, %50
  %61 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEPS7_ET0_T_SC_SB_(ptr noundef %2, ptr noundef %48, ptr noundef %1) #10
  br label %75

62:                                               ; preds = %43
  %63 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %64 = sub i64 0, %6
  %65 = getelementptr inbounds ptr, ptr %63, i64 %64
  %66 = icmp eq ptr %65, %44
  br i1 %66, label %71, label %67

67:                                               ; preds = %62, %67
  %68 = phi ptr [ %69, %67 ], [ %65, %62 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %68) #10
  %69 = getelementptr inbounds ptr, ptr %68, i64 1
  %70 = icmp eq ptr %69, %44
  br i1 %70, label %71, label %67, !llvm.loop !378

71:                                               ; preds = %67, %62
  %72 = getelementptr inbounds ptr, ptr %44, i64 %64
  %73 = tail call noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEES8_ET0_T_SA_S9_(ptr noundef %1, ptr noundef nonnull %72, ptr noundef %44) #10
  %74 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEPS7_ET0_T_SC_SB_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #10
  br label %75

75:                                               ; preds = %18, %13, %60, %71, %40
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  br label %76

76:                                               ; preds = %4, %75
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !328 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !352
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !324 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !352
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !324 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE14local_distanceEPKS6_SB_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !324 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEENSt15iterator_traitsIT_E15difference_typeESB_SB_(ptr noundef %1, ptr noundef %2) #10
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !368 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !356
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !379 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !324 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #10
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !324 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !357
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEPS7_ET0_T_SC_SB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !324 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEET_SA_(ptr noundef %0) #10
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEET_SA_(ptr noundef %1) #10
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEPS7_ET1_T0_SC_SB_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #10
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEES8_ET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !324 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEET_S9_(ptr noundef %0) #10
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEET_S9_(ptr noundef %1) #10
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEES8_ET1_T0_SA_S9_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #10
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEENSt15iterator_traitsIT_E15difference_typeESB_SB_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !324 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !292
  call void @_ZSt19__iterator_categoryIPKPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSB_(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  %4 = call noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #10
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !324 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSB_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat !prof !324 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !278 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #12
  %4 = load ptr, ptr %0, align 8, !tbaa !355
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERKS9_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #10
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE4swapERS9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEPS7_ET1_T0_SC_SB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !324 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !292
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEET_SA_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEET_SA_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEET_S9_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEPS7_ET1_T0_SC_SB_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #10
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEET_RKS9_S9_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #10
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEET_SA_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !324 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEET_RKS9_S9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !324 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEPS7_ET1_T0_SC_SB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !324 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEPS7_ET1_T0_SC_SB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEET_SA_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !324 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEET_S9_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !324 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEPS7_ET1_T0_SC_SB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !324 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_1011XalanVectorINS3_18OutputContextStack13OutputContextENS3_32ConstructWithMemoryManagerTraitsIS6_EEEEEEPT_PKSB_SE_SC_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_1011XalanVectorINS3_18OutputContextStack13OutputContextENS3_32ConstructWithMemoryManagerTraitsIS6_EEEEEEPT_PKSB_SE_SC_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !324 {
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
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEES8_ET1_T0_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !324 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !292
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEET_S9_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEET_S9_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEET_S9_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEES8_ET1_T0_SA_S9_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #10
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEET_RKS9_S9_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #10
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEET_S9_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !324 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEES8_ET1_T0_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !324 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEES8_ET1_T0_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_1011XalanVectorINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEES8_ET1_T0_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !324 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1011XalanVectorINS3_18OutputContextStack13OutputContextENS3_32ConstructWithMemoryManagerTraitsIS6_EEEEEEPT_PKSB_SE_SC_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1011XalanVectorINS3_18OutputContextStack13OutputContextENS3_32ConstructWithMemoryManagerTraitsIS6_EEEEEEPT_PKSB_SE_SC_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !324 {
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
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !324 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !352
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !356
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !278 {
  %3 = shl i64 %1, 5
  %4 = load ptr, ptr %0, align 8, !tbaa !288
  %5 = load ptr, ptr %4, align 8, !tbaa !360
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #10
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 !prof !278 {
  store ptr %1, ptr %0, align 8, !tbaa !380
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !369
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !381
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !370

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #10
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !353
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !278 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !356
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !356
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !352
  %7 = getelementptr inbounds ptr, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE7destroyERS6_(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !278 {
  %3 = shl i64 %1, 7
  %4 = load ptr, ptr %0, align 8, !tbaa !380
  %5 = load ptr, ptr %4, align 8, !tbaa !360
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #10
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE7destroyERS6_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !313 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(122) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !358 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !369
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !381
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !382

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %11 = load ptr, ptr %0, align 8, !tbaa !380
  %12 = tail call noundef ptr @_ZN11xalanc_1_1026ConstructWithMemoryManagerINS_18OutputContextStack13OutputContextEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(122) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  %13 = load i64, ptr %4, align 8, !tbaa !369
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !369
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #12
  %21 = load ptr, ptr %0, align 8, !tbaa !380
  call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #10
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(122) %1) #10
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1026ConstructWithMemoryManagerINS_18OutputContextStack13OutputContextEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(122) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !358 {
  tail call void @_ZN11xalanc_1_1018OutputContextStack13OutputContextC2ERKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(122) %0, ptr noundef nonnull align 8 dereferenceable(122) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !328 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !353
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !369
  %6 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !324 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  store ptr %2, ptr %0, align 8, !tbaa !380
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !369
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #12
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #10
  call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #10
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #10
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #10
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #10
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #10
  store ptr %24, ptr %8, align 8, !tbaa !353
  store i64 %3, ptr %7, align 8, !tbaa !381
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 !prof !324 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %3 = load ptr, ptr %0, align 8, !tbaa !380
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !353
  %7 = load ptr, ptr %1, align 8, !tbaa !380
  store ptr %7, ptr %0, align 8, !tbaa !380
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !374
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !353
  store ptr %11, ptr %5, align 8, !tbaa !353
  store ptr %3, ptr %1, align 8, !tbaa !380
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !374
  store <2 x i64> %9, ptr %4, align 8, !tbaa !374
  store <2 x i64> %12, ptr %8, align 8, !tbaa !374
  store ptr %6, ptr %10, align 8, !tbaa !353
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !278 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !381
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %11, label %5, !prof !373

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %6, ptr noundef %7) #10
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !353
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %10) #10
          to label %11 unwind label %12

11:                                               ; preds = %8, %1
  ret void

12:                                               ; preds = %8, %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018OutputContextStack13OutputContextC2ERKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(122) %0, ptr noundef nonnull align 8 dereferenceable(122) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !358 {
  %4 = load ptr, ptr %1, align 8, !tbaa !299
  store ptr %4, ptr %0, align 8, !tbaa !299
  %5 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %1, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1017AttributeListImplC1ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  %7 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %1, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i32 noundef -1) #10
          to label %9 unwind label %16

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %1, i64 0, i32 3
  %12 = load i8, ptr %11, align 8, !tbaa !322, !range !383, !noundef !384
  store i8 %12, ptr %10, align 8, !tbaa !322
  %13 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %0, i64 0, i32 4
  %14 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %1, i64 0, i32 4
  %15 = load i8, ptr %14, align 1, !tbaa !323, !range !383, !noundef !384
  store i8 %15, ptr %13, align 1, !tbaa !323
  ret void

16:                                               ; preds = %3
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1017AttributeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %5) #11
  resume { ptr, i32 } %17
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017AttributeListImplC1ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !324 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !324 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #10
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %76, label %8

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #10
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %75, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !380
  %22 = tail call noundef ptr @_ZN11xalanc_1_1026ConstructWithMemoryManagerINS_18OutputContextStack13OutputContextEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(122) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #10
  %23 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !369
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !369
  %26 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %75, label %18, !llvm.loop !385

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #12
  %32 = load ptr, ptr %0, align 8, !tbaa !380
  call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #10
  %33 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  %34 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %34, ptr noundef %1) #10
          to label %35 unwind label %41

35:                                               ; preds = %31
  %36 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %36, ptr noundef %2, ptr noundef %3) #10
          to label %37 unwind label %41

37:                                               ; preds = %35
  %38 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  %39 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %38, ptr noundef %1, ptr noundef %39) #10
          to label %40 unwind label %41

40:                                               ; preds = %37
  call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  br label %75

41:                                               ; preds = %37, %35, %31
  %42 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  resume { ptr, i32 } %42

43:                                               ; preds = %28
  %44 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %45 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %44) #10
  %46 = icmp ugt i64 %45, %6
  br i1 %46, label %62, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %2, i64 %45
  %49 = icmp eq ptr %48, %3
  br i1 %49, label %50, label %52

50:                                               ; preds = %52, %47
  %51 = icmp eq ptr %44, %1
  br i1 %51, label %60, label %56

52:                                               ; preds = %47, %52
  %53 = phi ptr [ %54, %52 ], [ %48, %47 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(122) %53) #10
  %54 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %53, i64 1
  %55 = icmp eq ptr %54, %3
  br i1 %55, label %50, label %52, !llvm.loop !386

56:                                               ; preds = %50, %56
  %57 = phi ptr [ %58, %56 ], [ %1, %50 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(122) %57) #10
  %58 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %57, i64 1
  %59 = icmp eq ptr %58, %44
  br i1 %59, label %60, label %56, !llvm.loop !387

60:                                               ; preds = %56, %50
  %61 = tail call noundef ptr @_ZSt4copyIPKN11xalanc_1_1018OutputContextStack13OutputContextEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %48, ptr noundef %1) #10
  br label %75

62:                                               ; preds = %43
  %63 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %64 = sub i64 0, %6
  %65 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %63, i64 %64
  %66 = icmp eq ptr %65, %44
  br i1 %66, label %71, label %67

67:                                               ; preds = %62, %67
  %68 = phi ptr [ %69, %67 ], [ %65, %62 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(122) %68) #10
  %69 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %68, i64 1
  %70 = icmp eq ptr %69, %44
  br i1 %70, label %71, label %67, !llvm.loop !388

71:                                               ; preds = %67, %62
  %72 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %44, i64 %64
  %73 = tail call noundef ptr @_ZSt13copy_backwardIPN11xalanc_1_1018OutputContextStack13OutputContextES3_ET0_T_S5_S4_(ptr noundef %1, ptr noundef nonnull %72, ptr noundef %44) #10
  %74 = tail call noundef ptr @_ZSt4copyIPKN11xalanc_1_1018OutputContextStack13OutputContextEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #10
  br label %75

75:                                               ; preds = %18, %13, %60, %71, %40
  call void @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  br label %76

76:                                               ; preds = %4, %75
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !278 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !353
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !324 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !353
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !324 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !324 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKN11xalanc_1_1018OutputContextStack13OutputContextEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %1, ptr noundef %2) #10
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !278 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !324 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #10
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !324 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !381
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKN11xalanc_1_1018OutputContextStack13OutputContextEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !324 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKN11xalanc_1_1018OutputContextStack13OutputContextEET_S5_(ptr noundef %0) #10
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKN11xalanc_1_1018OutputContextStack13OutputContextEET_S5_(ptr noundef %1) #10
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKN11xalanc_1_1018OutputContextStack13OutputContextEPS2_ET1_T0_S7_S6_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #10
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPN11xalanc_1_1018OutputContextStack13OutputContextES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !324 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPN11xalanc_1_1018OutputContextStack13OutputContextEET_S4_(ptr noundef %0) #10
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPN11xalanc_1_1018OutputContextStack13OutputContextEET_S4_(ptr noundef %1) #10
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPN11xalanc_1_1018OutputContextStack13OutputContextES3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #10
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKN11xalanc_1_1018OutputContextStack13OutputContextEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !324 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !292
  call void @_ZSt19__iterator_categoryIPKN11xalanc_1_1018OutputContextStack13OutputContextEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  %4 = call noundef i64 @_ZSt10__distanceIPKN11xalanc_1_1018OutputContextStack13OutputContextEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #10
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKN11xalanc_1_1018OutputContextStack13OutputContextEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !324 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 7
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKN11xalanc_1_1018OutputContextStack13OutputContextEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat !prof !324 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !324 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #12
  %4 = load ptr, ptr %0, align 8, !tbaa !380
  call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #10
  call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKN11xalanc_1_1018OutputContextStack13OutputContextEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !324 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !292
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKN11xalanc_1_1018OutputContextStack13OutputContextEET_S5_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKN11xalanc_1_1018OutputContextStack13OutputContextEET_S5_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_1018OutputContextStack13OutputContextEET_S4_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKN11xalanc_1_1018OutputContextStack13OutputContextEPS2_ET1_T0_S7_S6_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #10
  %9 = call noundef ptr @_ZSt12__niter_wrapIPN11xalanc_1_1018OutputContextStack13OutputContextEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #10
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKN11xalanc_1_1018OutputContextStack13OutputContextEET_S5_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !324 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPN11xalanc_1_1018OutputContextStack13OutputContextEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !324 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKN11xalanc_1_1018OutputContextStack13OutputContextEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !324 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKN11xalanc_1_1018OutputContextStack13OutputContextEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKN11xalanc_1_1018OutputContextStack13OutputContextEET_S5_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !324 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_1018OutputContextStack13OutputContextEET_S4_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !324 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKN11xalanc_1_1018OutputContextStack13OutputContextEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !324 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1018OutputContextStack13OutputContextEPS5_EET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1018OutputContextStack13OutputContextEPS5_EET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !324 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 7
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %11, %3
  %10 = phi ptr [ %2, %3 ], [ %17, %11 ]
  ret ptr %10

11:                                               ; preds = %3, %11
  %12 = phi i64 [ %18, %11 ], [ %7, %3 ]
  %13 = phi ptr [ %17, %11 ], [ %2, %3 ]
  %14 = phi ptr [ %16, %11 ], [ %0, %3 ]
  %15 = tail call noundef nonnull align 8 dereferenceable(122) ptr @_ZN11xalanc_1_1018OutputContextStack13OutputContextaSERKS1_(ptr noundef nonnull align 8 dereferenceable(122) %13, ptr noundef nonnull align 8 dereferenceable(122) %14) #10
  %16 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %14, i64 1
  %17 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %13, i64 1
  %18 = add nsw i64 %12, -1
  %19 = icmp ugt i64 %12, 1
  br i1 %19, label %11, label %9, !llvm.loop !389
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(122) ptr @_ZN11xalanc_1_1018OutputContextStack13OutputContextaSERKS1_(ptr noundef nonnull align 8 dereferenceable(122) %0, ptr noundef nonnull align 8 dereferenceable(122) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = load ptr, ptr %1, align 8, !tbaa !299
  store ptr %3, ptr %0, align 8, !tbaa !299
  %4 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %1, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZN11xalanc_1_1017AttributeListImplaSERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %5) #10
  %7 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %1, i64 0, i32 2
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(36) %8) #10
  %10 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %1, i64 0, i32 3
  %12 = load i16, ptr %11, align 8
  store i16 %12, ptr %10, align 8
  ret ptr %0
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(72) ptr @_ZN11xalanc_1_1017AttributeListImplaSERKS0_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 comdat align 2 !prof !390 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #10
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 comdat align 2 !prof !390 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #10
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %9, label %4, !prof !391

4:                                                ; preds = %2
  %5 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #10
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !330
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  store i32 %7, ptr %8, align 8, !tbaa !330
  br label %9

9:                                                ; preds = %4, %2
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #10
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !390 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %33, label %5, !prof !391

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !392
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !348
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %13, !prof !393

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #12
  %12 = load ptr, ptr %0, align 8, !tbaa !394
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0) #10
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  br label %33

13:                                               ; preds = %5
  %14 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #10
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !348
  %17 = load i64, ptr %8, align 8, !tbaa !348
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %20, !prof !395

19:                                               ; preds = %13
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %17) #10
  br label %28

20:                                               ; preds = %13
  %21 = icmp ult i64 %16, %17
  br i1 %21, label %22, label %28, !prof !396

22:                                               ; preds = %20
  %23 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #10
  %24 = load i64, ptr %15, align 8, !tbaa !348
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  %26 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %27 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #10
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %26, ptr noundef %25, ptr noundef %27) #10
  br label %28

28:                                               ; preds = %20, %22, %19
  %29 = phi ptr [ %14, %19 ], [ %25, %22 ], [ %14, %20 ]
  %30 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #10
  %31 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %32 = tail call noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %30, ptr noundef %29, ptr noundef %31) #10
  br label %33

33:                                               ; preds = %11, %28, %2
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !397 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  store ptr %2, ptr %0, align 8, !tbaa !394
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !348
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !398

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #12
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #10
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #10
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #10
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #10
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #10
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !399

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #10
  store ptr %24, ptr %8, align 8, !tbaa !335
  store i64 %3, ptr %7, align 8, !tbaa !392
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 !prof !400 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %3 = load ptr, ptr %0, align 8, !tbaa !394
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !335
  %7 = load ptr, ptr %1, align 8, !tbaa !394
  store ptr %7, ptr %0, align 8, !tbaa !394
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !374
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !335
  store ptr %11, ptr %5, align 8, !tbaa !335
  store ptr %3, ptr %1, align 8, !tbaa !394
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !374
  store <2 x i64> %9, ptr %4, align 8, !tbaa !374
  store <2 x i64> %12, ptr %8, align 8, !tbaa !374
  store ptr %6, ptr %10, align 8, !tbaa !335
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !401 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !392
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %11, label %5, !prof !402

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
          to label %8 unwind label %12

8:                                                ; preds = %5
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #10
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !335
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %10) #10
          to label %11 unwind label %12

11:                                               ; preds = %8, %1
  ret void

12:                                               ; preds = %8, %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !403 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !404 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %5 = load i64, ptr %3, align 8, !tbaa !348
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !prof !405, !llvm.loop !406

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !403 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !335
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !407 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #10
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8, !prof !408

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28, !prof !409

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #10
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16, !prof !410

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !394
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 2 dereferenceable(2) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #10
  %23 = getelementptr inbounds i16, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !348
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !348
  %26 = getelementptr inbounds i16, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !prof !411, !llvm.loop !412

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47, !prof !413

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #12
  %32 = load ptr, ptr %0, align 8, !tbaa !394
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #10
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #10
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #10
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #10
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #10
  %50 = icmp ugt i64 %49, %6
  br i1 %50, label %66, label %51, !prof !414

51:                                               ; preds = %47
  %52 = getelementptr inbounds i16, ptr %2, i64 %49
  %53 = icmp eq ptr %52, %3
  br i1 %53, label %54, label %56, !prof !415

54:                                               ; preds = %56, %51
  %55 = icmp eq ptr %48, %1
  br i1 %55, label %64, label %60, !prof !415

56:                                               ; preds = %51, %56
  %57 = phi ptr [ %58, %56 ], [ %52, %51 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %57) #10
  %58 = getelementptr inbounds i16, ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !prof !416, !llvm.loop !417

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %61) #10
  %62 = getelementptr inbounds i16, ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !prof !418, !llvm.loop !419

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #10
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds i16, ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %72) #10
  %73 = getelementptr inbounds i16, ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !420

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds i16, ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #10
  %78 = tail call noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #10
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !421 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %0) #10
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %1) #10
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #10
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !422 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 !prof !423 {
  store ptr %1, ptr %0, align 8, !tbaa !394
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !348
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !392
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !424

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #10
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !335
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !425 {
  %3 = shl i64 %1, 1
  %4 = load ptr, ptr %0, align 8, !tbaa !394
  %5 = load ptr, ptr %4, align 8, !tbaa !360
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #10
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !425 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !426

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #10
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !427, !llvm.loop !428

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !425 {
  %3 = load ptr, ptr %0, align 8, !tbaa !394
  %4 = load ptr, ptr %3, align 8, !tbaa !360
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !403 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !335
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !348
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !429 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !348
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !430 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6, !prof !431

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #10
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 !prof !349 {
  %4 = load i16, ptr %1, align 2, !tbaa !432
  store i16 %4, ptr %0, align 2, !tbaa !432
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !434 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !392
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !435 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !348
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !392
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !436

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %11 = load ptr, ptr %0, align 8, !tbaa !394
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  %13 = load i64, ptr %4, align 8, !tbaa !348
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !348
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #12
  %21 = load ptr, ptr %0, align 8, !tbaa !394
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #10
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1) #10
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !324 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) #10
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %1) #10
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #10
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !437 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #12
  %4 = load ptr, ptr %0, align 8, !tbaa !394
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #10
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !324 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !292
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #10
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #10
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !324 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !324 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !324 {
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

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !421 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !292
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #10
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #10
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !438 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !421 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !438 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !421 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPN11xalanc_1_1018OutputContextStack13OutputContextES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !324 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !292
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_1018OutputContextStack13OutputContextEET_S4_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_1018OutputContextStack13OutputContextEET_S4_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_1018OutputContextStack13OutputContextEET_S4_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPN11xalanc_1_1018OutputContextStack13OutputContextES3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #10
  %9 = call noundef ptr @_ZSt12__niter_wrapIPN11xalanc_1_1018OutputContextStack13OutputContextEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #10
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPN11xalanc_1_1018OutputContextStack13OutputContextEET_S4_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !324 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPN11xalanc_1_1018OutputContextStack13OutputContextES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !324 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPN11xalanc_1_1018OutputContextStack13OutputContextES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPN11xalanc_1_1018OutputContextStack13OutputContextES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !324 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1018OutputContextStack13OutputContextES6_EET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1018OutputContextStack13OutputContextES6_EET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !324 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 7
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3, %9
  %10 = phi i64 [ %16, %9 ], [ %7, %3 ]
  %11 = phi ptr [ %14, %9 ], [ %2, %3 ]
  %12 = phi ptr [ %13, %9 ], [ %1, %3 ]
  %13 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %12, i64 -1
  %14 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %11, i64 -1
  %15 = tail call noundef nonnull align 8 dereferenceable(122) ptr @_ZN11xalanc_1_1018OutputContextStack13OutputContextaSERKS1_(ptr noundef nonnull align 8 dereferenceable(122) %14, ptr noundef nonnull align 8 dereferenceable(122) %13) #10
  %16 = add nsw i64 %10, -1
  %17 = icmp ugt i64 %10, 1
  br i1 %17, label %9, label %18, !llvm.loop !439

18:                                               ; preds = %9, %3
  %19 = phi ptr [ %2, %3 ], [ %14, %9 ]
  ret ptr %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !324 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !353
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !369
  %6 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !278 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !440

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(122) %5) #10
  %6 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !441, !llvm.loop !442

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !278 {
  %3 = load ptr, ptr %0, align 8, !tbaa !380
  %4 = load ptr, ptr %3, align 8, !tbaa !360
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(122) %0) local_unnamed_addr #1 comdat align 2 !prof !358 {
  tail call void @_ZN11xalanc_1_1018OutputContextStack13OutputContextD2Ev(ptr noundef nonnull align 8 dereferenceable(122) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018OutputContextStack13OutputContextD2Ev(ptr noundef nonnull align 8 dereferenceable(122) %0) unnamed_addr #1 comdat align 2 !prof !379 {
  %2 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %2) #11
  %3 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1017AttributeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %3) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 !prof !443 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEEC2ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #1 comdat align 2 !prof !278 {
  store ptr %1, ptr %0, align 8, !tbaa !365
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE7destroyEPS6_SA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !313 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !373

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE7destroyERS6_(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !444, !llvm.loop !445

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10deallocateEPS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !313 {
  %3 = load ptr, ptr %0, align 8, !tbaa !355
  %4 = load ptr, ptr %3, align 8, !tbaa !360
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEC2EPS8_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #1 comdat align 2 !prof !446 {
  store ptr %1, ptr %0, align 8, !tbaa !310
  %4 = getelementptr inbounds %"struct.xalanc_1_10::XalanDequeIterator", ptr %0, i64 0, i32 1
  store i64 %2, ptr %4, align 8, !tbaa !308
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 !prof !278 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3
  %5 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %6 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %7 = add i64 %6, %5
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %7) #10
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %9 = icmp eq ptr %3, %8
  br i1 %9, label %16, label %10, !prof !291

10:                                               ; preds = %1, %10
  %11 = phi ptr [ %13, %10 ], [ %3, %1 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !292
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %12) #10
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9push_backERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  %13 = getelementptr inbounds ptr, ptr %11, i64 1
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %10, !prof !293, !llvm.loop !447

16:                                               ; preds = %10, %1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10deallocateEPNS_11XalanVectorIS2_S4_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !278 {
  %3 = load ptr, ptr %0, align 8, !tbaa !288
  %4 = load ptr, ptr %3, align 8, !tbaa !360
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !278 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !357
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7, !prof !370

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #10
  br label %7

7:                                                ; preds = %6, %2
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !278 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !369
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5, !prof !373

5:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #10
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !278 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !356
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5, !prof !373

5:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #10
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !278 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %5 = load i64, ptr %3, align 8, !tbaa !369
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !prof !448, !llvm.loop !449

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !358 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !369
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !369
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !353
  %7 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(122) %7) #10
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !278 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %5 = load i64, ptr %3, align 8, !tbaa !356
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !prof !373, !llvm.loop !450

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 !prof !324 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %5 = load ptr, ptr %4, align 8, !tbaa !292
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store ptr %5, ptr %2, align 8, !tbaa !292
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9push_backERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  br label %9

9:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !324 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !369
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !318 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !352
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !356
  %6 = getelementptr ptr, ptr %3, i64 %5
  %7 = getelementptr ptr, ptr %6, i64 -1
  ret ptr %7
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

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
!35 = !{ptr @_ZN11xalanc_1_1018OutputContextStackC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEmm, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1018OutputContextStackC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5beginEv, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEmm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 2}
!38 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEmm, ptr @_ZN11xalanc_1_1031ConstructValueWithMemoryManagerINS_18OutputContextStack13OutputContextEEC2ERN11xercesc_2_713MemoryManagerE, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEmm, ptr @_ZSt13back_inserterIN11xalanc_1_1010XalanDequeINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEESt20back_insert_iteratorIT_ERS8_, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEmm, ptr @_ZSt6fill_nISt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS1_18OutputContextStack13OutputContextENS1_32ConstructWithMemoryManagerTraitsIS4_EEEEEmS4_ET_S9_T0_RKT1_, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEmm, ptr @_ZN11xalanc_1_1031ConstructValueWithMemoryManagerINS_18OutputContextStack13OutputContextEED2Ev, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5beginEv, ptr @_ZN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEC2EPS8_m, i64 5}
!43 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5clearEv, i64 1}
!44 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE5beginEv, i64 1}
!45 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv, i64 2}
!46 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev, i64 1}
!47 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10deallocateEPNS_11XalanVectorIS2_S4_EE, i64 1}
!48 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev, i64 2}
!49 = !{ptr @_ZN11xalanc_1_1018OutputContextStackD2Ev, ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev, i64 1}
!50 = !{ptr @_ZN11xalanc_1_1018OutputContextStack11pushContextEPNS_17FormatterListenerE, ptr @_ZN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEppEv, i64 77340}
!51 = !{ptr @_ZN11xalanc_1_1018OutputContextStack11pushContextEPNS_17FormatterListenerE, ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE3endEv, i64 77343}
!52 = !{ptr @_ZN11xalanc_1_1018OutputContextStack11pushContextEPNS_17FormatterListenerE, ptr @_ZNK11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEeqERKS9_, i64 77340}
!53 = !{ptr @_ZN11xalanc_1_1018OutputContextStack11pushContextEPNS_17FormatterListenerE, ptr @_ZNK11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE4sizeEv, i64 3}
!54 = !{ptr @_ZN11xalanc_1_1018OutputContextStack11pushContextEPNS_17FormatterListenerE, ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE6resizeEm, i64 3}
!55 = !{ptr @_ZN11xalanc_1_1018OutputContextStack11pushContextEPNS_17FormatterListenerE, ptr @_ZNK11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEmiEl, i64 3}
!56 = !{ptr @_ZN11xalanc_1_1018OutputContextStack11pushContextEPNS_17FormatterListenerE, ptr @_ZN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEaSERKS9_, i64 3}
!57 = !{ptr @_ZN11xalanc_1_1018OutputContextStack11pushContextEPNS_17FormatterListenerE, ptr @_ZN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEdeEv, i64 77336}
!58 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE4sizeEv, i64 77342}
!59 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE3endEv, ptr @_ZN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEC2EPS8_m, i64 77342}
!60 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE6resizeEm, ptr @_ZN11xalanc_1_1031ConstructValueWithMemoryManagerINS_18OutputContextStack13OutputContextEEC2ERN11xercesc_2_713MemoryManagerE, i64 2}
!61 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE6resizeEm, ptr @_ZNK11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE4sizeEv, i64 21}
!62 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE6resizeEm, ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_, i64 1}
!63 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE6resizeEm, ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE8pop_backEv, i64 15}
!64 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE6resizeEm, ptr @_ZN11xalanc_1_1031ConstructValueWithMemoryManagerINS_18OutputContextStack13OutputContextEED2Ev, i64 2}
!65 = !{ptr @_ZNK11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE5emptyEv, i64 77350}
!66 = !{ptr @_ZNK11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE4sizeEv, i64 77349}
!67 = !{ptr @_ZNK11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE4backEv, i64 77349}
!68 = !{ptr @_ZNK11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE4sizeEv, i64 77349}
!69 = !{ptr @_ZNK11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEmiEl, ptr @_ZN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEC2EPS8_m, i64 2}
!70 = !{ptr @_ZN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEdeEv, ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEixEm, i64 7507503}
!71 = !{ptr @_ZN11xalanc_1_1018OutputContextStack10popContextEv, ptr @_ZN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEdeEv, i64 77339}
!72 = !{ptr @_ZN11xalanc_1_1018OutputContextStack10popContextEv, ptr @_ZN11xalanc_1_1018OutputContextStack13OutputContext5resetEv, i64 77339}
!73 = !{ptr @_ZN11xalanc_1_1018OutputContextStack10popContextEv, ptr @_ZN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEmmEv, i64 77339}
!74 = !{ptr @_ZN11xalanc_1_1018OutputContextStack13OutputContext5resetEv, ptr @_ZN11xalanc_1_1017AttributeListImpl5clearEv, i64 77339}
!75 = !{ptr @_ZN11xalanc_1_1018OutputContextStack13OutputContext5resetEv, ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, i64 77339}
!76 = !{ptr @_ZN11xalanc_1_1018OutputContextStack5resetEv, ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5beginEv, i64 4}
!77 = !{ptr @_ZN11xalanc_1_1018OutputContextStack5resetEv, ptr @_ZNK11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEneERKS9_, i64 4}
!78 = !{ptr @_ZN11xalanc_1_1018OutputContextStack5resetEv, ptr @_ZN11xalanc_1_1018OutputContextStack10popContextEv, i64 2}
!79 = !{ptr @_ZNK11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEneERKS9_, ptr @_ZNK11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEeqERKS9_, i64 4}
!80 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 96538440}
!81 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 48269220}
!82 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 48269220}
!83 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, i64 48269220}
!84 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 241572884}
!85 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 28158502}
!86 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_, i64 28158502}
!87 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, i64 28158502}
!88 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm, i64 28158502}
!89 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!90 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!91 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!92 = !{ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_, ptr @_ZSt12__miter_baseIPtET_S1_, i64 56317002}
!93 = !{ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_, ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, i64 28158501}
!94 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, i64 1279868488}
!95 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 185895030}
!96 = !{ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt12__niter_baseIPtET_S1_, i64 84475503}
!97 = !{ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_, i64 28158501}
!98 = !{ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_, i64 28158501}
!99 = !{ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_, i64 28158501}
!100 = !{ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_, i64 28158501}
!101 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 2689195952}
!102 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 1344597976}
!103 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 185895030}
!104 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 185895030}
!105 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEixEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEixEm, i64 17939772}
!106 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEixEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEixEm, i64 17939772}
!107 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE8allocateEm, i64 1}
!108 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv, i64 2}
!109 = !{ptr @_ZN11xalanc_1_1031ConstructValueWithMemoryManagerINS_18OutputContextStack13OutputContextEEC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018OutputContextStack13OutputContextC2ERN11xercesc_2_713MemoryManagerEPNS_17FormatterListenerE, i64 3}
!110 = !{ptr @_ZSt6fill_nISt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS1_18OutputContextStack13OutputContextENS1_32ConstructWithMemoryManagerTraitsIS4_EEEEEmS4_ET_S9_T0_RKT1_, ptr @_ZSt17__size_to_integerm, i64 1}
!111 = !{ptr @_ZSt6fill_nISt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS1_18OutputContextStack13OutputContextENS1_32ConstructWithMemoryManagerTraitsIS4_EEEEEmS4_ET_S9_T0_RKT1_, ptr @_ZSt19__iterator_categoryISt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS1_18OutputContextStack13OutputContextENS1_32ConstructWithMemoryManagerTraitsIS4_EEEEEENSt15iterator_traitsIT_E17iterator_categoryERKSA_, i64 1}
!112 = !{ptr @_ZSt6fill_nISt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS1_18OutputContextStack13OutputContextENS1_32ConstructWithMemoryManagerTraitsIS4_EEEEEmS4_ET_S9_T0_RKT1_, ptr @_ZSt10__fill_n_aISt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS1_18OutputContextStack13OutputContextENS1_32ConstructWithMemoryManagerTraitsIS4_EEEEEmS4_ET_S9_T0_RKT1_St19output_iterator_tag, i64 1}
!113 = !{ptr @_ZSt13back_inserterIN11xalanc_1_1010XalanDequeINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEESt20back_insert_iteratorIT_ERS8_, ptr @_ZNSt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEEC2ERS6_, i64 1}
!114 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv, i64 3}
!115 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE5beginEv, i64 2}
!116 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv, i64 2}
!117 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE7destroyEPS6_SA_, i64 2}
!118 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10deallocateEPS6_, i64 2}
!119 = !{ptr @_ZN11xalanc_1_1018OutputContextStack13OutputContextC2ERN11xercesc_2_713MemoryManagerEPNS_17FormatterListenerE, ptr @_ZN11xalanc_1_1017AttributeListImplC1ERN11xercesc_2_713MemoryManagerE, i64 3}
!120 = !{ptr @_ZN11xalanc_1_1018OutputContextStack13OutputContextC2ERN11xercesc_2_713MemoryManagerEPNS_17FormatterListenerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 3}
!121 = !{ptr @_ZSt10__fill_n_aISt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS1_18OutputContextStack13OutputContextENS1_32ConstructWithMemoryManagerTraitsIS4_EEEEEmS4_ET_S9_T0_RKT1_St19output_iterator_tag, ptr @_ZSt11__fill_n_a1ISt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS1_18OutputContextStack13OutputContextENS1_32ConstructWithMemoryManagerTraitsIS4_EEEEEmS4_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT1_EE7__valueET_E6__typeESC_T0_RKSB_, i64 1}
!122 = !{ptr @_ZSt11__fill_n_a1ISt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS1_18OutputContextStack13OutputContextENS1_32ConstructWithMemoryManagerTraitsIS4_EEEEEmS4_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT1_EE7__valueET_E6__typeESC_T0_RKSB_, ptr @_ZNSt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEEdeEv, i64 1}
!123 = !{ptr @_ZSt11__fill_n_a1ISt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS1_18OutputContextStack13OutputContextENS1_32ConstructWithMemoryManagerTraitsIS4_EEEEEmS4_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT1_EE7__valueET_E6__typeESC_T0_RKSB_, ptr @_ZNSt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEEaSERKS3_, i64 1}
!124 = !{ptr @_ZSt11__fill_n_a1ISt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS1_18OutputContextStack13OutputContextENS1_32ConstructWithMemoryManagerTraitsIS4_EEEEEmS4_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT1_EE7__valueET_E6__typeESC_T0_RKSB_, ptr @_ZNSt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEEppEv, i64 1}
!125 = !{ptr @_ZNSt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEEaSERKS3_, ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_, i64 1}
!126 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE5emptyEv, i64 3}
!127 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE4backEv, i64 5}
!128 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE4sizeEv, i64 2}
!129 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_, ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE11getNewBlockEv, i64 2}
!130 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9push_backERKS6_, i64 2}
!131 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_, i64 3}
!132 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv, i64 77354}
!133 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv, i64 77352}
!134 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9push_backERKS6_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv, i64 4}
!135 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9push_backERKS6_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_, i64 2}
!136 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE11getNewBlockEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE5emptyEv, i64 1}
!137 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE11getNewBlockEv, ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE8allocateEm, i64 1}
!138 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE11getNewBlockEv, ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!139 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv, i64 6}
!140 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_, i64 3}
!141 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv, i64 4}
!142 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10endPointerEv, i64 2}
!143 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_11XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS3_EEEEE9constructEPS7_RKS7_RN11xercesc_2_713MemoryManagerE, i64 2}
!144 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERKS9_RN11xercesc_2_713MemoryManagerEm, i64 1}
!145 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_, i64 1}
!146 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERKS9_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv, i64 1}
!147 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE4swapERS9_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv, i64 2}
!148 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv, i64 4}
!149 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv, i64 77352}
!150 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv, i64 6}
!151 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10endPointerEv, i64 6}
!152 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv, i64 2}
!153 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERKS9_RN11xercesc_2_713MemoryManagerEm, i64 1}
!154 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE4swapERS9_, i64 1}
!155 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev, i64 1}
!156 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv, i64 1}
!157 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv, i64 2}
!158 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE7destroyERS6_, i64 1}
!159 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv, i64 6}
!160 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10endPointerEv, i64 2}
!161 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1026ConstructWithMemoryManagerINS_18OutputContextStack13OutputContextEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE, i64 2}
!162 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 1}
!163 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_, i64 1}
!164 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE4swapERS5_, i64 1}
!165 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev, i64 1}
!166 = !{ptr @_ZN11xalanc_1_1026ConstructWithMemoryManagerINS_18OutputContextStack13OutputContextEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018OutputContextStack13OutputContextC2ERKS1_RN11xercesc_2_713MemoryManagerE, i64 3}
!167 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv, i64 1}
!168 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5beginEv, i64 1}
!169 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE3endEv, i64 1}
!170 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE7destroyEPS2_S6_, i64 1}
!171 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10deallocateEPS2_, i64 1}
!172 = !{ptr @_ZN11xalanc_1_1018OutputContextStack13OutputContextC2ERKS1_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1017AttributeListImplC1ERKS0_RN11xercesc_2_713MemoryManagerE, i64 3}
!173 = !{ptr @_ZN11xalanc_1_1018OutputContextStack13OutputContextC2ERKS1_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj, i64 3}
!174 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv, i64 1}
!175 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv, i64 1}
!176 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10endPointerEv, i64 1}
!177 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringaSERKS0_, ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_, i64 41614}
!178 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 83228}
!179 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, i64 41613}
!180 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 83228}
!181 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 13}
!182 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 13}
!183 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 13}
!184 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 82485}
!185 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm, i64 355}
!186 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 82485}
!187 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 40885}
!188 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40885}
!189 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 41600}
!190 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, i64 41600}
!191 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm, i64 19}
!192 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 19}
!193 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 19}
!194 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 19}
!195 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 19}
!196 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 19}
!197 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 19}
!198 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 19}
!199 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm, i64 64551584}
!200 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 64551608}
!201 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 170601494}
!202 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!203 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!204 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!205 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!206 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300308}
!207 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 163}
!208 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 82509}
!209 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 82509}
!210 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, i64 64729253}
!211 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 82509}
!212 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 311655952}
!213 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, i64 157736530}
!214 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv, i64 155828045}
!215 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 240731456}
!216 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, i64 133170775}
!217 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE, i64 30012996397}
!218 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, i64 22657270}
!219 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 20748786}
!220 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 20748766}
!221 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246159}
!222 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 20748647}
!223 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 20748786}
!224 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614809}
!225 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, i64 1908484}
!226 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_, i64 1}
!227 = !{ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, ptr @_ZSt12__miter_baseIPKtET_S2_, i64 3901146}
!228 = !{ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!229 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm, i64 1}
!230 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 64147281}
!231 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!232 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 156073599}
!233 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, i64 133170778}
!234 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 22}
!235 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 133170778}
!236 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 155828047}
!237 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 248301304}
!238 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 124150651}
!239 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE, i64 124150651}
!240 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 1}
!241 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 1}
!242 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 1}
!243 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 1}
!244 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 129103172}
!245 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 64551586}
!246 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 64551586}
!247 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 64551586}
!248 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_baseIPKtET_S2_, i64 3901146}
!249 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_baseIPtET_S1_, i64 1950573}
!250 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!251 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_, i64 1950573}
!252 = !{ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!253 = !{ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_, i64 1950573}
!254 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE7destroyEPS2_S6_, ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE7destroyERS2_, i64 1}
!255 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE7destroyERS2_, ptr @_ZN11xalanc_1_1018OutputContextStack13OutputContextD2Ev, i64 3}
!256 = !{ptr @_ZN11xalanc_1_1018OutputContextStack13OutputContextD2Ev, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 6}
!257 = !{ptr @_ZN11xalanc_1_1018OutputContextStack13OutputContextD2Ev, ptr @_ZN11xalanc_1_1017AttributeListImplD1Ev, i64 6}
!258 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!259 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE7destroyEPS6_SA_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE7destroyERS6_, i64 1}
!260 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE5beginEv, i64 1}
!261 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5clearEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE4sizeEv, i64 2}
!262 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE7reserveEm, i64 1}
!263 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv, i64 2}
!264 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5clearEv, i64 1}
!265 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9push_backERKS6_, i64 1}
!266 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE5clearEv, i64 1}
!267 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE7reserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv, i64 2}
!268 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE7reserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9doReserveEm, i64 1}
!269 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5clearEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv, i64 2}
!270 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE12shrinkToSizeEm, i64 1}
!271 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE5clearEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv, i64 2}
!272 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE12shrinkToSizeEm, i64 1}
!273 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE12shrinkToSizeEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE8pop_backEv, i64 3}
!274 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10invariantsEv, i64 6}
!275 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE7destroyERS2_, i64 3}
!276 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE12shrinkToSizeEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE8pop_backEv, i64 2}
!277 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!278 = !{!"function_entry_count", i64 1}
!279 = !{!280, !285, i64 96}
!280 = !{!"_ZTSN11xalanc_1_1018OutputContextStackE", !281, i64 0, !287, i64 80, !285, i64 96}
!281 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEE", !282, i64 0, !285, i64 8, !286, i64 16, !286, i64 48}
!282 = !{!"any pointer", !283, i64 0}
!283 = !{!"omnipotent char", !284, i64 0}
!284 = !{!"Simple C++ TBAA"}
!285 = !{!"long", !283, i64 0}
!286 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEE", !282, i64 0, !285, i64 8, !285, i64 16, !282, i64 24}
!287 = !{!"_ZTSN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEE", !282, i64 0, !285, i64 8}
!288 = !{!281, !282, i64 0}
!289 = !{!281, !285, i64 8}
!290 = !{!"function_entry_count", i64 5}
!291 = !{!"branch_weights", i32 1, i32 127}
!292 = !{!282, !282, i64 0}
!293 = !{!"branch_weights", i32 127, i32 1}
!294 = distinct !{!294, !295}
!295 = !{!"llvm.loop.mustprogress"}
!296 = !{!"function_entry_count", i64 77340}
!297 = !{!"branch_weights", i32 3, i32 77339}
!298 = !{!"branch_weights", i32 4, i32 77338}
!299 = !{!300, !282, i64 0}
!300 = !{!"_ZTSN11xalanc_1_1018OutputContextStack13OutputContextE", !282, i64 0, !301, i64 8, !304, i64 80, !307, i64 120, !307, i64 121}
!301 = !{!"_ZTSN11xalanc_1_1017AttributeListImplE", !302, i64 0, !303, i64 8, !303, i64 40}
!302 = !{!"_ZTSN11xercesc_2_713AttributeListE"}
!303 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE", !282, i64 0, !285, i64 8, !285, i64 16, !282, i64 24}
!304 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !305, i64 0, !306, i64 32}
!305 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !282, i64 0, !285, i64 8, !285, i64 16, !282, i64 24}
!306 = !{!"int", !283, i64 0}
!307 = !{!"bool", !283, i64 0}
!308 = !{!287, !285, i64 8}
!309 = !{!"function_entry_count", i64 77344}
!310 = !{!287, !282, i64 0}
!311 = !{!"branch_weights", i32 77345, i32 1}
!312 = !{!"function_entry_count", i64 77342}
!313 = !{!"function_entry_count", i64 2}
!314 = !{!"branch_weights", i32 3, i32 1}
!315 = !{!"branch_weights", i32 3, i32 3}
!316 = distinct !{!316, !295}
!317 = distinct !{!317, !295}
!318 = !{!"function_entry_count", i64 77350}
!319 = !{!"branch_weights", i32 1, i32 77351}
!320 = !{!"function_entry_count", i64 7507503}
!321 = !{!"function_entry_count", i64 77339}
!322 = !{!300, !307, i64 120}
!323 = !{!300, !307, i64 121}
!324 = !{!"function_entry_count", i64 0}
!325 = !{!"branch_weights", i32 191, i32 1}
!326 = !{!"branch_weights", i32 1, i32 191}
!327 = distinct !{!327, !295}
!328 = !{!"function_entry_count", i64 4}
!329 = !{!"function_entry_count", i64 48269220}
!330 = !{!304, !306, i64 32}
!331 = !{!"function_entry_count", i64 3070433834}
!332 = !{!"function_entry_count", i64 120786442}
!333 = !{!"branch_weights", i32 92627942, i32 28158502}
!334 = !{!"function_entry_count", i64 227375739}
!335 = !{!305, !282, i64 24}
!336 = !{!"function_entry_count", i64 568333389}
!337 = !{!"function_entry_count", i64 6521798493}
!338 = !{!"function_entry_count", i64 28158501}
!339 = !{!"branch_weights", i32 1, i32 28158501}
!340 = !{!"branch_weights", i32 28158501, i32 1251710038}
!341 = distinct !{!341, !295}
!342 = !{!"function_entry_count", i64 185895030}
!343 = !{!"function_entry_count", i64 56317002}
!344 = !{!"function_entry_count", i64 30109074}
!345 = !{!"function_entry_count", i64 86426076}
!346 = !{!"branch_weights", i32 28199083, i32 1909993}
!347 = !{!"function_entry_count", i64 1344597976}
!348 = !{!305, !285, i64 8}
!349 = !{!"function_entry_count", i64 30137156660}
!350 = !{!"function_entry_count", i64 825654971}
!351 = !{!"function_entry_count", i64 17939772}
!352 = !{!286, !282, i64 24}
!353 = !{!354, !282, i64 24}
!354 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEE", !282, i64 0, !285, i64 8, !285, i64 16, !282, i64 24}
!355 = !{!286, !282, i64 0}
!356 = !{!286, !285, i64 8}
!357 = !{!286, !285, i64 16}
!358 = !{!"function_entry_count", i64 3}
!359 = !{!"branch_weights", i32 2, i32 3}
!360 = !{!361, !361, i64 0}
!361 = !{!"vtable pointer", !284, i64 0}
!362 = !{!"function_entry_count", i64 154740}
!363 = !{!"function_entry_count", i64 401}
!364 = distinct !{!364, !295}
!365 = !{!366, !282, i64 0}
!366 = !{!"_ZTSSt20back_insert_iteratorIN11xalanc_1_1010XalanDequeINS0_18OutputContextStack13OutputContextENS0_32ConstructWithMemoryManagerTraitsIS3_EEEEE", !282, i64 0}
!367 = !{!"function_entry_count", i64 77354}
!368 = !{!"function_entry_count", i64 77352}
!369 = !{!354, !285, i64 8}
!370 = !{!"branch_weights", i32 2, i32 1}
!371 = !{!"function_entry_count", i64 77376}
!372 = !{!"function_entry_count", i64 8}
!373 = !{!"branch_weights", i32 1, i32 2}
!374 = !{!285, !285, i64 0}
!375 = distinct !{!375, !295}
!376 = distinct !{!376, !295}
!377 = distinct !{!377, !295}
!378 = distinct !{!378, !295}
!379 = !{!"function_entry_count", i64 6}
!380 = !{!354, !282, i64 0}
!381 = !{!354, !285, i64 16}
!382 = !{!"branch_weights", i32 4, i32 1}
!383 = !{i8 0, i8 2}
!384 = !{}
!385 = distinct !{!385, !295}
!386 = distinct !{!386, !295}
!387 = distinct !{!387, !295}
!388 = distinct !{!388, !295}
!389 = distinct !{!389, !295}
!390 = !{!"function_entry_count", i64 41614}
!391 = !{!"branch_weights", i32 1, i32 41615}
!392 = !{!305, !285, i64 16}
!393 = !{!"branch_weights", i32 13, i32 41603}
!394 = !{!305, !282, i64 0}
!395 = !{!"branch_weights", i32 355, i32 41249}
!396 = !{!"branch_weights", i32 40890, i32 360}
!397 = !{!"function_entry_count", i64 64551608}
!398 = !{!"branch_weights", i32 64551591, i32 19}
!399 = !{!"branch_weights", i32 5, i32 64551587}
!400 = !{!"function_entry_count", i64 85300747}
!401 = !{!"function_entry_count", i64 128698679}
!402 = !{!"branch_weights", i32 43398290, i32 85300391}
!403 = !{!"function_entry_count", i64 82509}
!404 = !{!"function_entry_count", i64 348020}
!405 = !{!"branch_weights", i32 64381419, i32 348021}
!406 = distinct !{!406, !295}
!407 = !{!"function_entry_count", i64 155828046}
!408 = !{!"branch_weights", i32 1, i32 155828047}
!409 = !{!"branch_weights", i32 133170778, i32 22657270}
!410 = !{!"branch_weights", i32 1, i32 19024396}
!411 = !{!"branch_weights", i32 19024396, i32 -26420601}
!412 = distinct !{!412, !295}
!413 = !{!"branch_weights", i32 20748787, i32 1908484}
!414 = !{!"branch_weights", i32 1, i32 1908484}
!415 = !{!"branch_weights", i32 1, i32 1908483}
!416 = !{!"branch_weights", i32 1908483, i32 49797853}
!417 = distinct !{!417, !295}
!418 = !{!"branch_weights", i32 1908483, i32 1}
!419 = distinct !{!419, !295}
!420 = distinct !{!420, !295}
!421 = !{!"function_entry_count", i64 1950573}
!422 = !{!"function_entry_count", i64 18}
!423 = !{!"function_entry_count", i64 64147281}
!424 = !{!"branch_weights", i32 64147282, i32 1}
!425 = !{!"function_entry_count", i64 85300390}
!426 = !{!"branch_weights", i32 1, i32 12185770}
!427 = !{!"branch_weights", i32 12185770, i32 -193930396}
!428 = distinct !{!428, !295}
!429 = !{!"function_entry_count", i64 156073599}
!430 = !{!"function_entry_count", i64 133170778}
!431 = !{!"branch_weights", i32 22, i32 133170758}
!432 = !{!433, !433, i64 0}
!433 = !{!"short", !283, i64 0}
!434 = !{!"function_entry_count", i64 155828047}
!435 = !{!"function_entry_count", i64 124150652}
!436 = !{!"branch_weights", i32 124150653, i32 1}
!437 = !{!"function_entry_count", i64 64551586}
!438 = !{!"function_entry_count", i64 3901146}
!439 = distinct !{!439, !295}
!440 = !{!"branch_weights", i32 1, i32 1}
!441 = !{!"branch_weights", i32 1, i32 0}
!442 = distinct !{!442, !295}
!443 = !{!"function_entry_count", i64 43398227}
!444 = !{!"branch_weights", i32 2, i32 0}
!445 = distinct !{!445, !295}
!446 = !{!"function_entry_count", i64 77349}
!447 = distinct !{!447, !295}
!448 = !{!"branch_weights", i32 3, i32 2}
!449 = distinct !{!449, !295}
!450 = distinct !{!450, !295}
