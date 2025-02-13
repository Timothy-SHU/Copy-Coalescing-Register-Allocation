; ModuleID = 'CountersTable.cpp'
source_filename = "CountersTable.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::CountersTable" = type { %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanVector.0" }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::Counter" = type { i64, %"class.xalanc_1_10::XalanVector.0", ptr, ptr }
%"class.xalanc_1_10::XalanVector.5" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ElemNumber" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, i64 }
%"class.xalanc_1_10::ElemTemplateElement.base" = type <{ %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::NamespacesHandler", i32, [4 x i8], ptr, ptr, ptr, %union.anon, %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", i16 }>
%"class.xalanc_1_10::PrefixResolver" = type { ptr }
%"class.xalanc_1_10::NamespacesHandler" = type { %"class.xalanc_1_10::XalanVector.1", %"class.xalanc_1_10::XalanVector.2", %"class.xalanc_1_10::XalanVector.3", %"class.xalanc_1_10::XalanMap" }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap" = type { %"struct.xalanc_1_10::DOMStringPointerHashFunction", %"struct.xalanc_1_10::pointer_equal", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanVector.4", i64, i64 }
%"struct.xalanc_1_10::DOMStringPointerHashFunction" = type { i8 }
%"struct.xalanc_1_10::pointer_equal" = type { i8 }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.4" = type { ptr, i64, i64, ptr }
%union.anon = type { ptr }
%"class.xalanc_1_10::ElemTemplateElement::LocatorProxy" = type { %"class.xalanc_1_10::XalanLocator", i64, i64, ptr }
%"class.xalanc_1_10::XalanLocator" = type { %"class.xercesc_2_7::Locator" }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.std::reverse_iterator" = type { ptr }
%"struct.xalanc_1_10::ConstructValueWithMemoryManager" = type { %"struct.xalanc_1_10::Counter" }
%"class.std::back_insert_iterator" = type { ptr }

$_ZN11xalanc_1_1011XalanVectorINS0_INS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEEixEm = comdat any

$_ZNK11xalanc_1_1010ElemNumber5getIDEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEixEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEixEm = comdat any

$_ZN11xalanc_1_1014appendBtoFListERNS_11XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEERKS5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE4backEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm = comdat any

$_ZSt4copyISt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEESt20back_insert_iteratorINS1_11XalanVectorIS3_NS1_31MemoryManagedConstructionTraitsIS3_EEEEEET0_T_SE_SD_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6rbeginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4rendEv = comdat any

$_ZSt13back_inserterIN11xalanc_1_1011XalanVectorIPNS0_9XalanNodeENS0_31MemoryManagedConstructionTraitsIS3_EEEEESt20back_insert_iteratorIT_ERS8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

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

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_9XalanNodeEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZSt4copyIPKPN11xalanc_1_109XalanNodeEPS2_ET0_T_S7_S6_ = comdat any

$_ZSt13copy_backwardIPPN11xalanc_1_109XalanNodeES3_ET0_T_S5_S4_ = comdat any

$_ZSt8distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_ = comdat any

$_ZSt10__distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E17iterator_categoryERKS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

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

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_ = comdat any

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

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv = comdat any

$_ZN11xalanc_1_1031ConstructValueWithMemoryManagerINS_7CounterEEC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEmRKS1_ = comdat any

$_ZN11xalanc_1_1031ConstructValueWithMemoryManagerINS_7CounterEED2Ev = comdat any

$_ZN11xalanc_1_107CounterC2ERN11xercesc_2_713MemoryManagerEPKNS_10ElemNumberE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE12shrinkToSizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE7reserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1026ConstructWithMemoryManagerINS_7CounterEE9constructEPS1_RKS1_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE8pop_backEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyERS1_ = comdat any

$_ZN11xalanc_1_107CounterD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE8allocateEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE14local_distanceEPKS1_S6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE14ensureCapacityEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE8capacityEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_ = comdat any

$_ZSt4copyIPKN11xalanc_1_107CounterEPS1_ET0_T_S6_S5_ = comdat any

$_ZSt13copy_backwardIPN11xalanc_1_107CounterES2_ET0_T_S4_S3_ = comdat any

$_ZSt8distanceIPKN11xalanc_1_107CounterEENSt15iterator_traitsIT_E15difference_typeES5_S5_ = comdat any

$_ZSt10__distanceIPKN11xalanc_1_107CounterEENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKN11xalanc_1_107CounterEENSt15iterator_traitsIT_E17iterator_categoryERKS5_ = comdat any

$_ZSt13__copy_move_aILb0EPKN11xalanc_1_107CounterEPS1_ET1_T0_S6_S5_ = comdat any

$_ZSt12__miter_baseIPKN11xalanc_1_107CounterEET_S4_ = comdat any

$_ZSt12__niter_wrapIPN11xalanc_1_107CounterEET_RKS3_S3_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKN11xalanc_1_107CounterEPS1_ET1_T0_S6_S5_ = comdat any

$_ZSt12__niter_baseIPKN11xalanc_1_107CounterEET_S4_ = comdat any

$_ZSt12__niter_baseIPN11xalanc_1_107CounterEET_S3_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKN11xalanc_1_107CounterEPS1_ET1_T0_S6_S5_ = comdat any

$_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_107CounterEPS4_EET0_T_S9_S8_ = comdat any

$_ZN11xalanc_1_107CounteraSERKS0_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEaSERKS5_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPN11xalanc_1_107CounterES2_ET1_T0_S4_S3_ = comdat any

$_ZSt12__miter_baseIPN11xalanc_1_107CounterEET_S3_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPN11xalanc_1_107CounterES2_ET1_T0_S4_S3_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPN11xalanc_1_107CounterES2_ET1_T0_S4_S3_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_107CounterES5_EET0_T_S7_S6_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyEPS1_S5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10deallocateEPS1_ = comdat any

