; ModuleID = 'AttributeListImpl.cpp'
source_filename = "AttributeListImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::AttributeListImpl" = type { %"class.xercesc_2_7::AttributeList", %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanVector" }
%"class.xercesc_2_7::AttributeList" = type { ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::AttributeVectorEntry" = type { ptr, %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanVector.0" }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::NameCompareFunctor" = type { ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::AttributeVectorEntry>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::AttributeVectorEntry>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }
%"struct.xalanc_1_10::DeleteFunctor" = type { ptr }
%"class.xalanc_1_10::CollectionDeleteGuard" = type { ptr }
%"struct.xalanc_1_10::XalanDestroyFunctor" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_pred" = type { %"struct.xalanc_1_10::NameCompareFunctor" }
%"struct.xalanc_1_10::ConstructValueWithNoMemoryManager" = type { i16 }
%"class.xalanc_1_10::XalanMemMgrAutoPtr.1" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::AttributeVectorEntry, false>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::AttributeVectorEntry, false>::MemMgrAutoPtrData" = type { %"struct.std::pair" }

$_ZN11xercesc_2_713AttributeListC2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xercesc_2_713AttributeListD2Ev = comdat any

$_ZN11xercesc_2_713AttributeListD0Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZSt8for_eachIPPN11xalanc_1_1020AttributeVectorEntryENS0_13DeleteFunctorIS1_EEET0_T_S7_S6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1013DeleteFunctorINS_20AttributeVectorEntryEEC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1013DeleteFunctorINS_20AttributeVectorEntryEEclEPKS1_ = comdat any

$_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_20AttributeVectorEntryEEENS_19XalanDestroyFunctorIT_EEPKS3_ = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_20AttributeVectorEntryEEclEPKS1_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_20AttributeVectorEntryEEclEPS1_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_20AttributeVectorEntryEEclERS1_ = comdat any

$_ZN11xalanc_1_1017AttributeListImpl16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm = comdat any

$_ZN11xalanc_1_1021CollectionDeleteGuardINS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEENS_13DeleteFunctorIS2_EEEC2ERS6_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_ = comdat any

$_ZN11xalanc_1_1021CollectionDeleteGuardINS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEENS_13DeleteFunctorIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_20AttributeVectorEntryEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZSt4copyIPKPN11xalanc_1_1020AttributeVectorEntryEPS2_ET0_T_S7_S6_ = comdat any

$_ZSt13copy_backwardIPPN11xalanc_1_1020AttributeVectorEntryES3_ET0_T_S5_S4_ = comdat any

$_ZSt8distanceIPKPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E15difference_typeES6_S6_ = comdat any

$_ZSt10__distanceIPKPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E17iterator_categoryERKS6_ = comdat any

$_ZSt13__copy_move_aILb0EPKPN11xalanc_1_1020AttributeVectorEntryEPS2_ET1_T0_S7_S6_ = comdat any

$_ZSt12__miter_baseIPKPN11xalanc_1_1020AttributeVectorEntryEET_S5_ = comdat any

$_ZSt12__niter_wrapIPPN11xalanc_1_1020AttributeVectorEntryEET_RKS4_S4_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_1020AttributeVectorEntryEPS2_ET1_T0_S7_S6_ = comdat any

$_ZSt12__niter_baseIPKPN11xalanc_1_1020AttributeVectorEntryEET_S5_ = comdat any

$_ZSt12__niter_baseIPPN11xalanc_1_1020AttributeVectorEntryEET_S4_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_1020AttributeVectorEntryEPS2_ET1_T0_S7_S6_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_1020AttributeVectorEntryEEEPT_PKS6_S9_S7_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_1020AttributeVectorEntryES3_ET1_T0_S5_S4_ = comdat any

$_ZSt12__miter_baseIPPN11xalanc_1_1020AttributeVectorEntryEET_S4_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_1020AttributeVectorEntryES3_ET1_T0_S5_S4_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_1020AttributeVectorEntryES3_ET1_T0_S5_S4_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1020AttributeVectorEntryEEEPT_PKS6_S9_S7_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1017AttributeListImpl7reserveEj = comdat any

$_ZN11xalanc_1_1017AttributeListImpl4swapERS0_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEixEm = comdat any

$_ZSt7find_ifIPKPN11xalanc_1_1020AttributeVectorEntryENS0_18NameCompareFunctorEET_S6_S6_T0_ = comdat any

$_ZN11xalanc_1_1018NameCompareFunctorC2EPKt = comdat any

$_ZSt9__find_ifIPKPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_SA_SA_T0_ = comdat any

$_ZN9__gnu_cxx5__ops11__pred_iterIN11xalanc_1_1018NameCompareFunctorEEENS0_10_Iter_predIT_EES5_ = comdat any

$_ZSt9__find_ifIPKPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_SA_SA_T0_St26random_access_iterator_tag = comdat any

$_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPKPNS2_20AttributeVectorEntryEEEbT_ = comdat any

$_ZNK11xalanc_1_1018NameCompareFunctorclEPKNS_20AttributeVectorEntryE = comdat any

$_ZN11xalanc_1_106equalsEPKtS1_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_106lengthEPKt = comdat any

$_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEC2ES3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv = comdat any

$_ZSt7find_ifIPPN11xalanc_1_1020AttributeVectorEntryENS0_18NameCompareFunctorEET_S5_S5_T0_ = comdat any

$_ZN11xalanc_1_1020AttributeVectorEntry8endArrayEPKt = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZSt4copyIPKtPtET0_T_S4_S3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEm = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE3getEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EED2Ev = comdat any

$_ZSt9__find_ifIPPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_ = comdat any

$_ZSt9__find_ifIPPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E17iterator_categoryERKS5_ = comdat any

$_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPPNS2_20AttributeVectorEntryEEEbT_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_ = comdat any

$_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPtET_S1_ = comdat any

$_ZSt12__niter_wrapIPtET_RKS1_S1_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__niter_baseIPtET_S1_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZSt12__miter_baseIPKtET_S2_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPKtET_S2_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_ = comdat any

$_ZN11xalanc_1_1033ConstructValueWithNoMemoryManagerItEC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1020AttributeVectorEntryEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv = comdat any

$_ZN11xalanc_1_1020AttributeVectorEntry6createEPKtS2_S2_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv = comdat any

$_ZN11xalanc_1_1020AttributeVectorEntry5clearEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE3getEv = comdat any

$_ZN11xalanc_1_1020AttributeVectorEntryC2EPKtS2_S2_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1020AttributeVectorEntryD2Ev = comdat any

$_ZN11xalanc_1_1020AttributeVectorEntryD0Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5clearEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_ = comdat any

$_ZSt4copyIPPN11xalanc_1_1020AttributeVectorEntryES3_ET0_T_S5_S4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE11shrinkCountEm = comdat any

$_ZSt13__copy_move_aILb0EPPN11xalanc_1_1020AttributeVectorEntryES3_ET1_T0_S5_S4_ = comdat any

$_ZSt14__copy_move_a1ILb0EPPN11xalanc_1_1020AttributeVectorEntryES3_ET1_T0_S5_S4_ = comdat any

$_ZSt14__copy_move_a2ILb0EPPN11xalanc_1_1020AttributeVectorEntryES3_ET1_T0_S5_S4_ = comdat any

$_ZTSN11xercesc_2_713AttributeListE = comdat any

$_ZTIN11xercesc_2_713AttributeListE = comdat any

$_ZTVN11xercesc_2_713AttributeListE = comdat any

$_ZTVN11xalanc_1_1020AttributeVectorEntryE = comdat any

$_ZTSN11xalanc_1_1020AttributeVectorEntryE = comdat any

$_ZTIN11xalanc_1_1020AttributeVectorEntryE = comdat any

@_ZTVN11xalanc_1_1017AttributeListImplE = dso_local unnamed_addr constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1017AttributeListImplE, ptr @_ZN11xalanc_1_1017AttributeListImplD2Ev, ptr @_ZN11xalanc_1_1017AttributeListImplD0Ev, ptr @_ZNK11xalanc_1_1017AttributeListImpl9getLengthEv, ptr @_ZNK11xalanc_1_1017AttributeListImpl7getNameEj, ptr @_ZNK11xalanc_1_1017AttributeListImpl7getTypeEj, ptr @_ZNK11xalanc_1_1017AttributeListImpl8getValueEj, ptr @_ZNK11xalanc_1_1017AttributeListImpl7getTypeEPKt, ptr @_ZNK11xalanc_1_1017AttributeListImpl8getValueEPKt, ptr @_ZNK11xalanc_1_1017AttributeListImpl8getValueEPKc, ptr @_ZN11xalanc_1_1017AttributeListImpl5clearEv, ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZN11xalanc_1_1017AttributeListImpl15removeAttributeEPKt] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1017AttributeListImplE = dso_local constant [35 x i8] c"N11xalanc_1_1017AttributeListImplE\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713AttributeListE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713AttributeListE\00", comdat, align 1
@_ZTIN11xercesc_2_713AttributeListE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713AttributeListE }, comdat, align 8
@_ZTIN11xalanc_1_1017AttributeListImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1017AttributeListImplE, ptr @_ZTIN11xercesc_2_713AttributeListE }, align 8
@_ZTVN11xercesc_2_713AttributeListE = linkonce_odr dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713AttributeListE, ptr @_ZN11xercesc_2_713AttributeListD2Ev, ptr @_ZN11xercesc_2_713AttributeListD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xalanc_1_1020AttributeVectorEntryE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1020AttributeVectorEntryE, ptr @_ZN11xalanc_1_1020AttributeVectorEntryD2Ev, ptr @_ZN11xalanc_1_1020AttributeVectorEntryD0Ev] }, comdat, align 8
@_ZTSN11xalanc_1_1020AttributeVectorEntryE = linkonce_odr dso_local constant [38 x i8] c"N11xalanc_1_1020AttributeVectorEntryE\00", comdat, align 1
@_ZTIN11xalanc_1_1020AttributeVectorEntryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1020AttributeVectorEntryE }, comdat, align 8

