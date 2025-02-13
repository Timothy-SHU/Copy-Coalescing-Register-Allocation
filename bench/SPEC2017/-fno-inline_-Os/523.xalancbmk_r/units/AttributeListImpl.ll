; ModuleID = 'AttributeListImpl.cpp'
source_filename = "AttributeListImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::AttributeListImpl" = type { %"class.xercesc_2_7::AttributeList", %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanVector" }
%"class.xercesc_2_7::AttributeList" = type { ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::DeleteFunctor" = type { ptr }
%"class.xalanc_1_10::CollectionDeleteGuard" = type { ptr }
%"class.xalanc_1_10::AttributeVectorEntry" = type { ptr, %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanVector.0" }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::NameCompareFunctor" = type { ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::AttributeVectorEntry>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::AttributeVectorEntry>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }
%"struct.xalanc_1_10::ConstructValueWithNoMemoryManager" = type { i16 }
%"class.xalanc_1_10::XalanMemMgrAutoPtr.1" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::AttributeVectorEntry, false>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::AttributeVectorEntry, false>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.xalanc_1_10::XalanDestroyFunctor" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_pred" = type { %"struct.xalanc_1_10::NameCompareFunctor" }

$_ZN11xercesc_2_713AttributeListC2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZSt8for_eachIPPN11xalanc_1_1020AttributeVectorEntryENS0_13DeleteFunctorIS1_EEET0_T_S7_S6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1013DeleteFunctorINS_20AttributeVectorEntryEEC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1017AttributeListImpl16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm = comdat any

$_ZN11xalanc_1_1021CollectionDeleteGuardINS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEENS_13DeleteFunctorIS2_EEEC2ERS6_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_ = comdat any

$_ZN11xalanc_1_1021CollectionDeleteGuardINS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEENS_13DeleteFunctorIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1017AttributeListImpl7reserveEj = comdat any

$_ZN11xalanc_1_1017AttributeListImpl4swapERS0_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEixEm = comdat any

$_ZSt7find_ifIPKPN11xalanc_1_1020AttributeVectorEntryENS0_18NameCompareFunctorEET_S6_S6_T0_ = comdat any

$_ZN11xalanc_1_1018NameCompareFunctorC2EPKt = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv = comdat any

$_ZSt7find_ifIPPN11xalanc_1_1020AttributeVectorEntryENS0_18NameCompareFunctorEET_S5_S5_T0_ = comdat any

$_ZN11xalanc_1_106equalsEPKtS1_ = comdat any

$_ZN11xalanc_1_1020AttributeVectorEntry8endArrayEPKt = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZSt4copyIPKtPtET0_T_S4_S3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE3getEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv = comdat any

$_ZN11xalanc_1_1020AttributeVectorEntry6createEPKtS2_S2_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv = comdat any

$_ZN11xalanc_1_1020AttributeVectorEntry5clearEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_ = comdat any

$_ZN11xercesc_2_713AttributeListD2Ev = comdat any

$_ZN11xercesc_2_713AttributeListD0Ev = comdat any

$_ZN11xalanc_1_106lengthEPKt = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE3getEv = comdat any

$_ZN11xalanc_1_1020AttributeVectorEntryC2EPKtS2_S2_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1020AttributeVectorEntryEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1020AttributeVectorEntryD2Ev = comdat any

$_ZN11xalanc_1_1020AttributeVectorEntryD0Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5clearEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZNK11xalanc_1_1013DeleteFunctorINS_20AttributeVectorEntryEEclEPKS1_ = comdat any

$_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_20AttributeVectorEntryEEENS_19XalanDestroyFunctorIT_EEPKS3_ = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_20AttributeVectorEntryEEclEPKS1_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_20AttributeVectorEntryEEclEPS1_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_20AttributeVectorEntryEEclERS1_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_20AttributeVectorEntryEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZSt9__find_ifIPKPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_SA_SA_T0_ = comdat any

$_ZN9__gnu_cxx5__ops11__pred_iterIN11xalanc_1_1018NameCompareFunctorEEENS0_10_Iter_predIT_EES5_ = comdat any

$_ZSt9__find_ifIPKPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_SA_SA_T0_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E17iterator_categoryERKS6_ = comdat any

$_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPKPNS2_20AttributeVectorEntryEEEbT_ = comdat any

$_ZNK11xalanc_1_1018NameCompareFunctorclEPKNS_20AttributeVectorEntryE = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEC2ES3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm = comdat any

$_ZSt4copyIPKPN11xalanc_1_1020AttributeVectorEntryEPS2_ET0_T_S7_S6_ = comdat any

$_ZSt13copy_backwardIPPN11xalanc_1_1020AttributeVectorEntryES3_ET0_T_S5_S4_ = comdat any

$_ZSt8distanceIPKPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E15difference_typeES6_S6_ = comdat any

$_ZSt10__distanceIPKPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag = comdat any

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

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm = comdat any

$_ZSt9__find_ifIPPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_ = comdat any

$_ZSt9__find_ifIPPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E17iterator_categoryERKS5_ = comdat any

$_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPPNS2_20AttributeVectorEntryEEEbT_ = comdat any

$_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZSt12__miter_baseIPKtET_S2_ = comdat any

$_ZSt12__niter_wrapIPtET_RKS1_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPKtET_S2_ = comdat any

$_ZSt12__niter_baseIPtET_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_ = comdat any

$_ZN11xalanc_1_1033ConstructValueWithNoMemoryManagerItEC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_ = comdat any

$_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPtET_S1_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_ = comdat any

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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1017AttributeListImplC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !280 {
  tail call void @_ZN11xercesc_2_713AttributeListC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xalanc_1_1017AttributeListImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !281
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) #12
          to label %4 unwind label %7

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) #12
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi { ptr, i32 } [ %10, %9 ], [ %8, %7 ]
  tail call void @_ZN11xercesc_2_713AttributeListD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713AttributeListC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !284 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_713AttributeListE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !281
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 !prof !285 {
  store ptr %1, ptr %0, align 8, !tbaa !286
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !291
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !292
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !293

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #12
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !294
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !295 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !292
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !296

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %6, ptr noundef %7) #12
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !294
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #12
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
define dso_local void @_ZN11xalanc_1_1017AttributeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !297 {
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xalanc_1_1017AttributeListImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !281
  invoke void @_ZN11xalanc_1_1017AttributeListImpl5clearEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #12
          to label %2 unwind label %6

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1017AttributeListImpl13deleteEntriesERNS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEE(ptr noundef nonnull align 8 dereferenceable(32) %3) #12
          to label %4 unwind label %6

4:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  %5 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  tail call void @_ZN11xercesc_2_713AttributeListD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  ret void

6:                                                ; preds = %2, %1
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #14
  unreachable
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1017AttributeListImpl13deleteEntriesERNS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 !prof !297 {
  %2 = alloca %"struct.xalanc_1_10::DeleteFunctor", align 8
  %3 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %4 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  call void @_ZN11xalanc_1_1013DeleteFunctorINS_20AttributeVectorEntryEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %6 = load ptr, ptr %2, align 8
  %7 = call ptr @_ZSt8for_eachIPPN11xalanc_1_1020AttributeVectorEntryENS0_13DeleteFunctorIS1_EEET0_T_S7_S6_(ptr noundef %3, ptr noundef %4, ptr %6) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1017AttributeListImplD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 {
  tail call void @_ZN11xalanc_1_1017AttributeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #13
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1017AttributeListImplC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !298 {
  tail call void @_ZN11xercesc_2_713AttributeListC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xalanc_1_1017AttributeListImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !281
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0) #12
          to label %5 unwind label %10

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0) #12
          to label %7 unwind label %12

7:                                                ; preds = %5
  %8 = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN11xalanc_1_1017AttributeListImplaSERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) #12
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #13
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %11, %10 ]
  tail call void @_ZN11xercesc_2_713AttributeListD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN11xalanc_1_1017AttributeListImplaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !298 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = alloca %"class.xalanc_1_10::CollectionDeleteGuard", align 8
  %5 = alloca ptr, align 8
  %6 = icmp eq ptr %0, %1
  br i1 %6, label %51, label %7, !prof !299

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1017AttributeListImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #12
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 0) #12
  %9 = load ptr, ptr %1, align 8, !tbaa !281
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(72) %1) #12
          to label %13 unwind label %25

13:                                               ; preds = %7
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %48, label %15, !prof !300

15:                                               ; preds = %13
  %16 = zext i32 %12 to i64
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %16) #12
          to label %17 unwind label %25

17:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @_ZN11xalanc_1_1021CollectionDeleteGuardINS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEENS_13DeleteFunctorIS2_EEEC2ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  %18 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %1, i64 0, i32 1
  %19 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %18) #12
          to label %20 unwind label %27

20:                                               ; preds = %17
  %21 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %18) #12
  %22 = icmp eq ptr %21, %19
  br i1 %22, label %23, label %29

23:                                               ; preds = %40, %20
  %24 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %3) #12
          to label %45 unwind label %27

25:                                               ; preds = %15, %7
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %49

27:                                               ; preds = %23, %17
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %46

29:                                               ; preds = %20, %40
  %30 = phi ptr [ %41, %40 ], [ %21, %20 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %32 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %31, i64 0, i32 1
  %33 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %32) #12
  %34 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %31, i64 0, i32 3
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %34) #12
  %36 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %31, i64 0, i32 2
  %37 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %36) #12
  %38 = invoke noundef ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %33, ptr noundef %35, ptr noundef %37) #12
          to label %39 unwind label %43

39:                                               ; preds = %29
  store ptr %38, ptr %5, align 8, !tbaa !301
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
          to label %40 unwind label %43

40:                                               ; preds = %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  %41 = getelementptr inbounds ptr, ptr %30, i64 1
  %42 = icmp eq ptr %41, %19
  br i1 %42, label %23, label %29, !llvm.loop !302

