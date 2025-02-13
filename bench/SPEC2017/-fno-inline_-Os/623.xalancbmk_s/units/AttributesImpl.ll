; ModuleID = 'AttributesImpl.cpp'
source_filename = "AttributesImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::AttributesImpl" = type { %"class.xercesc_2_7::Attributes", %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanVector" }
%"class.xercesc_2_7::Attributes" = type { ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::AttributeVectorEntryExtended" = type { %"class.xalanc_1_10::AttributeVectorEntry", %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanVector.0" }
%"class.xalanc_1_10::AttributeVectorEntry" = type { ptr, %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanVector.0" }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::URIAndLocalNameCompareFunctor" = type { ptr, ptr }
%"struct.xalanc_1_10::NameCompareFunctor" = type { ptr }
%"struct.xalanc_1_10::DeleteFunctor" = type { ptr }
%"class.xalanc_1_10::CollectionDeleteGuard" = type { ptr }
%"struct.xalanc_1_10::XalanDestroyFunctor" = type { i8 }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::AttributeVectorEntryExtended>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::AttributeVectorEntryExtended>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }
%"struct.__gnu_cxx::__ops::_Iter_pred" = type { %"struct.xalanc_1_10::URIAndLocalNameCompareFunctor" }
%"struct.__gnu_cxx::__ops::_Iter_pred.1" = type { %"struct.xalanc_1_10::NameCompareFunctor" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr.2" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::AttributeVectorEntryExtended, false>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::AttributeVectorEntryExtended, false>::MemMgrAutoPtrData" = type { %"struct.std::pair" }

$_ZN11xercesc_2_710AttributesC2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xercesc_2_710AttributesD2Ev = comdat any

$_ZN11xercesc_2_710AttributesD0Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZSt8for_eachIPPN11xalanc_1_1028AttributeVectorEntryExtendedENS0_13DeleteFunctorIS1_EEET0_T_S7_S6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1013DeleteFunctorINS_28AttributeVectorEntryExtendedEEC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1013DeleteFunctorINS_28AttributeVectorEntryExtendedEEclEPKS1_ = comdat any

$_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_28AttributeVectorEntryExtendedEEENS_19XalanDestroyFunctorIT_EEPKS3_ = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_28AttributeVectorEntryExtendedEEclEPKS1_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_28AttributeVectorEntryExtendedEEclEPS1_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_28AttributeVectorEntryExtendedEEclERS1_ = comdat any

$_ZN11xalanc_1_1014AttributesImpl16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm = comdat any

$_ZN11xalanc_1_1021CollectionDeleteGuardINS_11XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS3_EEEENS_13DeleteFunctorIS2_EEEC2ERS6_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_ = comdat any

$_ZN11xalanc_1_1021CollectionDeleteGuardINS_11XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS3_EEEENS_13DeleteFunctorIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_28AttributeVectorEntryExtendedEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZSt4copyIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEPS2_ET0_T_S7_S6_ = comdat any

$_ZSt13copy_backwardIPPN11xalanc_1_1028AttributeVectorEntryExtendedES3_ET0_T_S5_S4_ = comdat any

$_ZSt8distanceIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEENSt15iterator_traitsIT_E15difference_typeES6_S6_ = comdat any

$_ZSt10__distanceIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEENSt15iterator_traitsIT_E17iterator_categoryERKS6_ = comdat any

$_ZSt13__copy_move_aILb0EPKPN11xalanc_1_1028AttributeVectorEntryExtendedEPS2_ET1_T0_S7_S6_ = comdat any

$_ZSt12__miter_baseIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEET_S5_ = comdat any

$_ZSt12__niter_wrapIPPN11xalanc_1_1028AttributeVectorEntryExtendedEET_RKS4_S4_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_1028AttributeVectorEntryExtendedEPS2_ET1_T0_S7_S6_ = comdat any

$_ZSt12__niter_baseIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEET_S5_ = comdat any

$_ZSt12__niter_baseIPPN11xalanc_1_1028AttributeVectorEntryExtendedEET_S4_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_1028AttributeVectorEntryExtendedEPS2_ET1_T0_S7_S6_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_1028AttributeVectorEntryExtendedEEEPT_PKS6_S9_S7_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_1028AttributeVectorEntryExtendedES3_ET1_T0_S5_S4_ = comdat any

$_ZSt12__miter_baseIPPN11xalanc_1_1028AttributeVectorEntryExtendedEET_S4_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_1028AttributeVectorEntryExtendedES3_ET1_T0_S5_S4_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_1028AttributeVectorEntryExtendedES3_ET1_T0_S5_S4_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1028AttributeVectorEntryExtendedEEEPT_PKS6_S9_S7_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1014AttributesImpl7reserveEj = comdat any

$_ZN11xalanc_1_1014AttributesImpl4swapERS0_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEixEm = comdat any

$_ZSt7find_ifIPKPN11xalanc_1_1028AttributeVectorEntryExtendedENS0_29URIAndLocalNameCompareFunctorEET_S6_S6_T0_ = comdat any

$_ZN11xalanc_1_1029URIAndLocalNameCompareFunctorC2EPKtS2_ = comdat any

$_ZSt9__find_ifIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEN9__gnu_cxx5__ops10_Iter_predINS0_29URIAndLocalNameCompareFunctorEEEET_SA_SA_T0_ = comdat any

$_ZN9__gnu_cxx5__ops11__pred_iterIN11xalanc_1_1029URIAndLocalNameCompareFunctorEEENS0_10_Iter_predIT_EES5_ = comdat any

$_ZSt9__find_ifIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEN9__gnu_cxx5__ops10_Iter_predINS0_29URIAndLocalNameCompareFunctorEEEET_SA_SA_T0_St26random_access_iterator_tag = comdat any

$_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1029URIAndLocalNameCompareFunctorEEclIPKPNS2_28AttributeVectorEntryExtendedEEEbT_ = comdat any

$_ZNK11xalanc_1_1029URIAndLocalNameCompareFunctorclEPKNS_28AttributeVectorEntryExtendedE = comdat any

$_ZN11xalanc_1_106equalsEPKtS1_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_106lengthEPKt = comdat any

$_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1029URIAndLocalNameCompareFunctorEEC2ES3_ = comdat any

$_ZSt7find_ifIPKPN11xalanc_1_1028AttributeVectorEntryExtendedENS0_18NameCompareFunctorEET_S6_S6_T0_ = comdat any

$_ZN11xalanc_1_1018NameCompareFunctorC2EPKt = comdat any

$_ZSt9__find_ifIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_SA_SA_T0_ = comdat any

$_ZN9__gnu_cxx5__ops11__pred_iterIN11xalanc_1_1018NameCompareFunctorEEENS0_10_Iter_predIT_EES5_ = comdat any

$_ZSt9__find_ifIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_SA_SA_T0_St26random_access_iterator_tag = comdat any

$_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPKPNS2_28AttributeVectorEntryExtendedEEEbT_ = comdat any

$_ZNK11xalanc_1_1018NameCompareFunctorclEPKNS_28AttributeVectorEntryExtendedE = comdat any

$_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEC2ES3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb1EE3getEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb1EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb1EED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1028AttributeVectorEntryExtendedEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb1EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb1EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb1EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb1EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv = comdat any

$_ZN11xalanc_1_1028AttributeVectorEntryExtended6createEPKtS2_S2_S2_S2_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv = comdat any

$_ZN11xalanc_1_1028AttributeVectorEntryExtended5clearEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1020AttributeVectorEntry8endArrayEPKt = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb0EE3getEv = comdat any

$_ZN11xalanc_1_1028AttributeVectorEntryExtendedC2EPKtS2_S2_S2_S2_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb0EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb0EED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb0EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1020AttributeVectorEntryC2EPKtS2_S2_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZN11xalanc_1_1028AttributeVectorEntryExtendedD2Ev = comdat any

$_ZN11xalanc_1_1028AttributeVectorEntryExtendedD0Ev = comdat any

$_ZN11xalanc_1_1020AttributeVectorEntryD2Ev = comdat any

$_ZN11xalanc_1_1020AttributeVectorEntryD0Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb0EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb0EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZN11xalanc_1_1020AttributeVectorEntry5clearEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5clearEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZSt4copyIPKtPtET0_T_S4_S3_ = comdat any

$_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_ = comdat any

$_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZSt12__miter_baseIPKtET_S2_ = comdat any

$_ZSt12__niter_wrapIPtET_RKS1_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPKtET_S2_ = comdat any

$_ZSt12__niter_baseIPtET_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPtET_S1_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_ = comdat any

$_ZSt7find_ifIPPN11xalanc_1_1028AttributeVectorEntryExtendedENS0_18NameCompareFunctorEET_S5_S5_T0_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_ = comdat any

$_ZSt9__find_ifIPPN11xalanc_1_1028AttributeVectorEntryExtendedEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_ = comdat any

$_ZSt9__find_ifIPPN11xalanc_1_1028AttributeVectorEntryExtendedEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPPN11xalanc_1_1028AttributeVectorEntryExtendedEENSt15iterator_traitsIT_E17iterator_categoryERKS5_ = comdat any

$_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPPNS2_28AttributeVectorEntryExtendedEEEbT_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_ = comdat any

$_ZSt4copyIPPN11xalanc_1_1028AttributeVectorEntryExtendedES3_ET0_T_S5_S4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE11shrinkCountEm = comdat any

$_ZSt13__copy_move_aILb0EPPN11xalanc_1_1028AttributeVectorEntryExtendedES3_ET1_T0_S5_S4_ = comdat any

$_ZSt14__copy_move_a1ILb0EPPN11xalanc_1_1028AttributeVectorEntryExtendedES3_ET1_T0_S5_S4_ = comdat any

$_ZSt14__copy_move_a2ILb0EPPN11xalanc_1_1028AttributeVectorEntryExtendedES3_ET1_T0_S5_S4_ = comdat any

$_ZTSN11xercesc_2_710AttributesE = comdat any

$_ZTIN11xercesc_2_710AttributesE = comdat any

$_ZTVN11xercesc_2_710AttributesE = comdat any

$_ZTVN11xalanc_1_1028AttributeVectorEntryExtendedE = comdat any

$_ZTSN11xalanc_1_1028AttributeVectorEntryExtendedE = comdat any

$_ZTSN11xalanc_1_1020AttributeVectorEntryE = comdat any

$_ZTIN11xalanc_1_1020AttributeVectorEntryE = comdat any

$_ZTIN11xalanc_1_1028AttributeVectorEntryExtendedE = comdat any

$_ZTVN11xalanc_1_1020AttributeVectorEntryE = comdat any

@_ZTVN11xalanc_1_1014AttributesImplE = dso_local unnamed_addr constant { [18 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1014AttributesImplE, ptr @_ZN11xalanc_1_1014AttributesImplD2Ev, ptr @_ZN11xalanc_1_1014AttributesImplD0Ev, ptr @_ZNK11xalanc_1_1014AttributesImpl9getLengthEv, ptr @_ZNK11xalanc_1_1014AttributesImpl6getURIEj, ptr @_ZNK11xalanc_1_1014AttributesImpl12getLocalNameEj, ptr @_ZNK11xalanc_1_1014AttributesImpl8getQNameEj, ptr @_ZNK11xalanc_1_1014AttributesImpl7getTypeEj, ptr @_ZNK11xalanc_1_1014AttributesImpl8getValueEj, ptr @_ZNK11xalanc_1_1014AttributesImpl8getIndexEPKtS2_, ptr @_ZNK11xalanc_1_1014AttributesImpl8getIndexEPKt, ptr @_ZNK11xalanc_1_1014AttributesImpl7getTypeEPKtS2_, ptr @_ZNK11xalanc_1_1014AttributesImpl7getTypeEPKt, ptr @_ZNK11xalanc_1_1014AttributesImpl8getValueEPKtS2_, ptr @_ZNK11xalanc_1_1014AttributesImpl8getValueEPKt, ptr @_ZN11xalanc_1_1014AttributesImpl5clearEv, ptr @_ZN11xalanc_1_1014AttributesImpl15removeAttributeEPKt] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1014AttributesImplE = dso_local constant [32 x i8] c"N11xalanc_1_1014AttributesImplE\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_710AttributesE = linkonce_odr dso_local constant [28 x i8] c"N11xercesc_2_710AttributesE\00", comdat, align 1
@_ZTIN11xercesc_2_710AttributesE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_710AttributesE }, comdat, align 8
@_ZTIN11xalanc_1_1014AttributesImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1014AttributesImplE, ptr @_ZTIN11xercesc_2_710AttributesE }, align 8
@_ZTVN11xercesc_2_710AttributesE = linkonce_odr dso_local unnamed_addr constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_710AttributesE, ptr @_ZN11xercesc_2_710AttributesD2Ev, ptr @_ZN11xercesc_2_710AttributesD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xalanc_1_1028AttributeVectorEntryExtendedE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1028AttributeVectorEntryExtendedE, ptr @_ZN11xalanc_1_1028AttributeVectorEntryExtendedD2Ev, ptr @_ZN11xalanc_1_1028AttributeVectorEntryExtendedD0Ev] }, comdat, align 8
@_ZTSN11xalanc_1_1028AttributeVectorEntryExtendedE = linkonce_odr dso_local constant [46 x i8] c"N11xalanc_1_1028AttributeVectorEntryExtendedE\00", comdat, align 1
@_ZTSN11xalanc_1_1020AttributeVectorEntryE = linkonce_odr dso_local constant [38 x i8] c"N11xalanc_1_1020AttributeVectorEntryE\00", comdat, align 1
@_ZTIN11xalanc_1_1020AttributeVectorEntryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1020AttributeVectorEntryE }, comdat, align 8
@_ZTIN11xalanc_1_1028AttributeVectorEntryExtendedE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1028AttributeVectorEntryExtendedE, ptr @_ZTIN11xalanc_1_1020AttributeVectorEntryE }, comdat, align 8
@_ZTVN11xalanc_1_1020AttributeVectorEntryE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1020AttributeVectorEntryE, ptr @_ZN11xalanc_1_1020AttributeVectorEntryD2Ev, ptr @_ZN11xalanc_1_1020AttributeVectorEntryD0Ev] }, comdat, align 8