@_ZN11xalanc_1_1017AttributeListImplC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1017AttributeListImplC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1017AttributeListImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1017AttributeListImplD2Ev
@_ZN11xalanc_1_1017AttributeListImplC1ERKS0_RN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1017AttributeListImplC2ERKS0_RN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1017AttributeListImplC1ERKN11xercesc_2_713AttributeListERNS1_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1017AttributeListImplC2ERKN11xercesc_2_713AttributeListERNS1_13MemoryManagerE

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1017AttributeListImplD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1017AttributeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #12
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1017AttributeListImpl9getLengthEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 !prof !281 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017AttributeListImpl7getNameEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) unnamed_addr #1 align 2 !prof !282 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  %4 = zext i32 %1 to i64
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4) #14
  %6 = load ptr, ptr %5, align 8, !tbaa !283
  %7 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %6, i64 0, i32 1
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #14
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017AttributeListImpl7getTypeEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) unnamed_addr #1 align 2 !prof !287 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  %4 = zext i32 %1 to i64
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4) #14
  %6 = load ptr, ptr %5, align 8, !tbaa !283
  %7 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %6, i64 0, i32 3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #14
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017AttributeListImpl8getValueEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) unnamed_addr #1 align 2 !prof !288 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  %4 = zext i32 %1 to i64
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4) #14
  %6 = load ptr, ptr %5, align 8, !tbaa !283
  %7 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %6, i64 0, i32 2
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #14
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017AttributeListImpl7getTypeEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !287 {
  %3 = alloca %"struct.xalanc_1_10::NameCompareFunctor", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  call void @_ZN11xalanc_1_1018NameCompareFunctorC2EPKt(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #14
  %7 = load ptr, ptr %3, align 8
  %8 = call noundef ptr @_ZSt7find_ifIPKPN11xalanc_1_1020AttributeVectorEntryENS0_18NameCompareFunctorEET_S6_S6_T0_(ptr noundef %5, ptr noundef %6, ptr %7) #14
  %9 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %8, align 8, !tbaa !283
  %13 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %12, i64 0, i32 3
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %13) #14
  br label %15

15:                                               ; preds = %2, %11
  %16 = phi ptr [ %14, %11 ], [ null, %2 ]
  ret ptr %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017AttributeListImpl8getValueEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !287 {
  %3 = alloca %"struct.xalanc_1_10::NameCompareFunctor", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  call void @_ZN11xalanc_1_1018NameCompareFunctorC2EPKt(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #14
  %7 = load ptr, ptr %3, align 8
  %8 = call noundef ptr @_ZSt7find_ifIPKPN11xalanc_1_1020AttributeVectorEntryENS0_18NameCompareFunctorEET_S6_S6_T0_(ptr noundef %5, ptr noundef %6, ptr %7) #14
  %9 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %8, align 8, !tbaa !283
  %13 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %12, i64 0, i32 2
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %13) #14
  br label %15

15:                                               ; preds = %2, %11
  %16 = phi ptr [ %14, %11 ], [ null, %2 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1017AttributeListImpl8getValueEPKc(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #2 align 2 !prof !287 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1017AttributeListImpl5clearEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !289 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3, ptr noundef %5, ptr noundef %6) #14
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !288 {
  %5 = alloca %"struct.xalanc_1_10::NameCompareFunctor", align 8
  %6 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %7 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %8 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr", align 8
  %9 = alloca ptr, align 8
  %10 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #14
  %12 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #14
  call void @_ZN11xalanc_1_1018NameCompareFunctorC2EPKt(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1) #14
  %13 = load ptr, ptr %5, align 8
  %14 = call noundef ptr @_ZSt7find_ifIPPN11xalanc_1_1020AttributeVectorEntryENS0_18NameCompareFunctorEET_S5_S5_T0_(ptr noundef %11, ptr noundef %12, ptr %13) #14
  %15 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #14
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %64, label %17, !prof !290

17:                                               ; preds = %4
  %18 = load ptr, ptr %14, align 8, !tbaa !283
  %19 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %18, i64 0, i32 3
  %20 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %19) #14
  %21 = call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_(ptr noundef %2, ptr noundef %20) #14
  br i1 %21, label %42, label %22

22:                                               ; preds = %17
  %23 = call noundef ptr @_ZN11xalanc_1_1020AttributeVectorEntry8endArrayEPKt(ptr noundef %2) #14
  %24 = getelementptr inbounds i16, ptr %23, i64 1
  %25 = load ptr, ptr %14, align 8, !tbaa !283
  %26 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %25, i64 0, i32 3
  %27 = call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %26) #14
  %28 = ptrtoint ptr %24 to i64
  %29 = ptrtoint ptr %2 to i64
  %30 = sub i64 %28, %29
  %31 = ashr exact i64 %30, 1
  %32 = icmp ult i64 %27, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #15
  %34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1017AttributeListImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #14
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %2, ptr noundef nonnull %24, ptr noundef nonnull align 8 dereferenceable(8) %34) #14
  %35 = load ptr, ptr %14, align 8, !tbaa !283
  %36 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %35, i64 0, i32 3
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %36) #14
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #15
  br label %42

37:                                               ; preds = %22
  %38 = load ptr, ptr %14, align 8, !tbaa !283
  %39 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %38, i64 0, i32 3
  %40 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %39) #14
  %41 = call noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %2, ptr noundef nonnull %24, ptr noundef %40) #14
  br label %42

42:                                               ; preds = %33, %37, %17
  %43 = call noundef ptr @_ZN11xalanc_1_1020AttributeVectorEntry8endArrayEPKt(ptr noundef %3) #14
  %44 = getelementptr inbounds i16, ptr %43, i64 1
  %45 = ptrtoint ptr %44 to i64
  %46 = ptrtoint ptr %3 to i64
  %47 = sub i64 %45, %46
  %48 = ashr exact i64 %47, 1
  %49 = load ptr, ptr %14, align 8, !tbaa !283
  %50 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %49, i64 0, i32 2
  %51 = call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %50) #14
  %52 = icmp ult i64 %51, %48
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #15
  %54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1017AttributeListImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #14
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %3, ptr noundef nonnull %44, ptr noundef nonnull align 8 dereferenceable(8) %54) #14
  %55 = load ptr, ptr %14, align 8, !tbaa !283
  %56 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %55, i64 0, i32 2
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %56) #14
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #15
  br label %81

57:                                               ; preds = %42
  %58 = load ptr, ptr %14, align 8, !tbaa !283
  %59 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %58, i64 0, i32 2
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %59, i64 noundef %48) #14
  %60 = load ptr, ptr %14, align 8, !tbaa !283
  %61 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %60, i64 0, i32 2
  %62 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %61) #14
  %63 = call noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %3, ptr noundef nonnull %44, ptr noundef %62) #14
  br label %81

64:                                               ; preds = %4
  %65 = call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #14
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68, !prof !291

67:                                               ; preds = %64
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 5) #14
  br label %68

68:                                               ; preds = %67, %64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #15
  %69 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1017AttributeListImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #14
  %70 = call noundef ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #14
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) %69, ptr noundef %70) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  %71 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #14
  store ptr %71, ptr %9, align 8, !tbaa !283
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %9) #14
          to label %72 unwind label %75

72:                                               ; preds = %68
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  %73 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #14
          to label %74 unwind label %77

74:                                               ; preds = %72
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  br label %81

75:                                               ; preds = %68
  %76 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  br label %79

77:                                               ; preds = %72
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi { ptr, i32 } [ %78, %77 ], [ %76, %75 ]
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  resume { ptr, i32 } %80

81:                                               ; preds = %53, %57, %74
  ret i1 %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1017AttributeListImpl15removeAttributeEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !287 {
  %3 = alloca %"struct.xalanc_1_10::NameCompareFunctor", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  call void @_ZN11xalanc_1_1018NameCompareFunctorC2EPKt(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #14
  %7 = load ptr, ptr %3, align 8
  %8 = call noundef ptr @_ZSt7find_ifIPPN11xalanc_1_1020AttributeVectorEntryENS0_18NameCompareFunctorEET_S5_S5_T0_(ptr noundef %5, ptr noundef %6, ptr %7) #14
  %9 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  %10 = icmp ne ptr %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 2
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %8) #14
  %13 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %8) #14
  br label %14

14:                                               ; preds = %11, %2
  ret i1 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1017AttributeListImplC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !292 {
  tail call void @_ZN11xercesc_2_713AttributeListC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xalanc_1_1017AttributeListImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !293
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) #14
          to label %4 unwind label %7

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) #14
          to label %6 unwind label %9

6:                                                ; preds = %4
  ret void

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  br label %11

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi { ptr, i32 } [ %10, %9 ], [ %8, %7 ]
  tail call void @_ZN11xercesc_2_713AttributeListD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713AttributeListC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !295 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_713AttributeListE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !293
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 !prof !296 {
  store ptr %1, ptr %0, align 8, !tbaa !297
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !300
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !301
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !302

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #14
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !303
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !304 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !301
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !305

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %6, ptr noundef %7) #14
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !303
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #14
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713AttributeListD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !295 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713AttributeListD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #16
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !306 {
  %3 = shl i64 %1, 3
  %4 = load ptr, ptr %0, align 8, !tbaa !297
  %5 = load ptr, ptr %4, align 8, !tbaa !293
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #14
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !307 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !306 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !308

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !309, !llvm.loop !310

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !312 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !303
  ret ptr %3
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !313 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !306 {
  %3 = load ptr, ptr %0, align 8, !tbaa !297
  %4 = load ptr, ptr %3, align 8, !tbaa !293
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !314 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !315 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !303
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !300
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1017AttributeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !316 {
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xalanc_1_1017AttributeListImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !293
  invoke void @_ZN11xalanc_1_1017AttributeListImpl5clearEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #14
          to label %2 unwind label %6

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1017AttributeListImpl13deleteEntriesERNS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEE(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
          to label %4 unwind label %6

4:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  %5 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  tail call void @_ZN11xercesc_2_713AttributeListD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  ret void

6:                                                ; preds = %2, %1
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1017AttributeListImpl13deleteEntriesERNS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 align 2 !prof !316 {
  %2 = alloca %"struct.xalanc_1_10::DeleteFunctor", align 8
  %3 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %4 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  call void @_ZN11xalanc_1_1013DeleteFunctorINS_20AttributeVectorEntryEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  %6 = load ptr, ptr %2, align 8
  %7 = call ptr @_ZSt8for_eachIPPN11xalanc_1_1020AttributeVectorEntryENS0_13DeleteFunctorIS1_EEET0_T_S7_S6_(ptr noundef %3, ptr noundef %4, ptr %6) #14
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1017AttributeListImplC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !317 {
  tail call void @_ZN11xercesc_2_713AttributeListC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xalanc_1_1017AttributeListImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !293
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0) #14
          to label %5 unwind label %10

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0) #14
          to label %7 unwind label %12

7:                                                ; preds = %5
  %8 = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN11xalanc_1_1017AttributeListImplaSERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) #14
          to label %9 unwind label %14

9:                                                ; preds = %7
  ret void

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %18

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %16

14:                                               ; preds = %7
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #12
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #12
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %11, %10 ]
  tail call void @_ZN11xercesc_2_713AttributeListD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN11xalanc_1_1017AttributeListImplaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !317 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = alloca %"class.xalanc_1_10::CollectionDeleteGuard", align 8
  %5 = alloca ptr, align 8
  %6 = icmp eq ptr %0, %1
  br i1 %6, label %53, label %7, !prof !318

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1017AttributeListImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #14
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 0) #14
  %9 = load ptr, ptr %1, align 8, !tbaa !293
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(72) %1) #14
          to label %13 unwind label %25