43:                                               ; preds = %39, %29
  %44 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  br label %46

45:                                               ; preds = %23
  call void @_ZN11xalanc_1_1021CollectionDeleteGuardINS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEENS_13DeleteFunctorIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %48

46:                                               ; preds = %43, %27
  %47 = phi { ptr, i32 } [ %44, %43 ], [ %28, %27 ]
  call void @_ZN11xalanc_1_1021CollectionDeleteGuardINS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEENS_13DeleteFunctorIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %49

48:                                               ; preds = %45, %13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  br label %51

49:                                               ; preds = %46, %25
  %50 = phi { ptr, i32 } [ %47, %46 ], [ %26, %25 ]
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  resume { ptr, i32 } %50

51:                                               ; preds = %48, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1017AttributeListImplC2ERKN11xercesc_2_713AttributeListERNS1_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !304 {
  tail call void @_ZN11xercesc_2_713AttributeListC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xalanc_1_1017AttributeListImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !281
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0) #12
          to label %5 unwind label %10

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0) #12
          to label %7 unwind label %12

7:                                                ; preds = %5
  %8 = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN11xalanc_1_1017AttributeListImplaSERKN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #13
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %11, %10 ]
  tail call void @_ZN11xercesc_2_713AttributeListD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN11xalanc_1_1017AttributeListImplaSERKN11xercesc_2_713AttributeListE(ptr noundef nonnull returned align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !304 {
  %3 = alloca %"class.xalanc_1_10::AttributeListImpl", align 8
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %43, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #15
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1017AttributeListImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #12
  call void @_ZN11xalanc_1_1017AttributeListImplC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  %7 = load ptr, ptr %1, align 8, !tbaa !281
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
          to label %11 unwind label %15

11:                                               ; preds = %5
  invoke void @_ZN11xalanc_1_1017AttributeListImpl7reserveEj(ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %10) #12
          to label %12 unwind label %15

12:                                               ; preds = %11
  %13 = icmp eq i32 %10, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %35, %12
  invoke void @_ZN11xalanc_1_1017AttributeListImpl4swapERS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %3) #12
          to label %40 unwind label %15

15:                                               ; preds = %14, %11, %5
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %41

17:                                               ; preds = %12, %35
  %18 = phi i32 [ %36, %35 ], [ 0, %12 ]
  %19 = load ptr, ptr %1, align 8, !tbaa !281
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  %22 = invoke noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %18) #12
          to label %23 unwind label %38

23:                                               ; preds = %17
  %24 = load ptr, ptr %1, align 8, !tbaa !281
  %25 = getelementptr inbounds ptr, ptr %24, i64 4
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %18) #12
          to label %28 unwind label %38

28:                                               ; preds = %23
  %29 = load ptr, ptr %1, align 8, !tbaa !281
  %30 = getelementptr inbounds ptr, ptr %29, i64 5
  %31 = load ptr, ptr %30, align 8
  %32 = invoke noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %18) #12
          to label %33 unwind label %38

33:                                               ; preds = %28
  %34 = invoke noundef zeroext i1 @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef %22, ptr noundef %27, ptr noundef %32) #12
          to label %35 unwind label %38

35:                                               ; preds = %33
  %36 = add nuw i32 %18, 1
  %37 = icmp eq i32 %36, %10
  br i1 %37, label %14, label %17, !llvm.loop !305

38:                                               ; preds = %33, %28, %23, %17
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %41

40:                                               ; preds = %14
  call void @_ZN11xalanc_1_1017AttributeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %3) #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #15
  br label %43

41:                                               ; preds = %38, %15
  %42 = phi { ptr, i32 } [ %39, %38 ], [ %16, %15 ]
  call void @_ZN11xalanc_1_1017AttributeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %3) #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #15
  resume { ptr, i32 } %42

43:                                               ; preds = %40, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt8for_eachIPPN11xalanc_1_1020AttributeVectorEntryENS0_13DeleteFunctorIS1_EEET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !297 {
  %4 = alloca %"struct.xalanc_1_10::DeleteFunctor", align 8
  store ptr %2, ptr %4, align 8
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %13, label %6, !prof !306

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %9, %6 ], [ %0, %3 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !301
  call void @_ZNK11xalanc_1_1013DeleteFunctorINS_20AttributeVectorEntryEEclEPKS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #12
  %9 = getelementptr inbounds ptr, ptr %7, i64 1
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %6, !prof !307, !llvm.loop !308

11:                                               ; preds = %6
  %12 = load ptr, ptr %4, align 8
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi ptr [ %12, %11 ], [ %2, %3 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !309 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !294
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !310 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !311 {
  %2 = load ptr, ptr %0, align 8, !tbaa !286
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1013DeleteFunctorINS_20AttributeVectorEntryEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !297 {
  store ptr %1, ptr %0, align 8, !tbaa !301
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1017AttributeListImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 !prof !312 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #12
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !313 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !292
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7, !prof !314

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #12
  br label %7

7:                                                ; preds = %6, %2
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021CollectionDeleteGuardINS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEENS_13DeleteFunctorIS2_EEEC2ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 comdat align 2 !prof !304 {
  store ptr %1, ptr %0, align 8, !tbaa !315
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !304 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !304 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !294
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !317 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 !prof !317 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 2
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  br i1 %6, label %7, label %10, !prof !318

7:                                                ; preds = %4
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1017AttributeListImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #12
  %9 = tail call noundef ptr @_ZN11xalanc_1_1020AttributeVectorEntry6createEPKtS2_S2_RN11xercesc_2_713MemoryManagerE(ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %8) #12
  br label %25

10:                                               ; preds = %4
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  %12 = load ptr, ptr %11, align 8, !tbaa !301
  tail call void @_ZN11xalanc_1_1020AttributeVectorEntry5clearEv(ptr noundef nonnull align 8 dereferenceable(104) %12) #12
  %13 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %12, i64 0, i32 1
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %13) #12
  %15 = tail call noundef ptr @_ZN11xalanc_1_1020AttributeVectorEntry8endArrayEPKt(ptr noundef %1) #12
  %16 = getelementptr inbounds i16, ptr %15, i64 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef %14, ptr noundef %1, ptr noundef nonnull %16) #12
  %17 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %12, i64 0, i32 2
  %18 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %17) #12
  %19 = tail call noundef ptr @_ZN11xalanc_1_1020AttributeVectorEntry8endArrayEPKt(ptr noundef %3) #12
  %20 = getelementptr inbounds i16, ptr %19, i64 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef %18, ptr noundef %3, ptr noundef nonnull %20) #12
  %21 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %12, i64 0, i32 3
  %22 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %21) #12
  %23 = tail call noundef ptr @_ZN11xalanc_1_1020AttributeVectorEntry8endArrayEPKt(ptr noundef %2) #12
  %24 = getelementptr inbounds i16, ptr %23, i64 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef %22, ptr noundef %2, ptr noundef nonnull %24) #12
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  br label %25

25:                                               ; preds = %10, %7
  %26 = phi ptr [ %9, %7 ], [ %12, %10 ]
  ret ptr %26
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !319 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !320
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !322 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %3 = load ptr, ptr %0, align 8, !tbaa !286
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !294
  %7 = load ptr, ptr %1, align 8, !tbaa !286
  store ptr %7, ptr %0, align 8, !tbaa !286
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !323
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !294
  store ptr %11, ptr %5, align 8, !tbaa !294
  store ptr %3, ptr %1, align 8, !tbaa !286
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !323
  store <2 x i64> %9, ptr %4, align 8, !tbaa !323
  store <2 x i64> %12, ptr %8, align 8, !tbaa !323
  store ptr %6, ptr %10, align 8, !tbaa !294
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021CollectionDeleteGuardINS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEENS_13DeleteFunctorIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !304 {
  %2 = alloca %"struct.xalanc_1_10::DeleteFunctor", align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !315
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  %7 = load ptr, ptr %0, align 8, !tbaa !315
  %8 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #12
          to label %9 unwind label %15

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !315
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #12
  call void @_ZN11xalanc_1_1013DeleteFunctorINS_20AttributeVectorEntryEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %11) #12
  %12 = load ptr, ptr %2, align 8
  %13 = invoke ptr @_ZSt8for_eachIPPN11xalanc_1_1020AttributeVectorEntryENS0_13DeleteFunctorIS1_EEET0_T_S7_S6_(ptr noundef %6, ptr noundef %8, ptr %12) #12
          to label %14 unwind label %15

14:                                               ; preds = %9, %1
  ret void

15:                                               ; preds = %9, %5
  %16 = landingpad { ptr, i32 }
          catch ptr null
  %17 = extractvalue { ptr, i32 } %16, 0
  call void @__clang_call_terminate(ptr %17) #14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017AttributeListImpl7reserveEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !304 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  %4 = zext i32 %1 to i64
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !317 {
  %5 = alloca %"struct.xalanc_1_10::NameCompareFunctor", align 8
  %6 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %7 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %8 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr", align 8
  %9 = alloca ptr, align 8
  %10 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #12
  %12 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #12
  call void @_ZN11xalanc_1_1018NameCompareFunctorC2EPKt(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1) #12
  %13 = load ptr, ptr %5, align 8
  %14 = call noundef ptr @_ZSt7find_ifIPPN11xalanc_1_1020AttributeVectorEntryENS0_18NameCompareFunctorEET_S5_S5_T0_(ptr noundef %11, ptr noundef %12, ptr %13) #12
  %15 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #12
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %64, label %17, !prof !324

17:                                               ; preds = %4
  %18 = load ptr, ptr %14, align 8, !tbaa !301
  %19 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %18, i64 0, i32 3
  %20 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %19) #12
  %21 = call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_(ptr noundef %2, ptr noundef %20) #12
  br i1 %21, label %42, label %22