@_ZN11xalanc_1_1014AttributesImplC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1014AttributesImplC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1014AttributesImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1014AttributesImplD2Ev
@_ZN11xalanc_1_1014AttributesImplC1ERKS0_RN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1014AttributesImplC2ERKS0_RN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1014AttributesImplC1ERKN11xercesc_2_710AttributesERNS1_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1014AttributesImplC2ERKN11xercesc_2_710AttributesERNS1_13MemoryManagerE

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1014AttributesImplD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1014AttributesImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #11
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1014AttributesImpl9getLengthEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 !prof !123 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::AttributesImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1014AttributesImpl6getURIEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) unnamed_addr #1 align 2 !prof !123 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributesImpl", ptr %0, i64 0, i32 1
  %4 = zext i32 %1 to i64
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4) #13
  %6 = load ptr, ptr %5, align 8, !tbaa !124
  %7 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntryExtended", ptr %6, i64 0, i32 1
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #13
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1014AttributesImpl12getLocalNameEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) unnamed_addr #1 align 2 !prof !123 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributesImpl", ptr %0, i64 0, i32 1
  %4 = zext i32 %1 to i64
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4) #13
  %6 = load ptr, ptr %5, align 8, !tbaa !124
  %7 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntryExtended", ptr %6, i64 0, i32 2
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #13
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1014AttributesImpl8getQNameEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) unnamed_addr #1 align 2 !prof !123 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributesImpl", ptr %0, i64 0, i32 1
  %4 = zext i32 %1 to i64
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4) #13
  %6 = load ptr, ptr %5, align 8, !tbaa !124
  %7 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %6, i64 0, i32 1
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #13
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1014AttributesImpl7getTypeEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) unnamed_addr #1 align 2 !prof !123 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributesImpl", ptr %0, i64 0, i32 1
  %4 = zext i32 %1 to i64
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4) #13
  %6 = load ptr, ptr %5, align 8, !tbaa !124
  %7 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %6, i64 0, i32 3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #13
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1014AttributesImpl8getValueEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) unnamed_addr #1 align 2 !prof !123 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributesImpl", ptr %0, i64 0, i32 1
  %4 = zext i32 %1 to i64
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4) #13
  %6 = load ptr, ptr %5, align 8, !tbaa !124
  %7 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %6, i64 0, i32 2
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #13
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1014AttributesImpl8getIndexEPKtS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !123 {
  %4 = alloca %"struct.xalanc_1_10::URIAndLocalNameCompareFunctor", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::AttributesImpl", ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  %7 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @_ZN11xalanc_1_1029URIAndLocalNameCompareFunctorC2EPKtS2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %1, ptr noundef %2) #13
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds { ptr, ptr }, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = call noundef ptr @_ZSt7find_ifIPKPN11xalanc_1_1028AttributeVectorEntryExtendedENS0_29URIAndLocalNameCompareFunctorEET_S6_S6_T0_(ptr noundef %6, ptr noundef %7, ptr %8, ptr %10) #13
  %12 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  %16 = ptrtoint ptr %11 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = lshr exact i64 %18, 3
  %20 = trunc i64 %19 to i32
  br label %21

21:                                               ; preds = %3, %14
  %22 = phi i32 [ %20, %14 ], [ -1, %3 ]
  ret i32 %22
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1014AttributesImpl8getIndexEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !123 {
  %3 = alloca %"struct.xalanc_1_10::NameCompareFunctor", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributesImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  call void @_ZN11xalanc_1_1018NameCompareFunctorC2EPKt(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #13
  %7 = load ptr, ptr %3, align 8
  %8 = call noundef ptr @_ZSt7find_ifIPKPN11xalanc_1_1028AttributeVectorEntryExtendedENS0_18NameCompareFunctorEET_S6_S6_T0_(ptr noundef %5, ptr noundef %6, ptr %7) #13
  %9 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  %13 = ptrtoint ptr %8 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = lshr exact i64 %15, 3
  %17 = trunc i64 %16 to i32
  br label %18

18:                                               ; preds = %2, %11
  %19 = phi i32 [ %17, %11 ], [ -1, %2 ]
  ret i32 %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1014AttributesImpl7getTypeEPKtS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !123 {
  %4 = load ptr, ptr %0, align 8, !tbaa !128
  %5 = getelementptr inbounds ptr, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) #13
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !128
  %11 = getelementptr inbounds ptr, ptr %10, i64 6
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %7) #13
  br label %14

14:                                               ; preds = %3, %9
  %15 = phi ptr [ %13, %9 ], [ null, %3 ]
  ret ptr %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1014AttributesImpl7getTypeEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !123 {
  %3 = load ptr, ptr %0, align 8, !tbaa !128
  %4 = getelementptr inbounds ptr, ptr %3, i64 9
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) #13
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !128
  %10 = getelementptr inbounds ptr, ptr %9, i64 6
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %6) #13
  br label %13

13:                                               ; preds = %2, %8
  %14 = phi ptr [ %12, %8 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1014AttributesImpl8getValueEPKtS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !123 {
  %4 = load ptr, ptr %0, align 8, !tbaa !128
  %5 = getelementptr inbounds ptr, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) #13
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !128
  %11 = getelementptr inbounds ptr, ptr %10, i64 7
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %7) #13
  br label %14

14:                                               ; preds = %3, %9
  %15 = phi ptr [ %13, %9 ], [ null, %3 ]
  ret ptr %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1014AttributesImpl8getValueEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !123 {
  %3 = load ptr, ptr %0, align 8, !tbaa !128
  %4 = getelementptr inbounds ptr, ptr %3, i64 9
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) #13
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !128
  %10 = getelementptr inbounds ptr, ptr %9, i64 7
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %6) #13
  br label %13

13:                                               ; preds = %2, %8
  %14 = phi ptr [ %12, %8 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014AttributesImpl5clearEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !123 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::AttributesImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributesImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3, ptr noundef %5, ptr noundef %6) #13
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1014AttributesImpl15removeAttributeEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !123 {
  %3 = alloca %"struct.xalanc_1_10::NameCompareFunctor", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributesImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  call void @_ZN11xalanc_1_1018NameCompareFunctorC2EPKt(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #13
  %7 = load ptr, ptr %3, align 8
  %8 = call noundef ptr @_ZSt7find_ifIPPN11xalanc_1_1028AttributeVectorEntryExtendedENS0_18NameCompareFunctorEET_S5_S5_T0_(ptr noundef %5, ptr noundef %6, ptr %7) #13
  %9 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  %10 = icmp ne ptr %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xalanc_1_10::AttributesImpl", ptr %0, i64 0, i32 2
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %8) #13
  %13 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %8) #13
  br label %14