$_ZN11xalanc_1_107CounterC2ERKS0_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEixEm = comdat any

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i64 @_ZN11xalanc_1_1013CountersTable9countNodeERNS_26StylesheetExecutionContextERKNS_10ElemNumberEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(408) %2, ptr noundef %3) local_unnamed_addr #0 align 2 !prof !115 {
  %5 = alloca ptr, align 8
  %6 = tail call noundef i64 @_ZNK11xalanc_1_1010ElemNumber5getIDEv(ptr noundef nonnull align 8 dereferenceable(408) %2) #9
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %6) #9
  %8 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %9 = tail call noundef ptr @_ZNK11xalanc_1_1010ElemNumber13getTargetNodeERNS_26StylesheetExecutionContextEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(408) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %3) #9
  store ptr %9, ptr %5, align 8, !tbaa !116
  %10 = icmp eq ptr %9, null
  br i1 %10, label %61, label %11

11:                                               ; preds = %4
  %12 = icmp eq i64 %8, 0
  br i1 %12, label %21, label %16

13:                                               ; preds = %16
  %14 = add nuw i64 %17, 1
  %15 = icmp eq i64 %14, %8
  br i1 %15, label %21, label %16, !llvm.loop !120

16:                                               ; preds = %11, %13
  %17 = phi i64 [ %14, %13 ], [ 0, %11 ]
  %18 = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %17) #9
  %19 = tail call noundef i64 @_ZNK11xalanc_1_107Counter20getPreviouslyCountedERNS_26StylesheetExecutionContextEPKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %9) #9
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %13, label %61

21:                                               ; preds = %13, %11
  %22 = getelementptr inbounds %"class.xalanc_1_10::CountersTable", ptr %0, i64 0, i32 1
  br label %23

23:                                               ; preds = %21, %46
  %24 = phi i64 [ 0, %21 ], [ %47, %46 ]
  %25 = icmp eq i64 %24, 0
  %26 = or i1 %25, %12
  br i1 %26, label %46, label %27

27:                                               ; preds = %23, %43
  %28 = phi i64 [ %44, %43 ], [ 0, %23 ]
  %29 = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %28) #9
  %30 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %29, i64 0, i32 1
  %31 = call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %30) #9
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %27
  %34 = add i64 %31, -1
  %35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %30, i64 noundef %34) #9
  %36 = load ptr, ptr %35, align 8, !tbaa !116
  %37 = load ptr, ptr %5, align 8, !tbaa !116
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i64, ptr %29, align 8, !tbaa !122
  %41 = add i64 %31, %24
  %42 = add i64 %41, %40
  call void @_ZN11xalanc_1_1014appendBtoFListERNS_11XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(32) %22) #9
  br label %58

43:                                               ; preds = %33, %27
  %44 = add nuw i64 %28, 1
  %45 = icmp eq i64 %44, %8
  br i1 %45, label %46, label %27, !llvm.loop !126

46:                                               ; preds = %43, %23
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  %47 = add i64 %24, 1
  %48 = load ptr, ptr %5, align 8, !tbaa !116
  %49 = call noundef ptr @_ZNK11xalanc_1_1010ElemNumber15getPreviousNodeERNS_26StylesheetExecutionContextEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(408) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %48) #9
  store ptr %49, ptr %5, align 8, !tbaa !116
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %23, !llvm.loop !127

51:                                               ; preds = %46
  %52 = call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #9
  %53 = add i64 %52, 1
  call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %53) #9
  %54 = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #9
  %55 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %54, i64 0, i32 3
  store ptr %2, ptr %55, align 8, !tbaa !128
  %56 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %54, i64 0, i32 1
  %57 = getelementptr inbounds %"class.xalanc_1_10::CountersTable", ptr %0, i64 0, i32 1
  call void @_ZN11xalanc_1_1014appendBtoFListERNS_11XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %56, ptr noundef nonnull align 8 dereferenceable(32) %57) #9
  br label %58

58:                                               ; preds = %51, %39
  %59 = phi ptr [ %22, %39 ], [ %57, %51 ]
  %60 = phi i64 [ %42, %39 ], [ %47, %51 ]
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %59) #9
  br label %61

61:                                               ; preds = %16, %58, %4
  %62 = phi i64 [ 0, %4 ], [ %60, %58 ], [ %19, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  ret i64 %62
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !115 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !129
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1010ElemNumber5getIDEv(ptr noundef nonnull align 8 dereferenceable(408) %0) local_unnamed_addr #2 comdat align 2 !prof !115 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber", ptr %0, i64 0, i32 10
  %3 = load i64, ptr %2, align 8, !tbaa !131
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !115 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !150
  ret i64 %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1010ElemNumber13getTargetNodeERNS_26StylesheetExecutionContextEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(408), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !115 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !152
  %5 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i64 @_ZNK11xalanc_1_107Counter20getPreviouslyCountedERNS_26StylesheetExecutionContextEPKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #0 align 2 !prof !115 {
  %4 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %0, i64 0, i32 1
  %5 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  br label %6

6:                                                ; preds = %17, %3
  %7 = phi i64 [ %5, %3 ], [ %10, %17 ]
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %6
  %10 = add i64 %7, -1
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %10) #9
  %12 = load ptr, ptr %11, align 8, !tbaa !116
  %13 = icmp eq ptr %12, %2
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i64, ptr %0, align 8, !tbaa !122
  %16 = add i64 %15, %7
  br label %22