22:                                               ; preds = %17
  %23 = call noundef ptr @_ZN11xalanc_1_1020AttributeVectorEntry8endArrayEPKt(ptr noundef %2) #12
  %24 = getelementptr inbounds i16, ptr %23, i64 1
  %25 = load ptr, ptr %14, align 8, !tbaa !301
  %26 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %25, i64 0, i32 3
  %27 = call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %26) #12
  %28 = ptrtoint ptr %24 to i64
  %29 = ptrtoint ptr %2 to i64
  %30 = sub i64 %28, %29
  %31 = ashr exact i64 %30, 1
  %32 = icmp ult i64 %27, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #15
  %34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1017AttributeListImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #12
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %2, ptr noundef nonnull %24, ptr noundef nonnull align 8 dereferenceable(8) %34) #12
  %35 = load ptr, ptr %14, align 8, !tbaa !301
  %36 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %35, i64 0, i32 3
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %36) #12
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #15
  br label %42

37:                                               ; preds = %22
  %38 = load ptr, ptr %14, align 8, !tbaa !301
  %39 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %38, i64 0, i32 3
  %40 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %39) #12
  %41 = call noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %2, ptr noundef nonnull %24, ptr noundef %40) #12
  br label %42

42:                                               ; preds = %33, %37, %17
  %43 = call noundef ptr @_ZN11xalanc_1_1020AttributeVectorEntry8endArrayEPKt(ptr noundef %3) #12
  %44 = getelementptr inbounds i16, ptr %43, i64 1
  %45 = ptrtoint ptr %44 to i64
  %46 = ptrtoint ptr %3 to i64
  %47 = sub i64 %45, %46
  %48 = ashr exact i64 %47, 1
  %49 = load ptr, ptr %14, align 8, !tbaa !301
  %50 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %49, i64 0, i32 2
  %51 = call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %50) #12
  %52 = icmp ult i64 %51, %48
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #15
  %54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1017AttributeListImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #12
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %3, ptr noundef nonnull %44, ptr noundef nonnull align 8 dereferenceable(8) %54) #12
  %55 = load ptr, ptr %14, align 8, !tbaa !301
  %56 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %55, i64 0, i32 2
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %56) #12
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #15
  br label %81

57:                                               ; preds = %42
  %58 = load ptr, ptr %14, align 8, !tbaa !301
  %59 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %58, i64 0, i32 2
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %59, i64 noundef %48) #12
  %60 = load ptr, ptr %14, align 8, !tbaa !301
  %61 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %60, i64 0, i32 2
  %62 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %61) #12
  %63 = call noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %3, ptr noundef nonnull %44, ptr noundef %62) #12
  br label %81

64:                                               ; preds = %4
  %65 = call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #12
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68, !prof !318

67:                                               ; preds = %64
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 5) #12
  br label %68

68:                                               ; preds = %67, %64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #15
  %69 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1017AttributeListImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #12
  %70 = call noundef ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #12
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) %69, ptr noundef %70) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  %71 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #12
  store ptr %71, ptr %9, align 8, !tbaa !301
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %9) #12
          to label %72 unwind label %75

72:                                               ; preds = %68
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  %73 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #12
          to label %74 unwind label %77

74:                                               ; preds = %72
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #13
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
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  resume { ptr, i32 } %80

81:                                               ; preds = %53, %57, %74
  ret i1 %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017AttributeListImpl4swapERS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 comdat align 2 !prof !304 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %1, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1017AttributeListImpl9getLengthEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !325 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #12
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !326 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !291
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017AttributeListImpl7getNameEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) unnamed_addr #1 align 2 !prof !327 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  %4 = zext i32 %1 to i64
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4) #12
  %6 = load ptr, ptr %5, align 8, !tbaa !301
  %7 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %6, i64 0, i32 1
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #12
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !328 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !294
  %5 = getelementptr inbounds ptr, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017AttributeListImpl7getTypeEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) unnamed_addr #1 align 2 !prof !304 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  %4 = zext i32 %1 to i64
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4) #12
  %6 = load ptr, ptr %5, align 8, !tbaa !301
  %7 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %6, i64 0, i32 3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #12
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017AttributeListImpl8getValueEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) unnamed_addr #1 align 2 !prof !317 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  %4 = zext i32 %1 to i64
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4) #12
  %6 = load ptr, ptr %5, align 8, !tbaa !301
  %7 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %6, i64 0, i32 2
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #12
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1017AttributeListImpl8getValueEPKc(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #5 align 2 !prof !304 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017AttributeListImpl7getTypeEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !304 {
  %3 = alloca %"struct.xalanc_1_10::NameCompareFunctor", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #12
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #12
  call void @_ZN11xalanc_1_1018NameCompareFunctorC2EPKt(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #12
  %7 = load ptr, ptr %3, align 8
  %8 = call noundef ptr @_ZSt7find_ifIPKPN11xalanc_1_1020AttributeVectorEntryENS0_18NameCompareFunctorEET_S6_S6_T0_(ptr noundef %5, ptr noundef %6, ptr %7) #12
  %9 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #12
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %8, align 8, !tbaa !301
  %13 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %12, i64 0, i32 3
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %13) #12
  br label %15

15:                                               ; preds = %2, %11
  %16 = phi ptr [ %14, %11 ], [ null, %2 ]
  ret ptr %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt7find_ifIPKPN11xalanc_1_1020AttributeVectorEntryENS0_18NameCompareFunctorEET_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !304 {
  %4 = tail call ptr @_ZN9__gnu_cxx5__ops11__pred_iterIN11xalanc_1_1018NameCompareFunctorEEENS0_10_Iter_predIT_EES5_(ptr %2) #12
  %5 = tail call noundef ptr @_ZSt9__find_ifIPKPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_SA_SA_T0_(ptr noundef %0, ptr noundef %1, ptr %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018NameCompareFunctorC2EPKt(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !317 {
  store ptr %1, ptr %0, align 8, !tbaa !329
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017AttributeListImpl8getValueEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !304 {
  %3 = alloca %"struct.xalanc_1_10::NameCompareFunctor", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #12
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #12
  call void @_ZN11xalanc_1_1018NameCompareFunctorC2EPKt(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #12
  %7 = load ptr, ptr %3, align 8
  %8 = call noundef ptr @_ZSt7find_ifIPKPN11xalanc_1_1020AttributeVectorEntryENS0_18NameCompareFunctorEET_S6_S6_T0_(ptr noundef %5, ptr noundef %6, ptr %7) #12
  %9 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #12
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %8, align 8, !tbaa !301
  %13 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %12, i64 0, i32 2
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %13) #12
  br label %15

15:                                               ; preds = %2, %11
  %16 = phi ptr [ %14, %11 ], [ null, %2 ]
  ret ptr %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1017AttributeListImpl5clearEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 !prof !331 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #12
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #12
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #12
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3, ptr noundef %5, ptr noundef %6) #12
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !331 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #12
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %81, label %8, !prof !332

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28, !prof !324

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #12
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %80, label %16, !prof !333

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !286
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_20AttributeVectorEntryEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #12
  %23 = getelementptr inbounds ptr, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !291
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !291
  %26 = getelementptr inbounds ptr, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %80, label %18, !prof !334, !llvm.loop !335

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  %32 = load ptr, ptr %0, align 8, !tbaa !286
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #12
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
          to label %34 unwind label %46

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #12
          to label %36 unwind label %46

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
          to label %38 unwind label %46

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #12
          to label %39 unwind label %46

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
          to label %41 unwind label %46

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
          to label %43 unwind label %46

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #12
          to label %44 unwind label %46

44:                                               ; preds = %43
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #12
          to label %45 unwind label %46

45:                                               ; preds = %44
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %80

46:                                               ; preds = %44, %43, %41, %39, %38, %36, %34, %31
  %47 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  resume { ptr, i32 } %47

48:                                               ; preds = %28
  %49 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %50 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %49) #12
  %51 = icmp ugt i64 %50, %6
  br i1 %51, label %67, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds ptr, ptr %2, i64 %50
  %54 = icmp eq ptr %53, %3
  br i1 %54, label %55, label %57

55:                                               ; preds = %57, %52
  %56 = icmp eq ptr %49, %1
  br i1 %56, label %65, label %61

57:                                               ; preds = %52, %57
  %58 = phi ptr [ %59, %57 ], [ %53, %52 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %58) #12
  %59 = getelementptr inbounds ptr, ptr %58, i64 1
  %60 = icmp eq ptr %59, %3
  br i1 %60, label %55, label %57, !llvm.loop !336

61:                                               ; preds = %55, %61
  %62 = phi ptr [ %63, %61 ], [ %1, %55 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %62) #12
  %63 = getelementptr inbounds ptr, ptr %62, i64 1
  %64 = icmp eq ptr %63, %49
  br i1 %64, label %65, label %61, !llvm.loop !337

65:                                               ; preds = %61, %55
  %66 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_1020AttributeVectorEntryEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %53, ptr noundef %1) #12
  br label %80

67:                                               ; preds = %48
  %68 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %69 = sub i64 0, %6
  %70 = getelementptr inbounds ptr, ptr %68, i64 %69
  %71 = icmp eq ptr %70, %49
  br i1 %71, label %76, label %72

72:                                               ; preds = %67, %72
  %73 = phi ptr [ %74, %72 ], [ %70, %67 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %73) #12
  %74 = getelementptr inbounds ptr, ptr %73, i64 1
  %75 = icmp eq ptr %74, %49
  br i1 %75, label %76, label %72, !llvm.loop !338

76:                                               ; preds = %72, %67
  %77 = getelementptr inbounds ptr, ptr %49, i64 %69
  %78 = tail call noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_1020AttributeVectorEntryES3_ET0_T_S5_S4_(ptr noundef %1, ptr noundef nonnull %77, ptr noundef %49) #12
  %79 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_1020AttributeVectorEntryEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #12
  br label %80

80:                                               ; preds = %18, %13, %65, %76, %45
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  br label %81

81:                                               ; preds = %4, %80
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !331 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !291
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5, !prof !332

5:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #12
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt7find_ifIPPN11xalanc_1_1020AttributeVectorEntryENS0_18NameCompareFunctorEET_S5_S5_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !317 {
  %4 = tail call ptr @_ZN9__gnu_cxx5__ops11__pred_iterIN11xalanc_1_1018NameCompareFunctorEEENS0_10_Iter_predIT_EES5_(ptr %2) #12
  %5 = tail call noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_(ptr noundef %0, ptr noundef %1, ptr %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !339 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %0) #12
  %4 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %1) #12
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %8, !prof !340

6:                                                ; preds = %2
  %7 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %0, ptr noundef %1, i32 noundef %3) #12
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i1 [ %7, %6 ], [ false, %2 ]
  ret i1 %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1020AttributeVectorEntry8endArrayEPKt(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !prof !341 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ]
  %4 = load i16, ptr %3, align 2, !tbaa !342
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds i16, ptr %3, i64 1
  br i1 %5, label %7, label %2, !prof !344, !llvm.loop !345

7:                                                ; preds = %2
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !346 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !347
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !348 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %3, ptr %0, align 8, !tbaa !349
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0) #12
  %7 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %7, ptr noundef %1, ptr noundef %2) #12
          to label %8 unwind label %9