14:                                               ; preds = %11, %2
  ret i1 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014AttributesImplC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  tail call void @_ZN11xercesc_2_710AttributesC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  store ptr getelementptr inbounds ({ [18 x ptr] }, ptr @_ZTVN11xalanc_1_1014AttributesImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !128
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributesImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) #13
          to label %4 unwind label %7

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::AttributesImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) #13
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi { ptr, i32 } [ %10, %9 ], [ %8, %7 ]
  tail call void @_ZN11xercesc_2_710AttributesD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710AttributesC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !130 {
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVN11xercesc_2_710AttributesE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !128
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 !prof !123 {
  store ptr %1, ptr %0, align 8, !tbaa !131
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !134
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !135
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #13
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !136
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !135
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %6, ptr noundef %7) #13
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !136
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #13
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
define linkonce_odr dso_local void @_ZN11xercesc_2_710AttributesD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !130 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710AttributesD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #14
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !123 {
  %3 = shl i64 %1, 3
  %4 = load ptr, ptr %0, align 8, !tbaa !131
  %5 = load ptr, ptr %4, align 8, !tbaa !128
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #13
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !123 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !123 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !llvm.loop !137

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !123 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !136
  ret ptr %3
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !123 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !123 {
  %3 = load ptr, ptr %0, align 8, !tbaa !131
  %4 = load ptr, ptr %3, align 8, !tbaa !128
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !123 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !123 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !136
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !134
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1014AttributesImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  store ptr getelementptr inbounds ({ [18 x ptr] }, ptr @_ZTVN11xalanc_1_1014AttributesImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !128
  invoke void @_ZN11xalanc_1_1014AttributesImpl5clearEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #13
          to label %2 unwind label %6

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributesImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1014AttributesImpl13deleteEntriesERNS_11XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS3_EEEE(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
          to label %4 unwind label %6

4:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  %5 = getelementptr inbounds %"class.xalanc_1_10::AttributesImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  tail call void @_ZN11xercesc_2_710AttributesD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  ret void

6:                                                ; preds = %2, %1
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014AttributesImpl13deleteEntriesERNS_11XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS3_EEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 align 2 !prof !123 {
  %2 = alloca %"struct.xalanc_1_10::DeleteFunctor", align 8
  %3 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  call void @_ZN11xalanc_1_1013DeleteFunctorINS_28AttributeVectorEntryExtendedEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  %6 = load ptr, ptr %2, align 8
  %7 = call ptr @_ZSt8for_eachIPPN11xalanc_1_1028AttributeVectorEntryExtendedENS0_13DeleteFunctorIS1_EEET0_T_S7_S6_(ptr noundef %3, ptr noundef %4, ptr %6) #13
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014AttributesImplC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  tail call void @_ZN11xercesc_2_710AttributesC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  store ptr getelementptr inbounds ({ [18 x ptr] }, ptr @_ZTVN11xalanc_1_1014AttributesImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !128
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributesImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0) #13
          to label %5 unwind label %10

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xalanc_1_10::AttributesImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0) #13
          to label %7 unwind label %12

7:                                                ; preds = %5
  %8 = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN11xalanc_1_1014AttributesImplaSERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) #13
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #11
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #11
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %11, %10 ]
  tail call void @_ZN11xercesc_2_710AttributesD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN11xalanc_1_1014AttributesImplaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = alloca %"class.xalanc_1_10::CollectionDeleteGuard", align 8
  %5 = alloca ptr, align 8
  %6 = icmp eq ptr %0, %1
  br i1 %6, label %59, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014AttributesImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 0) #13
  %9 = load ptr, ptr %1, align 8, !tbaa !128
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(72) %1) #13
          to label %13 unwind label %25

13:                                               ; preds = %7
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %56, label %15

15:                                               ; preds = %13
  %16 = zext i32 %12 to i64
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %16) #13
          to label %17 unwind label %25

17:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @_ZN11xalanc_1_1021CollectionDeleteGuardINS_11XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS3_EEEENS_13DeleteFunctorIS2_EEEC2ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  %18 = getelementptr inbounds %"class.xalanc_1_10::AttributesImpl", ptr %1, i64 0, i32 1
  %19 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %18) #13
          to label %20 unwind label %27

20:                                               ; preds = %17
  %21 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %18) #13
  %22 = icmp eq ptr %21, %19
  br i1 %22, label %23, label %29

23:                                               ; preds = %49, %20
  %24 = getelementptr inbounds %"class.xalanc_1_10::AttributesImpl", ptr %0, i64 0, i32 1
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZN11xalanc_1_1021CollectionDeleteGuardINS_11XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS3_EEEENS_13DeleteFunctorIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %56

25:                                               ; preds = %15, %7
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %57

27:                                               ; preds = %17
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %54

29:                                               ; preds = %20, %49
  %30 = phi ptr [ %50, %49 ], [ %21, %20 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %32 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %31, i64 0, i32 1
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %32) #13
          to label %34 unwind label %52

34:                                               ; preds = %29
  %35 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %31, i64 0, i32 3
  %36 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %35) #13
          to label %37 unwind label %52

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %31, i64 0, i32 2
  %39 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %38) #13
          to label %40 unwind label %52

40:                                               ; preds = %37
  %41 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntryExtended", ptr %31, i64 0, i32 1
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %41) #13
          to label %43 unwind label %52

43:                                               ; preds = %40
  %44 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntryExtended", ptr %31, i64 0, i32 2
  %45 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %44) #13
          to label %46 unwind label %52

46:                                               ; preds = %43
  %47 = invoke noundef ptr @_ZN11xalanc_1_1014AttributesImpl11getNewEntryEPKtS2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %33, ptr noundef %36, ptr noundef %39, ptr noundef %42, ptr noundef %45) #13
          to label %48 unwind label %52

48:                                               ; preds = %46
  store ptr %47, ptr %5, align 8, !tbaa !124
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #13
          to label %49 unwind label %52

49:                                               ; preds = %48
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  %50 = getelementptr inbounds ptr, ptr %30, i64 1
  %51 = icmp eq ptr %50, %19
  br i1 %51, label %23, label %29, !llvm.loop !139

52:                                               ; preds = %48, %46, %43, %40, %37, %34, %29
  %53 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  br label %54

54:                                               ; preds = %52, %27
  %55 = phi { ptr, i32 } [ %53, %52 ], [ %28, %27 ]
  call void @_ZN11xalanc_1_1021CollectionDeleteGuardINS_11XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS3_EEEENS_13DeleteFunctorIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %57

56:                                               ; preds = %23, %13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  br label %59

57:                                               ; preds = %54, %25
  %58 = phi { ptr, i32 } [ %55, %54 ], [ %26, %25 ]
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  resume { ptr, i32 } %58

59:                                               ; preds = %56, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014AttributesImplC2ERKN11xercesc_2_710AttributesERNS1_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  tail call void @_ZN11xercesc_2_710AttributesC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  store ptr getelementptr inbounds ({ [18 x ptr] }, ptr @_ZTVN11xalanc_1_1014AttributesImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !128
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributesImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0) #13
          to label %5 unwind label %10

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xalanc_1_10::AttributesImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0) #13
          to label %7 unwind label %12

7:                                                ; preds = %5
  %8 = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN11xalanc_1_1014AttributesImplaSERKN11xercesc_2_710AttributesE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #11
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #11
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %11, %10 ]
  tail call void @_ZN11xercesc_2_710AttributesD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN11xalanc_1_1014AttributesImplaSERKN11xercesc_2_710AttributesE(ptr noundef nonnull returned align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  %3 = alloca %"class.xalanc_1_10::AttributesImpl", align 8
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %51, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #15
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014AttributesImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #13
  call void @_ZN11xalanc_1_1014AttributesImplC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(8) %6) #13
  %7 = load ptr, ptr %1, align 8, !tbaa !128
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
          to label %11 unwind label %15

11:                                               ; preds = %5
  invoke void @_ZN11xalanc_1_1014AttributesImpl7reserveEj(ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %10) #13
          to label %12 unwind label %15

12:                                               ; preds = %11
  %13 = icmp eq i32 %10, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %44, %12
  call void @_ZN11xalanc_1_1014AttributesImpl4swapERS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %3) #13
  call void @_ZN11xalanc_1_1014AttributesImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %3) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #15
  br label %51

15:                                               ; preds = %11, %5
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %49

17:                                               ; preds = %12, %44
  %18 = phi i32 [ %45, %44 ], [ 0, %12 ]
  %19 = load ptr, ptr %1, align 8, !tbaa !128
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  %22 = invoke noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %18) #13
          to label %23 unwind label %47

23:                                               ; preds = %17
  %24 = load ptr, ptr %1, align 8, !tbaa !128
  %25 = getelementptr inbounds ptr, ptr %24, i64 4
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %18) #13
          to label %28 unwind label %47

28:                                               ; preds = %23
  %29 = load ptr, ptr %1, align 8, !tbaa !128
  %30 = getelementptr inbounds ptr, ptr %29, i64 5
  %31 = load ptr, ptr %30, align 8
  %32 = invoke noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %18) #13
          to label %33 unwind label %47

33:                                               ; preds = %28
  %34 = load ptr, ptr %1, align 8, !tbaa !128
  %35 = getelementptr inbounds ptr, ptr %34, i64 6
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %18) #13
          to label %38 unwind label %47

38:                                               ; preds = %33
  %39 = load ptr, ptr %1, align 8, !tbaa !128
  %40 = getelementptr inbounds ptr, ptr %39, i64 7
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %18) #13
          to label %43 unwind label %47

43:                                               ; preds = %38
  invoke void @_ZN11xalanc_1_1014AttributesImpl12addAttributeEPKtS2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef %22, ptr noundef %27, ptr noundef %32, ptr noundef %37, ptr noundef %42) #13
          to label %44 unwind label %47

44:                                               ; preds = %43
  %45 = add nuw i32 %18, 1
  %46 = icmp eq i32 %45, %10
  br i1 %46, label %14, label %17, !llvm.loop !140

47:                                               ; preds = %43, %38, %33, %28, %23, %17
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %49

