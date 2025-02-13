; ModuleID = 'MutableNodeRefList.cpp'
source_filename = "MutableNodeRefList.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::MutableNodeRefList" = type <{ %"class.xalanc_1_10::NodeRefList", i32, [4 x i8] }>
%"class.xalanc_1_10::NodeRefList" = type { %"class.xalanc_1_10::NodeRefListBase", %"class.xalanc_1_10::XalanVector" }
%"class.xalanc_1_10::NodeRefListBase" = type { ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::MutableNodeRefList, false>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::MutableNodeRefList, false>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }
%"struct.__gnu_cxx::__ops::_Iter_equals_val" = type { ptr }
%"struct.xalanc_1_10::ExecutionContextPredicate" = type <{ ptr, %"struct.xalanc_1_10::DocumentPredicate", [7 x i8] }>
%"struct.xalanc_1_10::DocumentPredicate" = type { i8 }
%"class.xalanc_1_10::MutableNodeRefList::addNodeInDocOrderFunctor" = type { ptr, ptr }
%"class.std::reverse_iterator" = type { ptr }
%"class.std::back_insert_iterator" = type { ptr }
%"struct.xalanc_1_10::IndexPredicate" = type { %"struct.xalanc_1_10::DocumentPredicate" }
%"struct.__gnu_cxx::__ops::_Iter_equals_val.1" = type { ptr }

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE3getEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1018MutableNodeRefListEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE17MemMgrAutoPtrData10deallocateEv = comdat any

$__clang_call_terminate = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_9XalanNodeEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

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

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_RKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_mRKS2_ = comdat any

$_ZSt4fillIPPN11xalanc_1_109XalanNodeES2_EvT_S4_RKT0_ = comdat any

$_ZSt8__fill_aIPPN11xalanc_1_109XalanNodeES2_EvT_S4_RKT0_ = comdat any

$_ZSt9__fill_a1IPPN11xalanc_1_109XalanNodeES2_EN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_ = comdat any

$_ZSt4findIPPN11xalanc_1_109XalanNodeEPKS1_ET_S6_S6_RKT0_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_ = comdat any

$_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKPKS1_EEET_SB_SB_T0_ = comdat any

$_ZN9__gnu_cxx5__ops17__iter_equals_valIKPKN11xalanc_1_109XalanNodeEEENS0_16_Iter_equals_valIT_EERS8_ = comdat any

$_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKPKS1_EEET_SB_SB_T0_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E17iterator_categoryERKS5_ = comdat any

$_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_109XalanNodeEEclIPPS3_EEbT_ = comdat any

$_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_109XalanNodeEEC2ERS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_ = comdat any

$_ZSt4copyIPPN11xalanc_1_109XalanNodeES3_ET0_T_S5_S4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE11shrinkCountEm = comdat any

$_ZSt13__copy_move_aILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_ = comdat any

$_ZSt14__copy_move_a1ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_ = comdat any

$_ZSt14__copy_move_a2ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEixEm = comdat any

$_ZSt8for_eachIPKPN11xalanc_1_109XalanNodeENS0_18MutableNodeRefList24addNodeInDocOrderFunctorEET0_T_S8_S7_ = comdat any

$_ZN11xalanc_1_1018MutableNodeRefList24addNodeInDocOrderFunctorC2ERS0_RNS_21XPathExecutionContextE = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEaSERKS5_ = comdat any

$_ZSt4copyISt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEESt20back_insert_iteratorINS1_11XalanVectorIS3_NS1_31MemoryManagedConstructionTraitsIS3_EEEEEET0_T_SE_SD_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6rbeginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4rendEv = comdat any

$_ZSt13back_inserterIN11xalanc_1_1011XalanVectorIPNS0_9XalanNodeENS0_31MemoryManagedConstructionTraitsIS3_EEEEESt20back_insert_iteratorIT_ERS8_ = comdat any

$_ZSt8for_eachISt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEENS1_18MutableNodeRefList24addNodeInDocOrderFunctorEET0_T_SA_S9_ = comdat any

$_ZNK11xalanc_1_1018MutableNodeRefList24addNodeInDocOrderFunctorclEPNS_9XalanNodeE = comdat any

$_ZSt13__copy_move_aILb0ESt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEESt20back_insert_iteratorINS1_11XalanVectorIS3_NS1_31MemoryManagedConstructionTraitsIS3_EEEEEET1_T0_SE_SD_ = comdat any

$_ZSt12__miter_baseIPKPN11xalanc_1_109XalanNodeEEDTcl23__make_reverse_iteratorcl12__miter_basecldtfp_4baseEEEESt16reverse_iteratorIT_E = comdat any

$_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEC2ERKS5_ = comdat any

$_ZSt12__niter_wrapISt20back_insert_iteratorIN11xalanc_1_1011XalanVectorIPNS1_9XalanNodeENS1_31MemoryManagedConstructionTraitsIS4_EEEEEET_RKS9_S9_ = comdat any

$_ZSt14__copy_move_a1ILb0ESt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEESt20back_insert_iteratorINS1_11XalanVectorIS3_NS1_31MemoryManagedConstructionTraitsIS3_EEEEEET1_T0_SE_SD_ = comdat any

$_ZSt12__niter_baseISt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEET_S7_ = comdat any

$_ZSt12__niter_baseISt20back_insert_iteratorIN11xalanc_1_1011XalanVectorIPNS1_9XalanNodeENS1_31MemoryManagedConstructionTraitsIS4_EEEEEET_S9_ = comdat any

$_ZSt14__copy_move_a2ILb0ESt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEESt20back_insert_iteratorINS1_11XalanVectorIS3_NS1_31MemoryManagedConstructionTraitsIS3_EEEEEET1_T0_SE_SD_ = comdat any

$_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEESt20back_insert_iteratorINS4_11XalanVectorIS6_NS4_31MemoryManagedConstructionTraitsIS6_EEEEEEET0_T_SH_SG_ = comdat any

$_ZStmiIPKPN11xalanc_1_109XalanNodeES4_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKS6_IT0_E = comdat any

$_ZNKSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEdeEv = comdat any

$_ZNSt20back_insert_iteratorIN11xalanc_1_1011XalanVectorIPNS0_9XalanNodeENS0_31MemoryManagedConstructionTraitsIS3_EEEEEdeEv = comdat any

$_ZNSt20back_insert_iteratorIN11xalanc_1_1011XalanVectorIPNS0_9XalanNodeENS0_31MemoryManagedConstructionTraitsIS3_EEEEEaSERKS3_ = comdat any

$_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEppEv = comdat any

$_ZNSt20back_insert_iteratorIN11xalanc_1_1011XalanVectorIPNS0_9XalanNodeENS0_31MemoryManagedConstructionTraitsIS3_EEEEEppEv = comdat any

$_ZNKSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEE4baseEv = comdat any

$_ZSt23__make_reverse_iteratorIPKPN11xalanc_1_109XalanNodeEESt16reverse_iteratorIT_ES6_ = comdat any

$_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEC2ES4_ = comdat any

$_ZNSt20back_insert_iteratorIN11xalanc_1_1011XalanVectorIPNS0_9XalanNodeENS0_31MemoryManagedConstructionTraitsIS3_EEEEEC2ERS6_ = comdat any

$_ZStneIPKPN11xalanc_1_109XalanNodeEEbRKSt16reverse_iteratorIT_ES9_ = comdat any

$_ZSteqIPKPN11xalanc_1_109XalanNodeEEbRKSt16reverse_iteratorIT_ES9_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5frontEv = comdat any

$_ZN11xalanc_1_1030findInsertionPointLinearSearchINS_14IndexPredicateEEEbPNS_9XalanNodeEPS3_S4_RS4_T_ = comdat any

$_ZN11xalanc_1_1030findInsertionPointLinearSearchINS_25ExecutionContextPredicateEEEbPNS_9XalanNodeEPS3_S4_RS4_T_ = comdat any

$_ZN11xalanc_1_1025ExecutionContextPredicateC2ERNS_21XPathExecutionContextE = comdat any

$_ZNK11xalanc_1_1014IndexPredicateclERKNS_9XalanNodeES3_ = comdat any

$_ZNK11xalanc_1_1017DocumentPredicateclERKNS_9XalanNodeES3_ = comdat any

$_ZNK11xalanc_1_1025ExecutionContextPredicateclERKNS_9XalanNodeES3_ = comdat any

$_ZSt6removeIPPN11xalanc_1_109XalanNodeES2_ET_S4_S4_RKT0_ = comdat any

$_ZSt11__remove_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_ = comdat any

$_ZN9__gnu_cxx5__ops17__iter_equals_valIKPN11xalanc_1_109XalanNodeEEENS0_16_Iter_equals_valIT_EERS7_ = comdat any

$_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_ = comdat any

$_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_109XalanNodeEEclIPS4_EEbT_ = comdat any

$_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag = comdat any

$_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_109XalanNodeEEC2ERS5_ = comdat any

$_ZSt7reverseIPPN11xalanc_1_109XalanNodeEEvT_S4_ = comdat any

$_ZSt9__reverseIPPN11xalanc_1_109XalanNodeEEvT_S4_St26random_access_iterator_tag = comdat any

$_ZSt9iter_swapIPPN11xalanc_1_109XalanNodeES3_EvT_T0_ = comdat any

$_ZSt4swapIPN11xalanc_1_109XalanNodeEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_ = comdat any

@_ZTVN11xalanc_1_1018MutableNodeRefListE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1018MutableNodeRefListE, ptr @_ZN11xalanc_1_1018MutableNodeRefListD2Ev, ptr @_ZN11xalanc_1_1018MutableNodeRefListD0Ev, ptr @_ZNK11xalanc_1_1011NodeRefList4itemEj, ptr @_ZNK11xalanc_1_1011NodeRefList9getLengthEv, ptr @_ZNK11xalanc_1_1011NodeRefList7indexOfEPKNS_9XalanNodeE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1018MutableNodeRefListE = dso_local constant [36 x i8] c"N11xalanc_1_1018MutableNodeRefListE\00", align 1
@_ZTIN11xalanc_1_1011NodeRefListE = external constant ptr
@_ZTIN11xalanc_1_1018MutableNodeRefListE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1018MutableNodeRefListE, ptr @_ZTIN11xalanc_1_1011NodeRefListE }, align 8

@_ZN11xalanc_1_1018MutableNodeRefListC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1018MutableNodeRefListC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1018MutableNodeRefListC1ERKS0_RN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1018MutableNodeRefListC2ERKS0_RN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1018MutableNodeRefListC1ERKNS_15NodeRefListBaseERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1018MutableNodeRefListC2ERKNS_15NodeRefListBaseERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1018MutableNodeRefListD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1018MutableNodeRefListD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefListD0Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1018MutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) #11
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1011NodeRefList4itemEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK11xalanc_1_1011NodeRefList9getLengthEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK11xalanc_1_1011NodeRefList7indexOfEPKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefListC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 !prof !168 {
  tail call void @_ZN11xalanc_1_1011NodeRefListC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1018MutableNodeRefListE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !169
  %3 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !172
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1011NodeRefListC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1018MutableNodeRefList6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !181 {
  %2 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  %3 = load ptr, ptr %0, align 8, !tbaa !169
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 48) #13
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %6) #13
  %7 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  invoke void @_ZN11xalanc_1_1018MutableNodeRefListC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(44) %7, ptr noundef nonnull align 8 dereferenceable(8) %0) #13
          to label %8 unwind label %11