8:                                                ; preds = %4
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  ret void

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 !prof !350 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %3 = load ptr, ptr %0, align 8, !tbaa !349
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !320
  %7 = load ptr, ptr %1, align 8, !tbaa !349
  store ptr %7, ptr %0, align 8, !tbaa !349
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !323
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !320
  store ptr %11, ptr %5, align 8, !tbaa !320
  store ptr %3, ptr %1, align 8, !tbaa !349
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !323
  store <2 x i64> %9, ptr %4, align 8, !tbaa !323
  store <2 x i64> %12, ptr %8, align 8, !tbaa !323
  store ptr %6, ptr %10, align 8, !tbaa !320
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !351 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !347
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %11, label %5, !prof !352

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
          to label %8 unwind label %12

8:                                                ; preds = %5
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #12
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !320
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %10) #12
          to label %11 unwind label %12

11:                                               ; preds = %8, %1
  ret void

12:                                               ; preds = %8, %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !353 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %0) #12
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %1) #12
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #12
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !354 {
  %3 = alloca %"struct.xalanc_1_10::ConstructValueWithNoMemoryManager", align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #15
  %4 = load ptr, ptr %0, align 8, !tbaa !349
  call void @_ZN11xalanc_1_1033ConstructValueWithNoMemoryManagerItEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 2 dereferenceable(2) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %3) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !355 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !292
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !317 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !317 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !356
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !317 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #12
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !317 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !317 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !291
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1020AttributeVectorEntry6createEPKtS2_S2_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !313 {
  %5 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr.1", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %6 = load ptr, ptr %3, align 8, !tbaa !281
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 104) #12
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %9) #12
  %10 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #12
  invoke void @_ZN11xalanc_1_1020AttributeVectorEntryC2EPKtS2_S2_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %10, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
          to label %11 unwind label %14

11:                                               ; preds = %4
  %12 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #12
          to label %13 unwind label %14

13:                                               ; preds = %11
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  ret ptr %10

14:                                               ; preds = %11, %4
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  resume { ptr, i32 } %15
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !358 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !294
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !291
  %6 = getelementptr ptr, ptr %3, i64 %5
  %7 = getelementptr ptr, ptr %6, i64 -1
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020AttributeVectorEntry5clearEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 !prof !358 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #12
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !359 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #12
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8, !prof !360

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28, !prof !361

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #12
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16, !prof !362

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !349
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 2 dereferenceable(2) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #12
  %23 = getelementptr inbounds i16, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !363
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !363
  %26 = getelementptr inbounds i16, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !prof !364, !llvm.loop !365

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47, !prof !366

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  %32 = load ptr, ptr %0, align 8, !tbaa !349
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #12
  %50 = icmp ugt i64 %49, %6
  br i1 %50, label %66, label %51, !prof !367

51:                                               ; preds = %47
  %52 = getelementptr inbounds i16, ptr %2, i64 %49
  %53 = icmp eq ptr %52, %3
  br i1 %53, label %54, label %56, !prof !368

54:                                               ; preds = %56, %51
  %55 = icmp eq ptr %48, %1
  br i1 %55, label %64, label %60, !prof !368

56:                                               ; preds = %51, %56
  %57 = phi ptr [ %58, %56 ], [ %52, %51 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %57) #12
  %58 = getelementptr inbounds i16, ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !prof !369, !llvm.loop !370

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %61) #12
  %62 = getelementptr inbounds i16, ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !prof !371, !llvm.loop !372

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
  br i1 %74, label %75, label %71, !llvm.loop !373

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
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !374 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !291
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !291
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !294
  %7 = getelementptr inbounds ptr, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1017AttributeListImpl15removeAttributeEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !304 {
  %3 = alloca %"struct.xalanc_1_10::NameCompareFunctor", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #12
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #12
  call void @_ZN11xalanc_1_1018NameCompareFunctorC2EPKt(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #12
  %7 = load ptr, ptr %3, align 8
  %8 = call noundef ptr @_ZSt7find_ifIPPN11xalanc_1_1020AttributeVectorEntryENS0_18NameCompareFunctorEET_S5_S5_T0_(ptr noundef %5, ptr noundef %6, ptr %7) #12
  %9 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #12
  %10 = icmp ne ptr %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 2
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %8) #12
  %13 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %8) #12
  br label %14

14:                                               ; preds = %11, %2
  ret i1 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !304 {
  %3 = getelementptr inbounds ptr, ptr %1, i64 1
  %4 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713AttributeListD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !284 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713AttributeListD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #14
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %0) local_unnamed_addr #1 comdat !prof !375 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ]
  %4 = load i16, ptr %3, align 2, !tbaa !342
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds i16, ptr %3, i64 1
  br i1 %5, label %7, label %2, !prof !376, !llvm.loop !377

7:                                                ; preds = %2
  %8 = ptrtoint ptr %3 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = lshr exact i64 %10, 1
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !313 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !313 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !356
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020AttributeVectorEntryC2EPKtS2_S2_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !313 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1020AttributeVectorEntryE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !281
  %6 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 1
  %7 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %1) #12
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i16, ptr %1, i64 %8
  %10 = getelementptr inbounds i16, ptr %9, i64 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  %11 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 2
  %12 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %2) #12
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i16, ptr %2, i64 %13
  %15 = getelementptr inbounds i16, ptr %14, i64 1
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %2, ptr noundef nonnull %15, ptr noundef nonnull align 8 dereferenceable(8) %4) #12
          to label %16 unwind label %23