13:                                               ; preds = %7
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %50, label %15, !prof !319

15:                                               ; preds = %13
  %16 = zext i32 %12 to i64
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %16) #14
          to label %17 unwind label %25

17:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @_ZN11xalanc_1_1021CollectionDeleteGuardINS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEENS_13DeleteFunctorIS2_EEEC2ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  %18 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %1, i64 0, i32 1
  %19 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %18) #14
          to label %20 unwind label %27

20:                                               ; preds = %17
  %21 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %18) #14
  %22 = icmp eq ptr %21, %19
  br i1 %22, label %23, label %29

23:                                               ; preds = %43, %20
  %24 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @_ZN11xalanc_1_1021CollectionDeleteGuardINS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEENS_13DeleteFunctorIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %50

25:                                               ; preds = %15, %7
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %51

27:                                               ; preds = %17
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %48

29:                                               ; preds = %20, %43
  %30 = phi ptr [ %44, %43 ], [ %21, %20 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !283
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %32 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %31, i64 0, i32 1
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %32) #14
          to label %34 unwind label %46

34:                                               ; preds = %29
  %35 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %31, i64 0, i32 3
  %36 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %35) #14
          to label %37 unwind label %46

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %31, i64 0, i32 2
  %39 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %38) #14
          to label %40 unwind label %46

40:                                               ; preds = %37
  %41 = invoke noundef ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %33, ptr noundef %36, ptr noundef %39) #14
          to label %42 unwind label %46

42:                                               ; preds = %40
  store ptr %41, ptr %5, align 8, !tbaa !283
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #14
          to label %43 unwind label %46

43:                                               ; preds = %42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  %44 = getelementptr inbounds ptr, ptr %30, i64 1
  %45 = icmp eq ptr %44, %19
  br i1 %45, label %23, label %29, !llvm.loop !320

46:                                               ; preds = %42, %40, %37, %34, %29
  %47 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  br label %48

48:                                               ; preds = %46, %27
  %49 = phi { ptr, i32 } [ %47, %46 ], [ %28, %27 ]
  call void @_ZN11xalanc_1_1021CollectionDeleteGuardINS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEENS_13DeleteFunctorIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %51

50:                                               ; preds = %23, %13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  br label %53

51:                                               ; preds = %48, %25
  %52 = phi { ptr, i32 } [ %49, %48 ], [ %26, %25 ]
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  resume { ptr, i32 } %52

53:                                               ; preds = %50, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1017AttributeListImplC2ERKN11xercesc_2_713AttributeListERNS1_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !287 {
  tail call void @_ZN11xercesc_2_713AttributeListC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xalanc_1_1017AttributeListImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !293
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0) #14
          to label %5 unwind label %10

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0) #14
          to label %7 unwind label %12

7:                                                ; preds = %5
  %8 = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN11xalanc_1_1017AttributeListImplaSERKN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
          to label %9 unwind label %14

9:                                                ; preds = %7
  ret void

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %18

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %16

14:                                               ; preds = %7
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #12
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #12
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %11, %10 ]
  tail call void @_ZN11xercesc_2_713AttributeListD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN11xalanc_1_1017AttributeListImplaSERKN11xercesc_2_713AttributeListE(ptr noundef nonnull returned align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !287 {
  %3 = alloca %"class.xalanc_1_10::AttributeListImpl", align 8
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %42, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #15
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1017AttributeListImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #14
  call void @_ZN11xalanc_1_1017AttributeListImplC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(8) %6) #14
  %7 = load ptr, ptr %1, align 8, !tbaa !293
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %1) #14
          to label %11 unwind label %15

11:                                               ; preds = %5
  invoke void @_ZN11xalanc_1_1017AttributeListImpl7reserveEj(ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %10) #14
          to label %12 unwind label %15

12:                                               ; preds = %11
  %13 = icmp eq i32 %10, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %35, %12
  call void @_ZN11xalanc_1_1017AttributeListImpl4swapERS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %3) #14
  call void @_ZN11xalanc_1_1017AttributeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %3) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #15
  br label %42

15:                                               ; preds = %11, %5
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %40

17:                                               ; preds = %12, %35
  %18 = phi i32 [ %36, %35 ], [ 0, %12 ]
  %19 = load ptr, ptr %1, align 8, !tbaa !293
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  %22 = invoke noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %18) #14
          to label %23 unwind label %38

23:                                               ; preds = %17
  %24 = load ptr, ptr %1, align 8, !tbaa !293
  %25 = getelementptr inbounds ptr, ptr %24, i64 4
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %18) #14
          to label %28 unwind label %38

28:                                               ; preds = %23
  %29 = load ptr, ptr %1, align 8, !tbaa !293
  %30 = getelementptr inbounds ptr, ptr %29, i64 5
  %31 = load ptr, ptr %30, align 8
  %32 = invoke noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %18) #14
          to label %33 unwind label %38

33:                                               ; preds = %28
  %34 = invoke noundef zeroext i1 @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef %22, ptr noundef %27, ptr noundef %32) #14
          to label %35 unwind label %38

35:                                               ; preds = %33
  %36 = add nuw i32 %18, 1
  %37 = icmp eq i32 %36, %10
  br i1 %37, label %14, label %17, !llvm.loop !321

38:                                               ; preds = %33, %28, %23, %17
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %40

40:                                               ; preds = %38, %15
  %41 = phi { ptr, i32 } [ %39, %38 ], [ %16, %15 ]
  call void @_ZN11xalanc_1_1017AttributeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %3) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #15
  resume { ptr, i32 } %41

42:                                               ; preds = %14, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt8for_eachIPPN11xalanc_1_1020AttributeVectorEntryENS0_13DeleteFunctorIS1_EEET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #1 comdat !prof !316 {
  %4 = alloca %"struct.xalanc_1_10::DeleteFunctor", align 8
  store ptr %2, ptr %4, align 8
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %13, label %6, !prof !322

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %9, %6 ], [ %0, %3 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !283
  call void @_ZNK11xalanc_1_1013DeleteFunctorINS_20AttributeVectorEntryEEclEPKS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #14
  %9 = getelementptr inbounds ptr, ptr %7, i64 1
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %6, !prof !309, !llvm.loop !323

11:                                               ; preds = %6
  %12 = load ptr, ptr %4, align 8
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi ptr [ %12, %11 ], [ %2, %3 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !324 {
  %2 = load ptr, ptr %0, align 8, !tbaa !297
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1013DeleteFunctorINS_20AttributeVectorEntryEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !316 {
  store ptr %1, ptr %0, align 8, !tbaa !283
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1013DeleteFunctorINS_20AttributeVectorEntryEEclEPKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !325 {
  %3 = alloca %"struct.xalanc_1_10::XalanDestroyFunctor", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  tail call void @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_20AttributeVectorEntryEEENS_19XalanDestroyFunctorIT_EEPKS3_(ptr noundef %1) #14
  %4 = load ptr, ptr %0, align 8, !tbaa !326
  call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_20AttributeVectorEntryEEclEPKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_20AttributeVectorEntryEEENS_19XalanDestroyFunctorIT_EEPKS3_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !325 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_20AttributeVectorEntryEEclEPKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 !prof !325 {
  tail call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_20AttributeVectorEntryEEclEPS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_20AttributeVectorEntryEEclEPS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 !prof !325 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5, !prof !328

5:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_20AttributeVectorEntryEEclERS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) #14
  %6 = load ptr, ptr %2, align 8, !tbaa !293
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %1) #14
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_20AttributeVectorEntryEEclERS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 !prof !325 {
  %3 = load ptr, ptr %1, align 8, !tbaa !293
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(104) %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1017AttributeListImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 !prof !329 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !325 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !301
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7, !prof !330

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #14
  br label %7

7:                                                ; preds = %6, %2
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021CollectionDeleteGuardINS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEENS_13DeleteFunctorIS2_EEEC2ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 !prof !287 {
  store ptr %1, ptr %0, align 8, !tbaa !331
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !287 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !287 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !303
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !288 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 align 2 !prof !288 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 2
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  br i1 %6, label %7, label %10, !prof !291

7:                                                ; preds = %4
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1017AttributeListImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #14
  %9 = tail call noundef ptr @_ZN11xalanc_1_1020AttributeVectorEntry6createEPKtS2_S2_RN11xercesc_2_713MemoryManagerE(ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %8) #14
  br label %25

10:                                               ; preds = %4
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  %12 = load ptr, ptr %11, align 8, !tbaa !283
  tail call void @_ZN11xalanc_1_1020AttributeVectorEntry5clearEv(ptr noundef nonnull align 8 dereferenceable(104) %12) #14
  %13 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %12, i64 0, i32 1
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %13) #14
  %15 = tail call noundef ptr @_ZN11xalanc_1_1020AttributeVectorEntry8endArrayEPKt(ptr noundef %1) #14
  %16 = getelementptr inbounds i16, ptr %15, i64 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef %14, ptr noundef %1, ptr noundef nonnull %16) #14
  %17 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %12, i64 0, i32 2
  %18 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %17) #14
  %19 = tail call noundef ptr @_ZN11xalanc_1_1020AttributeVectorEntry8endArrayEPKt(ptr noundef %3) #14
  %20 = getelementptr inbounds i16, ptr %19, i64 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef %18, ptr noundef %3, ptr noundef nonnull %20) #14
  %21 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %12, i64 0, i32 3
  %22 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %21) #14
  %23 = tail call noundef ptr @_ZN11xalanc_1_1020AttributeVectorEntry8endArrayEPKt(ptr noundef %2) #14
  %24 = getelementptr inbounds i16, ptr %23, i64 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef %22, ptr noundef %2, ptr noundef nonnull %24) #14
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  br label %25