17:                                               ; preds = %9
  %18 = load ptr, ptr %1, align 8, !tbaa !153
  %19 = getelementptr inbounds ptr, ptr %18, i64 9
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef zeroext i1 %20(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  br i1 %21, label %22, label %6, !llvm.loop !155

22:                                               ; preds = %6, %17, %14
  %23 = phi i64 [ %16, %14 ], [ 0, %17 ], [ 0, %6 ]
  ret i64 %23
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !156 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !157
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !158 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !159
  %5 = getelementptr inbounds ptr, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014appendBtoFListERNS_11XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat !prof !115 {
  %3 = alloca %"class.std::reverse_iterator", align 8
  %4 = alloca %"class.std::reverse_iterator", align 8
  %5 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %6 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #9
  %7 = add i64 %6, %5
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %7) #9
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6rbeginEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %1) #9
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4rendEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1) #9
  %8 = call ptr @_ZSt13back_inserterIN11xalanc_1_1011XalanVectorIPNS0_9XalanNodeENS0_31MemoryManagedConstructionTraitsIS3_EEEEESt20back_insert_iteratorIT_ERS8_(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %9 = call ptr @_ZSt4copyISt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEESt20back_insert_iteratorINS1_11XalanVectorIS3_NS1_31MemoryManagedConstructionTraitsIS3_EEEEEET0_T_SE_SD_(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr %8) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !160 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !157
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5, !prof !161

5:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #9
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !162 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1010ElemNumber15getPreviousNodeERNS_26StylesheetExecutionContextEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(408), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !115 {
  %3 = alloca %"struct.xalanc_1_10::ConstructValueWithMemoryManager", align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !163
  call void @_ZN11xalanc_1_1031ConstructValueWithMemoryManagerINS_7CounterEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEmRKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %3) #9
          to label %5 unwind label %6

5:                                                ; preds = %2
  call void @_ZN11xalanc_1_1031ConstructValueWithMemoryManagerINS_7CounterEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #10
  ret void

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1031ConstructValueWithMemoryManagerINS_7CounterEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #10
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !115 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !152
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !150
  %6 = getelementptr %"struct.xalanc_1_10::Counter", ptr %3, i64 %5
  %7 = getelementptr %"struct.xalanc_1_10::Counter", ptr %6, i64 -1
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !164 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !165 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !166 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !167
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7, !prof !168

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #9
  br label %7

7:                                                ; preds = %6, %2
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt4copyISt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEESt20back_insert_iteratorINS1_11XalanVectorIS3_NS1_31MemoryManagedConstructionTraitsIS3_EEEEEET0_T_SE_SD_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !115 {
  %4 = alloca %"class.std::reverse_iterator", align 8
  %5 = alloca %"class.std::reverse_iterator", align 8
  %6 = alloca %"class.std::reverse_iterator", align 8
  %7 = alloca %"class.std::reverse_iterator", align 8
  call void @_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  call void @_ZSt12__miter_baseIPKPN11xalanc_1_109XalanNodeEEDTcl23__make_reverse_iteratorcl12__miter_basecldtfp_4baseEEEESt16reverse_iteratorIT_E(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %4, ptr noundef nonnull %5) #9
  call void @_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  call void @_ZSt12__miter_baseIPKPN11xalanc_1_109XalanNodeEEDTcl23__make_reverse_iteratorcl12__miter_basecldtfp_4baseEEEESt16reverse_iteratorIT_E(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %6, ptr noundef nonnull %7) #9
  %8 = call ptr @_ZSt13__copy_move_aILb0ESt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEESt20back_insert_iteratorINS1_11XalanVectorIS3_NS1_31MemoryManagedConstructionTraitsIS3_EEEEEET1_T0_SE_SD_(ptr noundef nonnull %4, ptr noundef nonnull %6, ptr %2) #9
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6rbeginEv(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !115 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #9
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #9
  tail call void @_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEC2ES4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4rendEv(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 !prof !115 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #9
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #9
  tail call void @_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEC2ES4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13back_inserterIN11xalanc_1_1011XalanVectorIPNS0_9XalanNodeENS0_31MemoryManagedConstructionTraitsIS3_EEEEESt20back_insert_iteratorIT_ERS8_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat !prof !115 {
  %2 = alloca %"class.std::back_insert_iterator", align 8
  call void @_ZNSt20back_insert_iteratorIN11xalanc_1_1011XalanVectorIPNS0_9XalanNodeENS0_31MemoryManagedConstructionTraitsIS3_EEEEEC2ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !169 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !170
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #9
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #9
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !171 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !170
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !157
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !172

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #9
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #9
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #9
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #9
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #9
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #9
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #9
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !173

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #9
  store ptr %24, ptr %8, align 8, !tbaa !159
  store i64 %3, ptr %7, align 8, !tbaa !167
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 !prof !174 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %3 = load ptr, ptr %0, align 8, !tbaa !170
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !159
  %7 = load ptr, ptr %1, align 8, !tbaa !170
  store ptr %7, ptr %0, align 8, !tbaa !170
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !175
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !159
  store ptr %11, ptr %5, align 8, !tbaa !159
  store ptr %3, ptr %1, align 8, !tbaa !170
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !175
  store <2 x i64> %9, ptr %4, align 8, !tbaa !175
  store <2 x i64> %12, ptr %8, align 8, !tbaa !175
  store ptr %6, ptr %10, align 8, !tbaa !159
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !167
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !177

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %6, ptr noundef %7) #9
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !159
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #9
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !178 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 !prof !179 {
  store ptr %1, ptr %0, align 8, !tbaa !170
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !157
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !167
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !180

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #9
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !159
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !178 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #9
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8, !prof !181

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28, !prof !182

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #9
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16, !prof !183

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !170
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_9XalanNodeEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #9
  %23 = getelementptr inbounds ptr, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !157
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !157
  %26 = getelementptr inbounds ptr, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !prof !184, !llvm.loop !185

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  %32 = load ptr, ptr %0, align 8, !tbaa !170
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #9
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #9
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #9
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #9
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #9
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #9
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #9
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #9
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #9
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %57) #9
  %58 = getelementptr inbounds ptr, ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !llvm.loop !186

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %61) #9
  %62 = getelementptr inbounds ptr, ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !llvm.loop !187

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_109XalanNodeEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #9
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds ptr, ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %72) #9
  %73 = getelementptr inbounds ptr, ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !188

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds ptr, ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_109XalanNodeES3_ET0_T_S5_S4_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #9
  %78 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_109XalanNodeEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #9
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !189 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !159
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !190 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !159
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !190 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !171 {
  %3 = shl i64 %1, 3
  %4 = load ptr, ptr %0, align 8, !tbaa !170
  %5 = load ptr, ptr %4, align 8, !tbaa !153
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #9
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !191 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %1, ptr noundef %2) #9
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !192 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !193 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6, !prof !194

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #9
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_9XalanNodeEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 !prof !195 {
  %4 = load ptr, ptr %1, align 8, !tbaa !116
  store ptr %4, ptr %0, align 8, !tbaa !116
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !193 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !167
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !196 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !157
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !167
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !197

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %11 = load ptr, ptr %0, align 8, !tbaa !170
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_9XalanNodeEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  %13 = load i64, ptr %4, align 8, !tbaa !157
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !157
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !198
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  %21 = load ptr, ptr %0, align 8, !tbaa !170
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #9
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #9
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKPN11xalanc_1_109XalanNodeEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !115 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_109XalanNodeEET_S5_(ptr noundef %0) #9
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_109XalanNodeEET_S5_(ptr noundef %1) #9
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKPN11xalanc_1_109XalanNodeEPS2_ET1_T0_S7_S6_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #9
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_109XalanNodeES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !115 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %0) #9
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %1) #9
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #9
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !191 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !116
  call void @_ZSt19__iterator_categoryIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  %4 = call noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #9
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !191 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat !prof !199 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !200 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !159
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !157
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKPN11xalanc_1_109XalanNodeEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !115 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !116
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_109XalanNodeEET_S5_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_109XalanNodeEET_S5_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_109XalanNodeEPS2_ET1_T0_S7_S6_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #9
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_109XalanNodeEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #9
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_109XalanNodeEET_S5_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !115 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_109XalanNodeEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !158 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_109XalanNodeEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !115 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_109XalanNodeEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_109XalanNodeEET_S5_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !115 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !201 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_109XalanNodeEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !115 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_109XalanNodeEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_109XalanNodeEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !158 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !202

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !115 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !116
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #9
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_109XalanNodeEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #9
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_109XalanNodeEET_S4_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !203 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !115 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_109XalanNodeES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !115 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_109XalanNodeEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_109XalanNodeEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !115 {
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
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !190 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !159
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !157
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !171 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !204

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !205, !llvm.loop !206

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !171 {
  %3 = load ptr, ptr %0, align 8, !tbaa !170
  %4 = load ptr, ptr %3, align 8, !tbaa !153
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !195 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13__copy_move_aILb0ESt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEESt20back_insert_iteratorINS1_11XalanVectorIS3_NS1_31MemoryManagedConstructionTraitsIS3_EEEEEET1_T0_SE_SD_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !115 {
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
  %10 = call ptr @_ZSt14__copy_move_a1ILb0ESt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEESt20back_insert_iteratorINS1_11XalanVectorIS3_NS1_31MemoryManagedConstructionTraitsIS3_EEEEEET1_T0_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr %9) #9
  %11 = call ptr @_ZSt12__niter_wrapISt20back_insert_iteratorIN11xalanc_1_1011XalanVectorIPNS1_9XalanNodeENS1_31MemoryManagedConstructionTraitsIS4_EEEEEET_RKS9_S9_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr %10) #9
  ret ptr %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt12__miter_baseIPKPN11xalanc_1_109XalanNodeEEDTcl23__make_reverse_iteratorcl12__miter_basecldtfp_4baseEEEESt16reverse_iteratorIT_E(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !115 {
  %3 = tail call noundef ptr @_ZNKSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_109XalanNodeEET_S5_(ptr noundef %3) #9
  tail call void @_ZSt23__make_reverse_iteratorIPKPN11xalanc_1_109XalanNodeEESt16reverse_iteratorIT_ES6_(ptr dead_on_unwind writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef %4) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !115 {
  %3 = load ptr, ptr %1, align 8, !tbaa !207
  store ptr %3, ptr %0, align 8, !tbaa !207
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__niter_wrapISt20back_insert_iteratorIN11xalanc_1_1011XalanVectorIPNS1_9XalanNodeENS1_31MemoryManagedConstructionTraitsIS4_EEEEEET_RKS9_S9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) local_unnamed_addr #2 comdat !prof !115 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt14__copy_move_a1ILb0ESt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEESt20back_insert_iteratorINS1_11XalanVectorIS3_NS1_31MemoryManagedConstructionTraitsIS3_EEEEEET1_T0_SE_SD_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !115 {
  %4 = alloca %"class.std::reverse_iterator", align 8
  %5 = alloca %"class.std::reverse_iterator", align 8
  call void @_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  call void @_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %6 = call ptr @_ZSt14__copy_move_a2ILb0ESt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEESt20back_insert_iteratorINS1_11XalanVectorIS3_NS1_31MemoryManagedConstructionTraitsIS3_EEEEEET1_T0_SE_SD_(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr %2) #9
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt12__niter_baseISt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEET_S7_(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !115 {
  tail call void @_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__niter_baseISt20back_insert_iteratorIN11xalanc_1_1011XalanVectorIPNS1_9XalanNodeENS1_31MemoryManagedConstructionTraitsIS4_EEEEEET_S9_(ptr %0) local_unnamed_addr #2 comdat !prof !115 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt14__copy_move_a2ILb0ESt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEESt20back_insert_iteratorINS1_11XalanVectorIS3_NS1_31MemoryManagedConstructionTraitsIS3_EEEEEET1_T0_SE_SD_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !115 {
  %4 = alloca %"class.std::reverse_iterator", align 8
  %5 = alloca %"class.std::reverse_iterator", align 8
  call void @_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  call void @_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %6 = call ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEESt20back_insert_iteratorINS4_11XalanVectorIS6_NS4_31MemoryManagedConstructionTraitsIS6_EEEEEEET0_T_SH_SG_(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr %2) #9
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEESt20back_insert_iteratorINS4_11XalanVectorIS6_NS4_31MemoryManagedConstructionTraitsIS6_EEEEEEET0_T_SH_SG_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat align 2 !prof !115 {
  %4 = alloca %"class.std::back_insert_iterator", align 8
  store ptr %2, ptr %4, align 8
  %5 = tail call noundef i64 @_ZStmiIPKPN11xalanc_1_109XalanNodeES4_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKS6_IT0_E(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %0) #9
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
  %13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorIN11xalanc_1_1011XalanVectorIPNS0_9XalanNodeENS0_31MemoryManagedConstructionTraitsIS3_EEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorIN11xalanc_1_1011XalanVectorIPNS0_9XalanNodeENS0_31MemoryManagedConstructionTraitsIS3_EEEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13) #9
  %16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorIN11xalanc_1_1011XalanVectorIPNS0_9XalanNodeENS0_31MemoryManagedConstructionTraitsIS3_EEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  %18 = add nsw i64 %12, -1
  %19 = icmp ugt i64 %12, 1
  br i1 %19, label %11, label %7, !llvm.loop !209
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZStmiIPKPN11xalanc_1_109XalanNodeES4_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKS6_IT0_E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !115 {
  %3 = tail call noundef ptr @_ZNKSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %4 = tail call noundef ptr @_ZNKSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !115 {
  %2 = load ptr, ptr %0, align 8, !tbaa !207
  %3 = getelementptr inbounds ptr, ptr %2, i64 -1
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorIN11xalanc_1_1011XalanVectorIPNS0_9XalanNodeENS0_31MemoryManagedConstructionTraitsIS3_EEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !115 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorIN11xalanc_1_1011XalanVectorIPNS0_9XalanNodeENS0_31MemoryManagedConstructionTraitsIS3_EEEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !115 {
  %3 = load ptr, ptr %0, align 8, !tbaa !210
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !115 {
  %2 = load ptr, ptr %0, align 8, !tbaa !207
  %3 = getelementptr inbounds ptr, ptr %2, i64 -1
  store ptr %3, ptr %0, align 8, !tbaa !207
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorIN11xalanc_1_1011XalanVectorIPNS0_9XalanNodeENS0_31MemoryManagedConstructionTraitsIS3_EEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !115 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !115 {
  %2 = load ptr, ptr %0, align 8, !tbaa !207
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt23__make_reverse_iteratorIPKPN11xalanc_1_109XalanNodeEESt16reverse_iteratorIT_ES6_(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !115 {
  tail call void @_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEC2ES4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEEC2ES4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !115 {
  store ptr %1, ptr %0, align 8, !tbaa !207
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt20back_insert_iteratorIN11xalanc_1_1011XalanVectorIPNS0_9XalanNodeENS0_31MemoryManagedConstructionTraitsIS3_EEEEEC2ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 comdat align 2 !prof !115 {
  store ptr %1, ptr %0, align 8, !tbaa !210
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !212 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %5 = load i64, ptr %3, align 8, !tbaa !157
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !prof !213, !llvm.loop !214

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !215 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !157
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !157
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !159
  %7 = getelementptr inbounds ptr, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1031ConstructValueWithMemoryManagerINS_7CounterEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !115 {
  tail call void @_ZN11xalanc_1_107CounterC2ERN11xercesc_2_713MemoryManagerEPKNS_10ElemNumberE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEmRKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 comdat align 2 !prof !115 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !150
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #9
  br label %24

8:                                                ; preds = %3
  %9 = icmp ult i64 %5, %1
  br i1 %9, label %10, label %24

10:                                               ; preds = %8
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #9
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !152
  %13 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %12, i64 %1
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %24, label %16

16:                                               ; preds = %10, %16
  %17 = phi ptr [ %20, %16 ], [ %14, %10 ]
  %18 = load ptr, ptr %0, align 8, !tbaa !163
  %19 = tail call noundef ptr @_ZN11xalanc_1_1026ConstructWithMemoryManagerINS_7CounterEE9constructEPS1_RKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef %17, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %18) #9
  %20 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %17, i64 1
  %21 = load i64, ptr %4, align 8, !tbaa !150
  %22 = add i64 %21, 1
  store i64 %22, ptr %4, align 8, !tbaa !150
  %23 = icmp eq ptr %20, %13
  br i1 %23, label %24, label %16, !llvm.loop !216

24:                                               ; preds = %16, %10, %8, %7
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1031ConstructValueWithMemoryManagerINS_7CounterEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xalanc_1_107CounterD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_107CounterC2ERN11xercesc_2_713MemoryManagerEPKNS_10ElemNumberE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !115 {
  store i64 0, ptr %0, align 8, !tbaa !122
  %4 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) #9
  %5 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %0, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !217
  %6 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %0, i64 0, i32 3
  store ptr %2, ptr %6, align 8, !tbaa !128
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !115 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %5 = load i64, ptr %3, align 8, !tbaa !150
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !llvm.loop !218

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !115 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !219
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #9
  br label %7

7:                                                ; preds = %6, %2
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !115 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !152
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !150
  %6 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1026ConstructWithMemoryManagerINS_7CounterEE9constructEPS1_RKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !115 {
  tail call void @_ZN11xalanc_1_107CounterC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !115 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !150
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !150
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !152
  %7 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyERS1_(ptr noundef nonnull align 8 dereferenceable(56) %7) #9
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyERS1_(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #2 comdat align 2 !prof !115 {
  tail call void @_ZN11xalanc_1_107CounterD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_107CounterD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 comdat align 2 {
  %2 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !115 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.5", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !163
  call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #9
  call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #9
  call void @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !220 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.5", align 8
  store ptr %2, ptr %0, align 8, !tbaa !163
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !150
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !221

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #9
  call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #9
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #9
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #9
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #9
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #9
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #9
  call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !221

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #9
  store ptr %24, ptr %8, align 8, !tbaa !152
  store i64 %3, ptr %7, align 8, !tbaa !219
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 !prof !115 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %3 = load ptr, ptr %0, align 8, !tbaa !163
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !152
  %7 = load ptr, ptr %1, align 8, !tbaa !163
  store ptr %7, ptr %0, align 8, !tbaa !163
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !175
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !152
  store ptr %11, ptr %5, align 8, !tbaa !152
  store ptr %3, ptr %1, align 8, !tbaa !163
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !175
  store <2 x i64> %9, ptr %4, align 8, !tbaa !175
  store <2 x i64> %12, ptr %8, align 8, !tbaa !175
  store ptr %6, ptr %10, align 8, !tbaa !152
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !222 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !219
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %11, label %5, !prof !223

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
          to label %8 unwind label %12

8:                                                ; preds = %5
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyEPS1_S5_(ptr noundef %6, ptr noundef %7) #9
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !152
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10deallocateEPS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %10) #9
          to label %11 unwind label %12

11:                                               ; preds = %8, %1
  ret void

12:                                               ; preds = %8, %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !115 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 !prof !224 {
  store ptr %1, ptr %0, align 8, !tbaa !163
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !150
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !219
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !225

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #9
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !152
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !115 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.5", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE14local_distanceEPKS1_S6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #9
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #9
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !163
  %22 = tail call noundef ptr @_ZN11xalanc_1_1026ConstructWithMemoryManagerINS_7CounterEE9constructEPS1_RKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #9
  %23 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !150
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !150
  %26 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !llvm.loop !226

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  %32 = load ptr, ptr %0, align 8, !tbaa !163
  call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #9
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #9
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #9
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #9
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #9
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #9
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #9
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #9
  call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE14local_distanceEPKS1_S6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #9
  %50 = icmp ugt i64 %49, %6
  br i1 %50, label %66, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %2, i64 %49
  %53 = icmp eq ptr %52, %3
  br i1 %53, label %54, label %56

54:                                               ; preds = %56, %51
  %55 = icmp eq ptr %48, %1
  br i1 %55, label %64, label %60

56:                                               ; preds = %51, %56
  %57 = phi ptr [ %58, %56 ], [ %52, %51 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(56) %57) #9
  %58 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !llvm.loop !227

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(56) %61) #9
  %62 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !llvm.loop !228

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKN11xalanc_1_107CounterEPS1_ET0_T_S6_S5_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #9
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(56) %72) #9
  %73 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !229

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPN11xalanc_1_107CounterES2_ET0_T_S4_S3_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #9
  %78 = tail call noundef ptr @_ZSt4copyIPKN11xalanc_1_107CounterEPS1_ET0_T_S6_S5_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #9
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !115 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !152
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !115 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !152
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !115 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !115 {
  %3 = mul i64 %1, 56
  %4 = load ptr, ptr %0, align 8, !tbaa !163
  %5 = load ptr, ptr %4, align 8, !tbaa !153
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #9
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE14local_distanceEPKS1_S6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !115 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKN11xalanc_1_107CounterEENSt15iterator_traitsIT_E15difference_typeES5_S5_(ptr noundef %1, ptr noundef %2) #9
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !115 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !115 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #9
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !115 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !219
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !115 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.5", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !150
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !219
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %11 = load ptr, ptr %0, align 8, !tbaa !163
  %12 = tail call noundef ptr @_ZN11xalanc_1_1026ConstructWithMemoryManagerINS_7CounterEE9constructEPS1_RKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  %13 = load i64, ptr %4, align 8, !tbaa !150
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !150
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  %21 = load ptr, ptr %0, align 8, !tbaa !163
  call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #9
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(56) %1) #9
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #9
  call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKN11xalanc_1_107CounterEPS1_ET0_T_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !115 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKN11xalanc_1_107CounterEET_S4_(ptr noundef %0) #9
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKN11xalanc_1_107CounterEET_S4_(ptr noundef %1) #9
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKN11xalanc_1_107CounterEPS1_ET1_T0_S6_S5_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #9
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPN11xalanc_1_107CounterES2_ET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !115 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPN11xalanc_1_107CounterEET_S3_(ptr noundef %0) #9
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPN11xalanc_1_107CounterEET_S3_(ptr noundef %1) #9
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPN11xalanc_1_107CounterES2_ET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #9
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKN11xalanc_1_107CounterEENSt15iterator_traitsIT_E15difference_typeES5_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !115 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !116
  call void @_ZSt19__iterator_categoryIPKN11xalanc_1_107CounterEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  %4 = call noundef i64 @_ZSt10__distanceIPKN11xalanc_1_107CounterEENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #9
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKN11xalanc_1_107CounterEENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !115 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = sdiv exact i64 %5, 56
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKN11xalanc_1_107CounterEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat !prof !115 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKN11xalanc_1_107CounterEPS1_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !115 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !116
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKN11xalanc_1_107CounterEET_S4_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKN11xalanc_1_107CounterEET_S4_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_107CounterEET_S3_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKN11xalanc_1_107CounterEPS1_ET1_T0_S6_S5_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #9
  %9 = call noundef ptr @_ZSt12__niter_wrapIPN11xalanc_1_107CounterEET_RKS3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #9
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKN11xalanc_1_107CounterEET_S4_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !115 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPN11xalanc_1_107CounterEET_RKS3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !115 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKN11xalanc_1_107CounterEPS1_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !115 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKN11xalanc_1_107CounterEPS1_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKN11xalanc_1_107CounterEET_S4_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !115 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_107CounterEET_S3_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !115 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKN11xalanc_1_107CounterEPS1_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !115 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_107CounterEPS4_EET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_107CounterEPS4_EET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !115 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = udiv exact i64 %6, 56
  br label %12

10:                                               ; preds = %12, %3
  %11 = phi ptr [ %2, %3 ], [ %18, %12 ]
  ret ptr %11

12:                                               ; preds = %8, %12
  %13 = phi i64 [ %19, %12 ], [ %9, %8 ]
  %14 = phi ptr [ %18, %12 ], [ %2, %8 ]
  %15 = phi ptr [ %17, %12 ], [ %0, %8 ]
  %16 = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN11xalanc_1_107CounteraSERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef nonnull align 8 dereferenceable(56) %15) #9
  %17 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %15, i64 1
  %18 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %14, i64 1
  %19 = add nsw i64 %13, -1
  %20 = icmp ugt i64 %13, 1
  br i1 %20, label %12, label %10, !llvm.loop !230
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN11xalanc_1_107CounteraSERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = load i64, ptr %1, align 8, !tbaa !122
  store i64 %3, ptr %0, align 8, !tbaa !122
  %4 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %1, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) #9
  %7 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %1, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !115 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %33, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !167
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !157
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  %12 = load ptr, ptr %0, align 8, !tbaa !170
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0) #9
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #9
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  br label %33

13:                                               ; preds = %5
  %14 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !157
  %17 = load i64, ptr %8, align 8, !tbaa !157
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %17) #9
  br label %28

20:                                               ; preds = %13
  %21 = icmp ult i64 %16, %17
  br i1 %21, label %22, label %28

22:                                               ; preds = %20
  %23 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #9
  %24 = load i64, ptr %15, align 8, !tbaa !157
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %27 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #9
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %26, ptr noundef %25, ptr noundef %27) #9
  br label %28

28:                                               ; preds = %20, %22, %19
  %29 = phi ptr [ %14, %19 ], [ %25, %22 ], [ %14, %20 ]
  %30 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #9
  %31 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %32 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_109XalanNodeEPS2_ET0_T_S7_S6_(ptr noundef %30, ptr noundef %29, ptr noundef %31) #9
  br label %33

33:                                               ; preds = %11, %28, %2
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPN11xalanc_1_107CounterES2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !115 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !116
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_107CounterEET_S3_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_107CounterEET_S3_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_107CounterEET_S3_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPN11xalanc_1_107CounterES2_ET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #9
  %9 = call noundef ptr @_ZSt12__niter_wrapIPN11xalanc_1_107CounterEET_RKS3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #9
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPN11xalanc_1_107CounterEET_S3_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !115 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPN11xalanc_1_107CounterES2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !115 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPN11xalanc_1_107CounterES2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPN11xalanc_1_107CounterES2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !115 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_107CounterES5_EET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_107CounterES5_EET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !115 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = udiv exact i64 %6, 56
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ %17, %10 ], [ %9, %8 ]
  %12 = phi ptr [ %15, %10 ], [ %2, %8 ]
  %13 = phi ptr [ %14, %10 ], [ %1, %8 ]
  %14 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %13, i64 -1
  %15 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %12, i64 -1
  %16 = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN11xalanc_1_107CounteraSERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %15, ptr noundef nonnull align 8 dereferenceable(56) %14) #9
  %17 = add nsw i64 %11, -1
  %18 = icmp ugt i64 %11, 1
  br i1 %18, label %10, label %19, !llvm.loop !231

19:                                               ; preds = %10, %3
  %20 = phi ptr [ %2, %3 ], [ %15, %10 ]
  ret ptr %20
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !115 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !152
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !150
  %6 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyEPS1_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !115 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyERS1_(ptr noundef nonnull align 8 dereferenceable(56) %5) #9
  %6 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !llvm.loop !232

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10deallocateEPS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !115 {
  %3 = load ptr, ptr %0, align 8, !tbaa !163
  %4 = load ptr, ptr %3, align 8, !tbaa !153
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_107CounterC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 !prof !115 {
  %4 = load i64, ptr %1, align 8, !tbaa !122
  store i64 %4, ptr %0, align 8, !tbaa !122
  %5 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %1, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0) #9
  %7 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %1, i64 0, i32 2
  %9 = load <2 x ptr>, ptr %8, align 8, !tbaa !116
  store <2 x ptr> %9, ptr %7, align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !233 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !159
  %5 = getelementptr inbounds ptr, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { optsize }
attributes #10 = { nounwind }
attributes #11 = { nounwind optsize }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!114}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113}
!36 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2414026}
!37 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 6463696}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm, i64 1272729}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 7034618}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 3517309}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 88254}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 15}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 104988}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 52494}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 52494}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 52494}
!47 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm, i64 52642}
!48 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 52642}
!49 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 52642}
!50 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 52642}
!51 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 52642}
!52 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, i64 52642}
!53 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 52642}
!54 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 52642}
!55 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm, i64 30}
!56 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 52673}
!57 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2679832}
!58 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 105337}
!59 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 52673}
!60 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 52673}
!61 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_, i64 52673}
!62 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_, i64 52673}
!63 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm, i64 1}
!64 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 52668}
!65 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 105285}
!66 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_, i64 52643}
!67 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, i64 52642}
!68 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 52642}
!69 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, i64 52641}
!70 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_9XalanNodeEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE, i64 298098808}
!71 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, i64 1}
!72 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 15}
!73 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 357177}
!74 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 336428}
!75 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 336428}
!76 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 336428}
!77 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_, ptr @_ZSt8distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_, i64 124518}
!78 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 418513}
!79 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 418513}
!80 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, i64 180149}
!81 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 52480}
!82 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 180149}
!83 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 180149}
!84 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 7034976}
!85 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 3517308}
!86 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_9XalanNodeEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE, i64 3517308}
!87 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 180}
!88 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 180}
!89 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 180}
!90 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 180}
!91 = !{ptr @_ZSt8distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_, ptr @_ZSt19__iterator_categoryIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E17iterator_categoryERKS6_, i64 124518}
!92 = !{ptr @_ZSt8distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_, ptr @_ZSt10__distanceIPKPN11xalanc_1_109XalanNodeEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag, i64 124518}
!93 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_, i64 298119648}
!94 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, i64 2036727}
!95 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 7270082}
!96 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_, i64 3635041}
!97 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE9local_maxEmm, i64 1}
!98 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!99 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv, i64 1}
!100 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv, i64 1}
!101 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv, i64 1}
!102 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_, i64 1}
!103 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_, i64 1}
!104 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, i64 1}
!105 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE8allocateEm, i64 1}
!106 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 5}
!107 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 8}
!108 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv, i64 1}
!109 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv, i64 1}
!110 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE7destroyEPS1_S5_, i64 1}
!111 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10deallocateEPS1_, i64 1}
!112 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE8allocateEm, i64 1}
!113 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 3}
!114 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!115 = !{!"function_entry_count", i64 0}
!116 = !{!117, !117, i64 0}
!117 = !{!"any pointer", !118, i64 0}
!118 = !{!"omnipotent char", !119, i64 0}
!119 = !{!"Simple C++ TBAA"}
!120 = distinct !{!120, !121}
!121 = !{!"llvm.loop.mustprogress"}
!122 = !{!123, !124, i64 0}
!123 = !{!"_ZTSN11xalanc_1_107CounterE", !124, i64 0, !125, i64 8, !117, i64 40, !117, i64 48}
!124 = !{!"long", !118, i64 0}
!125 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEE", !117, i64 0, !124, i64 8, !124, i64 16, !117, i64 24}
!126 = distinct !{!126, !121}
!127 = distinct !{!127, !121}
!128 = !{!123, !117, i64 48}
!129 = !{!130, !117, i64 24}
!130 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEEE", !117, i64 0, !124, i64 8, !124, i64 16, !117, i64 24}
!131 = !{!132, !124, i64 400}
!132 = !{!"_ZTSN11xalanc_1_1010ElemNumberE", !133, i64 0, !117, i64 328, !117, i64 336, !117, i64 344, !124, i64 352, !117, i64 360, !117, i64 368, !117, i64 376, !117, i64 384, !117, i64 392, !124, i64 400}
!133 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !134, i64 0, !117, i64 8, !135, i64 16, !145, i64 248, !117, i64 256, !117, i64 264, !117, i64 272, !118, i64 280, !146, i64 288, !149, i64 320}
!134 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!135 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !136, i64 0, !137, i64 32, !138, i64 64, !139, i64 96}
!136 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !117, i64 0, !124, i64 8, !124, i64 16, !117, i64 24}
!137 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !117, i64 0, !124, i64 8, !124, i64 16, !117, i64 24}
!138 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !117, i64 0, !124, i64 8, !124, i64 16, !117, i64 24}
!139 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !140, i64 0, !141, i64 1, !117, i64 8, !142, i64 16, !124, i64 24, !124, i64 32, !143, i64 40, !143, i64 64, !144, i64 88, !124, i64 120, !124, i64 128}
!140 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!141 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!142 = !{!"float", !118, i64 0}
!143 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !117, i64 0, !117, i64 8, !117, i64 16}
!144 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !117, i64 0, !124, i64 8, !124, i64 16, !117, i64 24}
!145 = !{!"int", !118, i64 0}
!146 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !147, i64 0, !124, i64 8, !124, i64 16, !117, i64 24}
!147 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !148, i64 0}
!148 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!149 = !{!"short", !118, i64 0}
!150 = !{!151, !124, i64 8}
!151 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEE", !117, i64 0, !124, i64 8, !124, i64 16, !117, i64 24}
!152 = !{!151, !117, i64 24}
!153 = !{!154, !154, i64 0}
!154 = !{!"vtable pointer", !119, i64 0}
!155 = distinct !{!155, !121}
!156 = !{!"function_entry_count", i64 2414026}
!157 = !{!125, !124, i64 8}
!158 = !{!"function_entry_count", i64 19395}
!159 = !{!125, !117, i64 24}
!160 = !{!"function_entry_count", i64 3231848}
!161 = !{!"branch_weights", i32 1959120, i32 1272730}
!162 = !{!"function_entry_count", i64 3517309}
!163 = !{!151, !117, i64 0}
!164 = !{!"function_entry_count", i64 16}
!165 = !{!"function_entry_count", i64 37841089}
!166 = !{!"function_entry_count", i64 44127}
!167 = !{!125, !124, i64 16}
!168 = !{!"branch_weights", i32 15, i32 44114}
!169 = !{!"function_entry_count", i64 52494}
!170 = !{!125, !117, i64 0}
!171 = !{!"function_entry_count", i64 52673}
!172 = !{!"branch_weights", i32 31, i32 52644}
!173 = !{!"branch_weights", i32 1, i32 31}
!174 = !{!"function_entry_count", i64 1339916}
!175 = !{!124, !124, i64 0}
!176 = !{!"function_entry_count", i64 105337}
!177 = !{!"branch_weights", i32 52665, i32 52674}
!178 = !{!"function_entry_count", i64 52643}
!179 = !{!"function_entry_count", i64 52668}
!180 = !{!"branch_weights", i32 52669, i32 1}
!181 = !{!"branch_weights", i32 1, i32 52644}
!182 = !{!"branch_weights", i32 52644, i32 1}
!183 = !{!"branch_weights", i32 1, i32 52643}
!184 = !{!"branch_weights", i32 52643, i32 298062848}
!185 = distinct !{!185, !121}
!186 = distinct !{!186, !121}
!187 = distinct !{!187, !121}
!188 = distinct !{!188, !121}
!189 = !{!"function_entry_count", i64 357177}
!190 = !{!"function_entry_count", i64 336428}
!191 = !{!"function_entry_count", i64 124518}
!192 = !{!"function_entry_count", i64 418513}
!193 = !{!"function_entry_count", i64 180149}
!194 = !{!"branch_weights", i32 52481, i32 127670}
!195 = !{!"function_entry_count", i64 301760305}
!196 = !{!"function_entry_count", i64 3517488}
!197 = !{!"branch_weights", i32 3517310, i32 180}
!198 = !{!"branch_weights", i32 17, i32 164}
!199 = !{!"function_entry_count", i64 217677}
!200 = !{!"function_entry_count", i64 4115971}
!201 = !{!"function_entry_count", i64 58185}
!202 = !{!"branch_weights", i32 19396, i32 1}
!203 = !{!"function_entry_count", i64 38790}
!204 = !{!"branch_weights", i32 1, i32 52673}
!205 = !{!"branch_weights", i32 52673, i32 298072592}
!206 = distinct !{!206, !121}
!207 = !{!208, !117, i64 0}
!208 = !{!"_ZTSSt16reverse_iteratorIPKPN11xalanc_1_109XalanNodeEE", !117, i64 0}
!209 = distinct !{!209, !121}
!210 = !{!211, !117, i64 0}
!211 = !{!"_ZTSSt20back_insert_iteratorIN11xalanc_1_1011XalanVectorIPNS0_9XalanNodeENS0_31MemoryManagedConstructionTraitsIS3_EEEEE", !117, i64 0}
!212 = !{!"function_entry_count", i64 1272729}
!213 = !{!"branch_weights", i32 763999, i32 1272730}
!214 = distinct !{!214, !121}
!215 = !{!"function_entry_count", i64 3635041}
!216 = distinct !{!216, !121}
!217 = !{!123, !117, i64 40}
!218 = distinct !{!218, !121}
!219 = !{!151, !124, i64 16}
!220 = !{!"function_entry_count", i64 5}
!221 = !{!"branch_weights", i32 6, i32 1}
!222 = !{!"function_entry_count", i64 8}
!223 = !{!"branch_weights", i32 9, i32 1}
!224 = !{!"function_entry_count", i64 3}
!225 = !{!"branch_weights", i32 4, i32 1}
!226 = distinct !{!226, !121}
!227 = distinct !{!227, !121}
!228 = distinct !{!228, !121}
!229 = distinct !{!229, !121}
!230 = distinct !{!230, !121}
!231 = distinct !{!231, !121}
!232 = distinct !{!232, !121}
!233 = !{!"function_entry_count", i64 1959477}