16:                                               ; preds = %5
  %17 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 3
  %18 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %3) #12
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i16, ptr %3, i64 %19
  %21 = getelementptr inbounds i16, ptr %20, i64 1
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef %3, ptr noundef nonnull %21, ptr noundef nonnull align 8 dereferenceable(8) %4) #12
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
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #13
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi { ptr, i32 } [ %26, %25 ], [ %24, %23 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #13
  resume { ptr, i32 } %28
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !313 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #12
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !313 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !313 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !301
  store ptr %2, ptr %5, align 8, !tbaa !301
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1020AttributeVectorEntryEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1020AttributeVectorEntryEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 comdat align 2 !prof !378 {
  %4 = load ptr, ptr %1, align 8, !tbaa !301
  store ptr %4, ptr %0, align 8, !tbaa !379
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !301
  store ptr %6, ptr %5, align 8, !tbaa !356
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !297 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020AttributeVectorEntryD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 comdat align 2 !prof !313 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1020AttributeVectorEntryE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !281
  %2 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020AttributeVectorEntryD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xalanc_1_1020AttributeVectorEntryD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #13
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !313 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  store ptr %1, ptr %0, align 8, !tbaa !379
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !356
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !313 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  br i1 %2, label %3, label %10, !prof !380

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !379
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !356
  %7 = load ptr, ptr %4, align 8, !tbaa !281
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #12
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !313 {
  %2 = load ptr, ptr %0, align 8, !tbaa !379
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !381 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !363
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5, !prof !382

5:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #12
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !383 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !384 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %5 = load i64, ptr %3, align 8, !tbaa !363
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !prof !385, !llvm.loop !386

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !387 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !363
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !363
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !320
  %7 = getelementptr inbounds i16, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %7) #12
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #1 comdat align 2 !prof !388 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !389 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !322 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %4 = load ptr, ptr %0, align 8, !tbaa !286
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #12
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #12
          to label %5 unwind label %6

5:                                                ; preds = %2
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  ret void

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !322 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !286
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !291
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12, !prof !390

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #12
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #12
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #12
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #12
          to label %17 unwind label %20

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #12
          to label %18 unwind label %20

18:                                               ; preds = %17
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #12
          to label %19 unwind label %20

19:                                               ; preds = %18
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %26

20:                                               ; preds = %18, %17, %12
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  resume { ptr, i32 } %21

22:                                               ; preds = %4
  %23 = icmp eq i64 %3, 0
  br i1 %23, label %26, label %24, !prof !391

24:                                               ; preds = %22
  %25 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #12
  store ptr %25, ptr %8, align 8, !tbaa !294
  store i64 %3, ptr %7, align 8, !tbaa !292
  br label %26

26:                                               ; preds = %22, %24, %19
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !304 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !322 {
  %3 = shl i64 %1, 3
  %4 = load ptr, ptr %0, align 8, !tbaa !286
  %5 = load ptr, ptr %4, align 8, !tbaa !281
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #12
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !392 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !393

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #12
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !394, !llvm.loop !395

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !396 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !392 {
  %3 = load ptr, ptr %0, align 8, !tbaa !349
  %4 = load ptr, ptr %3, align 8, !tbaa !281
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !397 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !320
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !363
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 !prof !398 {
  store ptr %1, ptr %0, align 8, !tbaa !349
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !363
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !347
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !399

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #12
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !320
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !392 {
  %3 = shl i64 %1, 1
  %4 = load ptr, ptr %0, align 8, !tbaa !349
  %5 = load ptr, ptr %4, align 8, !tbaa !281
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #12
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !322 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !400

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !307, !llvm.loop !401

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !322 {
  %3 = load ptr, ptr %0, align 8, !tbaa !286
  %4 = load ptr, ptr %3, align 8, !tbaa !281
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !355 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !402 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !294
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !291
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1013DeleteFunctorINS_20AttributeVectorEntryEEclEPKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !313 {
  %3 = alloca %"struct.xalanc_1_10::XalanDestroyFunctor", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  tail call void @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_20AttributeVectorEntryEEENS_19XalanDestroyFunctorIT_EEPKS3_(ptr noundef %1) #12
  %4 = load ptr, ptr %0, align 8, !tbaa !403
  call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_20AttributeVectorEntryEEclEPKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_20AttributeVectorEntryEEENS_19XalanDestroyFunctorIT_EEPKS3_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !313 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_20AttributeVectorEntryEEclEPKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !313 {
  tail call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_20AttributeVectorEntryEEclEPS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_20AttributeVectorEntryEEclEPS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !313 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5, !prof !380

5:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_20AttributeVectorEntryEEclERS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) #12
  %6 = load ptr, ptr %2, align 8, !tbaa !281
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %1) #12
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_20AttributeVectorEntryEEclERS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #1 comdat align 2 !prof !313 {
  %3 = load ptr, ptr %1, align 8, !tbaa !281
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(104) %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !304 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !294
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !291
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !317 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !291
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !292
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !324

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %11 = load ptr, ptr %0, align 8, !tbaa !286
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_20AttributeVectorEntryEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #12
  %13 = load i64, ptr %4, align 8, !tbaa !291
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !291
  br label %26

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %21 = load ptr, ptr %0, align 8, !tbaa !286
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #12
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
          to label %22 unwind label %24

22:                                               ; preds = %15
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #12
          to label %23 unwind label %24

23:                                               ; preds = %22
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  br label %26

24:                                               ; preds = %22, %15
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  resume { ptr, i32 } %25

26:                                               ; preds = %23, %9
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_20AttributeVectorEntryEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 !prof !355 {
  %4 = load ptr, ptr %1, align 8, !tbaa !301
  store ptr %4, ptr %0, align 8, !tbaa !301
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPKPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_SA_SA_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !304 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !301
  call void @_ZSt19__iterator_categoryIPKPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  %5 = call noundef ptr @_ZSt9__find_ifIPKPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_SA_SA_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZN9__gnu_cxx5__ops11__pred_iterIN11xalanc_1_1018NameCompareFunctorEEENS0_10_Iter_predIT_EES5_(ptr %0) local_unnamed_addr #0 comdat !prof !317 {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred", align 8
  call void @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEC2ES3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr %0) #12
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPKPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_SA_SA_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !304 {
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
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPKPNS2_20AttributeVectorEntryEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %12) #12
  br i1 %13, label %47, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %12, i64 1
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPKPNS2_20AttributeVectorEntryEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %15) #12
  br i1 %16, label %47, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds ptr, ptr %12, i64 2
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPKPNS2_20AttributeVectorEntryEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %18) #12
  br i1 %19, label %47, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds ptr, ptr %12, i64 3
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPKPNS2_20AttributeVectorEntryEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %21) #12
  br i1 %22, label %47, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds ptr, ptr %12, i64 4
  %25 = add nsw i64 %11, -1
  %26 = icmp sgt i64 %11, 1
  br i1 %26, label %10, label %27, !llvm.loop !405

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
  %35 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPKPNS2_20AttributeVectorEntryEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %32) #12
  br i1 %35, label %47, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds ptr, ptr %32, i64 1
  br label %38

38:                                               ; preds = %30, %36
  %39 = phi ptr [ %32, %30 ], [ %37, %36 ]
  %40 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPKPNS2_20AttributeVectorEntryEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %39) #12
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds ptr, ptr %39, i64 1
  br label %43

43:                                               ; preds = %30, %41
  %44 = phi ptr [ %32, %30 ], [ %42, %41 ]
  %45 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPKPNS2_20AttributeVectorEntryEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %44) #12
  br i1 %45, label %47, label %46

46:                                               ; preds = %43, %30
  br label %47

47:                                               ; preds = %20, %17, %14, %10, %43, %38, %34, %46
  %48 = phi ptr [ %1, %46 ], [ %32, %34 ], [ %39, %38 ], [ %44, %43 ], [ %21, %20 ], [ %18, %17 ], [ %15, %14 ], [ %12, %10 ]
  ret ptr %48
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat !prof !331 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPKPNS2_20AttributeVectorEntryEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !304 {
  %3 = load ptr, ptr %1, align 8, !tbaa !301
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018NameCompareFunctorclEPKNS_20AttributeVectorEntryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3) #12
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018NameCompareFunctorclEPKNS_20AttributeVectorEntryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !304 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %1, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  %5 = load ptr, ptr %0, align 8, !tbaa !329
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_(ptr noundef %4, ptr noundef %5) #12
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !406 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !320
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEC2ES3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) unnamed_addr #1 comdat align 2 !prof !317 {
  store ptr %1, ptr %0, align 8, !tbaa.struct !407
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !331 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %1, ptr noundef %2) #12
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !317 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6, !prof !318

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #12
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKPN11xalanc_1_1020AttributeVectorEntryEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !304 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_1020AttributeVectorEntryEET_S5_(ptr noundef %0) #12
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_1020AttributeVectorEntryEET_S5_(ptr noundef %1) #12
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKPN11xalanc_1_1020AttributeVectorEntryEPS2_ET1_T0_S7_S6_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #12
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_1020AttributeVectorEntryES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !304 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_1020AttributeVectorEntryEET_S4_(ptr noundef %0) #12
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_1020AttributeVectorEntryEET_S4_(ptr noundef %1) #12
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_1020AttributeVectorEntryES3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #12
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !331 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !301
  call void @_ZSt19__iterator_categoryIPKPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %4 = call noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #12
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !331 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  ret i64 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKPN11xalanc_1_1020AttributeVectorEntryEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !304 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !301
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_1020AttributeVectorEntryEET_S5_(ptr noundef %0) #13
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_1020AttributeVectorEntryEET_S5_(ptr noundef %1) #13
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1020AttributeVectorEntryEET_S4_(ptr noundef %2) #13
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_1020AttributeVectorEntryEPS2_ET1_T0_S7_S6_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #12
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_1020AttributeVectorEntryEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #12
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_1020AttributeVectorEntryEET_S5_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !304 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_1020AttributeVectorEntryEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !304 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_1020AttributeVectorEntryEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !304 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_1020AttributeVectorEntryEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_1020AttributeVectorEntryEET_S5_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !304 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1020AttributeVectorEntryEET_S4_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !304 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_1020AttributeVectorEntryEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !304 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_1020AttributeVectorEntryEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_1020AttributeVectorEntryEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !304 {
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
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_1020AttributeVectorEntryES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !304 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !301
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1020AttributeVectorEntryEET_S4_(ptr noundef %0) #13
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1020AttributeVectorEntryEET_S4_(ptr noundef %1) #13
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1020AttributeVectorEntryEET_S4_(ptr noundef %2) #13
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_1020AttributeVectorEntryES3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #12
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_1020AttributeVectorEntryEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #12
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_1020AttributeVectorEntryEET_S4_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !304 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_1020AttributeVectorEntryES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !304 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_1020AttributeVectorEntryES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_1020AttributeVectorEntryES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !304 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1020AttributeVectorEntryEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1020AttributeVectorEntryEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !304 {
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

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !317 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %5 = load i64, ptr %3, align 8, !tbaa !291
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !prof !408, !llvm.loop !409

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !317 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !301
  call void @_ZSt19__iterator_categoryIPPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  %5 = call noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !317 {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred", align 8
  store ptr %2, ptr %4, align 8
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = ashr i64 %7, 5
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %30, !prof !333

10:                                               ; preds = %3, %23
  %11 = phi i64 [ %25, %23 ], [ %8, %3 ]
  %12 = phi ptr [ %24, %23 ], [ %0, %3 ]
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPPNS2_20AttributeVectorEntryEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %12) #12
  br i1 %13, label %47, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %12, i64 1
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPPNS2_20AttributeVectorEntryEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %15) #12
  br i1 %16, label %47, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds ptr, ptr %12, i64 2
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPPNS2_20AttributeVectorEntryEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %18) #12
  br i1 %19, label %47, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds ptr, ptr %12, i64 3
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPPNS2_20AttributeVectorEntryEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %21) #12
  br i1 %22, label %47, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds ptr, ptr %12, i64 4
  %25 = add nsw i64 %11, -1
  %26 = icmp sgt i64 %11, 1
  br i1 %26, label %10, label %27, !prof !410, !llvm.loop !411

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
  ], !prof !412

34:                                               ; preds = %30
  %35 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPPNS2_20AttributeVectorEntryEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %32) #12
  br i1 %35, label %47, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds ptr, ptr %32, i64 1
  br label %38

38:                                               ; preds = %30, %36
  %39 = phi ptr [ %32, %30 ], [ %37, %36 ]
  %40 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPPNS2_20AttributeVectorEntryEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %39) #12
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds ptr, ptr %39, i64 1
  br label %43

43:                                               ; preds = %30, %41
  %44 = phi ptr [ %32, %30 ], [ %42, %41 ]
  %45 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPPNS2_20AttributeVectorEntryEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %44) #12
  br i1 %45, label %47, label %46