49:                                               ; preds = %47, %15
  %50 = phi { ptr, i32 } [ %48, %47 ], [ %16, %15 ]
  call void @_ZN11xalanc_1_1014AttributesImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %3) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #15
  resume { ptr, i32 } %50

51:                                               ; preds = %14, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt8for_eachIPPN11xalanc_1_1028AttributeVectorEntryExtendedENS0_13DeleteFunctorIS1_EEET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #1 comdat !prof !123 {
  %4 = alloca %"struct.xalanc_1_10::DeleteFunctor", align 8
  store ptr %2, ptr %4, align 8
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %9, %6 ], [ %0, %3 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !124
  call void @_ZNK11xalanc_1_1013DeleteFunctorINS_28AttributeVectorEntryExtendedEEclEPKS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #13
  %9 = getelementptr inbounds ptr, ptr %7, i64 1
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %6, !llvm.loop !141

11:                                               ; preds = %6
  %12 = load ptr, ptr %4, align 8
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi ptr [ %12, %11 ], [ %2, %3 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !123 {
  %2 = load ptr, ptr %0, align 8, !tbaa !131
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1013DeleteFunctorINS_28AttributeVectorEntryExtendedEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !123 {
  store ptr %1, ptr %0, align 8, !tbaa !124
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1013DeleteFunctorINS_28AttributeVectorEntryExtendedEEclEPKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !123 {
  %3 = alloca %"struct.xalanc_1_10::XalanDestroyFunctor", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  tail call void @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_28AttributeVectorEntryExtendedEEENS_19XalanDestroyFunctorIT_EEPKS3_(ptr noundef %1) #13
  %4 = load ptr, ptr %0, align 8, !tbaa !142
  call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_28AttributeVectorEntryExtendedEEclEPKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_28AttributeVectorEntryExtendedEEENS_19XalanDestroyFunctorIT_EEPKS3_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !123 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_28AttributeVectorEntryExtendedEEclEPKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 !prof !123 {
  tail call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_28AttributeVectorEntryExtendedEEclEPS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_28AttributeVectorEntryExtendedEEclEPS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 !prof !123 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_28AttributeVectorEntryExtendedEEclERS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) #13
  %6 = load ptr, ptr %2, align 8, !tbaa !128
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %1) #13
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_28AttributeVectorEntryExtendedEEclERS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) local_unnamed_addr #0 comdat align 2 !prof !123 {
  %3 = load ptr, ptr %1, align 8, !tbaa !128
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(168) %1) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014AttributesImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 !prof !123 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::AttributesImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !123 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !135
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #13
  br label %7

7:                                                ; preds = %6, %2
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021CollectionDeleteGuardINS_11XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS3_EEEENS_13DeleteFunctorIS2_EEEC2ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 !prof !123 {
  store ptr %1, ptr %0, align 8, !tbaa !144
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !123 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !123 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !136
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !123 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1014AttributesImpl11getNewEntryEPKtS2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 align 2 !prof !123 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::AttributesImpl", ptr %0, i64 0, i32 2
  %8 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #13
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014AttributesImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #13
  %11 = tail call noundef ptr @_ZN11xalanc_1_1028AttributeVectorEntryExtended6createEPKtS2_S2_S2_S2_RN11xercesc_2_713MemoryManagerE(ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %10) #13
  br label %35

12:                                               ; preds = %6
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #13
  %14 = load ptr, ptr %13, align 8, !tbaa !124
  tail call void @_ZN11xalanc_1_1028AttributeVectorEntryExtended5clearEv(ptr noundef nonnull align 8 dereferenceable(168) %14) #13
  %15 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %14, i64 0, i32 1
  %16 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  %17 = tail call noundef ptr @_ZN11xalanc_1_1020AttributeVectorEntry8endArrayEPKt(ptr noundef %1) #13
  %18 = getelementptr inbounds i16, ptr %17, i64 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef %16, ptr noundef %1, ptr noundef nonnull %18) #13
  %19 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %14, i64 0, i32 2
  %20 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %19) #13
  %21 = tail call noundef ptr @_ZN11xalanc_1_1020AttributeVectorEntry8endArrayEPKt(ptr noundef %3) #13
  %22 = getelementptr inbounds i16, ptr %21, i64 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef %20, ptr noundef %3, ptr noundef nonnull %22) #13
  %23 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %14, i64 0, i32 3
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %23) #13
  %25 = tail call noundef ptr @_ZN11xalanc_1_1020AttributeVectorEntry8endArrayEPKt(ptr noundef %2) #13
  %26 = getelementptr inbounds i16, ptr %25, i64 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef %24, ptr noundef %2, ptr noundef nonnull %26) #13
  %27 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntryExtended", ptr %14, i64 0, i32 1
  %28 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %27) #13
  %29 = tail call noundef ptr @_ZN11xalanc_1_1020AttributeVectorEntry8endArrayEPKt(ptr noundef %4) #13
  %30 = getelementptr inbounds i16, ptr %29, i64 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef %28, ptr noundef %4, ptr noundef nonnull %30) #13
  %31 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntryExtended", ptr %14, i64 0, i32 2
  %32 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %31) #13
  %33 = tail call noundef ptr @_ZN11xalanc_1_1020AttributeVectorEntry8endArrayEPKt(ptr noundef %5) #13
  %34 = getelementptr inbounds i16, ptr %33, i64 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef %32, ptr noundef %5, ptr noundef nonnull %34) #13
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #13
  br label %35

35:                                               ; preds = %12, %9
  %36 = phi ptr [ %11, %9 ], [ %14, %12 ]
  ret ptr %36
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !146 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !147
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !123 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %3 = load ptr, ptr %0, align 8, !tbaa !131
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !136
  %7 = load ptr, ptr %1, align 8, !tbaa !131
  store ptr %7, ptr %0, align 8, !tbaa !131
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !149
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !136
  store ptr %11, ptr %5, align 8, !tbaa !136
  store ptr %3, ptr %1, align 8, !tbaa !131
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !149
  store <2 x i64> %9, ptr %4, align 8, !tbaa !149
  store <2 x i64> %12, ptr %8, align 8, !tbaa !149
  store ptr %6, ptr %10, align 8, !tbaa !136
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021CollectionDeleteGuardINS_11XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS3_EEEENS_13DeleteFunctorIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  %2 = alloca %"struct.xalanc_1_10::DeleteFunctor", align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !144
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  %7 = load ptr, ptr %0, align 8, !tbaa !144
  %8 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #13
          to label %9 unwind label %15

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !144
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #13
  call void @_ZN11xalanc_1_1013DeleteFunctorINS_28AttributeVectorEntryExtendedEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %11) #13
  %12 = load ptr, ptr %2, align 8
  %13 = invoke ptr @_ZSt8for_eachIPPN11xalanc_1_1028AttributeVectorEntryExtendedENS0_13DeleteFunctorIS1_EEET0_T_S7_S6_(ptr noundef %6, ptr noundef %8, ptr %12) #13
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
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %4 = load ptr, ptr %0, align 8, !tbaa !131
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !131
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !134
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #13
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #13
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #13
  store ptr %24, ptr %8, align 8, !tbaa !136
  store i64 %3, ptr %7, align 8, !tbaa !135
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !123 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #13
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #13
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !131
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_28AttributeVectorEntryExtendedEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #13
  %23 = getelementptr inbounds ptr, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !134
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !134
  %26 = getelementptr inbounds ptr, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !llvm.loop !150

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  %32 = load ptr, ptr %0, align 8, !tbaa !131
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #13
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #13
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #13
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #13
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #13
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %57) #13
  %58 = getelementptr inbounds ptr, ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !llvm.loop !151

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %61) #13
  %62 = getelementptr inbounds ptr, ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !llvm.loop !152

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #13
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds ptr, ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %72) #13
  %73 = getelementptr inbounds ptr, ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !153

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds ptr, ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_1028AttributeVectorEntryExtendedES3_ET0_T_S5_S4_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #13
  %78 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #13
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !123 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %1, ptr noundef %2) #13
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !123 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !134
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !123 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #13
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_28AttributeVectorEntryExtendedEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !123 {
  %4 = load ptr, ptr %1, align 8, !tbaa !124
  store ptr %4, ptr %0, align 8, !tbaa !124
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !123 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !135
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !134
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !135
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %11 = load ptr, ptr %0, align 8, !tbaa !131
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_28AttributeVectorEntryExtendedEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #13
  %13 = load i64, ptr %4, align 8, !tbaa !134
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !134
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %21 = load ptr, ptr %0, align 8, !tbaa !131
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !123 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEET_S5_(ptr noundef %0) #13
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEET_S5_(ptr noundef %1) #13
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKPN11xalanc_1_1028AttributeVectorEntryExtendedEPS2_ET1_T0_S7_S6_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_1028AttributeVectorEntryExtendedES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !123 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_1028AttributeVectorEntryExtendedEET_S4_(ptr noundef %0) #13
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_1028AttributeVectorEntryExtendedEET_S4_(ptr noundef %1) #13
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_1028AttributeVectorEntryExtendedES3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !123 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !124
  call void @_ZSt19__iterator_categoryIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  %4 = call noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #13
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !123 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !123 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKPN11xalanc_1_1028AttributeVectorEntryExtendedEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !123 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !124
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEET_S5_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEET_S5_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1028AttributeVectorEntryExtendedEET_S4_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_1028AttributeVectorEntryExtendedEPS2_ET1_T0_S7_S6_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_1028AttributeVectorEntryExtendedEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEET_S5_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !123 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_1028AttributeVectorEntryExtendedEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !123 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_1028AttributeVectorEntryExtendedEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !123 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_1028AttributeVectorEntryExtendedEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEET_S5_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !123 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1028AttributeVectorEntryExtendedEET_S4_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !123 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_1028AttributeVectorEntryExtendedEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !123 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_1028AttributeVectorEntryExtendedEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_1028AttributeVectorEntryExtendedEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !123 {
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
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_1028AttributeVectorEntryExtendedES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !123 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !124
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1028AttributeVectorEntryExtendedEET_S4_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1028AttributeVectorEntryExtendedEET_S4_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1028AttributeVectorEntryExtendedEET_S4_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_1028AttributeVectorEntryExtendedES3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_1028AttributeVectorEntryExtendedEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_1028AttributeVectorEntryExtendedEET_S4_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !123 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_1028AttributeVectorEntryExtendedES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !123 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_1028AttributeVectorEntryExtendedES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_1028AttributeVectorEntryExtendedES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !123 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1028AttributeVectorEntryExtendedEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1028AttributeVectorEntryExtendedEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !123 {
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
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !123 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !136
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !134
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !154 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014AttributesImpl7reserveEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !123 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributesImpl", ptr %0, i64 0, i32 1
  %4 = zext i32 %1 to i64
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014AttributesImpl12addAttributeEPKtS2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  %7 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr", align 8
  %8 = alloca ptr, align 8
  %9 = getelementptr inbounds %"class.xalanc_1_10::AttributesImpl", ptr %0, i64 0, i32 1
  %10 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #13
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 5) #13
  br label %13

13:                                               ; preds = %12, %6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014AttributesImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #13
  %15 = tail call noundef ptr @_ZN11xalanc_1_1014AttributesImpl11getNewEntryEPKtS2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %1, ptr noundef %2) #13
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %15) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  %16 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb1EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #13
  store ptr %16, ptr %8, align 8, !tbaa !124
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %8) #13
          to label %17 unwind label %20

17:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  %18 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb1EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #13
          to label %19 unwind label %22

19:                                               ; preds = %17
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  ret void

20:                                               ; preds = %13
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  br label %24

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi { ptr, i32 } [ %23, %22 ], [ %21, %20 ]
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  resume { ptr, i32 } %25
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014AttributesImpl4swapERS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 comdat align 2 !prof !123 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributesImpl", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributesImpl", ptr %1, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !123 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !136
  %5 = getelementptr inbounds ptr, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt7find_ifIPKPN11xalanc_1_1028AttributeVectorEntryExtendedENS0_29URIAndLocalNameCompareFunctorEET_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat !prof !123 {
  %5 = tail call { ptr, ptr } @_ZN9__gnu_cxx5__ops11__pred_iterIN11xalanc_1_1029URIAndLocalNameCompareFunctorEEENS0_10_Iter_predIT_EES5_(ptr %2, ptr %3) #13
  %6 = extractvalue { ptr, ptr } %5, 0
  %7 = extractvalue { ptr, ptr } %5, 1
  %8 = tail call noundef ptr @_ZSt9__find_ifIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEN9__gnu_cxx5__ops10_Iter_predINS0_29URIAndLocalNameCompareFunctorEEEET_SA_SA_T0_(ptr noundef %0, ptr noundef %1, ptr %6, ptr %7) #13
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1029URIAndLocalNameCompareFunctorC2EPKtS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !123 {
  store ptr %1, ptr %0, align 8, !tbaa !155
  %4 = getelementptr inbounds %"struct.xalanc_1_10::URIAndLocalNameCompareFunctor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !157
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEN9__gnu_cxx5__ops10_Iter_predINS0_29URIAndLocalNameCompareFunctorEEEET_SA_SA_T0_(ptr noundef %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat !prof !123 {
  %5 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8, !tbaa !124
  call void @_ZSt19__iterator_categoryIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  %6 = call noundef ptr @_ZSt9__find_ifIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEN9__gnu_cxx5__ops10_Iter_predINS0_29URIAndLocalNameCompareFunctorEEEET_SA_SA_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2, ptr %3) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN9__gnu_cxx5__ops11__pred_iterIN11xalanc_1_1029URIAndLocalNameCompareFunctorEEENS0_10_Iter_predIT_EES5_(ptr %0, ptr %1) local_unnamed_addr #1 comdat !prof !123 {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred", align 8
  call void @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1029URIAndLocalNameCompareFunctorEEC2ES3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %0, ptr %1) #13
  %4 = load ptr, ptr %3, align 8
  %5 = insertvalue { ptr, ptr } poison, ptr %4, 0
  %6 = getelementptr inbounds { ptr, ptr }, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = insertvalue { ptr, ptr } %5, ptr %7, 1
  ret { ptr, ptr } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEN9__gnu_cxx5__ops10_Iter_predINS0_29URIAndLocalNameCompareFunctorEEEET_SA_SA_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat !prof !123 {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred", align 8
  store ptr %2, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, ptr }, ptr %5, i64 0, i32 1
  store ptr %3, ptr %6, align 8
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = ashr i64 %9, 5
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %4, %25
  %13 = phi i64 [ %27, %25 ], [ %10, %4 ]
  %14 = phi ptr [ %26, %25 ], [ %0, %4 ]
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1029URIAndLocalNameCompareFunctorEEclIPKPNS2_28AttributeVectorEntryExtendedEEEbT_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %14) #13
  br i1 %15, label %49, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds ptr, ptr %14, i64 1
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1029URIAndLocalNameCompareFunctorEEclIPKPNS2_28AttributeVectorEntryExtendedEEEbT_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %17) #13
  br i1 %18, label %49, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds ptr, ptr %14, i64 2
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1029URIAndLocalNameCompareFunctorEEclIPKPNS2_28AttributeVectorEntryExtendedEEEbT_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %20) #13
  br i1 %21, label %49, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds ptr, ptr %14, i64 3
  %24 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1029URIAndLocalNameCompareFunctorEEclIPKPNS2_28AttributeVectorEntryExtendedEEEbT_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %23) #13
  br i1 %24, label %49, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds ptr, ptr %14, i64 4
  %27 = add nsw i64 %13, -1
  %28 = icmp sgt i64 %13, 1
  br i1 %28, label %12, label %29, !llvm.loop !158

29:                                               ; preds = %25
  %30 = ptrtoint ptr %26 to i64
  %31 = sub i64 %7, %30
  br label %32

32:                                               ; preds = %29, %4
  %33 = phi i64 [ %31, %29 ], [ %9, %4 ]
  %34 = phi ptr [ %26, %29 ], [ %0, %4 ]
  %35 = ashr exact i64 %33, 3
  switch i64 %35, label %48 [
    i64 3, label %36
    i64 2, label %40
    i64 1, label %45
  ]

36:                                               ; preds = %32
  %37 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1029URIAndLocalNameCompareFunctorEEclIPKPNS2_28AttributeVectorEntryExtendedEEEbT_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %34) #13
  br i1 %37, label %49, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds ptr, ptr %34, i64 1
  br label %40

40:                                               ; preds = %32, %38
  %41 = phi ptr [ %34, %32 ], [ %39, %38 ]
  %42 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1029URIAndLocalNameCompareFunctorEEclIPKPNS2_28AttributeVectorEntryExtendedEEEbT_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %41) #13
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds ptr, ptr %41, i64 1
  br label %45

45:                                               ; preds = %32, %43
  %46 = phi ptr [ %34, %32 ], [ %44, %43 ]
  %47 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1029URIAndLocalNameCompareFunctorEEclIPKPNS2_28AttributeVectorEntryExtendedEEEbT_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %46) #13
  br i1 %47, label %49, label %48

48:                                               ; preds = %45, %32
  br label %49

49:                                               ; preds = %22, %19, %16, %12, %45, %40, %36, %48
  %50 = phi ptr [ %1, %48 ], [ %34, %36 ], [ %41, %40 ], [ %46, %45 ], [ %23, %22 ], [ %20, %19 ], [ %17, %16 ], [ %14, %12 ]
  ret ptr %50
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1029URIAndLocalNameCompareFunctorEEclIPKPNS2_28AttributeVectorEntryExtendedEEEbT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !123 {
  %3 = load ptr, ptr %1, align 8, !tbaa !124
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1029URIAndLocalNameCompareFunctorclEPKNS_28AttributeVectorEntryExtendedE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %3) #13
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1029URIAndLocalNameCompareFunctorclEPKNS_28AttributeVectorEntryExtendedE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !123 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntryExtended", ptr %1, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  %5 = load ptr, ptr %0, align 8, !tbaa !155
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_(ptr noundef %4, ptr noundef %5) #13
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntryExtended", ptr %1, i64 0, i32 2
  %9 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #13
  %10 = getelementptr inbounds %"struct.xalanc_1_10::URIAndLocalNameCompareFunctor", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !157
  %12 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_(ptr noundef %9, ptr noundef %11) #13
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi i1 [ false, %2 ], [ %12, %7 ]
  ret i1 %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !159 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %0) #13
  %4 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %1) #13
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %8, !prof !160

6:                                                ; preds = %2
  %7 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %0, ptr noundef %1, i32 noundef %3) #13
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i1 [ %7, %6 ], [ false, %2 ]
  ret i1 %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !161 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !147
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %0) local_unnamed_addr #0 comdat !prof !162 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ]
  %4 = load i16, ptr %3, align 2, !tbaa !163
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds i16, ptr %3, i64 1
  br i1 %5, label %7, label %2, !prof !165, !llvm.loop !166

7:                                                ; preds = %2
  %8 = ptrtoint ptr %3 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = lshr exact i64 %10, 1
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1029URIAndLocalNameCompareFunctorEEC2ES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr %2) unnamed_addr #0 comdat align 2 !prof !123 {
  store ptr %1, ptr %0, align 8, !tbaa.struct !167
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr %2, ptr %4, align 8, !tbaa.struct !168
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt7find_ifIPKPN11xalanc_1_1028AttributeVectorEntryExtendedENS0_18NameCompareFunctorEET_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #1 comdat !prof !123 {
  %4 = tail call ptr @_ZN9__gnu_cxx5__ops11__pred_iterIN11xalanc_1_1018NameCompareFunctorEEENS0_10_Iter_predIT_EES5_(ptr %2) #13
  %5 = tail call noundef ptr @_ZSt9__find_ifIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_SA_SA_T0_(ptr noundef %0, ptr noundef %1, ptr %4) #13
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018NameCompareFunctorC2EPKt(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !169 {
  store ptr %1, ptr %0, align 8, !tbaa !170
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_SA_SA_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #1 comdat !prof !123 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !124
  call void @_ZSt19__iterator_categoryIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  %5 = call noundef ptr @_ZSt9__find_ifIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_SA_SA_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) #13
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZN9__gnu_cxx5__ops11__pred_iterIN11xalanc_1_1018NameCompareFunctorEEENS0_10_Iter_predIT_EES5_(ptr %0) local_unnamed_addr #1 comdat !prof !169 {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred.1", align 8
  call void @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEC2ES3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr %0) #13
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPKPN11xalanc_1_1028AttributeVectorEntryExtendedEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_SA_SA_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #1 comdat !prof !123 {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred.1", align 8
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
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPKPNS2_28AttributeVectorEntryExtendedEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %12) #13
  br i1 %13, label %47, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %12, i64 1
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPKPNS2_28AttributeVectorEntryExtendedEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %15) #13
  br i1 %16, label %47, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds ptr, ptr %12, i64 2
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPKPNS2_28AttributeVectorEntryExtendedEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %18) #13
  br i1 %19, label %47, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds ptr, ptr %12, i64 3
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPKPNS2_28AttributeVectorEntryExtendedEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %21) #13
  br i1 %22, label %47, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds ptr, ptr %12, i64 4
  %25 = add nsw i64 %11, -1
  %26 = icmp sgt i64 %11, 1
  br i1 %26, label %10, label %27, !llvm.loop !172

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
  %35 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPKPNS2_28AttributeVectorEntryExtendedEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %32) #13
  br i1 %35, label %47, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds ptr, ptr %32, i64 1
  br label %38