25:                                               ; preds = %10, %7
  %26 = phi ptr [ %9, %7 ], [ %12, %10 ]
  ret ptr %26
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !333 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !334
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !306 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %3 = load ptr, ptr %0, align 8, !tbaa !297
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !303
  %7 = load ptr, ptr %1, align 8, !tbaa !297
  store ptr %7, ptr %0, align 8, !tbaa !297
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !336
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !303
  store ptr %11, ptr %5, align 8, !tbaa !303
  store ptr %3, ptr %1, align 8, !tbaa !297
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !336
  store <2 x i64> %9, ptr %4, align 8, !tbaa !336
  store <2 x i64> %12, ptr %8, align 8, !tbaa !336
  store ptr %6, ptr %10, align 8, !tbaa !303
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021CollectionDeleteGuardINS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEENS_13DeleteFunctorIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !287 {
  %2 = alloca %"struct.xalanc_1_10::DeleteFunctor", align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !331
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  %7 = load ptr, ptr %0, align 8, !tbaa !331
  %8 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #14
          to label %9 unwind label %15

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !331
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #14
  call void @_ZN11xalanc_1_1013DeleteFunctorINS_20AttributeVectorEntryEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %11) #14
  %12 = load ptr, ptr %2, align 8
  %13 = invoke ptr @_ZSt8for_eachIPPN11xalanc_1_1020AttributeVectorEntryENS0_13DeleteFunctorIS1_EEET0_T_S7_S6_(ptr noundef %6, ptr noundef %8, ptr %12) #14
          to label %14 unwind label %15

14:                                               ; preds = %9, %1
  ret void

15:                                               ; preds = %9, %5
  %16 = landingpad { ptr, i32 }
          catch ptr null
  %17 = extractvalue { ptr, i32 } %16, 0
  call void @__clang_call_terminate(ptr %17) #16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !306 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %4 = load ptr, ptr %0, align 8, !tbaa !297
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #14
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !306 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !297
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !300
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !337

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #14
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #14
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #14
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #14
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #14
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !338

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #14
  store ptr %24, ptr %8, align 8, !tbaa !303
  store i64 %3, ptr %7, align 8, !tbaa !301
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !287 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !289 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #14
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8, !prof !339

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28, !prof !290

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #14
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16, !prof !340

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !297
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_20AttributeVectorEntryEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #14
  %23 = getelementptr inbounds ptr, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !300
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !300
  %26 = getelementptr inbounds ptr, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !prof !341, !llvm.loop !342

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  %32 = load ptr, ptr %0, align 8, !tbaa !297
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #14
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #14
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #14
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #14
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #14
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %57) #14
  %58 = getelementptr inbounds ptr, ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !llvm.loop !343

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %61) #14
  %62 = getelementptr inbounds ptr, ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !llvm.loop !344

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_1020AttributeVectorEntryEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #14
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds ptr, ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %72) #14
  %73 = getelementptr inbounds ptr, ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !345

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds ptr, ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_1020AttributeVectorEntryES3_ET0_T_S5_S4_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #14
  %78 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_1020AttributeVectorEntryEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #14
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !289 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %1, ptr noundef %2) #14
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !346 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !300
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !288 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6, !prof !291

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #14
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_20AttributeVectorEntryEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !314 {
  %4 = load ptr, ptr %1, align 8, !tbaa !283
  store ptr %4, ptr %0, align 8, !tbaa !283
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !314 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !301
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !288 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !300
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !301
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !290

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %11 = load ptr, ptr %0, align 8, !tbaa !297
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_20AttributeVectorEntryEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #14
  %13 = load i64, ptr %4, align 8, !tbaa !300
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !300
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %21 = load ptr, ptr %0, align 8, !tbaa !297
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #14
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKPN11xalanc_1_1020AttributeVectorEntryEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !287 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_1020AttributeVectorEntryEET_S5_(ptr noundef %0) #14
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_1020AttributeVectorEntryEET_S5_(ptr noundef %1) #14
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKPN11xalanc_1_1020AttributeVectorEntryEPS2_ET1_T0_S7_S6_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #14
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_1020AttributeVectorEntryES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !287 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_1020AttributeVectorEntryEET_S4_(ptr noundef %0) #14
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_1020AttributeVectorEntryEET_S4_(ptr noundef %1) #14
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_1020AttributeVectorEntryES3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #14
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !289 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !283
  call void @_ZSt19__iterator_categoryIPKPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  %4 = call noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #14
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !289 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !289 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKPN11xalanc_1_1020AttributeVectorEntryEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !287 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !283
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_1020AttributeVectorEntryEET_S5_(ptr noundef %0) #12
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_1020AttributeVectorEntryEET_S5_(ptr noundef %1) #12
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1020AttributeVectorEntryEET_S4_(ptr noundef %2) #12
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_1020AttributeVectorEntryEPS2_ET1_T0_S7_S6_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #14
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_1020AttributeVectorEntryEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #14
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_1020AttributeVectorEntryEET_S5_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !287 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_1020AttributeVectorEntryEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !287 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_1020AttributeVectorEntryEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !287 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_1020AttributeVectorEntryEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_1020AttributeVectorEntryEET_S5_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !287 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1020AttributeVectorEntryEET_S4_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !287 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_1020AttributeVectorEntryEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !287 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_1020AttributeVectorEntryEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_1020AttributeVectorEntryEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !287 {
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
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_1020AttributeVectorEntryES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !287 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !283
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1020AttributeVectorEntryEET_S4_(ptr noundef %0) #12
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1020AttributeVectorEntryEET_S4_(ptr noundef %1) #12
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1020AttributeVectorEntryEET_S4_(ptr noundef %2) #12
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_1020AttributeVectorEntryES3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #14
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_1020AttributeVectorEntryEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #14
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_1020AttributeVectorEntryEET_S4_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !287 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_1020AttributeVectorEntryES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !287 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_1020AttributeVectorEntryES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_1020AttributeVectorEntryES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !287 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1020AttributeVectorEntryEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1020AttributeVectorEntryEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !287 {
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
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !287 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !303
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !300
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !347 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017AttributeListImpl7reserveEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !287 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  %4 = zext i32 %1 to i64
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017AttributeListImpl4swapERS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 comdat align 2 !prof !287 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %1, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !348 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !303
  %5 = getelementptr inbounds ptr, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt7find_ifIPKPN11xalanc_1_1020AttributeVectorEntryENS0_18NameCompareFunctorEET_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #1 comdat !prof !287 {
  %4 = tail call ptr @_ZN9__gnu_cxx5__ops11__pred_iterIN11xalanc_1_1018NameCompareFunctorEEENS0_10_Iter_predIT_EES5_(ptr %2) #14
  %5 = tail call noundef ptr @_ZSt9__find_ifIPKPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_SA_SA_T0_(ptr noundef %0, ptr noundef %1, ptr %4) #14
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018NameCompareFunctorC2EPKt(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !288 {
  store ptr %1, ptr %0, align 8, !tbaa !349
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPKPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_SA_SA_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #1 comdat !prof !287 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !283
  call void @_ZSt19__iterator_categoryIPKPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %5 = call noundef ptr @_ZSt9__find_ifIPKPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_SA_SA_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) #14
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZN9__gnu_cxx5__ops11__pred_iterIN11xalanc_1_1018NameCompareFunctorEEENS0_10_Iter_predIT_EES5_(ptr %0) local_unnamed_addr #1 comdat !prof !288 {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred", align 8
  call void @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEC2ES3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr %0) #14
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPKPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_SA_SA_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #1 comdat !prof !287 {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred", align 8
  store ptr %2, ptr %4, align 8
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = ashr i64 %7, 5
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %3, %23
  %11 = phi i64 [ %25, %23 ], [ %8, %3 ]
  %12 = phi ptr [ %24, %23 ], [ %0, %3 ]
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPKPNS2_20AttributeVectorEntryEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %12) #14
  br i1 %13, label %47, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %12, i64 1
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPKPNS2_20AttributeVectorEntryEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %15) #14
  br i1 %16, label %47, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds ptr, ptr %12, i64 2
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPKPNS2_20AttributeVectorEntryEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %18) #14
  br i1 %19, label %47, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds ptr, ptr %12, i64 3
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPKPNS2_20AttributeVectorEntryEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %21) #14
  br i1 %22, label %47, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds ptr, ptr %12, i64 4
  %25 = add nsw i64 %11, -1
  %26 = icmp sgt i64 %11, 1
  br i1 %26, label %10, label %27, !llvm.loop !351

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
  ]

34:                                               ; preds = %30
  %35 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPKPNS2_20AttributeVectorEntryEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %32) #14
  br i1 %35, label %47, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds ptr, ptr %32, i64 1
  br label %38

38:                                               ; preds = %30, %36
  %39 = phi ptr [ %32, %30 ], [ %37, %36 ]
  %40 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPKPNS2_20AttributeVectorEntryEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %39) #14
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds ptr, ptr %39, i64 1
  br label %43

43:                                               ; preds = %30, %41
  %44 = phi ptr [ %32, %30 ], [ %42, %41 ]
  %45 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPKPNS2_20AttributeVectorEntryEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %44) #14
  br i1 %45, label %47, label %46

46:                                               ; preds = %43, %30
  br label %47

47:                                               ; preds = %20, %17, %14, %10, %43, %38, %34, %46
  %48 = phi ptr [ %1, %46 ], [ %32, %34 ], [ %39, %38 ], [ %44, %43 ], [ %21, %20 ], [ %18, %17 ], [ %15, %14 ], [ %12, %10 ]
  ret ptr %48
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPKPNS2_20AttributeVectorEntryEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !287 {
  %3 = load ptr, ptr %1, align 8, !tbaa !283
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018NameCompareFunctorclEPKNS_20AttributeVectorEntryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3) #14
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018NameCompareFunctorclEPKNS_20AttributeVectorEntryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !287 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %1, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  %5 = load ptr, ptr %0, align 8, !tbaa !349
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_(ptr noundef %4, ptr noundef %5) #14
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !352 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %0) #14
  %4 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %1) #14
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %8, !prof !353

6:                                                ; preds = %2
  %7 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %0, ptr noundef %1, i32 noundef %3) #14
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i1 [ %7, %6 ], [ false, %2 ]
  ret i1 %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !354 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !334
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %0) local_unnamed_addr #0 comdat !prof !355 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ]
  %4 = load i16, ptr %3, align 2, !tbaa !356
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds i16, ptr %3, i64 1
  br i1 %5, label %7, label %2, !prof !358, !llvm.loop !359

7:                                                ; preds = %2
  %8 = ptrtoint ptr %3 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = lshr exact i64 %10, 1
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEC2ES3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) unnamed_addr #0 comdat align 2 !prof !288 {
  store ptr %1, ptr %0, align 8, !tbaa.struct !360
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !289 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !300
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5, !prof !339

5:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #14
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !288 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %5 = load i64, ptr %3, align 8, !tbaa !300
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !prof !361, !llvm.loop !362

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !363 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !300
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !300
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !303
  %7 = getelementptr inbounds ptr, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %7) #14
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt7find_ifIPPN11xalanc_1_1020AttributeVectorEntryENS0_18NameCompareFunctorEET_S5_S5_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #1 comdat !prof !288 {
  %4 = tail call ptr @_ZN9__gnu_cxx5__ops11__pred_iterIN11xalanc_1_1018NameCompareFunctorEEENS0_10_Iter_predIT_EES5_(ptr %2) #14
  %5 = tail call noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_(ptr noundef %0, ptr noundef %1, ptr %4) #14
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1020AttributeVectorEntry8endArrayEPKt(ptr noundef %0) local_unnamed_addr #0 comdat align 2 !prof !364 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ]
  %4 = load i16, ptr %3, align 2, !tbaa !356
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds i16, ptr %3, i64 1
  br i1 %5, label %7, label %2, !prof !365, !llvm.loop !366

7:                                                ; preds = %2
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !367 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !368
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !369 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %3, ptr %0, align 8, !tbaa !370
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0) #14
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
          to label %8 unwind label %10

8:                                                ; preds = %4
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %7, ptr noundef %1, ptr noundef %2) #14
          to label %9 unwind label %10

9:                                                ; preds = %8
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  ret void

10:                                               ; preds = %8, %4
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !371 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %3 = load ptr, ptr %0, align 8, !tbaa !370
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !334
  %7 = load ptr, ptr %1, align 8, !tbaa !370
  store ptr %7, ptr %0, align 8, !tbaa !370
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !336
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !334
  store ptr %11, ptr %5, align 8, !tbaa !334
  store ptr %3, ptr %1, align 8, !tbaa !370
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !336
  store <2 x i64> %9, ptr %4, align 8, !tbaa !336
  store <2 x i64> %12, ptr %8, align 8, !tbaa !336
  store ptr %6, ptr %10, align 8, !tbaa !334
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !372 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !368
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %13, label %5, !prof !373

5:                                                ; preds = %1
  %6 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
          to label %7 unwind label %14

7:                                                ; preds = %5
  %8 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
          to label %9 unwind label %14

9:                                                ; preds = %7
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %8) #14
          to label %10 unwind label %14

10:                                               ; preds = %9
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !334
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %12) #14
          to label %13 unwind label %14

13:                                               ; preds = %10, %1
  ret void

14:                                               ; preds = %10, %9, %7, %5
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !374 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %0) #14
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %1) #14
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #14
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !375 {
  %3 = alloca %"struct.xalanc_1_10::ConstructValueWithNoMemoryManager", align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #15
  %4 = load ptr, ptr %0, align 8, !tbaa !370
  call void @_ZN11xalanc_1_1033ConstructValueWithNoMemoryManagerItEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 2 dereferenceable(2) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %3) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !288 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !288 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !376
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !288 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #14
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !288 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #1 comdat !prof !288 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !283
  call void @_ZSt19__iterator_categoryIPPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %5 = call noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) #14
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #1 comdat !prof !288 {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred", align 8
  store ptr %2, ptr %4, align 8
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = ashr i64 %7, 5
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %30, !prof !340

10:                                               ; preds = %3, %23
  %11 = phi i64 [ %25, %23 ], [ %8, %3 ]
  %12 = phi ptr [ %24, %23 ], [ %0, %3 ]
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPPNS2_20AttributeVectorEntryEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %12) #14
  br i1 %13, label %47, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %12, i64 1
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPPNS2_20AttributeVectorEntryEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %15) #14
  br i1 %16, label %47, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds ptr, ptr %12, i64 2
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPPNS2_20AttributeVectorEntryEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %18) #14
  br i1 %19, label %47, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds ptr, ptr %12, i64 3
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPPNS2_20AttributeVectorEntryEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %21) #14
  br i1 %22, label %47, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds ptr, ptr %12, i64 4
  %25 = add nsw i64 %11, -1
  %26 = icmp sgt i64 %11, 1
  br i1 %26, label %10, label %27, !prof !378, !llvm.loop !379

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
  ], !prof !380

34:                                               ; preds = %30
  %35 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPPNS2_20AttributeVectorEntryEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %32) #14
  br i1 %35, label %47, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds ptr, ptr %32, i64 1
  br label %38

38:                                               ; preds = %30, %36
  %39 = phi ptr [ %32, %30 ], [ %37, %36 ]
  %40 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPPNS2_20AttributeVectorEntryEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %39) #14
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds ptr, ptr %39, i64 1
  br label %43

43:                                               ; preds = %30, %41
  %44 = phi ptr [ %32, %30 ], [ %42, %41 ]
  %45 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPPNS2_20AttributeVectorEntryEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %44) #14
  br i1 %45, label %47, label %46

46:                                               ; preds = %43, %30
  br label %47

47:                                               ; preds = %20, %17, %14, %10, %43, %38, %34, %46
  %48 = phi ptr [ %1, %46 ], [ %32, %34 ], [ %39, %38 ], [ %44, %43 ], [ %21, %20 ], [ %18, %17 ], [ %15, %14 ], [ %12, %10 ]
  ret ptr %48
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !288 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPPNS2_20AttributeVectorEntryEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !287 {
  %3 = load ptr, ptr %1, align 8, !tbaa !283
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018NameCompareFunctorclEPKNS_20AttributeVectorEntryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3) #14
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 !prof !381 {
  store ptr %1, ptr %0, align 8, !tbaa !370
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !382
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !368
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !383

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #14
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !334
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !384 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #14
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %81, label %8, !prof !385

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28, !prof !386

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #14
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %80, label %16, !prof !387

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !370
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 2 dereferenceable(2) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #14
  %23 = getelementptr inbounds i16, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !382
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !382
  %26 = getelementptr inbounds i16, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %80, label %18, !prof !388, !llvm.loop !389

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %48, !prof !390

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  %32 = load ptr, ptr %0, align 8, !tbaa !370
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #14
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
          to label %34 unwind label %46

34:                                               ; preds = %31
  %35 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
          to label %36 unwind label %46

36:                                               ; preds = %34
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #14
          to label %37 unwind label %46

37:                                               ; preds = %36
  %38 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
          to label %39 unwind label %46

39:                                               ; preds = %37
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %38, ptr noundef %2, ptr noundef %3) #14
          to label %40 unwind label %46

40:                                               ; preds = %39
  %41 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
          to label %42 unwind label %46

42:                                               ; preds = %40
  %43 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
          to label %44 unwind label %46

44:                                               ; preds = %42
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %41, ptr noundef %1, ptr noundef %43) #14
          to label %45 unwind label %46

45:                                               ; preds = %44
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %80

46:                                               ; preds = %44, %42, %40, %39, %37, %36, %34, %31
  %47 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  resume { ptr, i32 } %47

48:                                               ; preds = %28
  %49 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %50 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %49) #14
  %51 = icmp ugt i64 %50, %6
  br i1 %51, label %67, label %52, !prof !391

52:                                               ; preds = %48
  %53 = getelementptr inbounds i16, ptr %2, i64 %50
  %54 = icmp eq ptr %53, %3
  br i1 %54, label %55, label %57, !prof !392

55:                                               ; preds = %57, %52
  %56 = icmp eq ptr %49, %1
  br i1 %56, label %65, label %61, !prof !392

57:                                               ; preds = %52, %57
  %58 = phi ptr [ %59, %57 ], [ %53, %52 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %58) #14
  %59 = getelementptr inbounds i16, ptr %58, i64 1
  %60 = icmp eq ptr %59, %3
  br i1 %60, label %55, label %57, !prof !393, !llvm.loop !394

61:                                               ; preds = %55, %61
  %62 = phi ptr [ %63, %61 ], [ %1, %55 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %62) #14
  %63 = getelementptr inbounds i16, ptr %62, i64 1
  %64 = icmp eq ptr %63, %49
  br i1 %64, label %65, label %61, !prof !395, !llvm.loop !396

65:                                               ; preds = %61, %55
  %66 = tail call noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %2, ptr noundef %53, ptr noundef %1) #14
  br label %80

67:                                               ; preds = %48
  %68 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %69 = sub i64 0, %6
  %70 = getelementptr inbounds i16, ptr %68, i64 %69
  %71 = icmp eq ptr %70, %49
  br i1 %71, label %76, label %72

72:                                               ; preds = %67, %72
  %73 = phi ptr [ %74, %72 ], [ %70, %67 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %73) #14
  %74 = getelementptr inbounds i16, ptr %73, i64 1
  %75 = icmp eq ptr %74, %49
  br i1 %75, label %76, label %72, !llvm.loop !397

76:                                               ; preds = %72, %67
  %77 = getelementptr inbounds i16, ptr %49, i64 %69
  %78 = tail call noundef ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_(ptr noundef %1, ptr noundef nonnull %77, ptr noundef %49) #14
  %79 = tail call noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #14
  br label %80

80:                                               ; preds = %18, %13, %65, %76, %45
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  br label %81

81:                                               ; preds = %4, %80
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !398 {
  %3 = shl i64 %1, 1
  %4 = load ptr, ptr %0, align 8, !tbaa !370
  %5 = load ptr, ptr %4, align 8, !tbaa !293
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #14
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !399 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #14
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !400 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !382
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !401 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !402 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6, !prof !403

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #14
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !404 {
  %4 = load i16, ptr %1, align 2, !tbaa !356
  store i16 %4, ptr %0, align 2, !tbaa !356
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !405 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !382
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !368
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !406

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %11 = load ptr, ptr %0, align 8, !tbaa !370
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #14
  %13 = load i64, ptr %4, align 8, !tbaa !382
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !382
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %21 = load ptr, ptr %0, align 8, !tbaa !370
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #14
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1) #14
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !287 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) #14
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %1) #14
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #14
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !399 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !283
  call void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  %4 = call noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #14
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !399 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 1
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !399 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !407 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !334
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !382
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !408 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %4 = load ptr, ptr %0, align 8, !tbaa !370
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #14
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !409 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !370
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !382
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12, !prof !410

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #14
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #14
  %14 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
          to label %15 unwind label %20

15:                                               ; preds = %12
  %16 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #14
  %17 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #14
          to label %18 unwind label %20

18:                                               ; preds = %15
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %16, ptr noundef %17) #14
          to label %19 unwind label %20

19:                                               ; preds = %18
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %26

20:                                               ; preds = %18, %15, %12
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  resume { ptr, i32 } %21