46:                                               ; preds = %43, %30
  br label %47

47:                                               ; preds = %20, %17, %14, %10, %43, %38, %34, %46
  %48 = phi ptr [ %1, %46 ], [ %32, %34 ], [ %39, %38 ], [ %44, %43 ], [ %21, %20 ], [ %18, %17 ], [ %15, %14 ], [ %12, %10 ]
  ret ptr %48
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat !prof !317 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPPNS2_20AttributeVectorEntryEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !304 {
  %3 = load ptr, ptr %1, align 8, !tbaa !301
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018NameCompareFunctorclEPKNS_20AttributeVectorEntryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3) #12
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !353 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !301
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %0) #13
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %1) #13
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #13
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #12
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #12
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !413 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !414 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !353 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !413 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !415 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !353 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !414 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !416

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %2, ptr align 2 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1033ConstructValueWithNoMemoryManagerItEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 2 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !354 {
  store i16 0, ptr %0, align 2, !tbaa !417
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #0 comdat align 2 !prof !419 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !363
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %7, label %8, !prof !420

7:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #12
  br label %24

8:                                                ; preds = %3
  %9 = icmp ult i64 %5, %1
  br i1 %9, label %10, label %24, !prof !421

10:                                               ; preds = %8
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #12
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !320
  %13 = getelementptr inbounds i16, ptr %12, i64 %1
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %24, label %16, !prof !422

16:                                               ; preds = %10, %16
  %17 = phi ptr [ %20, %16 ], [ %14, %10 ]
  %18 = load ptr, ptr %0, align 8, !tbaa !349
  %19 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %17, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 8 dereferenceable(8) %18) #12
  %20 = getelementptr inbounds i16, ptr %17, i64 1
  %21 = load i64, ptr %4, align 8, !tbaa !363
  %22 = add i64 %21, 1
  store i64 %22, ptr %4, align 8, !tbaa !363
  %23 = icmp eq ptr %20, %13
  br i1 %23, label %24, label %16, !prof !423, !llvm.loop !424

24:                                               ; preds = %16, %10, %8, %7
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !425 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !347
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7, !prof !426

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #12
  br label %7

7:                                                ; preds = %6, %2
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 !prof !388 {
  %4 = load i16, ptr %1, align 2, !tbaa !342
  store i16 %4, ptr %0, align 2, !tbaa !342
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !427 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %4 = load ptr, ptr %0, align 8, !tbaa !349
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #12
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !428 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !349
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !363
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !429

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !430

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #12
  store ptr %24, ptr %8, align 8, !tbaa !320
  store i64 %3, ptr %7, align 8, !tbaa !347
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !431 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !406 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !406 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !320
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !363
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !317 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !301
  store ptr %2, ptr %5, align 8, !tbaa !301
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1020AttributeVectorEntryEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !432 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !317 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  br i1 %2, label %3, label %13, !prof !408

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !356
  %6 = load ptr, ptr %5, align 8, !tbaa !281
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(104) %5) #13
  %8 = load ptr, ptr %0, align 8, !tbaa !379
  %9 = load ptr, ptr %4, align 8, !tbaa !356
  %10 = load ptr, ptr %8, align 8, !tbaa !281
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %9) #12
  br label %13

13:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !317 {
  %2 = load ptr, ptr %0, align 8, !tbaa !379
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !324

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !356
  %7 = icmp ne ptr %6, null
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i1 [ false, %1 ], [ %7, %4 ]
  ret i1 %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !317 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  store ptr %1, ptr %0, align 8, !tbaa !379
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !356
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !433 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #12
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !434 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !363
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !435 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6, !prof !436

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #12
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !437 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !363
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !347
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !438

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %11 = load ptr, ptr %0, align 8, !tbaa !349
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #12
  %13 = load i64, ptr %4, align 8, !tbaa !363
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !363
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %21 = load ptr, ptr %0, align 8, !tbaa !349
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #12
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1) #12
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !304 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) #12
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %1) #12
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #12
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !433 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !301
  call void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %4 = call noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #12
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !433 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 1
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat !prof !433 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !304 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !301
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) #13
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %1) #13
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #13
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #12
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #12
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !439 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !304 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !304 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !304 {
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
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !304 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %7 = tail call noundef ptr @_ZSt4copyIPPN11xalanc_1_1020AttributeVectorEntryES3_ET0_T_S5_S4_(ptr noundef %2, ptr noundef %6, ptr noundef %1) #12
  %8 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #12
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8) #12
  br label %9