38:                                               ; preds = %30, %36
  %39 = phi ptr [ %32, %30 ], [ %37, %36 ]
  %40 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPKPNS2_28AttributeVectorEntryExtendedEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %39) #13
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds ptr, ptr %39, i64 1
  br label %43

43:                                               ; preds = %30, %41
  %44 = phi ptr [ %32, %30 ], [ %42, %41 ]
  %45 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPKPNS2_28AttributeVectorEntryExtendedEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %44) #13
  br i1 %45, label %47, label %46

46:                                               ; preds = %43, %30
  br label %47

47:                                               ; preds = %20, %17, %14, %10, %43, %38, %34, %46
  %48 = phi ptr [ %1, %46 ], [ %32, %34 ], [ %39, %38 ], [ %44, %43 ], [ %21, %20 ], [ %18, %17 ], [ %15, %14 ], [ %12, %10 ]
  ret ptr %48
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPKPNS2_28AttributeVectorEntryExtendedEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !123 {
  %3 = load ptr, ptr %1, align 8, !tbaa !124
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018NameCompareFunctorclEPKNS_28AttributeVectorEntryExtendedE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3) #13
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018NameCompareFunctorclEPKNS_28AttributeVectorEntryExtendedE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !123 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %1, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  %5 = load ptr, ptr %0, align 8, !tbaa !170
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_(ptr noundef %4, ptr noundef %5) #13
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEC2ES3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) unnamed_addr #0 comdat align 2 !prof !169 {
  store ptr %1, ptr %0, align 8, !tbaa.struct !168
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !123 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !134
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #13
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !123 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %5 = load i64, ptr %3, align 8, !tbaa !134
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !llvm.loop !173

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !123 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !134
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !134
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !136
  %7 = getelementptr inbounds ptr, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %7) #13
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !123 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb1EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !123 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !174
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb1EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !123 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb1EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #13
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb1EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
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
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !123 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !124
  store ptr %2, ptr %5, align 8, !tbaa !124
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1028AttributeVectorEntryExtendedEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1028AttributeVectorEntryExtendedEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 !prof !123 {
  %4 = load ptr, ptr %1, align 8, !tbaa !124
  store ptr %4, ptr %0, align 8, !tbaa !176
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !124
  store ptr %6, ptr %5, align 8, !tbaa !174
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !123 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb1EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !123 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !176
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !174
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb1EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !123 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb1EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  br i1 %2, label %3, label %13

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !174
  %6 = load ptr, ptr %5, align 8, !tbaa !128
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(168) %5) #11
  %8 = load ptr, ptr %0, align 8, !tbaa !176
  %9 = load ptr, ptr %4, align 8, !tbaa !174
  %10 = load ptr, ptr %8, align 8, !tbaa !128
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %9) #13
  br label %13

13:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb1EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !123 {
  %2 = load ptr, ptr %0, align 8, !tbaa !176
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !123 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !134
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028AttributeVectorEntryExtended6createEPKtS2_S2_S2_S2_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  %7 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr.2", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  %8 = load ptr, ptr %5, align 8, !tbaa !128
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 168) #13
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11) #13
  %12 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #13
  invoke void @_ZN11xalanc_1_1028AttributeVectorEntryExtendedC2EPKtS2_S2_S2_S2_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168) %12, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #13
          to label %13 unwind label %16

13:                                               ; preds = %6
  %14 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #13
          to label %15 unwind label %16

15:                                               ; preds = %13
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  ret ptr %12

16:                                               ; preds = %13, %6
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !123 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !136
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !134
  %6 = getelementptr ptr, ptr %3, i64 %5
  %7 = getelementptr ptr, ptr %6, i64 -1
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1028AttributeVectorEntryExtended5clearEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #1 comdat align 2 !prof !123 {
  tail call void @_ZN11xalanc_1_1020AttributeVectorEntry5clearEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntryExtended", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntryExtended", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #13
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %81, label %8, !prof !178

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28, !prof !179

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #13
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %80, label %16, !prof !180

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !181
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 2 dereferenceable(2) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #13
  %23 = getelementptr inbounds i16, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !182
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !182
  %26 = getelementptr inbounds i16, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %80, label %18, !prof !183, !llvm.loop !184

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %48, !prof !185

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  %32 = load ptr, ptr %0, align 8, !tbaa !181
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #13
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
          to label %34 unwind label %46

34:                                               ; preds = %31
  %35 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
          to label %36 unwind label %46

36:                                               ; preds = %34
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #13
          to label %37 unwind label %46

37:                                               ; preds = %36
  %38 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
          to label %39 unwind label %46

39:                                               ; preds = %37
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %38, ptr noundef %2, ptr noundef %3) #13
          to label %40 unwind label %46

40:                                               ; preds = %39
  %41 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
          to label %42 unwind label %46

42:                                               ; preds = %40
  %43 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
          to label %44 unwind label %46

44:                                               ; preds = %42
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %41, ptr noundef %1, ptr noundef %43) #13
          to label %45 unwind label %46

45:                                               ; preds = %44
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %80

46:                                               ; preds = %44, %42, %40, %39, %37, %36, %34, %31
  %47 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  resume { ptr, i32 } %47

48:                                               ; preds = %28
  %49 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %50 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %49) #13
  %51 = icmp ugt i64 %50, %6
  br i1 %51, label %67, label %52, !prof !186

52:                                               ; preds = %48
  %53 = getelementptr inbounds i16, ptr %2, i64 %50
  %54 = icmp eq ptr %53, %3
  br i1 %54, label %55, label %57, !prof !187

55:                                               ; preds = %57, %52
  %56 = icmp eq ptr %49, %1
  br i1 %56, label %65, label %61, !prof !187

57:                                               ; preds = %52, %57
  %58 = phi ptr [ %59, %57 ], [ %53, %52 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %58) #13
  %59 = getelementptr inbounds i16, ptr %58, i64 1
  %60 = icmp eq ptr %59, %3
  br i1 %60, label %55, label %57, !prof !188, !llvm.loop !189

61:                                               ; preds = %55, %61
  %62 = phi ptr [ %63, %61 ], [ %1, %55 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %62) #13
  %63 = getelementptr inbounds i16, ptr %62, i64 1
  %64 = icmp eq ptr %63, %49
  br i1 %64, label %65, label %61, !prof !190, !llvm.loop !191

65:                                               ; preds = %61, %55
  %66 = tail call noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %2, ptr noundef %53, ptr noundef %1) #13
  br label %80

67:                                               ; preds = %48
  %68 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %69 = sub i64 0, %6
  %70 = getelementptr inbounds i16, ptr %68, i64 %69
  %71 = icmp eq ptr %70, %49
  br i1 %71, label %76, label %72

72:                                               ; preds = %67, %72
  %73 = phi ptr [ %74, %72 ], [ %70, %67 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %73) #13
  %74 = getelementptr inbounds i16, ptr %73, i64 1
  %75 = icmp eq ptr %74, %49
  br i1 %75, label %76, label %72, !llvm.loop !192

76:                                               ; preds = %72, %67
  %77 = getelementptr inbounds i16, ptr %49, i64 %69
  %78 = tail call noundef ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_(ptr noundef %1, ptr noundef nonnull %77, ptr noundef %49) #13
  %79 = tail call noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #13
  br label %80

80:                                               ; preds = %18, %13, %65, %76, %45
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  br label %81

81:                                               ; preds = %4, %80
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1020AttributeVectorEntry8endArrayEPKt(ptr noundef %0) local_unnamed_addr #0 comdat align 2 !prof !193 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ]
  %4 = load i16, ptr %3, align 2, !tbaa !163
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds i16, ptr %3, i64 1
  br i1 %5, label %7, label %2, !prof !194, !llvm.loop !195

7:                                                ; preds = %2
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !123 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !123 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !174
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1028AttributeVectorEntryExtendedC2EPKtS2_S2_S2_S2_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %6) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  tail call void @_ZN11xalanc_1_1020AttributeVectorEntryC2EPKtS2_S2_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %6) #13
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1028AttributeVectorEntryExtendedE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !128
  %8 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntryExtended", ptr %0, i64 0, i32 1
  %9 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %4) #13
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i16, ptr %4, i64 %10
  %12 = getelementptr inbounds i16, ptr %11, i64 1
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %4, ptr noundef nonnull %12, ptr noundef nonnull align 8 dereferenceable(8) %6) #13
          to label %13 unwind label %20

13:                                               ; preds = %7
  %14 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntryExtended", ptr %0, i64 0, i32 2
  %15 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %5) #13
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i16, ptr %5, i64 %16
  %18 = getelementptr inbounds i16, ptr %17, i64 1
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %5, ptr noundef nonnull %18, ptr noundef nonnull align 8 dereferenceable(8) %6) #13
          to label %19 unwind label %22

19:                                               ; preds = %13
  ret void

20:                                               ; preds = %7
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %24

22:                                               ; preds = %13
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #11
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi { ptr, i32 } [ %23, %22 ], [ %21, %20 ]
  tail call void @_ZN11xalanc_1_1020AttributeVectorEntryD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #11
  resume { ptr, i32 } %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !123 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #13
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
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
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !123 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !124
  store ptr %2, ptr %5, align 8, !tbaa !124
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1028AttributeVectorEntryExtendedEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !123 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020AttributeVectorEntryC2EPKtS2_S2_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !196 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1020AttributeVectorEntryE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !128
  %6 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 1
  %7 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %1) #13
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i16, ptr %1, i64 %8
  %10 = getelementptr inbounds i16, ptr %9, i64 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  %11 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 2
  %12 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %2) #13
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i16, ptr %2, i64 %13
  %15 = getelementptr inbounds i16, ptr %14, i64 1
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %2, ptr noundef nonnull %15, ptr noundef nonnull align 8 dereferenceable(8) %4) #13
          to label %16 unwind label %23