8:                                                ; preds = %1
  %9 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
          to label %10 unwind label %11

10:                                               ; preds = %8
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  ret ptr %7

11:                                               ; preds = %8, %1
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #2 comdat align 2 !prof !182 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !182 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !183
  ret ptr %3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !182 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #13
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !182 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 !prof !182 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !185
  store ptr %2, ptr %5, align 8, !tbaa !185
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1018MutableNodeRefListEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1018MutableNodeRefListEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 !prof !182 {
  %4 = load ptr, ptr %1, align 8, !tbaa !185
  store ptr %4, ptr %0, align 8, !tbaa !186
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !185
  store ptr %6, ptr %5, align 8, !tbaa !183
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !187 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !182 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !186
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !183
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !182 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  br i1 %2, label %3, label %10, !prof !188

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !186
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !183
  %7 = load ptr, ptr %4, align 8, !tbaa !169
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #13
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !182 {
  %2 = load ptr, ptr %0, align 8, !tbaa !186
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefListC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(44) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 !prof !181 {
  tail call void @_ZN11xalanc_1_1011NodeRefListC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1018MutableNodeRefListE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !169
  %4 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !172
  store i32 %6, ptr %4, align 8, !tbaa !172
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1011NodeRefListC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefListC2ERKNS_15NodeRefListBaseERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 !prof !181 {
  tail call void @_ZN11xalanc_1_1011NodeRefListC2ERKNS_15NodeRefListBaseERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1018MutableNodeRefListE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !169
  %4 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !172
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1011NodeRefListC2ERKNS_15NodeRefListBaseERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #0 align 2 !prof !182 {
  tail call void @_ZN11xalanc_1_1011NodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1011NodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #5

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(44) ptr @_ZN11xalanc_1_1018MutableNodeRefListaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(44) %1) local_unnamed_addr #2 align 2 !prof !181 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeRefListaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  %6 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !172
  %8 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %0, i64 0, i32 1
  store i32 %7, ptr %8, align 8, !tbaa !172
  br label %9

9:                                                ; preds = %4, %2
  ret ptr %0
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeRefListaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(44) ptr @_ZN11xalanc_1_1018MutableNodeRefListaSERKNS_11NodeRefListE(ptr noundef nonnull returned align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 align 2 !prof !181 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeRefListaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  %6 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 8, !tbaa !172
  br label %7

7:                                                ; preds = %4, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(44) ptr @_ZN11xalanc_1_1018MutableNodeRefListaSERKNS_15NodeRefListBaseE(ptr noundef nonnull returned align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 align 2 !prof !189 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %7, label %4, !prof !190

4:                                                ; preds = %2
  %5 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeRefListaSERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %6 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 8, !tbaa !172
  br label %7

7:                                                ; preds = %4, %2
  ret ptr %0
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeRefListaSERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(44) ptr @_ZN11xalanc_1_1018MutableNodeRefListaSEPKNS_13XalanNodeListE(ptr noundef nonnull returned align 8 dereferenceable(44) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !181 {
  tail call void @_ZN11xalanc_1_1018MutableNodeRefList5clearEv(ptr noundef nonnull align 8 dereferenceable(44) %0) #13
  %3 = icmp eq ptr %1, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1018MutableNodeRefList8addNodesERKNS_13XalanNodeListE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  br label %5

5:                                                ; preds = %4, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefList5clearEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #2 align 2 !prof !191 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  %3 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !172
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefList8addNodesERKNS_13XalanNodeListE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 align 2 !prof !181 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !169
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1
  br label %12

11:                                               ; preds = %20, %2
  ret void

12:                                               ; preds = %9, %20
  %13 = phi i32 [ 0, %9 ], [ %21, %20 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %14 = load ptr, ptr %1, align 8, !tbaa !169
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  %17 = call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %13) #13
  store ptr %17, ptr %3, align 8, !tbaa !185
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  br label %20

20:                                               ; preds = %19, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  %21 = add nuw i32 %13, 1
  %22 = icmp eq i32 %21, %7
  br i1 %22, label %11, label %12, !llvm.loop !192
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !194 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !185
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5, !prof !195

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !196 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !197 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !198 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !199
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !200
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !201

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %11 = load ptr, ptr %0, align 8, !tbaa !202
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_9XalanNodeEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #13
  %13 = load i64, ptr %4, align 8, !tbaa !199
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !199
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !203
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %21 = load ptr, ptr %0, align 8, !tbaa !202
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_9XalanNodeEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !204 {
  %4 = load ptr, ptr %1, align 8, !tbaa !185
  store ptr %4, ptr %0, align 8, !tbaa !185
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !205 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !206
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !199
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !207 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !202
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !199
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !208

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #13
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #13
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !209

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #13
  store ptr %24, ptr %8, align 8, !tbaa !206
  store i64 %3, ptr %7, align 8, !tbaa !200
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !210 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %3 = load ptr, ptr %0, align 8, !tbaa !202
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !206
  %7 = load ptr, ptr %1, align 8, !tbaa !202
  store ptr %7, ptr %0, align 8, !tbaa !202
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !211
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !206
  store ptr %11, ptr %5, align 8, !tbaa !206
  store ptr %3, ptr %1, align 8, !tbaa !202
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !211
  store <2 x i64> %9, ptr %4, align 8, !tbaa !211
  store <2 x i64> %12, ptr %8, align 8, !tbaa !211
  store ptr %6, ptr %10, align 8, !tbaa !206
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !212 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !200
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %11, label %5, !prof !213

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %6, ptr noundef %7) #13
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !206
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %10) #13
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
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !214 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #2 comdat align 2 !prof !215 {
  store ptr %1, ptr %0, align 8, !tbaa !202
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !199
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !200
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !216

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #13
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !206
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !214 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #13
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %76, label %8, !prof !217

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28, !prof !218

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #13
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %75, label %16, !prof !219

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !202
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_9XalanNodeEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #13
  %23 = getelementptr inbounds ptr, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !199
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !199
  %26 = getelementptr inbounds ptr, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %75, label %18, !prof !220, !llvm.loop !221

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %32 = load ptr, ptr %0, align 8, !tbaa !202
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #13
  %33 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  %34 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %34, ptr noundef %1) #13
          to label %35 unwind label %41

35:                                               ; preds = %31
  %36 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %36, ptr noundef %2, ptr noundef %3) #13
          to label %37 unwind label %41

37:                                               ; preds = %35
  %38 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  %39 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %38, ptr noundef %1, ptr noundef %39) #13
          to label %40 unwind label %41

40:                                               ; preds = %37
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  br label %75

41:                                               ; preds = %37, %35, %31
  %42 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  resume { ptr, i32 } %42

43:                                               ; preds = %28
  %44 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %45 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %44) #13
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %53) #13
  %54 = getelementptr inbounds ptr, ptr %53, i64 1
  %55 = icmp eq ptr %54, %3
  br i1 %55, label %50, label %52, !llvm.loop !222

56:                                               ; preds = %50, %56
  %57 = phi ptr [ %58, %56 ], [ %1, %50 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %57) #13
  %58 = getelementptr inbounds ptr, ptr %57, i64 1
  %59 = icmp eq ptr %58, %44
  br i1 %59, label %60, label %56, !llvm.loop !223

60:                                               ; preds = %56, %50
  %61 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_109XalanNodeEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %48, ptr noundef %1) #13
  br label %75

62:                                               ; preds = %43
  %63 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %64 = sub i64 0, %6
  %65 = getelementptr inbounds ptr, ptr %63, i64 %64
  %66 = icmp eq ptr %65, %44
  br i1 %66, label %71, label %67

67:                                               ; preds = %62, %67
  %68 = phi ptr [ %69, %67 ], [ %65, %62 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %68) #13
  %69 = getelementptr inbounds ptr, ptr %68, i64 1
  %70 = icmp eq ptr %69, %44
  br i1 %70, label %71, label %67, !llvm.loop !224

71:                                               ; preds = %67, %62
  %72 = getelementptr inbounds ptr, ptr %44, i64 %64
  %73 = tail call noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_109XalanNodeES3_ET0_T_S5_S4_(ptr noundef %1, ptr noundef nonnull %72, ptr noundef %44) #13
  %74 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_109XalanNodeEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #13
  br label %75

75:                                               ; preds = %18, %13, %60, %71, %40
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  br label %76

76:                                               ; preds = %4, %75
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !225 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !206
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !226 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !206
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !226 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !207 {
  %3 = shl i64 %1, 3
  %4 = load ptr, ptr %0, align 8, !tbaa !202
  %5 = load ptr, ptr %4, align 8, !tbaa !169
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #13
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !227 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %1, ptr noundef %2) #13
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !228 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !199
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !229 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !230 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6, !prof !231

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #13
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !230 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !200
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKPN11xalanc_1_109XalanNodeEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !181 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_109XalanNodeEET_S5_(ptr noundef %0) #13
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_109XalanNodeEET_S5_(ptr noundef %1) #13
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKPN11xalanc_1_109XalanNodeEPS2_ET1_T0_S7_S6_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_109XalanNodeES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !181 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %0) #13
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %1) #13
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !227 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !185
  call void @_ZSt19__iterator_categoryIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  %4 = call noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #13
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !227 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !232 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !233 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %4 = load ptr, ptr %0, align 8, !tbaa !202
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKPN11xalanc_1_109XalanNodeEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !181 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !185
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_109XalanNodeEET_S5_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_109XalanNodeEET_S5_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_109XalanNodeEPS2_ET1_T0_S7_S6_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_109XalanNodeEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_109XalanNodeEET_S5_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !181 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_109XalanNodeEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !234 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_109XalanNodeEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !181 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_109XalanNodeEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_109XalanNodeEET_S5_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !181 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !235 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_109XalanNodeEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !181 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_109XalanNodeEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_109XalanNodeEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !234 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !236

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
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !181 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !185
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_109XalanNodeEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !237 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !181 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !181 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_109XalanNodeEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_109XalanNodeEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !181 {
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
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !226 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !206
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !199
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !207 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !238

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !239, !llvm.loop !240

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !207 {
  %3 = load ptr, ptr %0, align 8, !tbaa !202
  %4 = load ptr, ptr %3, align 8, !tbaa !169
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !204 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefList10insertNodeEPNS_9XalanNodeEj(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 !prof !181 {
  %4 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !185
  %5 = icmp eq ptr %1, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #13
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_RKS2_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  br label %12

12:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_RKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 !prof !241 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !200
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !199
  %8 = icmp ugt i64 %5, %7
  br i1 %8, label %9, label %10, !prof !242

9:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_mRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  br label %15

10:                                               ; preds = %3
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %12 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11, ptr noundef %1) #13
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_mRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  %13 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  br label %15

15:                                               ; preds = %10, %9
  %16 = phi ptr [ %1, %9 ], [ %14, %10 ]
  ret ptr %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_mRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !241 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %6 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %7 = add i64 %6, %2
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %25, !prof !243

10:                                               ; preds = %4
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %7) #13
  %12 = icmp eq i64 %2, 0
  br i1 %12, label %72, label %13, !prof !244

13:                                               ; preds = %10
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi ptr [ %11, %13 ], [ %20, %15 ]
  %17 = phi i64 [ 0, %13 ], [ %23, %15 ]
  %18 = load ptr, ptr %0, align 8, !tbaa !202
  %19 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_9XalanNodeEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %16, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %18) #13
  %20 = getelementptr inbounds ptr, ptr %16, i64 1
  %21 = load i64, ptr %14, align 8, !tbaa !199
  %22 = add i64 %21, 1
  store i64 %22, ptr %14, align 8, !tbaa !199
  %23 = add nuw i64 %17, 1
  %24 = icmp eq i64 %23, %2
  br i1 %24, label %72, label %15, !prof !245, !llvm.loop !246

25:                                               ; preds = %4
  %26 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %27 = icmp ugt i64 %7, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %29 = load ptr, ptr %0, align 8, !tbaa !202
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %29, i64 noundef %7) #13
  %30 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  %31 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %30, ptr noundef %31, ptr noundef %1) #13
          to label %32 unwind label %38