9:                                                ; preds = %5, %3
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPPN11xalanc_1_1020AttributeVectorEntryES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !304 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_1020AttributeVectorEntryEET_S4_(ptr noundef %0) #12
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_1020AttributeVectorEntryEET_S4_(ptr noundef %1) #12
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPPN11xalanc_1_1020AttributeVectorEntryES3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #12
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !304 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %6, %4 ], [ %1, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %6 = add i64 %5, -1
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %4, !llvm.loop !440

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPPN11xalanc_1_1020AttributeVectorEntryES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !304 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !301
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1020AttributeVectorEntryEET_S4_(ptr noundef %0) #13
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1020AttributeVectorEntryEET_S4_(ptr noundef %1) #13
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1020AttributeVectorEntryEET_S4_(ptr noundef %2) #13
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPPN11xalanc_1_1020AttributeVectorEntryES3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #12
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_1020AttributeVectorEntryEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #12
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPPN11xalanc_1_1020AttributeVectorEntryES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !304 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPPN11xalanc_1_1020AttributeVectorEntryES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPPN11xalanc_1_1020AttributeVectorEntryES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !304 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_1020AttributeVectorEntryEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind optsize }

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
!35 = !{ptr @_ZN11xalanc_1_1017AttributeListImplC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xercesc_2_713AttributeListC2Ev, i64 5}
!36 = !{ptr @_ZN11xalanc_1_1017AttributeListImplC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 10}
!37 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 19}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 23}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 5}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 5}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_, i64 5}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_, i64 5}
!44 = !{ptr @_ZN11xalanc_1_1017AttributeListImplD2Ev, ptr @_ZN11xalanc_1_1017AttributeListImpl5clearEv, i64 8}
!45 = !{ptr @_ZN11xalanc_1_1017AttributeListImplD2Ev, ptr @_ZN11xalanc_1_1017AttributeListImpl13deleteEntriesERNS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEE, i64 8}
!46 = !{ptr @_ZN11xalanc_1_1017AttributeListImplD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 16}
!47 = !{ptr @_ZN11xalanc_1_1017AttributeListImplD2Ev, ptr @_ZN11xercesc_2_713AttributeListD2Ev, i64 8}
!48 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl13deleteEntriesERNS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 8}
!49 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl13deleteEntriesERNS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 8}
!50 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl13deleteEntriesERNS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv, i64 8}
!51 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl13deleteEntriesERNS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEE, ptr @_ZN11xalanc_1_1013DeleteFunctorINS_20AttributeVectorEntryEEC2ERN11xercesc_2_713MemoryManagerE, i64 8}
!52 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl13deleteEntriesERNS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEE, ptr @_ZSt8for_eachIPPN11xalanc_1_1020AttributeVectorEntryENS0_13DeleteFunctorIS1_EEET0_T_S7_S6_, i64 8}
!53 = !{ptr @_ZN11xalanc_1_1017AttributeListImplC2ERKS0_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xercesc_2_713AttributeListC2Ev, i64 3}
!54 = !{ptr @_ZN11xalanc_1_1017AttributeListImplC2ERKS0_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 6}
!55 = !{ptr @_ZN11xalanc_1_1017AttributeListImplC2ERKS0_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1017AttributeListImplaSERKS0_, i64 3}
!56 = !{ptr @_ZN11xalanc_1_1017AttributeListImplaSERKS0_, ptr @_ZN11xalanc_1_1017AttributeListImpl16getMemoryManagerEv, i64 2}
!57 = !{ptr @_ZN11xalanc_1_1017AttributeListImplaSERKS0_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 2}
!58 = !{ptr @_ZN11xalanc_1_1017AttributeListImplaSERKS0_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 30}
!59 = !{ptr @_ZN11xalanc_1_1017AttributeListImplaSERKS0_, ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_, i64 10}
!60 = !{ptr @_ZN11xalanc_1_1017AttributeListImplaSERKS0_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, i64 10}
!61 = !{ptr @_ZN11xalanc_1_1017AttributeListImplaSERKS0_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 2}
!62 = !{ptr @_ZSt8for_eachIPPN11xalanc_1_1020AttributeVectorEntryENS0_13DeleteFunctorIS1_EEET0_T_S7_S6_, ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_20AttributeVectorEntryEEclEPKS1_, i64 3}
!63 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 1201262}
!64 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2477606}
!65 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 2477606}
!66 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl16getMemoryManagerEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv, i64 75099}
!67 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 4}
!68 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 2}
!69 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 150188}
!70 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 75094}
!71 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv, i64 75094}
!72 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_, ptr @_ZN11xalanc_1_1017AttributeListImpl16getMemoryManagerEv, i64 3}
!73 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_, ptr @_ZN11xalanc_1_1020AttributeVectorEntry6createEPKtS2_S2_RN11xercesc_2_713MemoryManagerE, i64 3}
!74 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv, i64 75091}
!75 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_, ptr @_ZN11xalanc_1_1020AttributeVectorEntry5clearEv, i64 75091}
!76 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 225273}
!77 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_, ptr @_ZN11xalanc_1_1020AttributeVectorEntry8endArrayEPKt, i64 225273}
!78 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 225273}
!79 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, i64 75091}
!80 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!81 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 8}
!82 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 75094}
!83 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 150188}
!84 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZN11xalanc_1_1018NameCompareFunctorC2EPKt, i64 75094}
!85 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZSt7find_ifIPPN11xalanc_1_1020AttributeVectorEntryENS0_18NameCompareFunctorEET_S5_S5_T0_, i64 75094}
!86 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 1}
!87 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZN11xalanc_1_106equalsEPKtS1_, i64 1}
!88 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZN11xalanc_1_1020AttributeVectorEntry8endArrayEPKt, i64 1}
!89 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, i64 1}
!90 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, i64 75093}
!91 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm, i64 3}
!92 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZN11xalanc_1_1017AttributeListImpl16getMemoryManagerEv, i64 75093}
!93 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_, i64 75093}
!94 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_, i64 75093}
!95 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE3getEv, i64 75093}
!96 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, i64 75093}
!97 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE7releaseEv, i64 75093}
!98 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EED2Ev, i64 75093}
!99 = !{ptr @_ZNK11xalanc_1_1017AttributeListImpl9getLengthEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, i64 1048814}
!100 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 1123908}
!101 = !{ptr @_ZNK11xalanc_1_1017AttributeListImpl7getNameEj, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEixEm, i64 75095}
!102 = !{ptr @_ZNK11xalanc_1_1017AttributeListImpl7getNameEj, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 75095}
!103 = !{ptr @_ZNK11xalanc_1_1017AttributeListImpl8getValueEj, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEixEm, i64 75094}
!104 = !{ptr @_ZNK11xalanc_1_1017AttributeListImpl8getValueEj, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 75094}
!105 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 2252312}
!106 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 1126156}
!107 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, i64 1126156}
!108 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, i64 1126156}
!109 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 1201251}
!110 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_, i64 1126157}
!111 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, i64 75095}
!112 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 75098}
!113 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, i64 75094}
!114 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_20AttributeVectorEntryEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE, i64 75094}
!115 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, i64 1}
!116 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!117 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 1}
!118 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, i64 1}
!119 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 15}
!120 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2252312}
!121 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm, i64 75095}
!122 = !{ptr @_ZSt7find_ifIPPN11xalanc_1_1020AttributeVectorEntryENS0_18NameCompareFunctorEET_S5_S5_T0_, ptr @_ZN9__gnu_cxx5__ops11__pred_iterIN11xalanc_1_1018NameCompareFunctorEEENS0_10_Iter_predIT_EES5_, i64 75094}
!123 = !{ptr @_ZSt7find_ifIPPN11xalanc_1_1020AttributeVectorEntryENS0_18NameCompareFunctorEET_S5_S5_T0_, ptr @_ZSt9__find_ifIPPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_, i64 75094}
!124 = !{ptr @_ZN11xalanc_1_106equalsEPKtS1_, ptr @_ZN11xalanc_1_106lengthEPKt, i64 20}
!125 = !{ptr @_ZN11xalanc_1_106equalsEPKtS1_, ptr @_ZN11xalanc_1_106equalsEPKtS1_j, i64 5}
!126 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 155828047}
!127 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 12}
!128 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 12}
!129 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 12}
!130 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 12}
!131 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 12}
!132 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 12}
!133 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 170601494}
!134 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!135 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!136 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!137 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!138 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300308}
!139 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 163}
!140 = !{ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, ptr @_ZSt12__miter_baseIPKtET_S2_, i64 3901146}
!141 = !{ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!142 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEm, ptr @_ZN11xalanc_1_1033ConstructValueWithNoMemoryManagerItEC2ERN11xercesc_2_713MemoryManagerE, i64 1}
!143 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt, i64 1}
!144 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 150188}
!145 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, i64 75094}
!146 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE7releaseEv, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_, i64 75094}
!147 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EED2Ev, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData10deallocateEv, i64 75094}
!148 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 75094}
!149 = !{ptr @_ZN11xalanc_1_1020AttributeVectorEntry6createEPKtS2_S2_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_, i64 2}
!150 = !{ptr @_ZN11xalanc_1_1020AttributeVectorEntry6createEPKtS2_S2_RN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE3getEv, i64 2}
!151 = !{ptr @_ZN11xalanc_1_1020AttributeVectorEntry6createEPKtS2_S2_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1020AttributeVectorEntryC2EPKtS2_S2_RN11xercesc_2_713MemoryManagerE, i64 2}
!152 = !{ptr @_ZN11xalanc_1_1020AttributeVectorEntry6createEPKtS2_S2_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE7releaseEv, i64 2}
!153 = !{ptr @_ZN11xalanc_1_1020AttributeVectorEntry6createEPKtS2_S2_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EED2Ev, i64 2}
!154 = !{ptr @_ZN11xalanc_1_1020AttributeVectorEntry5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5clearEv, i64 225276}
!155 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 311655952}
!156 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, i64 157736530}
!157 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv, i64 155828045}
!158 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 240731456}
!159 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, i64 133170775}
!160 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE, i64 30012996397}
!161 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, i64 22657270}
!162 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 20748786}
!163 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 20748766}
!164 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246159}
!165 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 20748647}
!166 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 20748786}
!167 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614809}
!168 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, i64 1908484}
!169 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_, i64 1}
!170 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 300372}
!171 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_, i64 150186}
!172 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, i64 2}
!173 = !{ptr @_ZN11xalanc_1_1020AttributeVectorEntryC2EPKtS2_S2_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_106lengthEPKt, i64 6}
!174 = !{ptr @_ZN11xalanc_1_1020AttributeVectorEntryC2EPKtS2_S2_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE, i64 6}
!175 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE7releaseEv, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_, i64 2}
!176 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EED2Ev, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData10deallocateEv, i64 2}
!177 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1020AttributeVectorEntryEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_, i64 2}
!178 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData10invariantsEv, i64 2}
!179 = !{ptr @_ZN11xalanc_1_1020AttributeVectorEntryD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 6}
!180 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData10invariantsEv, i64 4}
!181 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData10deallocateEv, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData10invariantsEv, i64 2}
!182 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData10deallocateEv, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb0EE17MemMgrAutoPtrData12isInitilizedEv, i64 2}
!183 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5clearEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 695332}
!184 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm, i64 347665}
!185 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, i64 64729253}
!186 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 2689195952}
!187 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 1344597976}
!188 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 8}
!189 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 4}
!190 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 4}
!191 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 4}
!192 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm, i64 1}
!193 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!194 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 1}
!195 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 1}
!196 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 1}
!197 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, i64 1}
!198 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 1}
!199 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!200 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm, i64 3}
!201 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 4}
!202 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!203 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!204 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!205 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm, i64 1}
!206 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 64147281}
!207 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_, i64 2}
!208 = !{ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_20AttributeVectorEntryEEclEPKS1_, ptr @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_20AttributeVectorEntryEEENS_19XalanDestroyFunctorIT_EEPKS3_, i64 2}
!209 = !{ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_20AttributeVectorEntryEEclEPKS1_, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_20AttributeVectorEntryEEclEPKS1_RN11xercesc_2_713MemoryManagerE, i64 2}
!210 = !{ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_20AttributeVectorEntryEEclEPKS1_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_20AttributeVectorEntryEEclEPS1_RN11xercesc_2_713MemoryManagerE, i64 2}
!211 = !{ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_20AttributeVectorEntryEEclEPS1_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_20AttributeVectorEntryEEclERS1_, i64 2}
!212 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 150188}
!213 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 75093}
!214 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_20AttributeVectorEntryEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE, i64 75093}
!215 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 1}
!216 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 1}
!217 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 1}
!218 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!219 = !{ptr @_ZN9__gnu_cxx5__ops11__pred_iterIN11xalanc_1_1018NameCompareFunctorEEENS0_10_Iter_predIT_EES5_, ptr @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEC2ES3_, i64 75094}
!220 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 82509}
!221 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_, ptr @_ZSt8distanceIPKPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E15difference_typeES6_S6_, i64 1126156}
!222 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, i64 75094}
!223 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 3}
!224 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 75094}
!225 = !{ptr @_ZSt8distanceIPKPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E15difference_typeES6_S6_, ptr @_ZSt19__iterator_categoryIPKPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E17iterator_categoryERKS6_, i64 1126156}
!226 = !{ptr @_ZSt8distanceIPKPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E15difference_typeES6_S6_, ptr @_ZSt10__distanceIPKPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag, i64 1126156}
!227 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, i64 75095}
!228 = !{ptr @_ZSt9__find_ifIPPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_, ptr @_ZSt19__iterator_categoryIPPN11xalanc_1_1020AttributeVectorEntryEENSt15iterator_traitsIT_E17iterator_categoryERKS5_, i64 75094}
!229 = !{ptr @_ZSt9__find_ifIPPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_, ptr @_ZSt9__find_ifIPPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_St26random_access_iterator_tag, i64 75094}
!230 = !{ptr @_ZSt9__find_ifIPPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_St26random_access_iterator_tag, ptr @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPPNS2_20AttributeVectorEntryEEEbT_, i64 8}
!231 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_baseIPKtET_S2_, i64 3901146}
!232 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_baseIPtET_S1_, i64 1950573}
!233 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!234 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_, i64 1950573}
!235 = !{ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!236 = !{ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_, i64 1950573}
!237 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 304}
!238 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm, i64 1}
!239 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm, i64 150}
!240 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 150}
!241 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE, i64 8205}
!242 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 141227382}
!243 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7reserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 64551564}
!244 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 129103172}
!245 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 64551586}
!246 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 64551586}
!247 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 64551586}
!248 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm, i64 19}
!249 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 19}
!250 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 19}
!251 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 19}
!252 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 19}
!253 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 19}
!254 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 19}
!255 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 19}
!256 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm, i64 64551584}
!257 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 64551608}
!258 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 82509}
!259 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 82509}
!260 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1020AttributeVectorEntryEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_, i64 75094}
!261 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData10invariantsEv, i64 75094}
!262 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData10deallocateEv, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData10invariantsEv, i64 75094}
!263 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData10deallocateEv, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData12isInitilizedEv, i64 75094}
!264 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20AttributeVectorEntryELb1EE17MemMgrAutoPtrData10invariantsEv, i64 150188}
!265 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 185895030}
!266 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 156073599}
!267 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, i64 133170778}
!268 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 22}
!269 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 133170778}
!270 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 248301304}
!271 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 124150651}
!272 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE, i64 124150651}
!273 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 1}
!274 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 1}
!275 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 1}
!276 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 1}
!277 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 185895030}
!278 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 185895030}
!279 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!280 = !{!"function_entry_count", i64 5}
!281 = !{!282, !282, i64 0}
!282 = !{!"vtable pointer", !283, i64 0}
!283 = !{!"Simple C++ TBAA"}
!284 = !{!"function_entry_count", i64 9}
!285 = !{!"function_entry_count", i64 19}
!286 = !{!287, !288, i64 0}
!287 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE", !288, i64 0, !290, i64 8, !290, i64 16, !288, i64 24}
!288 = !{!"any pointer", !289, i64 0}
!289 = !{!"omnipotent char", !283, i64 0}
!290 = !{!"long", !289, i64 0}
!291 = !{!287, !290, i64 8}
!292 = !{!287, !290, i64 16}
!293 = !{!"branch_weights", i32 20, i32 1}
!294 = !{!287, !288, i64 24}
!295 = !{!"function_entry_count", i64 23}
!296 = !{!"branch_weights", i32 20, i32 5}
!297 = !{!"function_entry_count", i64 8}
!298 = !{!"function_entry_count", i64 3}
!299 = !{!"branch_weights", i32 1, i32 4}
!300 = !{!"branch_weights", i32 4, i32 1}
!301 = !{!288, !288, i64 0}
!302 = distinct !{!302, !303}
!303 = !{!"llvm.loop.mustprogress"}
!304 = !{!"function_entry_count", i64 0}
!305 = distinct !{!305, !303}
!306 = !{!"branch_weights", i32 6, i32 3}
!307 = !{!"branch_weights", i32 3, i32 0}
!308 = distinct !{!308, !303}
!309 = !{!"function_entry_count", i64 1201262}
!310 = !{!"function_entry_count", i64 2477606}
!311 = !{!"function_entry_count", i64 75107}
!312 = !{!"function_entry_count", i64 75099}
!313 = !{!"function_entry_count", i64 2}
!314 = !{!"branch_weights", i32 3, i32 1}
!315 = !{!316, !288, i64 0}
!316 = !{!"_ZTSN11xalanc_1_1021CollectionDeleteGuardINS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEENS_13DeleteFunctorIS2_EEEE", !288, i64 0}
!317 = !{!"function_entry_count", i64 75094}
!318 = !{!"branch_weights", i32 3, i32 75093}
!319 = !{!"function_entry_count", i64 227375739}
!320 = !{!321, !288, i64 24}
!321 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !288, i64 0, !290, i64 8, !290, i64 16, !288, i64 24}
!322 = !{!"function_entry_count", i64 4}
!323 = !{!290, !290, i64 0}
!324 = !{!"branch_weights", i32 75095, i32 1}
!325 = !{!"function_entry_count", i64 1048814}
!326 = !{!"function_entry_count", i64 1123908}
!327 = !{!"function_entry_count", i64 75095}
!328 = !{!"function_entry_count", i64 150189}
!329 = !{!330, !288, i64 0}
!330 = !{!"_ZTSN11xalanc_1_1018NameCompareFunctorE", !288, i64 0}
!331 = !{!"function_entry_count", i64 1126156}
!332 = !{!"branch_weights", i32 1051063, i32 75095}
!333 = !{!"branch_weights", i32 1, i32 75094}
!334 = !{!"branch_weights", i32 75094, i32 1}
!335 = distinct !{!335, !303}
!336 = distinct !{!336, !303}
!337 = distinct !{!337, !303}
!338 = distinct !{!338, !303}
!339 = !{!"function_entry_count", i64 10}
!340 = !{!"branch_weights", i32 6, i32 6}
!341 = !{!"function_entry_count", i64 225276}
!342 = !{!343, !343, i64 0}
!343 = !{!"short", !289, i64 0}
!344 = !{!"branch_weights", i32 225277, i32 1839433}
!345 = distinct !{!345, !303}
!346 = !{!"function_entry_count", i64 155828047}
!347 = !{!321, !290, i64 16}
!348 = !{!"function_entry_count", i64 12}
!349 = !{!321, !288, i64 0}
!350 = !{!"function_entry_count", i64 85300747}
!351 = !{!"function_entry_count", i64 128698679}
!352 = !{!"branch_weights", i32 43398290, i32 85300391}
!353 = !{!"function_entry_count", i64 1950573}
!354 = !{!"function_entry_count", i64 1}
!355 = !{!"function_entry_count", i64 150188}
!356 = !{!357, !288, i64 8}
!357 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1020AttributeVectorEntryEE", !288, i64 0, !288, i64 8}
!358 = !{!"function_entry_count", i64 75092}
!359 = !{!"function_entry_count", i64 155828046}
!360 = !{!"branch_weights", i32 1, i32 155828047}
!361 = !{!"branch_weights", i32 133170778, i32 22657270}
!362 = !{!"branch_weights", i32 1, i32 19024396}
!363 = !{!321, !290, i64 8}
!364 = !{!"branch_weights", i32 19024396, i32 -26420601}
!365 = distinct !{!365, !303}
!366 = !{!"branch_weights", i32 20748787, i32 1908484}
!367 = !{!"branch_weights", i32 1, i32 1908484}
!368 = !{!"branch_weights", i32 1, i32 1908483}
!369 = !{!"branch_weights", i32 1908483, i32 49797853}
!370 = distinct !{!370, !303}
!371 = !{!"branch_weights", i32 1908483, i32 1}
!372 = distinct !{!372, !303}
!373 = distinct !{!373, !303}
!374 = !{!"function_entry_count", i64 150186}
!375 = !{!"function_entry_count", i64 21552397}
!376 = !{!"branch_weights", i32 21552398, i32 128560690}
!377 = distinct !{!377, !303}
!378 = !{!"function_entry_count", i64 75096}
!379 = !{!357, !288, i64 0}
!380 = !{!"branch_weights", i32 1, i32 3}
!381 = !{!"function_entry_count", i64 347666}
!382 = !{!"branch_weights", i32 1, i32 347667}
!383 = !{!"function_entry_count", i64 6521798493}
!384 = !{!"function_entry_count", i64 348020}
!385 = !{!"branch_weights", i32 64381419, i32 348021}
!386 = distinct !{!386, !303}
!387 = !{!"function_entry_count", i64 1344597976}
!388 = !{!"function_entry_count", i64 30137156660}
!389 = !{!"function_entry_count", i64 9082434}
!390 = !{!"branch_weights", i32 5, i32 1}
!391 = !{!"branch_weights", i32 1, i32 5}
!392 = !{!"function_entry_count", i64 85300390}
!393 = !{!"branch_weights", i32 1, i32 12185770}
!394 = !{!"branch_weights", i32 12185770, i32 -193930396}
!395 = distinct !{!395, !303}
!396 = !{!"function_entry_count", i64 568333389}
!397 = !{!"function_entry_count", i64 825654971}
!398 = !{!"function_entry_count", i64 64147281}
!399 = !{!"branch_weights", i32 64147282, i32 1}
!400 = !{!"branch_weights", i32 2, i32 3}
!401 = distinct !{!401, !303}
!402 = !{!"function_entry_count", i64 2627794}
!403 = !{!404, !288, i64 0}
!404 = !{!"_ZTSN11xalanc_1_1013DeleteFunctorINS_20AttributeVectorEntryEEE", !288, i64 0}
!405 = distinct !{!405, !303}
!406 = !{!"function_entry_count", i64 82509}
!407 = !{i64 0, i64 8, !301}
!408 = !{!"branch_weights", i32 1, i32 75095}
!409 = distinct !{!409, !303}
!410 = !{!"branch_weights", i32 0, i32 1}
!411 = distinct !{!411, !303}
!412 = !{!"branch_weights", i32 75096, i32 1, i32 1, i32 1}
!413 = !{!"function_entry_count", i64 3901146}
!414 = !{!"function_entry_count", i64 30109074}
!415 = !{!"function_entry_count", i64 86426076}
!416 = !{!"branch_weights", i32 28199083, i32 1909993}
!417 = !{!418, !343, i64 0}
!418 = !{!"_ZTSN11xalanc_1_1033ConstructValueWithNoMemoryManagerItEE", !343, i64 0}
!419 = !{!"function_entry_count", i64 152}
!420 = !{!"branch_weights", i32 1, i32 153}
!421 = !{!"branch_weights", i32 153, i32 1}
!422 = !{!"branch_weights", i32 1, i32 152}
!423 = !{!"branch_weights", i32 152, i32 8215}
!424 = distinct !{!424, !303}
!425 = !{!"function_entry_count", i64 70613691}
!426 = !{!"branch_weights", i32 64551566, i32 6062127}
!427 = !{!"function_entry_count", i64 64551586}
!428 = !{!"function_entry_count", i64 64551608}
!429 = !{!"branch_weights", i32 64551591, i32 19}
!430 = !{!"branch_weights", i32 5, i32 64551587}
!431 = !{!"function_entry_count", i64 18}
!432 = !{!"function_entry_count", i64 300376}
!433 = !{!"function_entry_count", i64 185895030}
!434 = !{!"function_entry_count", i64 156073599}
!435 = !{!"function_entry_count", i64 133170778}
!436 = !{!"branch_weights", i32 22, i32 133170758}
!437 = !{!"function_entry_count", i64 124150652}
!438 = !{!"branch_weights", i32 124150653, i32 1}
!439 = !{!"function_entry_count", i64 56317002}
!440 = distinct !{!440, !303}