16:                                               ; preds = %5
  %17 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 3
  %18 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %3) #13
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i16, ptr %3, i64 %19
  %21 = getelementptr inbounds i16, ptr %20, i64 1
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef %3, ptr noundef nonnull %21, ptr noundef nonnull align 8 dereferenceable(8) %4) #13
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
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #11
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi { ptr, i32 } [ %26, %25 ], [ %24, %23 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #11
  resume { ptr, i32 } %28
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !197 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %3, ptr %0, align 8, !tbaa !181
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0) #13
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
          to label %8 unwind label %10

8:                                                ; preds = %4
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %7, ptr noundef %1, ptr noundef %2) #13
          to label %9 unwind label %10

9:                                                ; preds = %8
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  ret void

10:                                               ; preds = %8, %4
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !198 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !199
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %13, label %5, !prof !200

5:                                                ; preds = %1
  %6 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
          to label %7 unwind label %14

7:                                                ; preds = %5
  %8 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
          to label %9 unwind label %14

9:                                                ; preds = %7
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %8) #13
          to label %10 unwind label %14

10:                                               ; preds = %9
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !147
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %12) #13
          to label %13 unwind label %14

13:                                               ; preds = %10, %1
  ret void

14:                                               ; preds = %10, %9, %7, %5
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1028AttributeVectorEntryExtendedD2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #0 comdat align 2 !prof !123 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1028AttributeVectorEntryExtendedE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !128
  %2 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntryExtended", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #11
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntryExtended", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  tail call void @_ZN11xalanc_1_1020AttributeVectorEntryD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1028AttributeVectorEntryExtendedD0Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xalanc_1_1028AttributeVectorEntryExtendedD2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) #11
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020AttributeVectorEntryD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 !prof !196 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1020AttributeVectorEntryE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !128
  %2 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #11
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020AttributeVectorEntryD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xalanc_1_1020AttributeVectorEntryD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #11
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 !prof !201 {
  store ptr %1, ptr %0, align 8, !tbaa !181
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !182
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !199
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !202

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #13
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !147
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !203 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %3 = load ptr, ptr %0, align 8, !tbaa !181
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !147
  %7 = load ptr, ptr %1, align 8, !tbaa !181
  store ptr %7, ptr %0, align 8, !tbaa !181
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !149
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !147
  store ptr %11, ptr %5, align 8, !tbaa !147
  store ptr %3, ptr %1, align 8, !tbaa !181
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !149
  store <2 x i64> %9, ptr %4, align 8, !tbaa !149
  store <2 x i64> %12, ptr %8, align 8, !tbaa !149
  store ptr %6, ptr %10, align 8, !tbaa !147
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !204 {
  %3 = shl i64 %1, 1
  %4 = load ptr, ptr %0, align 8, !tbaa !181
  %5 = load ptr, ptr %4, align 8, !tbaa !128
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #13
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !204 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !205

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #13
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !206, !llvm.loop !207

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !208 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !204 {
  %3 = load ptr, ptr %0, align 8, !tbaa !181
  %4 = load ptr, ptr %3, align 8, !tbaa !128
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #0 comdat align 2 !prof !209 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !210 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !147
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !182
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !123 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !176
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !174
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !123 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !176
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !174
  %7 = load ptr, ptr %4, align 8, !tbaa !128
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #13
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28AttributeVectorEntryExtendedELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !123 {
  %2 = load ptr, ptr %0, align 8, !tbaa !176
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020AttributeVectorEntry5clearEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #1 comdat align 2 !prof !211 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !212 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !182
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5, !prof !213

5:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #13
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !214 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %5 = load i64, ptr %3, align 8, !tbaa !182
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !prof !215, !llvm.loop !216

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !217 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !182
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !182
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !147
  %7 = getelementptr inbounds i16, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %7) #13
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !218 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #13
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !219 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !182
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !220 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6, !prof !221

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #13
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !209 {
  %4 = load i16, ptr %1, align 2, !tbaa !163
  store i16 %4, ptr %0, align 2, !tbaa !163
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !222 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !199
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !223 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !182
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !199
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !224

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %11 = load ptr, ptr %0, align 8, !tbaa !181
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #13
  %13 = load i64, ptr %4, align 8, !tbaa !182
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !182
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %21 = load ptr, ptr %0, align 8, !tbaa !181
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1) #13
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !225 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %0) #13
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %1) #13
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !123 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) #13
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %1) #13
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !218 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !124
  call void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  %4 = call noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #13
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !218 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 1
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !218 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !226 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %4 = load ptr, ptr %0, align 8, !tbaa !181
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #13
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !227 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !181
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !182
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12, !prof !228

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #13
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #13
  %14 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
          to label %15 unwind label %20

15:                                               ; preds = %12
  %16 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  %17 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
          to label %18 unwind label %20

18:                                               ; preds = %15
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %16, ptr noundef %17) #13
          to label %19 unwind label %20

19:                                               ; preds = %18
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %26

20:                                               ; preds = %18, %15, %12
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  resume { ptr, i32 } %21

22:                                               ; preds = %4
  %23 = icmp eq i64 %3, 0
  br i1 %23, label %26, label %24, !prof !229

24:                                               ; preds = %22
  %25 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #13
  store ptr %25, ptr %8, align 8, !tbaa !147
  store i64 %3, ptr %7, align 8, !tbaa !199
  br label %26

26:                                               ; preds = %22, %24, %19
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !230 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !161 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !161 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !147
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !182
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !225 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !124
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !231 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !232 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !225 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !231 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !233 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !225 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !232 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !234

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %2, ptr align 2 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !123 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !124
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !235 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !123 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !123 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !123 {
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
define linkonce_odr dso_local noundef ptr @_ZSt7find_ifIPPN11xalanc_1_1028AttributeVectorEntryExtendedENS0_18NameCompareFunctorEET_S5_S5_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #1 comdat !prof !123 {
  %4 = tail call ptr @_ZN9__gnu_cxx5__ops11__pred_iterIN11xalanc_1_1018NameCompareFunctorEEENS0_10_Iter_predIT_EES5_(ptr %2) #13
  %5 = tail call noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_1028AttributeVectorEntryExtendedEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_(ptr noundef %0, ptr noundef %1, ptr %4) #13
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !123 {
  %3 = getelementptr inbounds ptr, ptr %1, i64 1
  %4 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull %3) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_1028AttributeVectorEntryExtendedEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #1 comdat !prof !123 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !124
  call void @_ZSt19__iterator_categoryIPPN11xalanc_1_1028AttributeVectorEntryExtendedEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  %5 = call noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_1028AttributeVectorEntryExtendedEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) #13
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_1028AttributeVectorEntryExtendedEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #1 comdat !prof !123 {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred.1", align 8
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
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPPNS2_28AttributeVectorEntryExtendedEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %12) #13
  br i1 %13, label %47, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %12, i64 1
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPPNS2_28AttributeVectorEntryExtendedEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %15) #13
  br i1 %16, label %47, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds ptr, ptr %12, i64 2
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPPNS2_28AttributeVectorEntryExtendedEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %18) #13
  br i1 %19, label %47, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds ptr, ptr %12, i64 3
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPPNS2_28AttributeVectorEntryExtendedEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %21) #13
  br i1 %22, label %47, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds ptr, ptr %12, i64 4
  %25 = add nsw i64 %11, -1
  %26 = icmp sgt i64 %11, 1
  br i1 %26, label %10, label %27, !llvm.loop !236

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
  %35 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPPNS2_28AttributeVectorEntryExtendedEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %32) #13
  br i1 %35, label %47, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds ptr, ptr %32, i64 1
  br label %38

38:                                               ; preds = %30, %36
  %39 = phi ptr [ %32, %30 ], [ %37, %36 ]
  %40 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPPNS2_28AttributeVectorEntryExtendedEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %39) #13
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds ptr, ptr %39, i64 1
  br label %43

43:                                               ; preds = %30, %41
  %44 = phi ptr [ %32, %30 ], [ %42, %41 ]
  %45 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPPNS2_28AttributeVectorEntryExtendedEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %44) #13
  br i1 %45, label %47, label %46

46:                                               ; preds = %43, %30
  br label %47

47:                                               ; preds = %20, %17, %14, %10, %43, %38, %34, %46
  %48 = phi ptr [ %1, %46 ], [ %32, %34 ], [ %39, %38 ], [ %44, %43 ], [ %21, %20 ], [ %18, %17 ], [ %15, %14 ], [ %12, %10 ]
  ret ptr %48
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPPN11xalanc_1_1028AttributeVectorEntryExtendedEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !123 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEclIPPNS2_28AttributeVectorEntryExtendedEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !123 {
  %3 = load ptr, ptr %1, align 8, !tbaa !124
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018NameCompareFunctorclEPKNS_28AttributeVectorEntryExtendedE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3) #13
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !123 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %7 = tail call noundef ptr @_ZSt4copyIPPN11xalanc_1_1028AttributeVectorEntryExtendedES3_ET0_T_S5_S4_(ptr noundef %2, ptr noundef %6, ptr noundef %1) #13
  %8 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #13
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8) #13
  br label %9