22:                                               ; preds = %4
  %23 = icmp eq i64 %3, 0
  br i1 %23, label %26, label %24, !prof !411

24:                                               ; preds = %22
  %25 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #14
  store ptr %25, ptr %8, align 8, !tbaa !334
  store i64 %3, ptr %7, align 8, !tbaa !368
  br label %26

26:                                               ; preds = %22, %24, %19
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !412 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !354 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !354 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !334
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !382
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !287 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !283
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) #12
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %1) #12
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #12
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #14
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #14
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !413 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !414 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !287 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !415 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !287 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !287 {
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
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !398 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !416

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #14
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !417, !llvm.loop !418

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !398 {
  %3 = load ptr, ptr %0, align 8, !tbaa !370
  %4 = load ptr, ptr %3, align 8, !tbaa !293
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #0 comdat align 2 !prof !404 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !374 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !283
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %0) #12
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %1) #12
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #12
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #14
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #14
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !419 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !374 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !419 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !374 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !414 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !420

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %2, ptr align 2 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1033ConstructValueWithNoMemoryManagerItEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 2 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !375 {
  store i16 0, ptr %0, align 2, !tbaa !421
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #1 comdat align 2 !prof !423 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !382
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %7, label %8, !prof !424

7:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #14
  br label %24

8:                                                ; preds = %3
  %9 = icmp ult i64 %5, %1
  br i1 %9, label %10, label %24, !prof !425

10:                                               ; preds = %8
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #14
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !334
  %13 = getelementptr inbounds i16, ptr %12, i64 %1
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %24, label %16, !prof !426

16:                                               ; preds = %10, %16
  %17 = phi ptr [ %20, %16 ], [ %14, %10 ]
  %18 = load ptr, ptr %0, align 8, !tbaa !370
  %19 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %17, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 8 dereferenceable(8) %18) #14
  %20 = getelementptr inbounds i16, ptr %17, i64 1
  %21 = load i64, ptr %4, align 8, !tbaa !382
  %22 = add i64 %21, 1
  store i64 %22, ptr %4, align 8, !tbaa !382
  %23 = icmp eq ptr %20, %13
  br i1 %23, label %24, label %16, !prof !427, !llvm.loop !428

24:                                               ; preds = %16, %10, %8, %7
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !429 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %5 = load i64, ptr %3, align 8, !tbaa !382
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !prof !430, !llvm.loop !431

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !432 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !368
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7, !prof !433

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #14
  br label %7

7:                                                ; preds = %6, %2
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !434 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !382
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !382
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !334
  %7 = getelementptr inbounds i16, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %7) #14
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !288 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !283
  store ptr %2, ptr %5, align 8, !tbaa !283
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1020AttributeVectorEntryEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1020AttributeVectorEntryEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 !prof !435 {
  %4 = load ptr, ptr %1, align 8, !tbaa !283
  store ptr %4, ptr %0, align 8, !tbaa !436
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !283
  store ptr %6, ptr %5, align 8, !tbaa !376
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !437 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !288 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  store ptr %1, ptr %0, align 8, !tbaa !436
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !376
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !288 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  br i1 %2, label %3, label %13, !prof !361

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !376
  %6 = load ptr, ptr %5, align 8, !tbaa !293
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(104) %5) #12
  %8 = load ptr, ptr %0, align 8, !tbaa !436
  %9 = load ptr, ptr %4, align 8, !tbaa !376
  %10 = load ptr, ptr %8, align 8, !tbaa !293
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %9) #14
  br label %13

13:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !288 {
  %2 = load ptr, ptr %0, align 8, !tbaa !436
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !290

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !376
  %7 = icmp ne ptr %6, null
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i1 [ false, %1 ], [ %7, %4 ]
  ret i1 %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !288 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !300
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1020AttributeVectorEntry6createEPKtS2_S2_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !325 {
  %5 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr.1", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %6 = load ptr, ptr %3, align 8, !tbaa !293
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 104) #14
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %9) #14
  %10 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #14
  invoke void @_ZN11xalanc_1_1020AttributeVectorEntryC2EPKtS2_S2_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %10, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
          to label %11 unwind label %14

11:                                               ; preds = %4
  %12 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #14
          to label %13 unwind label %14

13:                                               ; preds = %11
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  ret ptr %10

14:                                               ; preds = %11, %4
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  resume { ptr, i32 } %15
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !438 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !303
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !300
  %6 = getelementptr ptr, ptr %3, i64 %5
  %7 = getelementptr ptr, ptr %6, i64 -1
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020AttributeVectorEntry5clearEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #1 comdat align 2 !prof !438 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !325 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !325 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !376
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020AttributeVectorEntryC2EPKtS2_S2_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !325 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1020AttributeVectorEntryE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !293
  %6 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 1
  %7 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %1) #14
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i16, ptr %1, i64 %8
  %10 = getelementptr inbounds i16, ptr %9, i64 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %11 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 2
  %12 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %2) #14
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i16, ptr %2, i64 %13
  %15 = getelementptr inbounds i16, ptr %14, i64 1
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %2, ptr noundef nonnull %15, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
          to label %16 unwind label %23

16:                                               ; preds = %5
  %17 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 3
  %18 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %3) #14
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i16, ptr %3, i64 %19
  %21 = getelementptr inbounds i16, ptr %20, i64 1
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef %3, ptr noundef nonnull %21, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
          to label %22 unwind label %25

22:                                               ; preds = %16
  ret void

23:                                               ; preds = %5
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %27