32:                                               ; preds = %28
  %33 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_mRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #13
          to label %34 unwind label %38

34:                                               ; preds = %32
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  %36 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %35, ptr noundef %1, ptr noundef %36) #13
          to label %37 unwind label %38

37:                                               ; preds = %34
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  br label %72

38:                                               ; preds = %34, %32, %28
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  resume { ptr, i32 } %39

40:                                               ; preds = %25
  %41 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %42 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %41) #13
  %43 = icmp ugt i64 %42, %2
  br i1 %43, label %59, label %44

44:                                               ; preds = %40
  %45 = sub i64 %2, %42
  %46 = icmp eq i64 %42, %2
  br i1 %46, label %47, label %49

47:                                               ; preds = %49, %44
  %48 = icmp eq ptr %41, %1
  br i1 %48, label %57, label %53

49:                                               ; preds = %44, %49
  %50 = phi i64 [ %51, %49 ], [ 0, %44 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  %51 = add nuw i64 %50, 1
  %52 = icmp eq i64 %51, %45
  br i1 %52, label %47, label %49, !llvm.loop !247

53:                                               ; preds = %47, %53
  %54 = phi ptr [ %55, %53 ], [ %1, %47 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %54) #13
  %55 = getelementptr inbounds ptr, ptr %54, i64 1
  %56 = icmp eq ptr %55, %41
  br i1 %56, label %57, label %53, !llvm.loop !248

57:                                               ; preds = %53, %47
  %58 = getelementptr inbounds ptr, ptr %1, i64 %42
  tail call void @_ZSt4fillIPPN11xalanc_1_109XalanNodeES2_EvT_S4_RKT0_(ptr noundef %1, ptr noundef %58, ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  br label %72

59:                                               ; preds = %40
  %60 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %61 = sub i64 0, %2
  %62 = getelementptr inbounds ptr, ptr %60, i64 %61
  %63 = icmp eq ptr %62, %41
  br i1 %63, label %68, label %64

64:                                               ; preds = %59, %64
  %65 = phi ptr [ %66, %64 ], [ %62, %59 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %65) #13
  %66 = getelementptr inbounds ptr, ptr %65, i64 1
  %67 = icmp eq ptr %66, %41
  br i1 %67, label %68, label %64, !llvm.loop !249

68:                                               ; preds = %64, %59
  %69 = getelementptr inbounds ptr, ptr %41, i64 %61
  %70 = tail call noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_109XalanNodeES3_ET0_T_S5_S4_(ptr noundef %1, ptr noundef %69, ptr noundef %41) #13
  %71 = getelementptr inbounds ptr, ptr %1, i64 %2
  tail call void @_ZSt4fillIPPN11xalanc_1_109XalanNodeES2_EvT_S4_RKT0_(ptr noundef %1, ptr noundef %71, ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  br label %72

72:                                               ; preds = %15, %10, %57, %68, %37
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4fillIPPN11xalanc_1_109XalanNodeES2_EvT_S4_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat !prof !181 {
  tail call void @_ZSt8__fill_aIPPN11xalanc_1_109XalanNodeES2_EvT_S4_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIPPN11xalanc_1_109XalanNodeES2_EvT_S4_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat !prof !181 {
  tail call void @_ZSt9__fill_a1IPPN11xalanc_1_109XalanNodeES2_EN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPPN11xalanc_1_109XalanNodeES2_EN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat !prof !181 {
  %4 = load ptr, ptr %2, align 8, !tbaa !185
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %10, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  store ptr %4, ptr %7, align 8, !tbaa !185
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %6, !llvm.loop !250

10:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefList10removeNodeEPKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !181 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !185
  %4 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  %7 = call noundef ptr @_ZSt4findIPPN11xalanc_1_109XalanNodeEPKS1_ET_S6_S6_RKT0_(ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  %8 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %7) #13
  br label %12

12:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4findIPPN11xalanc_1_109XalanNodeEPKS1_ET_S6_S6_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat !prof !181 {
  %4 = tail call ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKPKN11xalanc_1_109XalanNodeEEENS0_16_Iter_equals_valIT_EERS8_(ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  %5 = tail call noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKPKS1_EEET_SB_SB_T0_(ptr noundef %0, ptr noundef %1, ptr %4) #13
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !181 {
  %3 = getelementptr inbounds ptr, ptr %1, i64 1
  %4 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull %3) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKPKS1_EEET_SB_SB_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #2 comdat !prof !181 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !185
  call void @_ZSt19__iterator_categoryIPPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  %5 = call noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKPKS1_EEET_SB_SB_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) #13
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKPKN11xalanc_1_109XalanNodeEEENS0_16_Iter_equals_valIT_EERS8_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat !prof !251 {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8
  call void @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_109XalanNodeEEC2ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKPKS1_EEET_SB_SB_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #2 comdat !prof !181 {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8
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
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_109XalanNodeEEclIPPS3_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %12) #13
  br i1 %13, label %47, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %12, i64 1
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_109XalanNodeEEclIPPS3_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %15) #13
  br i1 %16, label %47, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds ptr, ptr %12, i64 2
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_109XalanNodeEEclIPPS3_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %18) #13
  br i1 %19, label %47, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds ptr, ptr %12, i64 3
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_109XalanNodeEEclIPPS3_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %21) #13
  br i1 %22, label %47, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds ptr, ptr %12, i64 4
  %25 = add nsw i64 %11, -1
  %26 = icmp sgt i64 %11, 1
  br i1 %26, label %10, label %27, !llvm.loop !252

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
  %35 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_109XalanNodeEEclIPPS3_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %32) #13
  br i1 %35, label %47, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds ptr, ptr %32, i64 1
  br label %38

38:                                               ; preds = %30, %36
  %39 = phi ptr [ %32, %30 ], [ %37, %36 ]
  %40 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_109XalanNodeEEclIPPS3_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %39) #13
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds ptr, ptr %39, i64 1
  br label %43

43:                                               ; preds = %30, %41
  %44 = phi ptr [ %32, %30 ], [ %42, %41 ]
  %45 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_109XalanNodeEEclIPPS3_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %44) #13
  br i1 %45, label %47, label %46

46:                                               ; preds = %43, %30
  br label %47

47:                                               ; preds = %20, %17, %14, %10, %43, %38, %34, %46
  %48 = phi ptr [ %1, %46 ], [ %32, %34 ], [ %39, %38 ], [ %44, %43 ], [ %21, %20 ], [ %18, %17 ], [ %15, %14 ], [ %12, %10 ]
  ret ptr %48
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !234 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_109XalanNodeEEclIPPS3_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !181 {
  %3 = load ptr, ptr %1, align 8, !tbaa !185
  %4 = load ptr, ptr %0, align 8, !tbaa !253
  %5 = load ptr, ptr %4, align 8, !tbaa !185
  %6 = icmp eq ptr %3, %5
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_109XalanNodeEEC2ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !251 {
  store ptr %1, ptr %0, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !234 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %9, label %5, !prof !255

5:                                                ; preds = %3
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %7 = tail call noundef ptr @_ZSt4copyIPPN11xalanc_1_109XalanNodeES3_ET0_T_S5_S4_(ptr noundef %2, ptr noundef %6, ptr noundef %1) #13
  %8 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #13
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8) #13
  br label %9

9:                                                ; preds = %5, %3
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPPN11xalanc_1_109XalanNodeES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !234 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %0) #13
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %1) #13
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !234 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %8, label %4, !prof !256

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %6, %4 ], [ %1, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %6 = add i64 %5, -1
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %4, !prof !257, !llvm.loop !258

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !234 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !185
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_109XalanNodeEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !234 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !234 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_109XalanNodeEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !259 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !199
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !199
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !206
  %7 = getelementptr inbounds ptr, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %7) #13
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefList10removeNodeEj(ptr noundef nonnull align 8 dereferenceable(44) %0, i32 noundef %1) local_unnamed_addr #2 align 2 !prof !181 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %6) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !260 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !199
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5, !prof !261

5:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #13
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !262 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %5 = load i64, ptr %3, align 8, !tbaa !199
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !prof !263, !llvm.loop !264

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefList7setNodeEjPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 !prof !234 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1
  %5 = zext i32 %1 to i64
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %5) #13
  store ptr %2, ptr %6, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !234 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !206
  %5 = getelementptr inbounds ptr, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefList8addNodesERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 align 2 !prof !181 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !169
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1
  br label %12

11:                                               ; preds = %20, %2
  ret void

12:                                               ; preds = %9, %20
  %13 = phi i32 [ 0, %9 ], [ %21, %20 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %14 = load ptr, ptr %1, align 8, !tbaa !169
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  %17 = call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %13) #13
  store ptr %17, ptr %3, align 8, !tbaa !185
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  br label %20

20:                                               ; preds = %19, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  %21 = add nuw i32 %13, 1
  %22 = icmp eq i32 %21, %7
  br i1 %22, label %11, label %12, !llvm.loop !265
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefList18addNodesInDocOrderERKNS_13XalanNodeListERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 align 2 !prof !181 {
  %4 = load ptr, ptr %1, align 8, !tbaa !169
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %3
  ret void

10:                                               ; preds = %3, %10
  %11 = phi i32 [ %16, %10 ], [ 0, %3 ]
  %12 = load ptr, ptr %1, align 8, !tbaa !169
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %11) #13
  tail call void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef %15, ptr noundef nonnull align 8 dereferenceable(24) %2) #13
  %16 = add nuw i32 %11, 1
  %17 = icmp eq i32 %16, %7
  br i1 %17, label %9, label %10, !llvm.loop !266
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 align 2 !prof !241 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %"struct.xalanc_1_10::ExecutionContextPredicate", align 8
  store ptr %1, ptr %4, align 8, !tbaa !185
  %7 = icmp eq ptr %1, null
  br i1 %7, label %71, label %8, !prof !267

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1
  %10 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #13
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13, !prof !267

12:                                               ; preds = %8
  tail call void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull %1) #13
  br label %71