9:                                                ; preds = %5, %3
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPPN11xalanc_1_1028AttributeVectorEntryExtendedES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !123 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_1028AttributeVectorEntryExtendedEET_S4_(ptr noundef %0) #13
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_1028AttributeVectorEntryExtendedEET_S4_(ptr noundef %1) #13
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPPN11xalanc_1_1028AttributeVectorEntryExtendedES3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !123 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %6, %4 ], [ %1, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %6 = add i64 %5, -1
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %4, !llvm.loop !237

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPPN11xalanc_1_1028AttributeVectorEntryExtendedES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !123 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !124
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1028AttributeVectorEntryExtendedEET_S4_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1028AttributeVectorEntryExtendedEET_S4_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1028AttributeVectorEntryExtendedEET_S4_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPPN11xalanc_1_1028AttributeVectorEntryExtendedES3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_1028AttributeVectorEntryExtendedEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPPN11xalanc_1_1028AttributeVectorEntryExtendedES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !123 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPPN11xalanc_1_1028AttributeVectorEntryExtendedES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPPN11xalanc_1_1028AttributeVectorEntryExtendedES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !123 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_1028AttributeVectorEntryExtendedEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind optsize }
attributes #12 = { builtin nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!122}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121}
!36 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!37 = !{ptr @_ZN11xalanc_1_106equalsEPKtS1_, ptr @_ZN11xalanc_1_106lengthEPKt, i64 20}
!38 = !{ptr @_ZN11xalanc_1_106equalsEPKtS1_, ptr @_ZN11xalanc_1_106equalsEPKtS1_j, i64 5}
!39 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 82509}
!40 = !{ptr @_ZN9__gnu_cxx5__ops11__pred_iterIN11xalanc_1_1018NameCompareFunctorEEENS0_10_Iter_predIT_EES5_, ptr @_ZN9__gnu_cxx5__ops10_Iter_predIN11xalanc_1_1018NameCompareFunctorEEC2ES3_, i64 75094}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 311655933}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, i64 157736530}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv, i64 155828045}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 240731396}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, i64 133170775}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE, i64 30012996397}
!47 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, i64 22657270}
!48 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 20748786}
!49 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 20748766}
!50 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246100}
!51 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 20748627}
!52 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 20748785}
!53 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614813}
!54 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, i64 1908484}
!55 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_, i64 1}
!56 = !{ptr @_ZN11xalanc_1_1020AttributeVectorEntryC2EPKtS2_S2_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_106lengthEPKt, i64 6}
!57 = !{ptr @_ZN11xalanc_1_1020AttributeVectorEntryC2EPKtS2_S2_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE, i64 6}
!58 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 12}
!59 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 12}
!60 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 12}
!61 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 12}
!62 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 12}
!63 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 12}
!64 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!65 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!66 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300308}
!67 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300227}
!68 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300146}
!69 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 325}
!70 = !{ptr @_ZN11xalanc_1_1020AttributeVectorEntryD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 6}
!71 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm, i64 1}
!72 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 64147281}
!73 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 170601494}
!74 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!75 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!76 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!77 = !{ptr @_ZN11xalanc_1_1020AttributeVectorEntry5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5clearEv, i64 225276}
!78 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5clearEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 695332}
!79 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm, i64 347665}
!80 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, i64 64729253}
!81 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 2689195954}
!82 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 1344597977}
!83 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 185895030}
!84 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 156073599}
!85 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, i64 133170778}
!86 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 22}
!87 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 133170778}
!88 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 155828047}
!89 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 248301312}
!90 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 124150655}
!91 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE, i64 124150655}
!92 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 1}
!93 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 1}
!94 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 1}
!95 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 1}
!96 = !{ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, ptr @_ZSt12__miter_baseIPKtET_S2_, i64 3901146}
!97 = !{ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!98 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 185895030}
!99 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 185895030}
!100 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 129103172}
!101 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 64551586}
!102 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 64551586}
!103 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 64551586}
!104 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm, i64 19}
!105 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 19}
!106 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 19}
!107 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 19}
!108 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 19}
!109 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 19}
!110 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 19}
!111 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 19}
!112 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm, i64 64551584}
!113 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 64551608}
!114 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 82509}
!115 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 82509}
!116 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_baseIPKtET_S2_, i64 3901146}
!117 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_baseIPtET_S1_, i64 1950573}
!118 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!119 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_, i64 1950573}
!120 = !{ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!121 = !{ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_, i64 1950573}
!122 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!123 = !{!"function_entry_count", i64 0}
!124 = !{!125, !125, i64 0}
!125 = !{!"any pointer", !126, i64 0}
!126 = !{!"omnipotent char", !127, i64 0}
!127 = !{!"Simple C++ TBAA"}
!128 = !{!129, !129, i64 0}
!129 = !{!"vtable pointer", !127, i64 0}
!130 = !{!"function_entry_count", i64 1}
!131 = !{!132, !125, i64 0}
!132 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !125, i64 0, !133, i64 8, !133, i64 16, !125, i64 24}
!133 = !{!"long", !126, i64 0}
!134 = !{!132, !133, i64 8}
!135 = !{!132, !133, i64 16}
!136 = !{!132, !125, i64 24}
!137 = distinct !{!137, !138}
!138 = !{!"llvm.loop.mustprogress"}
!139 = distinct !{!139, !138}
!140 = distinct !{!140, !138}
!141 = distinct !{!141, !138}
!142 = !{!143, !125, i64 0}
!143 = !{!"_ZTSN11xalanc_1_1013DeleteFunctorINS_28AttributeVectorEntryExtendedEEE", !125, i64 0}
!144 = !{!145, !125, i64 0}
!145 = !{!"_ZTSN11xalanc_1_1021CollectionDeleteGuardINS_11XalanVectorIPNS_28AttributeVectorEntryExtendedENS_31MemoryManagedConstructionTraitsIS3_EEEENS_13DeleteFunctorIS2_EEEE", !125, i64 0}
!146 = !{!"function_entry_count", i64 227375739}
!147 = !{!148, !125, i64 24}
!148 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !125, i64 0, !133, i64 8, !133, i64 16, !125, i64 24}
!149 = !{!133, !133, i64 0}
!150 = distinct !{!150, !138}
!151 = distinct !{!151, !138}
!152 = distinct !{!152, !138}
!153 = distinct !{!153, !138}
!154 = !{!"function_entry_count", i64 6521798503}
!155 = !{!156, !125, i64 0}
!156 = !{!"_ZTSN11xalanc_1_1029URIAndLocalNameCompareFunctorE", !125, i64 0, !125, i64 8}
!157 = !{!156, !125, i64 8}
!158 = distinct !{!158, !138}
!159 = !{!"function_entry_count", i64 10}
!160 = !{!"branch_weights", i32 6, i32 6}
!161 = !{!"function_entry_count", i64 82509}
!162 = !{!"function_entry_count", i64 21552397}
!163 = !{!164, !164, i64 0}
!164 = !{!"short", !126, i64 0}
!165 = !{!"branch_weights", i32 21552398, i32 128560690}
!166 = distinct !{!166, !138}
!167 = !{i64 0, i64 8, !124, i64 8, i64 8, !124}
!168 = !{i64 0, i64 8, !124}
!169 = !{!"function_entry_count", i64 75094}
!170 = !{!171, !125, i64 0}
!171 = !{!"_ZTSN11xalanc_1_1018NameCompareFunctorE", !125, i64 0}
!172 = distinct !{!172, !138}
!173 = distinct !{!173, !138}
!174 = !{!175, !125, i64 8}
!175 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1028AttributeVectorEntryExtendedEE", !125, i64 0, !125, i64 8}
!176 = !{!175, !125, i64 0}
!177 = !{!"function_entry_count", i64 155828046}
!178 = !{!"branch_weights", i32 1, i32 155828047}
!179 = !{!"branch_weights", i32 133170778, i32 22657270}
!180 = !{!"branch_weights", i32 1, i32 19024396}
!181 = !{!148, !125, i64 0}
!182 = !{!148, !133, i64 8}
!183 = !{!"branch_weights", i32 19024396, i32 -26420600}
!184 = distinct !{!184, !138}
!185 = !{!"branch_weights", i32 20748787, i32 1908484}
!186 = !{!"branch_weights", i32 1, i32 1908484}
!187 = !{!"branch_weights", i32 1, i32 1908483}
!188 = !{!"branch_weights", i32 1908483, i32 49797857}
!189 = distinct !{!189, !138}
!190 = !{!"branch_weights", i32 1908483, i32 1}
!191 = distinct !{!191, !138}
!192 = distinct !{!192, !138}
!193 = !{!"function_entry_count", i64 225276}
!194 = !{!"branch_weights", i32 225277, i32 1839433}
!195 = distinct !{!195, !138}
!196 = !{!"function_entry_count", i64 2}
!197 = !{!"function_entry_count", i64 12}
!198 = !{!"function_entry_count", i64 128698679}
!199 = !{!148, !133, i64 16}
!200 = !{!"branch_weights", i32 43398290, i32 85300391}
!201 = !{!"function_entry_count", i64 64147281}
!202 = !{!"branch_weights", i32 64147282, i32 1}
!203 = !{!"function_entry_count", i64 85300747}
!204 = !{!"function_entry_count", i64 85300390}
!205 = !{!"branch_weights", i32 1, i32 12185770}
!206 = !{!"branch_weights", i32 12185770, i32 -193930395}
!207 = distinct !{!207, !138}
!208 = !{!"function_entry_count", i64 568333389}
!209 = !{!"function_entry_count", i64 30137156670}
!210 = !{!"function_entry_count", i64 825654975}
!211 = !{!"function_entry_count", i64 75092}
!212 = !{!"function_entry_count", i64 347666}
!213 = !{!"branch_weights", i32 1, i32 347667}
!214 = !{!"function_entry_count", i64 348020}
!215 = !{!"branch_weights", i32 64381419, i32 348021}
!216 = distinct !{!216, !138}
!217 = !{!"function_entry_count", i64 1344597977}
!218 = !{!"function_entry_count", i64 185895030}
!219 = !{!"function_entry_count", i64 156073599}
!220 = !{!"function_entry_count", i64 133170778}
!221 = !{!"branch_weights", i32 22, i32 133170758}
!222 = !{!"function_entry_count", i64 155828047}
!223 = !{!"function_entry_count", i64 124150656}
!224 = !{!"branch_weights", i32 124150657, i32 1}
!225 = !{!"function_entry_count", i64 1950573}
!226 = !{!"function_entry_count", i64 64551586}
!227 = !{!"function_entry_count", i64 64551608}
!228 = !{!"branch_weights", i32 64551591, i32 19}
!229 = !{!"branch_weights", i32 5, i32 64551587}
!230 = !{!"function_entry_count", i64 18}
!231 = !{!"function_entry_count", i64 3901146}
!232 = !{!"function_entry_count", i64 30109074}
!233 = !{!"function_entry_count", i64 86426076}
!234 = !{!"branch_weights", i32 28199083, i32 1909993}
!235 = !{!"function_entry_count", i64 56317002}
!236 = distinct !{!236, !138}
!237 = distinct !{!237, !138}