25:                                               ; preds = %16
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #12
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi { ptr, i32 } [ %26, %25 ], [ %24, %23 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #12
  resume { ptr, i32 } %28
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !325 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #14
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !325 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !325 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !283
  store ptr %2, ptr %5, align 8, !tbaa !283
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1020AttributeVectorEntryEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !316 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020AttributeVectorEntryD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 !prof !325 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1020AttributeVectorEntryE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !293
  %2 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #12
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020AttributeVectorEntryD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xalanc_1_1020AttributeVectorEntryD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #12
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !325 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  store ptr %1, ptr %0, align 8, !tbaa !436
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !376
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !325 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  br i1 %2, label %3, label %10, !prof !328

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !436
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !376
  %7 = load ptr, ptr %4, align 8, !tbaa !293
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #14
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !325 {
  %2 = load ptr, ptr %0, align 8, !tbaa !436
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !439 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !382
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5, !prof !440

5:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #14
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !287 {
  %3 = getelementptr inbounds ptr, ptr %1, i64 1
  %4 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull %3) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !287 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %7 = tail call noundef ptr @_ZSt4copyIPPN11xalanc_1_1020AttributeVectorEntryES3_ET0_T_S5_S4_(ptr noundef %2, ptr noundef %6, ptr noundef %1) #14
  %8 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #14
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8) #14
  br label %9

9:                                                ; preds = %5, %3
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPPN11xalanc_1_1020AttributeVectorEntryES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !287 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_1020AttributeVectorEntryEET_S4_(ptr noundef %0) #14
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_1020AttributeVectorEntryEET_S4_(ptr noundef %1) #14
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPPN11xalanc_1_1020AttributeVectorEntryES3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #14
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !287 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %6, %4 ], [ %1, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %6 = add i64 %5, -1
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %4, !llvm.loop !441

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPPN11xalanc_1_1020AttributeVectorEntryES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !287 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !283
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1020AttributeVectorEntryEET_S4_(ptr noundef %0) #12
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1020AttributeVectorEntryEET_S4_(ptr noundef %1) #12
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1020AttributeVectorEntryEET_S4_(ptr noundef %2) #12
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPPN11xalanc_1_1020AttributeVectorEntryES3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #14
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_1020AttributeVectorEntryEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #14
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPPN11xalanc_1_1020AttributeVectorEntryES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !287 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPPN11xalanc_1_1020AttributeVectorEntryES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPPN11xalanc_1_1020AttributeVectorEntryES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !287 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_1020AttributeVectorEntryEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind optsize }
attributes #13 = { builtin nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!280}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279}
!36 = !{ptr @_ZNK11xalanc_1_1017AttributeListImpl9getLengthEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, i64 1048814}
!37 = !{ptr @_ZNK11xalanc_1_1017AttributeListImpl7getNameEj, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEixEm, i64 75095}
!38 = !{ptr @_ZNK11xalanc_1_1017AttributeListImpl7getNameEj, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 75095}
!39 = !{ptr @_ZNK11xalanc_1_1017AttributeListImpl8getValueEj, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEixEm, i64 75094}
!40 = !{ptr @_ZNK11xalanc_1_1017AttributeListImpl8getValueEj, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 75094}
!41 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 2252312}
!42 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 1126156}
!43 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, i64 1126156}
!44 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, i64 1126156}
!45 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 75094}
!46 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 150188}
!47 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZN11xalanc_1_1018NameCompareFunctorC2EPKt, i64 75094}
!48 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZSt7find_ifIPPN11xalanc_1_1020AttributeVectorEntryENS0_18NameCompareFunctorEET_S5_S5_T0_, i64 75094}
!49 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 1}
!50 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZN11xalanc_1_106equalsEPKtS1_, i64 1}
!51 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZN11xalanc_1_1020AttributeVectorEntry8endArrayEPKt, i64 1}
!52 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, i64 1}
!53 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, i64 75093}
!54 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm, i64 3}
!55 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZN11xalanc_1_1017AttributeListImpl16getMemoryManagerEv, i64 75093}
!56 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_, i64 75093}
!57 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_, i64 75093}
!58 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE3getEv, i64 75093}
!59 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, i64 75093}
!60 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE7releaseEv, i64 75093}
!61 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EED2Ev, i64 75093}
!62 = !{ptr @_ZN11xalanc_1_1017AttributeListImplC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xercesc_2_713AttributeListC2Ev, i64 5}
!63 = !{ptr @_ZN11xalanc_1_1017AttributeListImplC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 10}
!64 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm, i64 1}
!65 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 19}
!66 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 23}
!67 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 5}
!68 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 5}
!69 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_, i64 5}
!70 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_, i64 5}
!71 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_, i64 2}
!72 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 1201262}
!73 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2477606}
!74 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 2477606}
!75 = !{ptr @_ZN11xalanc_1_1017AttributeListImplD2Ev, ptr @_ZN11xalanc_1_1017AttributeListImpl5clearEv, i64 8}
!76 = !{ptr @_ZN11xalanc_1_1017AttributeListImplD2Ev, ptr @_ZN11xalanc_1_1017AttributeListImpl13deleteEntriesERNS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEE, i64 8}
!77 = !{ptr @_ZN11xalanc_1_1017AttributeListImplD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 16}
!78 = !{ptr @_ZN11xalanc_1_1017AttributeListImplD2Ev, ptr @_ZN11xercesc_2_713AttributeListD2Ev, i64 8}
!79 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl13deleteEntriesERNS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 8}
!80 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl13deleteEntriesERNS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 8}
!81 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl13deleteEntriesERNS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv, i64 8}
!82 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl13deleteEntriesERNS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEE, ptr @_ZN11xalanc_1_1013DeleteFunctorINS_20AttributeVectorEntryEEC2ERN11xercesc_2_713MemoryManagerE, i64 8}
!83 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl13deleteEntriesERNS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEE, ptr @_ZSt8for_eachIPPN11xalanc_1_1020AttributeVectorEntryENS0_13DeleteFunctorIS1_EEET0_T_S7_S6_, i64 8}
!84 = !{ptr @_ZN11xalanc_1_1017AttributeListImplC2ERKS0_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xercesc_2_713AttributeListC2Ev, i64 3}
!85 = !{ptr @_ZN11xalanc_1_1017AttributeListImplC2ERKS0_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 6}
!86 = !{ptr @_ZN11xalanc_1_1017AttributeListImplC2ERKS0_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1017AttributeListImplaSERKS0_, i64 3}
!87 = !{ptr @_ZN11xalanc_1_1017AttributeListImplaSERKS0_, ptr @_ZN11xalanc_1_1017AttributeListImpl16getMemoryManagerEv, i64 2}
!88 = !{ptr @_ZN11xalanc_1_1017AttributeListImplaSERKS0_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 2}
!89 = !{ptr @_ZN11xalanc_1_1017AttributeListImplaSERKS0_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 30}
!90 = !{ptr @_ZN11xalanc_1_1017AttributeListImplaSERKS0_, ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_, i64 10}
!91 = !{ptr @_ZN11xalanc_1_1017AttributeListImplaSERKS0_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, i64 10}
!92 = !{ptr @_ZN11xalanc_1_1017AttributeListImplaSERKS0_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 2}
!93 = !{ptr @_ZSt8for_eachIPPN11xalanc_1_1020AttributeVectorEntryENS0_13DeleteFunctorIS1_EEET0_T_S7_S6_, ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_20AttributeVectorEntryEEclEPKS1_, i64 3}
!94 = !{ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_20AttributeVectorEntryEEclEPKS1_, ptr @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_20AttributeVectorEntryEEENS_19XalanDestroyFunctorIT_EEPKS3_, i64 2}
!95 = !{ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_20AttributeVectorEntryEEclEPKS1_, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_20AttributeVectorEntryEEclEPKS1_RN11xercesc_2_713MemoryManagerE, i64 2}
!96 = !{ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_20AttributeVectorEntryEEclEPKS1_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_20AttributeVectorEntryEEclEPS1_RN11xercesc_2_713MemoryManagerE, i64 2}
!97 = !{ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_20AttributeVectorEntryEEclEPS1_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_20AttributeVectorEntryEEclERS1_, i64 2}
!98 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl16getMemoryManagerEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv, i64 75099}
!99 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 4}
!100 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 2}
!101 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 150188}
!102 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 75094}
!103 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv, i64 75094}
!104 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_, ptr @_ZN11xalanc_1_1017AttributeListImpl16getMemoryManagerEv, i64 3}
!105 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_, ptr @_ZN11xalanc_1_1020AttributeVectorEntry6createEPKtS2_S2_RN11xercesc_2_713MemoryManagerE, i64 3}
!106 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv, i64 75091}
!107 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_, ptr @_ZN11xalanc_1_1020AttributeVectorEntry5clearEv, i64 75091}
!108 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 225273}
!109 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_, ptr @_ZN11xalanc_1_1020AttributeVectorEntry8endArrayEPKt, i64 225273}
!110 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 225273}
!111 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, i64 75091}
!112 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!113 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 8}
!114 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 8}
!115 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 4}
!116 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 4}
!117 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 4}
!118 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm, i64 1}
!119 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!120 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 1}
!121 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 1}
!122 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 1}
!123 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, i64 1}
!124 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 1}
!125 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!126 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm, i64 3}
!127 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 4}
!128 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 1201251}
!129 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_, i64 1126157}
!130 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, i64 75095}
!131 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 75098}
!132 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, i64 75094}
!133 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_20AttributeVectorEntryEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE, i64 75094}
!134 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, i64 1}
!135 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!136 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 1}
!137 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, i64 1}
!138 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 15}
!139 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_, ptr @_ZSt8distanceIPKPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E15difference_typeES6_S6_, i64 1126156}
!140 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 1123908}
!141 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, i64 75094}
!142 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 3}
!143 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 75094}
!144 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 150188}
!145 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 150188}
!146 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 75093}
!147 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_20AttributeVectorEntryEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE, i64 75093}
!148 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 1}
!149 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 1}
!150 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 1}
!151 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!152 = !{ptr @_ZSt8distanceIPKPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E15difference_typeES6_S6_, ptr @_ZSt19__iterator_categoryIPKPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E17iterator_categoryERKS6_, i64 1126156}
!153 = !{ptr @_ZSt8distanceIPKPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E15difference_typeES6_S6_, ptr @_ZSt10__distanceIPKPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag, i64 1126156}
!154 = !{ptr @_ZN9__gnu_cxx5__ops11__pred_iterIN11xalanc_1_1018NameCompareFunctorEEENS0_10_Iter_predIT_EES5_, ptr @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEC2ES3_, i64 75094}
!155 = !{ptr @_ZN11xalanc_1_106equalsEPKtS1_, ptr @_ZN11xalanc_1_106lengthEPKt, i64 20}
!156 = !{ptr @_ZN11xalanc_1_106equalsEPKtS1_, ptr @_ZN11xalanc_1_106equalsEPKtS1_j, i64 5}
!157 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 82509}
!158 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2252312}
!159 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm, i64 75095}
!160 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, i64 75095}
!161 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 300372}
!162 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_, i64 150186}
!163 = !{ptr @_ZSt7find_ifIPPN11xalanc_1_1020AttributeVectorEntryENS0_18NameCompareFunctorEET_S5_S5_T0_, ptr @_ZN9__gnu_cxx5__ops11__pred_iterIN11xalanc_1_1018NameCompareFunctorEEENS0_10_Iter_predIT_EES5_, i64 75094}
!164 = !{ptr @_ZSt7find_ifIPPN11xalanc_1_1020AttributeVectorEntryENS0_18NameCompareFunctorEET_S5_S5_T0_, ptr @_ZSt9__find_ifIPPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_, i64 75094}
!165 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 155828047}
!166 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 12}
!167 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 12}
!168 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 12}
!169 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 12}
!170 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 12}
!171 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 12}
!172 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 170601494}
!173 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!174 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!175 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300308}
!176 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300227}
!177 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300146}
!178 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 325}
!179 = !{ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, ptr @_ZSt12__miter_baseIPKtET_S2_, i64 3901146}
!180 = !{ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!181 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEm, ptr @_ZN11xalanc_1_1033ConstructValueWithNoMemoryManagerItEC2ERN11xercesc_2_713MemoryManagerE, i64 1}
!182 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt, i64 1}
!183 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, i64 75094}
!184 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE7releaseEv, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_, i64 75094}
!185 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EED2Ev, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData10deallocateEv, i64 75094}
!186 = !{ptr @_ZSt9__find_ifIPPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_, ptr @_ZSt19__iterator_categoryIPPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E17iterator_categoryERKS5_, i64 75094}
!187 = !{ptr @_ZSt9__find_ifIPPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_, ptr @_ZSt9__find_ifIPPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_St26random_access_iterator_tag, i64 75094}
!188 = !{ptr @_ZSt9__find_ifIPPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_St26random_access_iterator_tag, ptr @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPPNS2_20AttributeVectorEntryEEEbT_, i64 8}
!189 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm, i64 1}
!190 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 64147281}
!191 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 311655933}
!192 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, i64 157736530}
!193 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv, i64 155828045}
!194 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 240731396}
!195 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, i64 133170775}
!196 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE, i64 30012996397}
!197 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, i64 22657270}
!198 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 20748786}
!199 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 20748766}
!200 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246100}
!201 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 20748627}
!202 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 20748785}
!203 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614813}
!204 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, i64 1908484}
!205 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_, i64 1}
!206 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 185895030}
!207 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 156073599}
!208 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!209 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!210 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, i64 133170778}
!211 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 22}
!212 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 133170778}
!213 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 248301312}
!214 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 124150655}
!215 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE, i64 124150655}
!216 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 1}
!217 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 1}
!218 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 1}
!219 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 1}
!220 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 185895030}
!221 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 185895030}
!222 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 129103172}
!223 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 64551586}
!224 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 64551586}
!225 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 64551586}
!226 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm, i64 19}
!227 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 19}
!228 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 19}
!229 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 19}
!230 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 19}
!231 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 19}
!232 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 19}
!233 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 19}
!234 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm, i64 64551584}
!235 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 64551608}
!236 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 82509}
!237 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 82509}
!238 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!239 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_baseIPKtET_S2_, i64 3901146}
!240 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_baseIPtET_S1_, i64 1950573}
!241 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!242 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_, i64 1950573}
!243 = !{ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!244 = !{ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_, i64 1950573}
!245 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 304}
!246 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm, i64 1}
!247 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm, i64 150}
!248 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 150}
!249 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE, i64 8205}
!250 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, i64 64729253}
!251 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 141227382}
!252 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 64551564}
!253 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 2689195954}
!254 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 1344597977}
!255 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1020AttributeVectorEntryEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_, i64 75094}
!256 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData10invariantsEv, i64 75094}
!257 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData10invariantsEv, i64 150188}
!258 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData10deallocateEv, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData10invariantsEv, i64 75094}
!259 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData10deallocateEv, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData12isInitilizedEv, i64 75094}
!260 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 75094}
!261 = !{ptr @_ZN11xalanc_1_1020AttributeVectorEntry6createEPKtS2_S2_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_, i64 2}
!262 = !{ptr @_ZN11xalanc_1_1020AttributeVectorEntry6createEPKtS2_S2_RN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE3getEv, i64 2}
!263 = !{ptr @_ZN11xalanc_1_1020AttributeVectorEntry6createEPKtS2_S2_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1020AttributeVectorEntryC2EPKtS2_S2_RN11xercesc_2_713MemoryManagerE, i64 2}
!264 = !{ptr @_ZN11xalanc_1_1020AttributeVectorEntry6createEPKtS2_S2_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE7releaseEv, i64 2}
!265 = !{ptr @_ZN11xalanc_1_1020AttributeVectorEntry6createEPKtS2_S2_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EED2Ev, i64 2}
!266 = !{ptr @_ZN11xalanc_1_1020AttributeVectorEntry5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5clearEv, i64 225276}
!267 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, i64 2}
!268 = !{ptr @_ZN11xalanc_1_1020AttributeVectorEntryC2EPKtS2_S2_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_106lengthEPKt, i64 6}
!269 = !{ptr @_ZN11xalanc_1_1020AttributeVectorEntryC2EPKtS2_S2_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE, i64 6}
!270 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE7releaseEv, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_, i64 2}
!271 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EED2Ev, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData10deallocateEv, i64 2}
!272 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1020AttributeVectorEntryEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_, i64 2}
!273 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData10invariantsEv, i64 2}
!274 = !{ptr @_ZN11xalanc_1_1020AttributeVectorEntryD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 6}
!275 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData10invariantsEv, i64 4}
!276 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData10deallocateEv, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData10invariantsEv, i64 2}
!277 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData10deallocateEv, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData12isInitilizedEv, i64 2}
!278 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5clearEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 695332}
!279 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm, i64 347665}
!280 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!281 = !{!"function_entry_count", i64 1048814}
!282 = !{!"function_entry_count", i64 75095}
!283 = !{!284, !284, i64 0}
!284 = !{!"any pointer", !285, i64 0}
!285 = !{!"omnipotent char", !286, i64 0}
!286 = !{!"Simple C++ TBAA"}
!287 = !{!"function_entry_count", i64 0}
!288 = !{!"function_entry_count", i64 75094}
!289 = !{!"function_entry_count", i64 1126156}
!290 = !{!"branch_weights", i32 75095, i32 1}
!291 = !{!"branch_weights", i32 3, i32 75093}
!292 = !{!"function_entry_count", i64 5}
!293 = !{!294, !294, i64 0}
!294 = !{!"vtable pointer", !286, i64 0}
!295 = !{!"function_entry_count", i64 9}
!296 = !{!"function_entry_count", i64 19}
!297 = !{!298, !284, i64 0}
!298 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE", !284, i64 0, !299, i64 8, !299, i64 16, !284, i64 24}
!299 = !{!"long", !285, i64 0}
!300 = !{!298, !299, i64 8}
!301 = !{!298, !299, i64 16}
!302 = !{!"branch_weights", i32 20, i32 1}
!303 = !{!298, !284, i64 24}
!304 = !{!"function_entry_count", i64 23}
!305 = !{!"branch_weights", i32 20, i32 5}
!306 = !{!"function_entry_count", i64 4}
!307 = !{!"function_entry_count", i64 9082434}
!308 = !{!"branch_weights", i32 2, i32 3}
!309 = !{!"branch_weights", i32 3, i32 0}
!310 = distinct !{!310, !311}
!311 = !{!"llvm.loop.mustprogress"}
!312 = !{!"function_entry_count", i64 1201262}
!313 = !{!"function_entry_count", i64 2477606}
!314 = !{!"function_entry_count", i64 150188}
!315 = !{!"function_entry_count", i64 2627794}
!316 = !{!"function_entry_count", i64 8}
!317 = !{!"function_entry_count", i64 3}
!318 = !{!"branch_weights", i32 1, i32 4}
!319 = !{!"branch_weights", i32 4, i32 1}
!320 = distinct !{!320, !311}
!321 = distinct !{!321, !311}
!322 = !{!"branch_weights", i32 6, i32 3}
!323 = distinct !{!323, !311}
!324 = !{!"function_entry_count", i64 75107}
!325 = !{!"function_entry_count", i64 2}
!326 = !{!327, !284, i64 0}
!327 = !{!"_ZTSN11xalanc_1_1013DeleteFunctorINS_20AttributeVectorEntryEEE", !284, i64 0}
!328 = !{!"branch_weights", i32 1, i32 3}
!329 = !{!"function_entry_count", i64 75099}
!330 = !{!"branch_weights", i32 3, i32 1}
!331 = !{!332, !284, i64 0}
!332 = !{!"_ZTSN11xalanc_1_1021CollectionDeleteGuardINS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEENS_13DeleteFunctorIS2_EEEE", !284, i64 0}
!333 = !{!"function_entry_count", i64 227375739}
!334 = !{!335, !284, i64 24}
!335 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !284, i64 0, !299, i64 8, !299, i64 16, !284, i64 24}
!336 = !{!299, !299, i64 0}
!337 = !{!"branch_weights", i32 5, i32 1}
!338 = !{!"branch_weights", i32 1, i32 5}
!339 = !{!"branch_weights", i32 1051063, i32 75095}
!340 = !{!"branch_weights", i32 1, i32 75094}
!341 = !{!"branch_weights", i32 75094, i32 1}
!342 = distinct !{!342, !311}
!343 = distinct !{!343, !311}
!344 = distinct !{!344, !311}
!345 = distinct !{!345, !311}
!346 = !{!"function_entry_count", i64 1123908}
!347 = !{!"function_entry_count", i64 6521798503}
!348 = !{!"function_entry_count", i64 150189}
!349 = !{!350, !284, i64 0}
!350 = !{!"_ZTSN11xalanc_1_1018NameCompareFunctorE", !284, i64 0}
!351 = distinct !{!351, !311}
!352 = !{!"function_entry_count", i64 10}
!353 = !{!"branch_weights", i32 6, i32 6}
!354 = !{!"function_entry_count", i64 82509}
!355 = !{!"function_entry_count", i64 21552397}
!356 = !{!357, !357, i64 0}
!357 = !{!"short", !285, i64 0}
!358 = !{!"branch_weights", i32 21552398, i32 128560690}
!359 = distinct !{!359, !311}
!360 = !{i64 0, i64 8, !283}
!361 = !{!"branch_weights", i32 1, i32 75095}
!362 = distinct !{!362, !311}
!363 = !{!"function_entry_count", i64 150186}
!364 = !{!"function_entry_count", i64 225276}
!365 = !{!"branch_weights", i32 225277, i32 1839433}
!366 = distinct !{!366, !311}
!367 = !{!"function_entry_count", i64 155828047}
!368 = !{!335, !299, i64 16}
!369 = !{!"function_entry_count", i64 12}
!370 = !{!335, !284, i64 0}
!371 = !{!"function_entry_count", i64 85300747}
!372 = !{!"function_entry_count", i64 128698679}
!373 = !{!"branch_weights", i32 43398290, i32 85300391}
!374 = !{!"function_entry_count", i64 1950573}
!375 = !{!"function_entry_count", i64 1}
!376 = !{!377, !284, i64 8}
!377 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1020AttributeVectorEntryEE", !284, i64 0, !284, i64 8}
!378 = !{!"branch_weights", i32 0, i32 1}
!379 = distinct !{!379, !311}
!380 = !{!"branch_weights", i32 75096, i32 1, i32 1, i32 1}
!381 = !{!"function_entry_count", i64 64147281}
!382 = !{!335, !299, i64 8}
!383 = !{!"branch_weights", i32 64147282, i32 1}
!384 = !{!"function_entry_count", i64 155828046}
!385 = !{!"branch_weights", i32 1, i32 155828047}
!386 = !{!"branch_weights", i32 133170778, i32 22657270}
!387 = !{!"branch_weights", i32 1, i32 19024396}
!388 = !{!"branch_weights", i32 19024396, i32 -26420600}
!389 = distinct !{!389, !311}
!390 = !{!"branch_weights", i32 20748787, i32 1908484}
!391 = !{!"branch_weights", i32 1, i32 1908484}
!392 = !{!"branch_weights", i32 1, i32 1908483}
!393 = !{!"branch_weights", i32 1908483, i32 49797857}
!394 = distinct !{!394, !311}
!395 = !{!"branch_weights", i32 1908483, i32 1}
!396 = distinct !{!396, !311}
!397 = distinct !{!397, !311}
!398 = !{!"function_entry_count", i64 85300390}
!399 = !{!"function_entry_count", i64 185895030}
!400 = !{!"function_entry_count", i64 156073599}
!401 = !{!"function_entry_count", i64 568333389}
!402 = !{!"function_entry_count", i64 133170778}
!403 = !{!"branch_weights", i32 22, i32 133170758}
!404 = !{!"function_entry_count", i64 30137156670}
!405 = !{!"function_entry_count", i64 124150656}
!406 = !{!"branch_weights", i32 124150657, i32 1}
!407 = !{!"function_entry_count", i64 825654975}
!408 = !{!"function_entry_count", i64 64551586}
!409 = !{!"function_entry_count", i64 64551608}
!410 = !{!"branch_weights", i32 64551591, i32 19}
!411 = !{!"branch_weights", i32 5, i32 64551587}
!412 = !{!"function_entry_count", i64 18}
!413 = !{!"function_entry_count", i64 56317002}
!414 = !{!"function_entry_count", i64 30109074}
!415 = !{!"function_entry_count", i64 86426076}
!416 = !{!"branch_weights", i32 1, i32 12185770}
!417 = !{!"branch_weights", i32 12185770, i32 -193930395}
!418 = distinct !{!418, !311}
!419 = !{!"function_entry_count", i64 3901146}
!420 = !{!"branch_weights", i32 28199083, i32 1909993}
!421 = !{!422, !357, i64 0}
!422 = !{!"_ZTSN11xalanc_1_1033ConstructValueWithNoMemoryManagerItEE", !357, i64 0}
!423 = !{!"function_entry_count", i64 152}
!424 = !{!"branch_weights", i32 1, i32 153}
!425 = !{!"branch_weights", i32 153, i32 1}
!426 = !{!"branch_weights", i32 1, i32 152}
!427 = !{!"branch_weights", i32 152, i32 8215}
!428 = distinct !{!428, !311}
!429 = !{!"function_entry_count", i64 348020}
!430 = !{!"branch_weights", i32 64381419, i32 348021}
!431 = distinct !{!431, !311}
!432 = !{!"function_entry_count", i64 70613691}
!433 = !{!"branch_weights", i32 64551566, i32 6062127}
!434 = !{!"function_entry_count", i64 1344597977}
!435 = !{!"function_entry_count", i64 75096}
!436 = !{!377, !284, i64 0}
!437 = !{!"function_entry_count", i64 300376}
!438 = !{!"function_entry_count", i64 75092}
!439 = !{!"function_entry_count", i64 347666}
!440 = !{!"branch_weights", i32 1, i32 347667}
!441 = distinct !{!441, !311}