13:                                               ; preds = %8
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #13
  %15 = load ptr, ptr %14, align 8, !tbaa !185
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %71, label %17, !prof !267

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5frontEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #13
  %19 = load ptr, ptr %18, align 8, !tbaa !185
  %20 = load ptr, ptr %19, align 8, !tbaa !169
  %21 = getelementptr inbounds ptr, ptr %20, i64 4
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef i32 %22(ptr noundef nonnull align 8 dereferenceable(8) %19) #13
  %24 = icmp eq i32 %23, 9
  br i1 %24, label %30, label %25, !prof !267

25:                                               ; preds = %17
  %26 = load ptr, ptr %19, align 8, !tbaa !169
  %27 = getelementptr inbounds ptr, ptr %26, i64 12
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %19) #13
  br label %30

30:                                               ; preds = %17, %25
  %31 = phi ptr [ %29, %25 ], [ %19, %17 ]
  %32 = load ptr, ptr %1, align 8, !tbaa !169
  %33 = getelementptr inbounds ptr, ptr %32, i64 26
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef zeroext i1 %34(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  br i1 %35, label %36, label %60, !prof !243

36:                                               ; preds = %30
  %37 = load ptr, ptr %1, align 8, !tbaa !169
  %38 = getelementptr inbounds ptr, ptr %37, i64 12
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %41 = icmp eq ptr %40, %31
  br i1 %41, label %42, label %60, !prof !243

42:                                               ; preds = %36
  %43 = load ptr, ptr %15, align 8, !tbaa !169
  %44 = getelementptr inbounds ptr, ptr %43, i64 4
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef i32 %45(ptr noundef nonnull align 8 dereferenceable(8) %15) #13
  %47 = icmp eq i32 %46, 9
  br i1 %47, label %53, label %48, !prof !267

48:                                               ; preds = %42
  %49 = load ptr, ptr %15, align 8, !tbaa !169
  %50 = getelementptr inbounds ptr, ptr %49, i64 12
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %15) #13
  br label %53

53:                                               ; preds = %42, %48
  %54 = phi ptr [ %52, %48 ], [ %15, %42 ]
  %55 = icmp eq ptr %31, %54
  %56 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #13
  %57 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #13
  br i1 %55, label %58, label %65, !prof !243

58:                                               ; preds = %53
  %59 = call fastcc noundef zeroext i1 @_ZN11xalanc_1_10L30findInsertionPointBinarySearchEPNS_9XalanNodeEPS1_S2_RS2_(ptr noundef nonnull %1, ptr noundef %56, ptr noundef %57, ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  br i1 %59, label %67, label %70, !prof !243

60:                                               ; preds = %36, %30
  %61 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #13
  %62 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #13
  call void @_ZN11xalanc_1_1025ExecutionContextPredicateC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(9) %6, ptr noundef nonnull align 8 dereferenceable(24) %2) #13
  %63 = load ptr, ptr %6, align 8
  %64 = call noundef zeroext i1 @_ZN11xalanc_1_1030findInsertionPointLinearSearchINS_25ExecutionContextPredicateEEEbPNS_9XalanNodeEPS3_S4_RS4_T_(ptr noundef nonnull %1, ptr noundef %61, ptr noundef %62, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr %63) #13
  br i1 %64, label %67, label %70, !prof !243

65:                                               ; preds = %53
  %66 = call noundef zeroext i1 @_ZN11xalanc_1_1030findInsertionPointLinearSearchINS_14IndexPredicateEEEbPNS_9XalanNodeEPS3_S4_RS4_T_(ptr noundef nonnull %1, ptr noundef %56, ptr noundef %57, ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  br i1 %66, label %67, label %70, !prof !243

67:                                               ; preds = %58, %60, %65
  %68 = load ptr, ptr %5, align 8, !tbaa !185
  %69 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_RKS2_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %68, ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  br label %70

70:                                               ; preds = %58, %60, %67, %65
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  br label %71

71:                                               ; preds = %13, %70, %12, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefList18addNodesInDocOrderERKNS_15NodeRefListBaseERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 align 2 !prof !181 {
  %4 = load ptr, ptr %1, align 8, !tbaa !169
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %3
  ret void

10:                                               ; preds = %3, %10
  %11 = phi i32 [ %16, %10 ], [ 0, %3 ]
  %12 = load ptr, ptr %1, align 8, !tbaa !169
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %11) #13
  tail call void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef %15, ptr noundef nonnull align 8 dereferenceable(24) %2) #13
  %16 = add nuw i32 %11, 1
  %17 = icmp eq i32 %16, %7
  br i1 %17, label %9, label %10, !llvm.loop !268
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefList18addNodesInDocOrderERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(44) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 align 2 !prof !269 {
  %4 = alloca %"class.xalanc_1_10::MutableNodeRefList::addNodeInDocOrderFunctor", align 8
  %5 = alloca %"class.xalanc_1_10::MutableNodeRefList::addNodeInDocOrderFunctor", align 8
  %6 = alloca %"class.std::reverse_iterator", align 8
  %7 = alloca %"class.std::reverse_iterator", align 8
  %8 = alloca %"class.std::reverse_iterator", align 8
  %9 = alloca %"class.std::reverse_iterator", align 8
  %10 = alloca %"class.xalanc_1_10::MutableNodeRefList::addNodeInDocOrderFunctor", align 8
  %11 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !172
  switch i32 %12, label %34 [
    i32 0, label %13
    i32 1, label %21
  ], !prof !270

13:                                               ; preds = %3
  %14 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %1, i64 0, i32 1
  %15 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %14) #13
  %16 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %14) #13
  call void @_ZN11xalanc_1_1018MutableNodeRefList24addNodeInDocOrderFunctorC2ERS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(24) %2) #13
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds { ptr, ptr }, ptr %4, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = call { ptr, ptr } @_ZSt8for_eachIPKPN11xalanc_1_109XalanNodeENS0_18MutableNodeRefList24addNodeInDocOrderFunctorEET0_T_S8_S7_(ptr noundef %15, ptr noundef %16, ptr %17, ptr %19) #13
  br label %46

21:                                               ; preds = %3
  %22 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1
  %23 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %22) #13
  %24 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %1, i64 0, i32 1
  br i1 %23, label %25, label %27, !prof !271

25:                                               ; preds = %21
  %26 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %24) #13
  br label %46

27:                                               ; preds = %21
  %28 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %24) #13
  %29 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %24) #13
  call void @_ZN11xalanc_1_1018MutableNodeRefList24addNodeInDocOrderFunctorC2ERS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(24) %2) #13
  %30 = load ptr, ptr %5, align 8
  %31 = getelementptr inbounds { ptr, ptr }, ptr %5, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8
  %33 = call { ptr, ptr } @_ZSt8for_eachIPKPN11xalanc_1_109XalanNodeENS0_18MutableNodeRefList24addNodeInDocOrderFunctorEET0_T_S8_S7_(ptr noundef %28, ptr noundef %29, ptr %30, ptr %32) #13
  br label %46

34:                                               ; preds = %3
  %35 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1
  %36 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %35) #13
  %37 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %1, i64 0, i32 1
  br i1 %36, label %38, label %41

38:                                               ; preds = %34
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6rbeginEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %37) #13
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4rendEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %37) #13
  %39 = call ptr @_ZSt13back_inserterIN11xalanc_1_1011XalanVectorIPNS0_9XalanNodeENS0_31MemoryManagedConstructionTraitsIS3_EEEEESt20back_insert_iteratorIT_ERS8_(ptr noundef nonnull align 8 dereferenceable(32) %35) #13
  %40 = call ptr @_ZSt4copyISt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEESt20back_insert_iteratorINS1_11XalanVectorIS3_NS1_31MemoryManagedConstructionTraitsIS3_EEEEEET0_T_SE_SD_(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr %39) #13
  br label %46

41:                                               ; preds = %34
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6rbeginEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %37) #13
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4rendEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %37) #13
  call void @_ZN11xalanc_1_1018MutableNodeRefList24addNodeInDocOrderFunctorC2ERS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(24) %2) #13
  %42 = load ptr, ptr %10, align 8
  %43 = getelementptr inbounds { ptr, ptr }, ptr %10, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8
  %45 = call { ptr, ptr } @_ZSt8for_eachISt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEENS1_18MutableNodeRefList24addNodeInDocOrderFunctorEET0_T_SA_S9_(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr %42, ptr %44) #13
  br label %46

46:                                               ; preds = %27, %25, %41, %38, %13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZSt8for_eachIPKPN11xalanc_1_109XalanNodeENS0_18MutableNodeRefList24addNodeInDocOrderFunctorEET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #2 comdat !prof !269 {
  %5 = alloca %"class.xalanc_1_10::MutableNodeRefList::addNodeInDocOrderFunctor", align 8
  store ptr %2, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, ptr }, ptr %5, i64 0, i32 1
  store ptr %3, ptr %6, align 8
  %7 = icmp eq ptr %0, %1
  br i1 %7, label %16, label %8, !prof !272

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %11, %8 ], [ %0, %4 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !185
  call void @_ZNK11xalanc_1_1018MutableNodeRefList24addNodeInDocOrderFunctorclEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %10) #13
  %11 = getelementptr inbounds ptr, ptr %9, i64 1
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %8, !prof !273, !llvm.loop !274

13:                                               ; preds = %8
  %14 = load ptr, ptr %5, align 8, !tbaa.struct !275
  %15 = load ptr, ptr %6, align 8, !tbaa.struct !276
  br label %16

16:                                               ; preds = %13, %4
  %17 = phi ptr [ %15, %13 ], [ %3, %4 ]
  %18 = phi ptr [ %14, %13 ], [ %2, %4 ]
  %19 = insertvalue { ptr, ptr } poison, ptr %18, 0
  %20 = insertvalue { ptr, ptr } %19, ptr %17, 1
  ret { ptr, ptr } %20
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018MutableNodeRefList24addNodeInDocOrderFunctorC2ERS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(44) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !269 {
  store ptr %1, ptr %0, align 8, !tbaa !185
  %4 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList::addNodeInDocOrderFunctor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !277 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !199
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 !prof !181 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %33, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !200
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !199
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %12 = load ptr, ptr %0, align 8, !tbaa !202
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  br label %33

13:                                               ; preds = %5
  %14 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !199
  %17 = load i64, ptr %8, align 8, !tbaa !199
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %17) #13
  br label %28

20:                                               ; preds = %13
  %21 = icmp ult i64 %16, %17
  br i1 %21, label %22, label %28

22:                                               ; preds = %20
  %23 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  %24 = load i64, ptr %15, align 8, !tbaa !199
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %27 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %26, ptr noundef %25, ptr noundef %27) #13
  br label %28

28:                                               ; preds = %20, %22, %19
  %29 = phi ptr [ %14, %19 ], [ %25, %22 ], [ %14, %20 ]
  %30 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  %31 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %32 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_109XalanNodeEPS2_ET0_T_S7_S6_(ptr noundef %30, ptr noundef %29, ptr noundef %31) #13
  br label %33

33:                                               ; preds = %11, %28, %2
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt4copyISt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEESt20back_insert_iteratorINS1_11XalanVectorIS3_NS1_31MemoryManagedConstructionTraitsIS3_EEEEEET0_T_SE_SD_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #2 comdat !prof !181 {
  %4 = alloca %"class.std::reverse_iterator", align 8
  %5 = alloca %"class.std::reverse_iterator", align 8
  %6 = alloca %"class.std::reverse_iterator", align 8
  %7 = alloca %"class.std::reverse_iterator", align 8
  call void @_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  call void @_ZSt12__miter_baseIPKPN11xalanc_1_109XalanNodeEEDTcl23__make_reverse_iteratorcl12__miter_basecldtfp_4baseEEEESt16reverse_iteratorIT_E(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %4, ptr noundef nonnull %5) #13
  call void @_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  call void @_ZSt12__miter_baseIPKPN11xalanc_1_109XalanNodeEEDTcl23__make_reverse_iteratorcl12__miter_basecldtfp_4baseEEEESt16reverse_iteratorIT_E(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %6, ptr noundef nonnull %7) #13
  %8 = call ptr @_ZSt13__copy_move_aILb0ESt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEESt20back_insert_iteratorINS1_11XalanVectorIS3_NS1_31MemoryManagedConstructionTraitsIS3_EEEEEET1_T0_SE_SD_(ptr noundef nonnull %4, ptr noundef nonnull %6, ptr %2) #13
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6rbeginEv(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 !prof !181 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  tail call void @_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEC2ES4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4rendEv(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !181 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  tail call void @_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEC2ES4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13back_inserterIN11xalanc_1_1011XalanVectorIPNS0_9XalanNodeENS0_31MemoryManagedConstructionTraitsIS3_EEEEESt20back_insert_iteratorIT_ERS8_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat !prof !181 {
  %2 = alloca %"class.std::back_insert_iterator", align 8
  call void @_ZNSt20back_insert_iteratorIN11xalanc_1_1011XalanVectorIPNS0_9XalanNodeENS0_31MemoryManagedConstructionTraitsIS3_EEEEEC2ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZSt8for_eachISt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEENS1_18MutableNodeRefList24addNodeInDocOrderFunctorEET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #2 comdat !prof !181 {
  %5 = alloca %"class.xalanc_1_10::MutableNodeRefList::addNodeInDocOrderFunctor", align 8
  store ptr %2, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, ptr }, ptr %5, i64 0, i32 1
  store ptr %3, ptr %6, align 8
  %7 = tail call noundef zeroext i1 @_ZStneIPKPN11xalanc_1_109XalanNodeEEbRKSt16reverse_iteratorIT_ES9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  br i1 %7, label %8, label %16

8:                                                ; preds = %4, %8
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  %10 = load ptr, ptr %9, align 8, !tbaa !185
  call void @_ZNK11xalanc_1_1018MutableNodeRefList24addNodeInDocOrderFunctorclEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %10) #13
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  %12 = call noundef zeroext i1 @_ZStneIPKPN11xalanc_1_109XalanNodeEEbRKSt16reverse_iteratorIT_ES9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  br i1 %12, label %8, label %13, !llvm.loop !278

13:                                               ; preds = %8
  %14 = load ptr, ptr %5, align 8, !tbaa.struct !275
  %15 = load ptr, ptr %6, align 8, !tbaa.struct !276
  br label %16

16:                                               ; preds = %13, %4
  %17 = phi ptr [ %15, %13 ], [ %3, %4 ]
  %18 = phi ptr [ %14, %13 ], [ %2, %4 ]
  %19 = insertvalue { ptr, ptr } poison, ptr %18, 0
  %20 = insertvalue { ptr, ptr } %19, ptr %17, 1
  ret { ptr, ptr } %20
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018MutableNodeRefList24addNodeInDocOrderFunctorclEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !241 {
  %3 = load ptr, ptr %0, align 8, !tbaa !279
  %4 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList::addNodeInDocOrderFunctor", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !281
  tail call void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %3, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %5) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13__copy_move_aILb0ESt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEESt20back_insert_iteratorINS1_11XalanVectorIS3_NS1_31MemoryManagedConstructionTraitsIS3_EEEEEET1_T0_SE_SD_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #2 comdat !prof !181 {
  %4 = alloca %"class.std::back_insert_iterator", align 8
  %5 = alloca %"class.std::reverse_iterator", align 8
  %6 = alloca %"class.std::reverse_iterator", align 8
  %7 = alloca %"class.std::reverse_iterator", align 8
  %8 = alloca %"class.std::reverse_iterator", align 8
  store ptr %2, ptr %4, align 8
  call void @_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  call void @_ZSt12__niter_baseISt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEET_S7_(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %5, ptr noundef nonnull %6) #11
  call void @_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  call void @_ZSt12__niter_baseISt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEET_S7_(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %7, ptr noundef nonnull %8) #11
  %9 = call ptr @_ZSt12__niter_baseISt20back_insert_iteratorIN11xalanc_1_1011XalanVectorIPNS1_9XalanNodeENS1_31MemoryManagedConstructionTraitsIS4_EEEEEET_S9_(ptr %2) #11
  %10 = call ptr @_ZSt14__copy_move_a1ILb0ESt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEESt20back_insert_iteratorINS1_11XalanVectorIS3_NS1_31MemoryManagedConstructionTraitsIS3_EEEEEET1_T0_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr %9) #13
  %11 = call ptr @_ZSt12__niter_wrapISt20back_insert_iteratorIN11xalanc_1_1011XalanVectorIPNS1_9XalanNodeENS1_31MemoryManagedConstructionTraitsIS4_EEEEEET_RKS9_S9_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr %10) #13
  ret ptr %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt12__miter_baseIPKPN11xalanc_1_109XalanNodeEEDTcl23__make_reverse_iteratorcl12__miter_basecldtfp_4baseEEEESt16reverse_iteratorIT_E(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !181 {
  %3 = tail call noundef ptr @_ZNKSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_109XalanNodeEET_S5_(ptr noundef %3) #13
  tail call void @_ZSt23__make_reverse_iteratorIPKPN11xalanc_1_109XalanNodeEESt16reverse_iteratorIT_ES6_(ptr dead_on_unwind writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef %4) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !181 {
  %3 = load ptr, ptr %1, align 8, !tbaa !282
  store ptr %3, ptr %0, align 8, !tbaa !282
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__niter_wrapISt20back_insert_iteratorIN11xalanc_1_1011XalanVectorIPNS1_9XalanNodeENS1_31MemoryManagedConstructionTraitsIS4_EEEEEET_RKS9_S9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) local_unnamed_addr #0 comdat !prof !181 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt14__copy_move_a1ILb0ESt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEESt20back_insert_iteratorINS1_11XalanVectorIS3_NS1_31MemoryManagedConstructionTraitsIS3_EEEEEET1_T0_SE_SD_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #2 comdat !prof !181 {
  %4 = alloca %"class.std::reverse_iterator", align 8
  %5 = alloca %"class.std::reverse_iterator", align 8
  call void @_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  call void @_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %6 = call ptr @_ZSt14__copy_move_a2ILb0ESt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEESt20back_insert_iteratorINS1_11XalanVectorIS3_NS1_31MemoryManagedConstructionTraitsIS3_EEEEEET1_T0_SE_SD_(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt12__niter_baseISt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEET_S7_(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !181 {
  tail call void @_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__niter_baseISt20back_insert_iteratorIN11xalanc_1_1011XalanVectorIPNS1_9XalanNodeENS1_31MemoryManagedConstructionTraitsIS4_EEEEEET_S9_(ptr %0) local_unnamed_addr #0 comdat !prof !181 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt14__copy_move_a2ILb0ESt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEESt20back_insert_iteratorINS1_11XalanVectorIS3_NS1_31MemoryManagedConstructionTraitsIS3_EEEEEET1_T0_SE_SD_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #2 comdat !prof !181 {
  %4 = alloca %"class.std::reverse_iterator", align 8
  %5 = alloca %"class.std::reverse_iterator", align 8
  call void @_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  call void @_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %6 = call ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEESt20back_insert_iteratorINS4_11XalanVectorIS6_NS4_31MemoryManagedConstructionTraitsIS6_EEEEEEET0_T_SH_SG_(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEESt20back_insert_iteratorINS4_11XalanVectorIS6_NS4_31MemoryManagedConstructionTraitsIS6_EEEEEEET0_T_SH_SG_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #2 comdat align 2 !prof !181 {
  %4 = alloca %"class.std::back_insert_iterator", align 8
  store ptr %2, ptr %4, align 8
  %5 = tail call noundef i64 @_ZStmiIPKPN11xalanc_1_109XalanNodeES4_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKS6_IT0_E(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %11, label %9

7:                                                ; preds = %11
  %8 = load ptr, ptr %4, align 8
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi ptr [ %8, %7 ], [ %2, %3 ]
  ret ptr %10

11:                                               ; preds = %3, %11
  %12 = phi i64 [ %18, %11 ], [ %5, %3 ]
  %13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorIN11xalanc_1_1011XalanVectorIPNS0_9XalanNodeENS0_31MemoryManagedConstructionTraitsIS3_EEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorIN11xalanc_1_1011XalanVectorIPNS0_9XalanNodeENS0_31MemoryManagedConstructionTraitsIS3_EEEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13) #13
  %16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorIN11xalanc_1_1011XalanVectorIPNS0_9XalanNodeENS0_31MemoryManagedConstructionTraitsIS3_EEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  %18 = add nsw i64 %12, -1
  %19 = icmp ugt i64 %12, 1
  br i1 %19, label %11, label %7, !llvm.loop !284
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZStmiIPKPN11xalanc_1_109XalanNodeES4_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKS6_IT0_E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat !prof !181 {
  %3 = tail call noundef ptr @_ZNKSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %4 = tail call noundef ptr @_ZNKSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !181 {
  %2 = load ptr, ptr %0, align 8, !tbaa !282
  %3 = getelementptr inbounds ptr, ptr %2, i64 -1
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorIN11xalanc_1_1011XalanVectorIPNS0_9XalanNodeENS0_31MemoryManagedConstructionTraitsIS3_EEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !181 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorIN11xalanc_1_1011XalanVectorIPNS0_9XalanNodeENS0_31MemoryManagedConstructionTraitsIS3_EEEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !181 {
  %3 = load ptr, ptr %0, align 8, !tbaa !285
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !181 {
  %2 = load ptr, ptr %0, align 8, !tbaa !282
  %3 = getelementptr inbounds ptr, ptr %2, i64 -1
  store ptr %3, ptr %0, align 8, !tbaa !282
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorIN11xalanc_1_1011XalanVectorIPNS0_9XalanNodeENS0_31MemoryManagedConstructionTraitsIS3_EEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !181 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !181 {
  %2 = load ptr, ptr %0, align 8, !tbaa !282
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt23__make_reverse_iteratorIPKPN11xalanc_1_109XalanNodeEESt16reverse_iteratorIT_ES6_(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !181 {
  tail call void @_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEC2ES4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEC2ES4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !181 {
  store ptr %1, ptr %0, align 8, !tbaa !282
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt20back_insert_iteratorIN11xalanc_1_1011XalanVectorIPNS0_9XalanNodeENS0_31MemoryManagedConstructionTraitsIS3_EEEEEC2ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 !prof !181 {
  store ptr %1, ptr %0, align 8, !tbaa !285
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStneIPKPN11xalanc_1_109XalanNodeEEbRKSt16reverse_iteratorIT_ES9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !181 {
  %3 = tail call noundef zeroext i1 @_ZSteqIPKPN11xalanc_1_109XalanNodeEEbRKSt16reverse_iteratorIT_ES9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIPKPN11xalanc_1_109XalanNodeEEbRKSt16reverse_iteratorIT_ES9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat !prof !181 {
  %3 = tail call noundef ptr @_ZNKSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  %4 = tail call noundef ptr @_ZNKSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !287 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !206
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !199
  %6 = getelementptr ptr, ptr %3, i64 %5
  %7 = getelementptr ptr, ptr %6, i64 -1
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5frontEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !241 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !206
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef zeroext i1 @_ZN11xalanc_1_10L30findInsertionPointBinarySearchEPNS_9XalanNodeEPS1_S2_RS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %3) unnamed_addr #2 !prof !241 !PGOFuncName !288 {
  %5 = load ptr, ptr %0, align 8, !tbaa !169
  %6 = getelementptr inbounds ptr, ptr %5, i64 27
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i64 %7(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  %9 = getelementptr inbounds ptr, ptr %2, i64 -1
  %10 = load ptr, ptr %9, align 8, !tbaa !185
  %11 = load ptr, ptr %10, align 8, !tbaa !169
  %12 = getelementptr inbounds ptr, ptr %11, i64 27
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef i64 %13(ptr noundef nonnull align 8 dereferenceable(8) %10) #13
  %15 = icmp ult i64 %14, %8
  br i1 %15, label %59, label %16, !prof !243

16:                                               ; preds = %4
  %17 = icmp ult ptr %9, %1
  br i1 %17, label %45, label %18

18:                                               ; preds = %16, %41
  %19 = phi ptr [ %43, %41 ], [ %1, %16 ]
  %20 = phi ptr [ %42, %41 ], [ %9, %16 ]
  %21 = ptrtoint ptr %20 to i64
  %22 = ptrtoint ptr %19 to i64
  %23 = sub i64 %21, %22
  %24 = ashr exact i64 %23, 3
  %25 = sdiv i64 %24, 2
  %26 = getelementptr inbounds ptr, ptr %19, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !185
  %28 = load ptr, ptr %27, align 8, !tbaa !169
  %29 = getelementptr inbounds ptr, ptr %28, i64 27
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef i64 %30(ptr noundef nonnull align 8 dereferenceable(8) %27) #13
  %32 = icmp ult i64 %8, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %18
  %34 = icmp eq ptr %26, %1
  br i1 %34, label %45, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds ptr, ptr %26, i64 -1
  br label %41

37:                                               ; preds = %18
  %38 = icmp ugt i64 %8, %31
  br i1 %38, label %39, label %45

39:                                               ; preds = %37
  %40 = getelementptr inbounds ptr, ptr %26, i64 1
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi ptr [ %36, %35 ], [ %20, %39 ]
  %43 = phi ptr [ %19, %35 ], [ %40, %39 ]
  %44 = icmp ugt ptr %43, %42
  br i1 %44, label %45, label %18, !llvm.loop !289

45:                                               ; preds = %41, %33, %37, %16
  %46 = phi ptr [ %1, %16 ], [ %43, %41 ], [ %19, %33 ], [ %19, %37 ]
  %47 = phi i1 [ true, %16 ], [ true, %41 ], [ true, %33 ], [ false, %37 ]
  %48 = phi ptr [ %2, %16 ], [ %26, %41 ], [ %1, %33 ], [ %26, %37 ]
  %49 = phi i64 [ 0, %16 ], [ %31, %37 ], [ %31, %33 ], [ %31, %41 ]
  %50 = icmp eq i64 %8, %49
  br i1 %50, label %62, label %51

51:                                               ; preds = %45
  %52 = icmp eq ptr %48, %2
  %53 = icmp eq ptr %46, %2
  %54 = or i1 %53, %52
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = icmp ult i64 %49, %8
  %57 = zext i1 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %48, i64 %57
  br label %59

59:                                               ; preds = %55, %51, %4
  %60 = phi ptr [ %2, %4 ], [ %2, %51 ], [ %58, %55 ]
  %61 = phi i1 [ true, %4 ], [ %47, %51 ], [ %47, %55 ]
  store ptr %60, ptr %3, align 8, !tbaa !185
  br label %62

62:                                               ; preds = %59, %45
  %63 = phi i1 [ %47, %45 ], [ %61, %59 ]
  ret i1 %63
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1030findInsertionPointLinearSearchINS_14IndexPredicateEEEbPNS_9XalanNodeEPS3_S4_RS4_T_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat !prof !181 {
  %5 = alloca %"struct.xalanc_1_10::IndexPredicate", align 1
  br label %6

6:                                                ; preds = %12, %4
  %7 = phi ptr [ %1, %4 ], [ %14, %12 ]
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %7, align 8, !tbaa !185
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = call noundef zeroext i1 @_ZNK11xalanc_1_1014IndexPredicateclERKNS_9XalanNodeES3_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %10) #13
  %14 = getelementptr inbounds ptr, ptr %7, i64 1
  br i1 %13, label %6, label %15

15:                                               ; preds = %12, %9, %6
  %16 = phi ptr [ %7, %12 ], [ %7, %9 ], [ %2, %6 ]
  %17 = phi i1 [ true, %12 ], [ false, %9 ], [ true, %6 ]
  store ptr %16, ptr %3, align 8, !tbaa !185
  ret i1 %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1030findInsertionPointLinearSearchINS_25ExecutionContextPredicateEEEbPNS_9XalanNodeEPS3_S4_RS4_T_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr %4) local_unnamed_addr #2 comdat !prof !181 {
  %6 = alloca %"struct.xalanc_1_10::ExecutionContextPredicate", align 8
  store ptr %4, ptr %6, align 8
  br label %7

7:                                                ; preds = %13, %5
  %8 = phi ptr [ %1, %5 ], [ %15, %13 ]
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %8, align 8, !tbaa !185
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = call noundef zeroext i1 @_ZNK11xalanc_1_1025ExecutionContextPredicateclERKNS_9XalanNodeES3_(ptr noundef nonnull align 8 dereferenceable(9) %6, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %11) #13
  %15 = getelementptr inbounds ptr, ptr %8, i64 1
  br i1 %14, label %7, label %16

16:                                               ; preds = %13, %10, %7
  %17 = phi ptr [ %8, %13 ], [ %8, %10 ], [ %2, %7 ]
  %18 = phi i1 [ true, %13 ], [ false, %10 ], [ true, %7 ]
  store ptr %17, ptr %3, align 8, !tbaa !185
  ret i1 %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025ExecutionContextPredicateC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 !prof !181 {
  store ptr %1, ptr %0, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014IndexPredicateclERKNS_9XalanNodeES3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 !prof !181 {
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1017DocumentPredicateclERKNS_9XalanNodeES3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  br i1 %4, label %15, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %1, align 8, !tbaa !169
  %7 = getelementptr inbounds ptr, ptr %6, i64 27
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i64 %8(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %10 = load ptr, ptr %2, align 8, !tbaa !169
  %11 = getelementptr inbounds ptr, ptr %10, i64 27
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i64 %12(ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  %14 = icmp ugt i64 %9, %13
  br label %15

15:                                               ; preds = %3, %5
  %16 = phi i1 [ %14, %5 ], [ true, %3 ]
  ret i1 %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1017DocumentPredicateclERKNS_9XalanNodeES3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 !prof !181 {
  %4 = load ptr, ptr %1, align 8, !tbaa !169
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %8 = icmp eq i32 %7, 9
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load ptr, ptr %2, align 8, !tbaa !169
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  %14 = icmp eq i32 %13, 9
  br i1 %14, label %25, label %15

15:                                               ; preds = %9, %3
  %16 = load ptr, ptr %1, align 8, !tbaa !169
  %17 = getelementptr inbounds ptr, ptr %16, i64 12
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %20 = load ptr, ptr %2, align 8, !tbaa !169
  %21 = getelementptr inbounds ptr, ptr %20, i64 12
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  %24 = icmp ne ptr %19, %23
  br label %25

25:                                               ; preds = %9, %15
  %26 = phi i1 [ %24, %15 ], [ true, %9 ]
  ret i1 %26
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1025ExecutionContextPredicateclERKNS_9XalanNodeES3_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 !prof !181 {
  %4 = getelementptr inbounds %"struct.xalanc_1_10::ExecutionContextPredicate", ptr %0, i64 0, i32 1
  %5 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1017DocumentPredicateclERKNS_9XalanNodeES3_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !290
  %8 = load ptr, ptr %7, align 8, !tbaa !169
  %9 = getelementptr inbounds ptr, ptr %8, i64 9
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef zeroext i1 %10(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  br label %12

12:                                               ; preds = %3, %6
  %13 = phi i1 [ %11, %6 ], [ true, %3 ]
  ret i1 %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefList10clearNullsEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #2 align 2 !prof !234 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  %5 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  store ptr null, ptr %2, align 8, !tbaa !185
  %6 = call noundef ptr @_ZSt6removeIPPN11xalanc_1_109XalanNodeES2_ET_S4_S4_RKT0_(ptr noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  %7 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  %8 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %6, ptr noundef %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  %9 = call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  br i1 %9, label %10, label %12, !prof !236

10:                                               ; preds = %1
  %11 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %0, i64 0, i32 1
  store i32 0, ptr %11, align 8, !tbaa !172
  br label %12

12:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt6removeIPPN11xalanc_1_109XalanNodeES2_ET_S4_S4_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat !prof !234 {
  %4 = tail call ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKPN11xalanc_1_109XalanNodeEEENS0_16_Iter_equals_valIT_EERS7_(ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  %5 = tail call noundef ptr @_ZSt11__remove_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_(ptr noundef %0, ptr noundef %1, ptr %4) #13
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt11__remove_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #2 comdat !prof !234 {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val.1", align 8
  store ptr %2, ptr %4, align 8
  %5 = tail call noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_(ptr noundef %0, ptr noundef %1, ptr %2) #13
  %6 = icmp eq ptr %5, %1
  %7 = getelementptr inbounds ptr, ptr %5, i64 1
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %21, label %10, !prof !293

10:                                               ; preds = %3, %17
  %11 = phi ptr [ %19, %17 ], [ %7, %3 ]
  %12 = phi ptr [ %18, %17 ], [ %5, %3 ]
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_109XalanNodeEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %11) #13
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %11, align 8, !tbaa !185
  store ptr %15, ptr %12, align 8, !tbaa !185
  %16 = getelementptr inbounds ptr, ptr %12, i64 1
  br label %17

17:                                               ; preds = %10, %14
  %18 = phi ptr [ %12, %10 ], [ %16, %14 ]
  %19 = getelementptr inbounds ptr, ptr %11, i64 1
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %21, label %10, !prof !294, !llvm.loop !295

21:                                               ; preds = %17, %3
  %22 = phi ptr [ %5, %3 ], [ %18, %17 ]
  ret ptr %22
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKPN11xalanc_1_109XalanNodeEEENS0_16_Iter_equals_valIT_EERS7_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat !prof !234 {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val.1", align 8
  call void @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_109XalanNodeEEC2ERS5_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #2 comdat !prof !234 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !185
  call void @_ZSt19__iterator_categoryIPPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  %5 = call noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) #13
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_109XalanNodeEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !234 {
  %3 = load ptr, ptr %1, align 8, !tbaa !185
  %4 = load ptr, ptr %0, align 8, !tbaa !296
  %5 = load ptr, ptr %4, align 8, !tbaa !185
  %6 = icmp eq ptr %3, %5
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #2 comdat !prof !234 {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val.1", align 8
  store ptr %2, ptr %4, align 8
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = ashr i64 %7, 5
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %30, !prof !256

10:                                               ; preds = %3, %23
  %11 = phi i64 [ %25, %23 ], [ %8, %3 ]
  %12 = phi ptr [ %24, %23 ], [ %0, %3 ]
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_109XalanNodeEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %12) #13
  br i1 %13, label %47, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %12, i64 1
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_109XalanNodeEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %15) #13
  br i1 %16, label %47, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds ptr, ptr %12, i64 2
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_109XalanNodeEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %18) #13
  br i1 %19, label %47, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds ptr, ptr %12, i64 3
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_109XalanNodeEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %21) #13
  br i1 %22, label %47, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds ptr, ptr %12, i64 4
  %25 = add nsw i64 %11, -1
  %26 = icmp sgt i64 %11, 1
  br i1 %26, label %10, label %27, !prof !298, !llvm.loop !299

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
  ], !prof !300

34:                                               ; preds = %30
  %35 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_109XalanNodeEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %32) #13
  br i1 %35, label %47, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds ptr, ptr %32, i64 1
  br label %38

38:                                               ; preds = %30, %36
  %39 = phi ptr [ %32, %30 ], [ %37, %36 ]
  %40 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_109XalanNodeEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %39) #13
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds ptr, ptr %39, i64 1
  br label %43

43:                                               ; preds = %30, %41
  %44 = phi ptr [ %32, %30 ], [ %42, %41 ]
  %45 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_109XalanNodeEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %44) #13
  br i1 %45, label %47, label %46, !prof !236

46:                                               ; preds = %43, %30
  br label %47

47:                                               ; preds = %20, %17, %14, %10, %43, %38, %34, %46
  %48 = phi ptr [ %1, %46 ], [ %32, %34 ], [ %39, %38 ], [ %44, %43 ], [ %21, %20 ], [ %18, %17 ], [ %15, %14 ], [ %12, %10 ]
  ret ptr %48
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_109XalanNodeEEC2ERS5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !234 {
  store ptr %1, ptr %0, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefList7reverseEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #2 align 2 !prof !181 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  %4 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  tail call void @_ZSt7reverseIPPN11xalanc_1_109XalanNodeEEvT_S4_(ptr noundef %3, ptr noundef %4) #13
  %5 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !172
  switch i32 %6, label %10 [
    i32 1, label %8
    i32 2, label %7
  ]

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %1, %7
  %9 = phi i32 [ 1, %7 ], [ 2, %1 ]
  store i32 %9, ptr %5, align 8, !tbaa !172
  br label %10

10:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt7reverseIPPN11xalanc_1_109XalanNodeEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !181 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !185
  call void @_ZSt19__iterator_categoryIPPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @_ZSt9__reverseIPPN11xalanc_1_109XalanNodeEEvT_S4_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt9__reverseIPPN11xalanc_1_109XalanNodeEEvT_S4_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !181 {
  %3 = icmp ne ptr %0, %1
  %4 = getelementptr inbounds ptr, ptr %1, i64 -1
  %5 = icmp ugt ptr %4, %0
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %13

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %11, %7 ], [ %4, %2 ]
  %9 = phi ptr [ %10, %7 ], [ %0, %2 ]
  tail call void @_ZSt9iter_swapIPPN11xalanc_1_109XalanNodeES3_EvT_T0_(ptr noundef %9, ptr noundef nonnull %8) #13
  %10 = getelementptr inbounds ptr, ptr %9, i64 1
  %11 = getelementptr inbounds ptr, ptr %8, i64 -1
  %12 = icmp ult ptr %10, %11
  br i1 %12, label %7, label %13, !llvm.loop !301

13:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9iter_swapIPPN11xalanc_1_109XalanNodeES3_EvT_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !181 {
  tail call void @_ZSt4swapIPN11xalanc_1_109XalanNodeEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt4swapIPN11xalanc_1_109XalanNodeEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat !prof !181 {
  %3 = load ptr, ptr %0, align 8, !tbaa !185
  %4 = load ptr, ptr %1, align 8, !tbaa !185
  store ptr %4, ptr %0, align 8, !tbaa !185
  store ptr %3, ptr %1, align 8, !tbaa !185
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind optsize }
attributes #12 = { builtin nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!167}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166}
!36 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefListC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011NodeRefListC2ERN11xercesc_2_713MemoryManagerE, i64 18}
!37 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, i64 17}
!38 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE7releaseEv, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_, i64 17}
!39 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EED2Ev, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE17MemMgrAutoPtrData10deallocateEv, i64 17}
!40 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1018MutableNodeRefListEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_, i64 17}
!41 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE17MemMgrAutoPtrData10invariantsEv, i64 17}
!42 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE17MemMgrAutoPtrData10invariantsEv, i64 34}
!43 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE17MemMgrAutoPtrData10deallocateEv, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE17MemMgrAutoPtrData10invariantsEv, i64 17}
!44 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE17MemMgrAutoPtrData10deallocateEv, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18MutableNodeRefListELb0EE17MemMgrAutoPtrData12isInitilizedEv, i64 17}
!45 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefListD2Ev, ptr @_ZN11xalanc_1_1011NodeRefListD2Ev, i64 17}
!46 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefListaSERKNS_15NodeRefListBaseE, ptr @_ZN11xalanc_1_1011NodeRefListaSERKNS_15NodeRefListBaseE, i64 6850}
!47 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefList5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, i64 3187713}
!48 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, i64 1827527}
!49 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 7034618}
!50 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 3517309}
!51 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 7034976}
!52 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 3517308}
!53 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_9XalanNodeEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE, i64 3517308}
!54 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 180}
!55 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 180}
!56 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 180}
!57 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 180}
!58 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm, i64 52642}
!59 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 52642}
!60 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 52642}
!61 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 52642}
!62 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 52642}
!63 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, i64 52642}
!64 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 52642}
!65 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 52642}
!66 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm, i64 30}
!67 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 52673}
!68 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2679832}
!69 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 105337}
!70 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 52673}
!71 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 52673}
!72 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_, i64 52673}
!73 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_, i64 52673}
!74 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm, i64 1}
!75 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 52668}
!76 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 105285}
!77 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_, i64 52643}
!78 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, i64 52642}
!79 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 52642}
!80 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, i64 52641}
!81 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_9XalanNodeEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE, i64 298098808}
!82 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, i64 1}
!83 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 15}
!84 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 357177}
!85 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 336428}
!86 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 336428}
!87 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 336428}
!88 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_, ptr @_ZSt8distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_, i64 124518}
!89 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2414026}
!90 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 418513}
!91 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 418513}
!92 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, i64 180149}
!93 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 52480}
!94 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 180149}
!95 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 180149}
!96 = !{ptr @_ZSt8distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_, ptr @_ZSt19__iterator_categoryIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E17iterator_categoryERKS6_, i64 124518}
!97 = !{ptr @_ZSt8distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_, ptr @_ZSt10__distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag, i64 124518}
!98 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 104988}
!99 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 52494}
!100 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 52494}
!101 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 52494}
!102 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_, i64 298119648}
!103 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_RKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_mRKS2_, i64 127506}
!104 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_RKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 104960}
!105 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_RKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_, i64 52480}
!106 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_mRKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 255012}
!107 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_mRKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, i64 127506}
!108 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_mRKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 127506}
!109 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_mRKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, i64 127505}
!110 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_mRKS2_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_9XalanNodeEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE, i64 127505}
!111 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_mRKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, i64 1}
!112 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_mRKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 14}
!113 = !{ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKPKN11xalanc_1_109XalanNodeEEENS0_16_Iter_equals_valIT_EERS8_, ptr @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_109XalanNodeEEC2ERS6_, i64 93159}
!114 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 38790}
!115 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 19394}
!116 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_, ptr @_ZSt4copyIPPN11xalanc_1_109XalanNodeES3_ET0_T_S5_S4_, i64 19394}
!117 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_, i64 19394}
!118 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE11shrinkCountEm, i64 19394}
!119 = !{ptr @_ZSt4copyIPPN11xalanc_1_109XalanNodeES3_ET0_T_S5_S4_, ptr @_ZSt12__miter_baseIPPN11xalanc_1_109XalanNodeEET_S4_, i64 38790}
!120 = !{ptr @_ZSt4copyIPPN11xalanc_1_109XalanNodeES3_ET0_T_S5_S4_, ptr @_ZSt13__copy_move_aILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_, i64 19395}
!121 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE11shrinkCountEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, i64 19395}
!122 = !{ptr @_ZSt13__copy_move_aILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_, ptr @_ZSt12__niter_baseIPPN11xalanc_1_109XalanNodeEET_S4_, i64 58185}
!123 = !{ptr @_ZSt13__copy_move_aILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_, ptr @_ZSt14__copy_move_a1ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_, i64 19395}
!124 = !{ptr @_ZSt13__copy_move_aILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_, ptr @_ZSt12__niter_wrapIPPN11xalanc_1_109XalanNodeEET_RKS4_S4_, i64 19395}
!125 = !{ptr @_ZSt14__copy_move_a1ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_, ptr @_ZSt14__copy_move_a2ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_, i64 19395}
!126 = !{ptr @_ZSt14__copy_move_a2ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_109XalanNodeEEEPT_PKS6_S9_S7_, i64 19395}
!127 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 7270082}
!128 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_, i64 3635041}
!129 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 6463696}
!130 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm, i64 1272729}
!131 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, i64 2036727}
!132 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefList7setNodeEjPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEixEm, i64 19395}
!133 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, i64 127505}
!134 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE, i64 1}
!135 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv, i64 127504}
!136 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5frontEv, i64 127503}
!137 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 127503}
!138 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 127503}
!139 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_10L30findInsertionPointBinarySearchEPNS_9XalanNodeEPS1_S2_RS2_, i64 127500}
!140 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1025ExecutionContextPredicateC2ERNS_21XPathExecutionContextE, i64 2}
!141 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1030findInsertionPointLinearSearchINS_25ExecutionContextPredicateEEEbPNS_9XalanNodeEPS3_S4_RS4_T_, i64 2}
!142 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1030findInsertionPointLinearSearchINS_14IndexPredicateEEEbPNS_9XalanNodeEPS3_S4_RS4_T_, i64 1}
!143 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_RKS2_, i64 127502}
!144 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefList18addNodesInDocOrderERKS0_RNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 97465}
!145 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefList18addNodesInDocOrderERKS0_RNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 97465}
!146 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefList18addNodesInDocOrderERKS0_RNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1018MutableNodeRefList24addNodeInDocOrderFunctorC2ERS0_RNS_21XPathExecutionContextE, i64 97465}
!147 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefList18addNodesInDocOrderERKS0_RNS_21XPathExecutionContextE, ptr @_ZSt8for_eachIPKPN11xalanc_1_109XalanNodeENS0_18MutableNodeRefList24addNodeInDocOrderFunctorEET0_T_S8_S7_, i64 97465}
!148 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefList18addNodesInDocOrderERKS0_RNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv, i64 97466}
!149 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefList18addNodesInDocOrderERKS0_RNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEaSERKS5_, i64 1}
!150 = !{ptr @_ZSt8for_eachIPKPN11xalanc_1_109XalanNodeENS0_18MutableNodeRefList24addNodeInDocOrderFunctorEET0_T_S8_S7_, ptr @_ZNK11xalanc_1_1018MutableNodeRefList24addNodeInDocOrderFunctorclEPNS_9XalanNodeE, i64 127506}
!151 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2384650}
!152 = !{ptr @_ZNK11xalanc_1_1018MutableNodeRefList24addNodeInDocOrderFunctorclEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE, i64 127506}
!153 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5frontEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 127506}
!154 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefList10clearNullsEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 19395}
!155 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefList10clearNullsEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 38790}
!156 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefList10clearNullsEv, ptr @_ZSt6removeIPPN11xalanc_1_109XalanNodeES2_ET_S4_S4_RKT0_, i64 19395}
!157 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefList10clearNullsEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_, i64 19395}
!158 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefList10clearNullsEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv, i64 19395}
!159 = !{ptr @_ZSt6removeIPPN11xalanc_1_109XalanNodeES2_ET_S4_S4_RKT0_, ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKPN11xalanc_1_109XalanNodeEEENS0_16_Iter_equals_valIT_EERS7_, i64 19395}
!160 = !{ptr @_ZSt6removeIPPN11xalanc_1_109XalanNodeES2_ET_S4_S4_RKT0_, ptr @_ZSt11__remove_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_, i64 19395}
!161 = !{ptr @_ZSt11__remove_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_, ptr @_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_, i64 19395}
!162 = !{ptr @_ZSt11__remove_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_, ptr @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_109XalanNodeEEclIPS4_EEbT_, i64 1}
!163 = !{ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKPN11xalanc_1_109XalanNodeEEENS0_16_Iter_equals_valIT_EERS7_, ptr @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_109XalanNodeEEC2ERS5_, i64 19395}
!164 = !{ptr @_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_, ptr @_ZSt19__iterator_categoryIPPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E17iterator_categoryERKS5_, i64 19395}
!165 = !{ptr @_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_, ptr @_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag, i64 19395}
!166 = !{ptr @_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag, ptr @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_109XalanNodeEEclIPS4_EEbT_, i64 19398}
!167 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!168 = !{!"function_entry_count", i64 18}
!169 = !{!170, !170, i64 0}
!170 = !{!"vtable pointer", !171, i64 0}
!171 = !{!"Simple C++ TBAA"}
!172 = !{!173, !180, i64 40}
!173 = !{!"_ZTSN11xalanc_1_1018MutableNodeRefListE", !174, i64 0, !180, i64 40}
!174 = !{!"_ZTSN11xalanc_1_1011NodeRefListE", !175, i64 0, !176, i64 8}
!175 = !{!"_ZTSN11xalanc_1_1015NodeRefListBaseE"}
!176 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEE", !177, i64 0, !179, i64 8, !179, i64 16, !177, i64 24}
!177 = !{!"any pointer", !178, i64 0}
!178 = !{!"omnipotent char", !171, i64 0}
!179 = !{!"long", !178, i64 0}
!180 = !{!"_ZTSN11xalanc_1_1018MutableNodeRefList6eOrderE", !178, i64 0}
!181 = !{!"function_entry_count", i64 0}
!182 = !{!"function_entry_count", i64 17}
!183 = !{!184, !177, i64 8}
!184 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1018MutableNodeRefListEE", !177, i64 0, !177, i64 8}
!185 = !{!177, !177, i64 0}
!186 = !{!184, !177, i64 0}
!187 = !{!"function_entry_count", i64 68}
!188 = !{!"branch_weights", i32 1, i32 18}
!189 = !{!"function_entry_count", i64 6851}
!190 = !{!"branch_weights", i32 1, i32 6852}
!191 = !{!"function_entry_count", i64 3187713}
!192 = distinct !{!192, !193}
!193 = !{!"llvm.loop.mustprogress"}
!194 = !{!"function_entry_count", i64 1827528}
!195 = !{!"branch_weights", i32 1, i32 1827529}
!196 = !{!"function_entry_count", i64 3517309}
!197 = !{!"function_entry_count", i64 37841089}
!198 = !{!"function_entry_count", i64 3517488}
!199 = !{!176, !179, i64 8}
!200 = !{!176, !179, i64 16}
!201 = !{!"branch_weights", i32 3517310, i32 180}
!202 = !{!176, !177, i64 0}
!203 = !{!"branch_weights", i32 17, i32 164}
!204 = !{!"function_entry_count", i64 301760305}
!205 = !{!"function_entry_count", i64 4115971}
!206 = !{!176, !177, i64 24}
!207 = !{!"function_entry_count", i64 52673}
!208 = !{!"branch_weights", i32 31, i32 52644}
!209 = !{!"branch_weights", i32 1, i32 31}
!210 = !{!"function_entry_count", i64 1339916}
!211 = !{!179, !179, i64 0}
!212 = !{!"function_entry_count", i64 105337}
!213 = !{!"branch_weights", i32 52665, i32 52674}
!214 = !{!"function_entry_count", i64 52643}
!215 = !{!"function_entry_count", i64 52668}
!216 = !{!"branch_weights", i32 52669, i32 1}
!217 = !{!"branch_weights", i32 1, i32 52644}
!218 = !{!"branch_weights", i32 52644, i32 1}
!219 = !{!"branch_weights", i32 1, i32 52643}
!220 = !{!"branch_weights", i32 52643, i32 298062848}
!221 = distinct !{!221, !193}
!222 = distinct !{!222, !193}
!223 = distinct !{!223, !193}
!224 = distinct !{!224, !193}
!225 = !{!"function_entry_count", i64 357177}
!226 = !{!"function_entry_count", i64 336428}
!227 = !{!"function_entry_count", i64 124518}
!228 = !{!"function_entry_count", i64 2414026}
!229 = !{!"function_entry_count", i64 418513}
!230 = !{!"function_entry_count", i64 180149}
!231 = !{!"branch_weights", i32 52481, i32 127670}
!232 = !{!"function_entry_count", i64 217677}
!233 = !{!"function_entry_count", i64 52494}
!234 = !{!"function_entry_count", i64 19395}
!235 = !{!"function_entry_count", i64 58185}
!236 = !{!"branch_weights", i32 19396, i32 1}
!237 = !{!"function_entry_count", i64 38790}
!238 = !{!"branch_weights", i32 1, i32 52673}
!239 = !{!"branch_weights", i32 52673, i32 298072592}
!240 = distinct !{!240, !193}
!241 = !{!"function_entry_count", i64 127506}
!242 = !{!"branch_weights", i32 75027, i32 52481}
!243 = !{!"branch_weights", i32 127507, i32 1}
!244 = !{!"branch_weights", i32 1, i32 127506}
!245 = !{!"branch_weights", i32 127506, i32 1}
!246 = distinct !{!246, !193}
!247 = distinct !{!247, !193}
!248 = distinct !{!248, !193}
!249 = distinct !{!249, !193}
!250 = distinct !{!250, !193}
!251 = !{!"function_entry_count", i64 93159}
!252 = distinct !{!252, !193}
!253 = !{!254, !177, i64 0}
!254 = !{!"_ZTSN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_109XalanNodeEEE", !177, i64 0}
!255 = !{!"branch_weights", i32 1, i32 19396}
!256 = !{!"branch_weights", i32 1, i32 19395}
!257 = !{!"branch_weights", i32 19395, i32 1}
!258 = distinct !{!258, !193}
!259 = !{!"function_entry_count", i64 3635041}
!260 = !{!"function_entry_count", i64 3231848}
!261 = !{!"branch_weights", i32 1959120, i32 1272730}
!262 = !{!"function_entry_count", i64 1272729}
!263 = !{!"branch_weights", i32 763999, i32 1272730}
!264 = distinct !{!264, !193}
!265 = distinct !{!265, !193}
!266 = distinct !{!266, !193}
!267 = !{!"branch_weights", i32 1, i32 127507}
!268 = distinct !{!268, !193}
!269 = !{!"function_entry_count", i64 97467}
!270 = !{!"branch_weights", i32 24367, i32 24367, i32 -1919964540}
!271 = !{!"branch_weights", i32 1, i32 97468}
!272 = !{!"branch_weights", i32 1, i32 97467}
!273 = !{!"branch_weights", i32 97467, i32 30040}
!274 = distinct !{!274, !193}
!275 = !{i64 0, i64 8, !185, i64 8, i64 8, !185}
!276 = !{i64 0, i64 8, !185}
!277 = !{!"function_entry_count", i64 2384650}
!278 = distinct !{!278, !193}
!279 = !{!280, !177, i64 0}
!280 = !{!"_ZTSN11xalanc_1_1018MutableNodeRefList24addNodeInDocOrderFunctorE", !177, i64 0, !177, i64 8}
!281 = !{!280, !177, i64 8}
!282 = !{!283, !177, i64 0}
!283 = !{!"_ZTSSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEE", !177, i64 0}
!284 = distinct !{!284, !193}
!285 = !{!286, !177, i64 0}
!286 = !{!"_ZTSSt20back_insert_iteratorIN11xalanc_1_1011XalanVectorIPNS0_9XalanNodeENS0_31MemoryManagedConstructionTraitsIS3_EEEEE", !177, i64 0}
!287 = !{!"function_entry_count", i64 960417}
!288 = !{!"MutableNodeRefList.cpp:_ZN11xalanc_1_10L30findInsertionPointBinarySearchEPNS_9XalanNodeEPS1_S2_RS2_"}
!289 = distinct !{!289, !193}
!290 = !{!291, !177, i64 0}
!291 = !{!"_ZTSN11xalanc_1_1025ExecutionContextPredicateE", !177, i64 0, !292, i64 8}
!292 = !{!"_ZTSN11xalanc_1_1017DocumentPredicateE"}
!293 = !{!"branch_weights", i32 376204816, i32 19396}
!294 = !{!"branch_weights", i32 1, i32 0}
!295 = distinct !{!295, !193}
!296 = !{!297, !177, i64 0}
!297 = !{!"_ZTSN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_109XalanNodeEEE", !177, i64 0}
!298 = !{!"branch_weights", i32 0, i32 1}
!299 = distinct !{!299, !193}
!300 = !{!"branch_weights", i32 2, i32 1, i32 1, i32 19396}
!301 = distinct !{!301, !193}
