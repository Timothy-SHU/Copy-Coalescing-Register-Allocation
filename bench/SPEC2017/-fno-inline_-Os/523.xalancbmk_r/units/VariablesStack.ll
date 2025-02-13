; ModuleID = 'VariablesStack.cpp'
source_filename = "VariablesStack.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::VariablesStack" = type { %"class.xalanc_1_10::XalanVector", i64, i8, i64, %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanVector.1" }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::VariablesStack::StackEntry" = type { i32, ptr, %"class.xalanc_1_10::XObjectPtr", ptr, ptr }
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"struct.xalanc_1_10::VariablesStack::ParamsVectorEntry" = type { ptr, %"class.xalanc_1_10::XObjectPtr", ptr }
%"class.xalanc_1_10::VariablesStack::CommitPushParams" = type { ptr, i64 }
%"class.xalanc_1_10::VariablesStack::PushParamFunctor" = type { ptr }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.3", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString" = type { ptr, ptr }
%"class.xalanc_1_10::EnsurePop" = type { ptr }
%"struct.__gnu_cxx::__ops::_Iter_equals_val" = type { ptr }

$_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE5clearEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE5clearEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEixEm = comdat any

$_ZNK11xalanc_1_1014VariablesStack10StackEntry7getTypeEv = comdat any

$_ZNK11xalanc_1_1014VariablesStack10StackEntry10getElementEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv = comdat any

$_ZNK11xalanc_1_1010XObjectPtr4nullEv = comdat any

$_ZNK11xalanc_1_1014VariablesStack12getStackSizeEv = comdat any

$__clang_call_terminate = comdat any

$_ZSt8for_eachIPKN11xalanc_1_1014VariablesStack17ParamsVectorEntryENS1_16PushParamFunctorEET0_T_S7_S6_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1014VariablesStack16PushParamFunctorC2ERS0_ = comdat any

$_ZN11xalanc_1_1014VariablesStack16CommitPushParams6commitEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZNK11xalanc_1_1014VariablesStack25getCurrentStackFrameIndexEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEixEm = comdat any

$_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE = comdat any

$_ZNK11xalanc_1_1014VariablesStack10StackEntry8getValueEv = comdat any

$_ZN11xalanc_1_1010XObjectPtrC2ERKS0_ = comdat any

$_ZNK11xalanc_1_1014VariablesStack10StackEntry11getVariableEv = comdat any

$_ZSt4findIPPKN11xalanc_1_1012ElemVariableES3_ET_S5_S5_RKT0_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_ = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE9push_backERKS3_ = comdat any

$_ZN11xalanc_1_1010XObjectPtraSERKS0_ = comdat any

$_ZN11xalanc_1_1010XObjectPtrD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE8pop_backEv = comdat any

$_ZN11xalanc_1_1014VariablesStack10StackEntry8setValueERKNS_10XObjectPtrE = comdat any

$_ZNK11xalanc_1_1014VariablesStack10StackEntry7getNameEv = comdat any

$_ZNK11xalanc_1_1010XalanQName6equalsERKS0_ = comdat any

$_ZN11xalanc_1_109EnsurePopC2ERNS_14VariablesStackE = comdat any

$_ZN11xalanc_1_109EnsurePopD2Ev = comdat any

$_ZN11xalanc_1_10eqERKNS_10XObjectPtrES2_ = comdat any

$_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv = comdat any

$_ZNK11xalanc_1_1014VariablesStack28InvalidStackContextException7getTypeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyEPS3_S7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10deallocateEPS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyERS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyEPS3_S7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE10deallocateEPS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyERS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_14VariablesStack10StackEntryEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZSt4copyIPKN11xalanc_1_1014VariablesStack10StackEntryEPS2_ET0_T_S7_S6_ = comdat any

$_ZSt13copy_backwardIPN11xalanc_1_1014VariablesStack10StackEntryES3_ET0_T_S5_S4_ = comdat any

$_ZSt8distanceIPKN11xalanc_1_1014VariablesStack10StackEntryEENSt15iterator_traitsIT_E15difference_typeES6_S6_ = comdat any

$_ZSt10__distanceIPKN11xalanc_1_1014VariablesStack10StackEntryEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKN11xalanc_1_1014VariablesStack10StackEntryEENSt15iterator_traitsIT_E17iterator_categoryERKS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZSt13__copy_move_aILb0EPKN11xalanc_1_1014VariablesStack10StackEntryEPS2_ET1_T0_S7_S6_ = comdat any

$_ZSt12__miter_baseIPKN11xalanc_1_1014VariablesStack10StackEntryEET_S5_ = comdat any

$_ZSt12__niter_wrapIPN11xalanc_1_1014VariablesStack10StackEntryEET_RKS4_S4_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKN11xalanc_1_1014VariablesStack10StackEntryEPS2_ET1_T0_S7_S6_ = comdat any

$_ZSt12__niter_baseIPKN11xalanc_1_1014VariablesStack10StackEntryEET_S5_ = comdat any

$_ZSt12__niter_baseIPN11xalanc_1_1014VariablesStack10StackEntryEET_S4_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKN11xalanc_1_1014VariablesStack10StackEntryEPS2_ET1_T0_S7_S6_ = comdat any

$_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1014VariablesStack10StackEntryEPS5_EET0_T_SA_S9_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPN11xalanc_1_1014VariablesStack10StackEntryES3_ET1_T0_S5_S4_ = comdat any

$_ZSt12__miter_baseIPN11xalanc_1_1014VariablesStack10StackEntryEET_S4_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPN11xalanc_1_1014VariablesStack10StackEntryES3_ET1_T0_S5_S4_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPN11xalanc_1_1014VariablesStack10StackEntryES3_ET1_T0_S5_S4_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1014VariablesStack10StackEntryES6_EET0_T_S8_S7_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE12shrinkToSizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE12shrinkToSizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE8pop_backEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv = comdat any

$_ZSt9__find_ifIPPKN11xalanc_1_1012ElemVariableEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_ = comdat any

$_ZN9__gnu_cxx5__ops17__iter_equals_valIKPKN11xalanc_1_1012ElemVariableEEENS0_16_Iter_equals_valIT_EERS8_ = comdat any

$_ZSt9__find_ifIPPKN11xalanc_1_1012ElemVariableEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPPKN11xalanc_1_1012ElemVariableEENSt15iterator_traitsIT_E17iterator_categoryERKS6_ = comdat any

$_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1012ElemVariableEEclIPS5_EEbT_ = comdat any

$_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1012ElemVariableEEC2ERS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_ = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPKNS_12ElemVariableEE9constructEPS3_RKS3_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE4swapERS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE14local_distanceEPKS3_S8_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE14ensureCapacityEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE8capacityEv = comdat any

$_ZSt4copyIPKPKN11xalanc_1_1012ElemVariableEPS3_ET0_T_S8_S7_ = comdat any

$_ZSt13copy_backwardIPPKN11xalanc_1_1012ElemVariableES4_ET0_T_S6_S5_ = comdat any

$_ZSt8distanceIPKPKN11xalanc_1_1012ElemVariableEENSt15iterator_traitsIT_E15difference_typeES7_S7_ = comdat any

$_ZSt10__distanceIPKPKN11xalanc_1_1012ElemVariableEENSt15iterator_traitsIT_E15difference_typeES7_S7_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKPKN11xalanc_1_1012ElemVariableEENSt15iterator_traitsIT_E17iterator_categoryERKS7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm = comdat any

$_ZSt13__copy_move_aILb0EPKPKN11xalanc_1_1012ElemVariableEPS3_ET1_T0_S8_S7_ = comdat any

$_ZSt12__miter_baseIPKPKN11xalanc_1_1012ElemVariableEET_S6_ = comdat any

$_ZSt12__niter_wrapIPPKN11xalanc_1_1012ElemVariableEET_RKS5_S5_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKPKN11xalanc_1_1012ElemVariableEPS3_ET1_T0_S8_S7_ = comdat any

$_ZSt12__niter_baseIPKPKN11xalanc_1_1012ElemVariableEET_S6_ = comdat any

$_ZSt12__niter_baseIPPKN11xalanc_1_1012ElemVariableEET_S5_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKPKN11xalanc_1_1012ElemVariableEPS3_ET1_T0_S8_S7_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1012ElemVariableEEEPT_PKS7_SA_S8_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPPKN11xalanc_1_1012ElemVariableES4_ET1_T0_S6_S5_ = comdat any

$_ZSt12__miter_baseIPPKN11xalanc_1_1012ElemVariableEET_S5_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPPKN11xalanc_1_1012ElemVariableES4_ET1_T0_S6_S5_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPPKN11xalanc_1_1012ElemVariableES4_ET1_T0_S6_S5_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPKN11xalanc_1_1012ElemVariableEEEPT_PKS7_SA_S8_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv = comdat any

@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionE = dso_local constant [62 x i8] c"N11xalanc_1_1014VariablesStack28InvalidStackContextExceptionE\00", align 1
@_ZTIN11xalanc_1_1022XSLTProcessorExceptionE = external constant ptr
@_ZTIN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionE, ptr @_ZTIN11xalanc_1_1022XSLTProcessorExceptionE }, align 8
@_ZN11xalanc_1_1014VariablesStack28InvalidStackContextException6m_typeE = dso_local constant [29 x i16] [i16 73, i16 110, i16 118, i16 97, i16 108, i16 105, i16 100, i16 83, i16 116, i16 97, i16 99, i16 107, i16 67, i16 111, i16 110, i16 116, i16 101, i16 120, i16 116, i16 69, i16 120, i16 99, i16 101, i16 112, i16 116, i16 105, i16 111, i16 110, i16 0], align 16
@_ZTVN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionE, ptr @_ZN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionD2Ev, ptr @_ZN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionD0Ev, ptr @_ZNK11xalanc_1_1014VariablesStack28InvalidStackContextException7getTypeEv] }, align 8

@_ZN11xalanc_1_1014VariablesStackC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1014VariablesStackC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1014VariablesStackD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1014VariablesStackD2Ev
@_ZN11xalanc_1_1014VariablesStack16CommitPushParamsC1ERS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1014VariablesStack16CommitPushParamsC2ERS0_
@_ZN11xalanc_1_1014VariablesStack16CommitPushParamsD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1014VariablesStack16CommitPushParamsD2Ev
@_ZN11xalanc_1_1014VariablesStack10StackEntryC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryC2Ev
@_ZN11xalanc_1_1014VariablesStack10StackEntryC1EPKNS_10XalanQNameERKNS_10XObjectPtrEb = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1), ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryC2EPKNS_10XalanQNameERKNS_10XObjectPtrEb
@_ZN11xalanc_1_1014VariablesStack10StackEntryC1EPKNS_10XalanQNameEPKNS_12ElemVariableEb = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1), ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryC2EPKNS_10XalanQNameEPKNS_12ElemVariableEb
@_ZN11xalanc_1_1014VariablesStack10StackEntryC1EPKNS_19ElemTemplateElementE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryC2EPKNS_19ElemTemplateElementE
@_ZN11xalanc_1_1014VariablesStack10StackEntryC1ERKS1_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryC2ERKS1_
@_ZN11xalanc_1_1014VariablesStack10StackEntryD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryD2Ev
@_ZN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionC1ERNS_14XalanDOMStringE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionC2ERNS_14XalanDOMStringE
@_ZN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStackC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !245 {
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) #13
  %3 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 1
  store i64 4294967295, ptr %3, align 8, !tbaa !246
  %4 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 2
  store i8 0, ptr %4, align 8, !tbaa !256
  %5 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 3
  store i64 0, ptr %5, align 8, !tbaa !257
  %6 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) #13
          to label %7 unwind label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 5
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) #13
          to label %9 unwind label %13

9:                                                ; preds = %7
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 100) #13
          to label %10 unwind label %15

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %2
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %19

13:                                               ; preds = %7
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %17

15:                                               ; preds = %9
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #14
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi { ptr, i32 } [ %16, %15 ], [ %14, %13 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #14
  br label %19

19:                                               ; preds = %17, %11
  %20 = phi { ptr, i32 } [ %18, %17 ], [ %12, %11 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  resume { ptr, i32 } %20
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 !prof !258 {
  store ptr %1, ptr %0, align 8, !tbaa !259
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !260
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !261
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !262

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #13
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !263
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 !prof !245 {
  store ptr %1, ptr %0, align 8, !tbaa !264
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !265
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !266
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !267

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #13
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !268
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 !prof !269 {
  store ptr %1, ptr %0, align 8, !tbaa !270
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !271
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !272
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !273

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #13
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !274
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !245 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !261
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7, !prof !267

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #13
  br label %7

7:                                                ; preds = %6, %2
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !275 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !272
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !276

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyEPS3_S7_(ptr noundef %6, ptr noundef %7) #13
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !274
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE10deallocateEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #13
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !245 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !266
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !267

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyEPS3_S7_(ptr noundef %6, ptr noundef %7) #13
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !268
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10deallocateEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #13
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !277 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !261
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %11, label %5, !prof !278

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %6, ptr noundef %7) #13
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !263
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %10) #13
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
define dso_local void @_ZN11xalanc_1_1014VariablesStackD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 align 2 !prof !245 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 5
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  %3 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack5resetEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 align 2 !prof !279 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  br i1 %2, label %5, label %3, !prof !280

3:                                                ; preds = %1, %3
  tail call void @_ZN11xalanc_1_1014VariablesStack3popEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #13
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  br i1 %4, label %5, label %3, !prof !281, !llvm.loop !282

5:                                                ; preds = %3, %1
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %6 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %6) #13
  %7 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 5
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #13
  %8 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 2
  store i8 0, ptr %8, align 8, !tbaa !256
  %9 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 1
  store i64 4294967295, ptr %9, align 8, !tbaa !246
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !279 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !260
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack3popEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 align 2 !prof !284 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 3
  %3 = load i64, ptr %2, align 8, !tbaa !257
  %4 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %9, !prof !285

6:                                                ; preds = %1
  %7 = load i64, ptr %2, align 8, !tbaa !257
  %8 = add i64 %7, -1
  store i64 %8, ptr %2, align 8, !tbaa !257
  br label %9

9:                                                ; preds = %6, %1
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !279 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !260
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5, !prof !286

5:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #13
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !279 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !265
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5, !prof !286

5:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #13
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !287 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !271
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5, !prof !288

5:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #13
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014VariablesStack25elementFrameAlreadyPushedEPKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef readnone %1) local_unnamed_addr #0 align 2 !prof !289 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = add i64 %3, -1
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %17, label %6, !prof !290

6:                                                ; preds = %2, %14
  %7 = phi i64 [ %15, %14 ], [ %4, %2 ]
  %8 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %7) #13
  %9 = tail call noundef i32 @_ZNK11xalanc_1_1014VariablesStack10StackEntry7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #13
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %11, label %14, !prof !291

11:                                               ; preds = %6
  %12 = tail call noundef ptr @_ZNK11xalanc_1_1014VariablesStack10StackEntry10getElementEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #13
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %17, label %14, !prof !291

14:                                               ; preds = %11, %6
  %15 = add i64 %7, -1
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %6, !prof !292, !llvm.loop !293

17:                                               ; preds = %11, %14, %2
  %18 = phi i1 [ false, %2 ], [ false, %14 ], [ true, %11 ]
  ret i1 %18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !294 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !260
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !289 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !263
  %5 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014VariablesStack10StackEntry7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !295 {
  %2 = load i32, ptr %0, align 8, !tbaa !296
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014VariablesStack10StackEntry10getElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !289 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !300
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack17pushContextMarkerEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = alloca %"class.xalanc_1_10::VariablesStack::StackEntry", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #16
  call void @_ZN11xalanc_1_1014VariablesStack10StackEntryC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  invoke void @_ZN11xalanc_1_1014VariablesStack4pushERKNS0_10StackEntryE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(40) %2) #13
          to label %3 unwind label %4

3:                                                ; preds = %1
  call void @_ZN11xalanc_1_1014VariablesStack10StackEntryD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #16
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014VariablesStack10StackEntryD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #16
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack4pushERKNS0_10StackEntryE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 !prof !284 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !257
  %5 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %10, !prof !285

7:                                                ; preds = %2
  %8 = load i64, ptr %3, align 8, !tbaa !257
  %9 = add i64 %8, 1
  store i64 %9, ptr %3, align 8, !tbaa !257
  br label %10

10:                                               ; preds = %7, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  %11 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 2
  %12 = load i8, ptr %11, align 8, !tbaa !256, !range !302, !noundef !303
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %20, !prof !304

14:                                               ; preds = %10
  %15 = tail call noundef i32 @_ZNK11xalanc_1_1014VariablesStack10StackEntry7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %20, !prof !305

17:                                               ; preds = %14
  %18 = load i64, ptr %3, align 8, !tbaa !257
  %19 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 1
  store i64 %18, ptr %19, align 8, !tbaa !246
  br label %20

20:                                               ; preds = %17, %14, %10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack16popContextMarkerEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 align 2 !prof !301 {
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %3 ]
  %5 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %4, i64 -1
  %6 = tail call noundef i32 @_ZNK11xalanc_1_1014VariablesStack10StackEntry7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #13
  tail call void @_ZN11xalanc_1_1014VariablesStack3popEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %3

8:                                                ; preds = %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !306 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 !prof !284 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !284 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !260
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !260
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !263
  %7 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(40) %7) #13
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1014VariablesStack16PushParamFunctorclERKNS0_17ParamsVectorEntryE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !307 {
  %3 = alloca %"class.xalanc_1_10::VariablesStack::StackEntry", align 8
  %4 = alloca %"class.xalanc_1_10::VariablesStack::StackEntry", align 8
  %5 = getelementptr inbounds %"struct.xalanc_1_10::VariablesStack::ParamsVectorEntry", ptr %1, i64 0, i32 1
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1010XObjectPtr4nullEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  %7 = load ptr, ptr %0, align 8, !tbaa !308
  br i1 %6, label %13, label %8, !prof !310

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #16
  %9 = load ptr, ptr %1, align 8, !tbaa !311
  call void @_ZN11xalanc_1_1014VariablesStack10StackEntryC2EPKNS_10XalanQNameERKNS_10XObjectPtrEb(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext true) #13
  invoke void @_ZN11xalanc_1_1014VariablesStack4pushERKNS0_10StackEntryE(ptr noundef nonnull align 8 dereferenceable(120) %7, ptr noundef nonnull align 8 dereferenceable(40) %3) #13
          to label %10 unwind label %11

10:                                               ; preds = %8
  call void @_ZN11xalanc_1_1014VariablesStack10StackEntryD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #16
  br label %20

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014VariablesStack10StackEntryD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #16
  br label %21

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #16
  %14 = load ptr, ptr %1, align 8, !tbaa !311
  %15 = getelementptr inbounds %"struct.xalanc_1_10::VariablesStack::ParamsVectorEntry", ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !313
  call void @_ZN11xalanc_1_1014VariablesStack10StackEntryC2EPKNS_10XalanQNameEPKNS_12ElemVariableEb(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %14, ptr noundef %16, i1 noundef zeroext true) #13
  invoke void @_ZN11xalanc_1_1014VariablesStack4pushERKNS0_10StackEntryE(ptr noundef nonnull align 8 dereferenceable(120) %7, ptr noundef nonnull align 8 dereferenceable(40) %4) #13
          to label %17 unwind label %18

17:                                               ; preds = %13
  call void @_ZN11xalanc_1_1014VariablesStack10StackEntryD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #16
  br label %20

18:                                               ; preds = %13
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014VariablesStack10StackEntryD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #16
  br label %21

20:                                               ; preds = %17, %10
  ret void

21:                                               ; preds = %18, %11
  %22 = phi { ptr, i32 } [ %12, %11 ], [ %19, %18 ]
  resume { ptr, i32 } %22
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1010XObjectPtr4nullEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !314 {
  %2 = load ptr, ptr %0, align 8, !tbaa !315
  %3 = icmp eq ptr %2, null
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack16CommitPushParamsC2ERS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 align 2 !prof !316 {
  store ptr %1, ptr %0, align 8, !tbaa !317
  %3 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::CommitPushParams", ptr %0, i64 0, i32 1
  %4 = tail call noundef i64 @_ZNK11xalanc_1_1014VariablesStack12getStackSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %1) #13
  store i64 %4, ptr %3, align 8, !tbaa !319
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1014VariablesStack12getStackSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 comdat align 2 !prof !316 {
  %2 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack16CommitPushParamsD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !316 {
  %2 = load ptr, ptr %0, align 8, !tbaa !317
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4, !prof !320

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::CommitPushParams", ptr %0, i64 0, i32 1
  br label %6

6:                                                ; preds = %4, %12
  %7 = load ptr, ptr %0, align 8, !tbaa !317
  %8 = invoke noundef i64 @_ZNK11xalanc_1_1014VariablesStack12getStackSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %7) #13
          to label %9 unwind label %15

9:                                                ; preds = %6
  %10 = load i64, ptr %5, align 8, !tbaa !319
  %11 = icmp ugt i64 %8, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load ptr, ptr %0, align 8, !tbaa !317
  invoke void @_ZN11xalanc_1_1014VariablesStack3popEv(ptr noundef nonnull align 8 dereferenceable(120) %13) #13
          to label %6 unwind label %15, !llvm.loop !321

14:                                               ; preds = %9, %1
  ret void

15:                                               ; preds = %12, %6
  %16 = landingpad { ptr, i32 }
          catch ptr null
  %17 = extractvalue { ptr, i32 } %16, 0
  tail call void @__clang_call_terminate(ptr %17) #15
  unreachable
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack10pushParamsERKNS_11XalanVectorINS0_17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !316 {
  %3 = alloca %"class.xalanc_1_10::VariablesStack::CommitPushParams", align 8
  %4 = alloca %"class.xalanc_1_10::VariablesStack::PushParamFunctor", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  call void @_ZN11xalanc_1_1014VariablesStack16CommitPushParamsC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(120) %0) #13
  %5 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
          to label %6 unwind label %12

6:                                                ; preds = %2
  %7 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
          to label %8 unwind label %12

8:                                                ; preds = %6
  call void @_ZN11xalanc_1_1014VariablesStack16PushParamFunctorC2ERS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(120) %0) #13
  %9 = load ptr, ptr %4, align 8
  %10 = invoke ptr @_ZSt8for_eachIPKN11xalanc_1_1014VariablesStack17ParamsVectorEntryENS1_16PushParamFunctorEET0_T_S7_S6_(ptr noundef %5, ptr noundef %7, ptr %9) #13
          to label %11 unwind label %12

11:                                               ; preds = %8
  call void @_ZN11xalanc_1_1014VariablesStack16CommitPushParams6commitEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  call void @_ZN11xalanc_1_1014VariablesStack16CommitPushParamsD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret void

12:                                               ; preds = %8, %6, %2
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014VariablesStack16CommitPushParamsD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt8for_eachIPKN11xalanc_1_1014VariablesStack17ParamsVectorEntryENS1_16PushParamFunctorEET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !316 {
  %4 = alloca %"class.xalanc_1_10::VariablesStack::PushParamFunctor", align 8
  store ptr %2, ptr %4, align 8
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %10, label %6, !prof !322

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  call void @_ZNK11xalanc_1_1014VariablesStack16PushParamFunctorclERKNS0_17ParamsVectorEntryE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %7) #13
  %8 = getelementptr inbounds %"struct.xalanc_1_10::VariablesStack::ParamsVectorEntry", ptr %7, i64 1
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %6, !prof !323, !llvm.loop !324

10:                                               ; preds = %6, %3
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !307 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !325
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !307 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014VariablesStack16PushParamFunctorC2ERS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #1 comdat align 2 !prof !316 {
  store ptr %1, ptr %0, align 8, !tbaa !327
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014VariablesStack16CommitPushParams6commitEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !316 {
  store ptr null, ptr %0, align 8, !tbaa !317
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack12pushVariableERKNS_10XalanQNameEPKNS_12ElemVariableEPKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !328 {
  %5 = alloca %"class.xalanc_1_10::VariablesStack::StackEntry", align 8
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014VariablesStack25elementFrameAlreadyPushedEPKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %3) #13
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @_ZN11xalanc_1_1014VariablesStack16pushElementFrameEPKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %3) #13
  br label %8

8:                                                ; preds = %7, %4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  call void @_ZN11xalanc_1_1014VariablesStack10StackEntryC2EPKNS_10XalanQNameEPKNS_12ElemVariableEb(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull %1, ptr noundef %2, i1 noundef zeroext false) #13
  invoke void @_ZN11xalanc_1_1014VariablesStack4pushERKNS0_10StackEntryE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(40) %5) #13
          to label %9 unwind label %10

9:                                                ; preds = %8
  call void @_ZN11xalanc_1_1014VariablesStack10StackEntryD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  ret void

10:                                               ; preds = %8
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014VariablesStack10StackEntryD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack16pushElementFrameEPKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !329 {
  %3 = alloca %"class.xalanc_1_10::VariablesStack::StackEntry", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #16
  call void @_ZN11xalanc_1_1014VariablesStack10StackEntryC2EPKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %1) #13
  invoke void @_ZN11xalanc_1_1014VariablesStack4pushERKNS0_10StackEntryE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(40) %3) #13
          to label %4 unwind label %5

4:                                                ; preds = %2
  call void @_ZN11xalanc_1_1014VariablesStack10StackEntryD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #16
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014VariablesStack10StackEntryD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #16
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack12pushVariableERKNS_10XalanQNameERKNS_10XObjectPtrEPKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !289 {
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = alloca %"class.xalanc_1_10::VariablesStack::StackEntry", align 8
  %7 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014VariablesStack25elementFrameAlreadyPushedEPKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %3) #13
  br i1 %7, label %18, label %8, !prof !291

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %9) #13
  %10 = call ptr @__cxa_allocate_exception(i64 104) #16
  invoke void @_ZN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionC2ERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %10, ptr noundef nonnull align 8 dereferenceable(36) %5) #13
          to label %11 unwind label %12

11:                                               ; preds = %8
  invoke void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionE, ptr nonnull @_ZN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionD2Ev) #17
          to label %24 unwind label %14

12:                                               ; preds = %8
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %10) #16
  br label %16

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  br label %22

18:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1014VariablesStack10StackEntryC2EPKNS_10XalanQNameERKNS_10XObjectPtrEb(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext false) #13
  invoke void @_ZN11xalanc_1_1014VariablesStack4pushERKNS0_10StackEntryE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(40) %6) #13
          to label %19 unwind label %20

19:                                               ; preds = %18
  call void @_ZN11xalanc_1_1014VariablesStack10StackEntryD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #16
  ret void

20:                                               ; preds = %18
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014VariablesStack10StackEntryD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #16
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi { ptr, i32 } [ %17, %16 ], [ %21, %20 ]
  resume { ptr, i32 } %23

24:                                               ; preds = %11
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !328 {
  %2 = load ptr, ptr %0, align 8, !tbaa !259
  ret ptr %2
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 !prof !330 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack5startEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(120) %0) local_unnamed_addr #5 align 2 !prof !328 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack11resetParamsEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #1 align 2 !prof !328 {
  %2 = tail call noundef i64 @_ZNK11xalanc_1_1014VariablesStack25getCurrentStackFrameIndexEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #13
  %3 = add i64 %2, -1
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1, %10
  %6 = phi i64 [ %11, %10 ], [ %3, %1 ]
  %7 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %6) #13
  %8 = tail call noundef i32 @_ZNK11xalanc_1_1014VariablesStack10StackEntry7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %7) #13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  tail call void @_ZN11xalanc_1_1014VariablesStack10StackEntry10deactivateEv(ptr noundef nonnull align 8 dereferenceable(40) %7) #13
  %11 = add i64 %6, -1
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %5, !llvm.loop !331

13:                                               ; preds = %10, %5, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1014VariablesStack25getCurrentStackFrameIndexEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #1 comdat align 2 !prof !332 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 3
  %3 = load i64, ptr %2, align 8, !tbaa !257
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !333 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !263
  %5 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack10StackEntry10deactivateEv(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 align 2 !prof !328 {
  %2 = load i32, ptr %0, align 8, !tbaa !296
  %3 = icmp eq i32 %2, 3
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store i32 2, ptr %0, align 8, !tbaa !296
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack20markGlobalStackFrameEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 align 2 !prof !245 {
  %2 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %3 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 1
  store i64 %2, ptr %3, align 8, !tbaa !246
  %4 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 2
  store i8 1, ptr %4, align 8, !tbaa !256
  tail call void @_ZN11xalanc_1_1014VariablesStack17pushContextMarkerEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack22unmarkGlobalStackFrameEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 align 2 !prof !245 {
  tail call void @_ZN11xalanc_1_1014VariablesStack16popContextMarkerEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 1
  store i64 4294967295, ptr %2, align 8, !tbaa !246
  %3 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 2
  store i8 0, ptr %3, align 8, !tbaa !256
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack11findXObjectERKNS_10XalanQNameERNS_26StylesheetExecutionContextEbbRb(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !332 {
  %8 = alloca ptr, align 8
  %9 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %10 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %11 = tail call noundef i64 @_ZN11xalanc_1_1014VariablesStack9findEntryERKNS_10XalanQNameEbb(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext %4, i1 noundef zeroext %5) #13
  %12 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15, !prof !334

14:                                               ; preds = %7
  store i8 0, ptr %6, align 1, !tbaa !335
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #13
  br label %88

15:                                               ; preds = %7
  store i8 1, ptr %6, align 1, !tbaa !335
  %16 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %11) #13
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1014VariablesStack10StackEntry8getValueEv(ptr noundef nonnull align 8 dereferenceable(40) %16) #13
  %18 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1010XObjectPtr4nullEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #13
  br i1 %18, label %20, label %19, !prof !336

19:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %17) #13
  br label %88

20:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  %21 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %11) #13
  %22 = tail call noundef ptr @_ZNK11xalanc_1_1014VariablesStack10StackEntry11getVariableEv(ptr noundef nonnull align 8 dereferenceable(40) %21) #13
  store ptr %22, ptr %8, align 8, !tbaa !327
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %87, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %3, align 8, !tbaa !337
  %26 = getelementptr inbounds ptr, ptr %25, i64 53
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
          to label %29 unwind label %54

29:                                               ; preds = %24
  %30 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %1, i64 0, i32 4
  %31 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %30) #13
  %32 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %30) #13
          to label %33 unwind label %54

33:                                               ; preds = %29
  %34 = invoke noundef ptr @_ZSt4findIPPKN11xalanc_1_1012ElemVariableES3_ET_S5_S5_RKT0_(ptr noundef %31, ptr noundef %32, ptr noundef nonnull align 8 dereferenceable(8) %8) #13
          to label %35 unwind label %54

35:                                               ; preds = %33
  %36 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %30) #13
          to label %37 unwind label %54

37:                                               ; preds = %35
  %38 = icmp eq ptr %34, %36
  br i1 %38, label %62, label %39

39:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #16
  invoke void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(24) %3) #13
          to label %40 unwind label %56

40:                                               ; preds = %39
  %41 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #13
  %42 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %41, i32 noundef 137) #13
          to label %43 unwind label %58

43:                                               ; preds = %40
  %44 = load ptr, ptr %8, align 8, !tbaa !327
  %45 = load ptr, ptr %44, align 8, !tbaa !337
  %46 = getelementptr inbounds ptr, ptr %45, i64 4
  %47 = load ptr, ptr %46, align 8
  %48 = invoke noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(322) %44) #13
          to label %49 unwind label %58

49:                                               ; preds = %43
  %50 = load ptr, ptr %3, align 8, !tbaa !337
  %51 = getelementptr inbounds ptr, ptr %50, i64 2
  %52 = load ptr, ptr %51, align 8
  invoke void %52(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(36) %42, ptr noundef %28, ptr noundef %48) #13
          to label %53 unwind label %58

53:                                               ; preds = %49
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #16
  br label %62

54:                                               ; preds = %75, %71, %63, %62, %35, %33, %29, %24
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %85

56:                                               ; preds = %39
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %60

58:                                               ; preds = %49, %43, %40
  %59 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #14
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi { ptr, i32 } [ %59, %58 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #16
  br label %85

62:                                               ; preds = %53, %37
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(8) %8) #13
          to label %63 unwind label %54

63:                                               ; preds = %62
  %64 = load ptr, ptr %3, align 8, !tbaa !337
  %65 = getelementptr inbounds ptr, ptr %64, i64 85
  %66 = load ptr, ptr %65, align 8
  invoke void %66(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
          to label %67 unwind label %54

67:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  %68 = load ptr, ptr %8, align 8, !tbaa !327
  invoke void @_ZNK11xalanc_1_1012ElemVariable8getValueERNS_26StylesheetExecutionContextEPNS_9XalanNodeE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %10, ptr noundef nonnull align 8 dereferenceable(368) %68, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %28) #13
          to label %69 unwind label %79

69:                                               ; preds = %67
  %70 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %10) #13
          to label %71 unwind label %81

71:                                               ; preds = %69
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  %72 = load ptr, ptr %3, align 8, !tbaa !337
  %73 = getelementptr inbounds ptr, ptr %72, i64 86
  %74 = load ptr, ptr %73, align 8
  invoke void %74(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
          to label %75 unwind label %54

75:                                               ; preds = %71
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %30) #13
  %76 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %11) #13
  invoke void @_ZN11xalanc_1_1014VariablesStack10StackEntry8setValueERKNS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(40) %76, ptr noundef nonnull align 8 dereferenceable(8) %0) #13
          to label %77 unwind label %54

77:                                               ; preds = %75
  %78 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %11) #13
  call void @_ZN11xalanc_1_1014VariablesStack10StackEntry8activateEv(ptr noundef nonnull align 8 dereferenceable(40) %78) #13
  br label %87

79:                                               ; preds = %67
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %83

81:                                               ; preds = %69
  %82 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #14
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi { ptr, i32 } [ %82, %81 ], [ %80, %79 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  br label %85

85:                                               ; preds = %83, %60, %54
  %86 = phi { ptr, i32 } [ %55, %54 ], [ %84, %83 ], [ %61, %60 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  resume { ptr, i32 } %86

87:                                               ; preds = %20, %77
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %88

88:                                               ; preds = %19, %87, %14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i64 @_ZN11xalanc_1_1014VariablesStack9findEntryERKNS_10XalanQNameEbb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 !prof !332 {
  %5 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %6 = tail call noundef i64 @_ZNK11xalanc_1_1014VariablesStack25getCurrentStackFrameIndexEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #13
  %7 = add i64 %6, -1
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %26, label %9, !prof !339

9:                                                ; preds = %4, %23
  %10 = phi i64 [ %24, %23 ], [ %7, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #13
  %12 = tail call noundef i32 @_ZNK11xalanc_1_1014VariablesStack10StackEntry7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %11) #13
  %13 = and i32 %12, -3
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %18, !prof !340

15:                                               ; preds = %9
  %16 = tail call noundef ptr @_ZNK11xalanc_1_1014VariablesStack10StackEntry7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %11) #13
  %17 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  br i1 %17, label %26, label %23, !prof !341

18:                                               ; preds = %9
  switch i32 %12, label %23 [
    i32 2, label %19
    i32 0, label %26
  ], !prof !342

19:                                               ; preds = %18
  br i1 %2, label %20, label %23, !prof !343

20:                                               ; preds = %19
  %21 = tail call noundef ptr @_ZNK11xalanc_1_1014VariablesStack10StackEntry7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %11) #13
  %22 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  br i1 %22, label %30, label %23, !prof !344

23:                                               ; preds = %15, %19, %20, %18
  %24 = add i64 %10, -1
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %9, !prof !345, !llvm.loop !346

26:                                               ; preds = %23, %15, %18, %4
  %27 = phi i64 [ %5, %4 ], [ %5, %18 ], [ %10, %15 ], [ %5, %23 ]
  %28 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %32, label %52, !prof !334

30:                                               ; preds = %20
  tail call void @_ZN11xalanc_1_1014VariablesStack10StackEntry8activateEv(ptr noundef nonnull align 8 dereferenceable(40) %11) #13
  %31 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  br label %52

32:                                               ; preds = %26
  br i1 %2, label %52, label %33, !prof !347

33:                                               ; preds = %32
  %34 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 1
  %35 = load i64, ptr %34, align 8
  %36 = icmp ult i64 %35, 2
  %37 = xor i1 %3, true
  %38 = select i1 %37, i1 true, i1 %36
  %39 = add i64 %35, -1
  %40 = icmp eq i64 %39, 0
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %52, label %42

42:                                               ; preds = %33, %49
  %43 = phi i64 [ %50, %49 ], [ %39, %33 ]
  %44 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %43) #13
  %45 = tail call noundef i32 @_ZNK11xalanc_1_1014VariablesStack10StackEntry7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %44) #13
  switch i32 %45, label %49 [
    i32 1, label %46
    i32 0, label %52
  ]

46:                                               ; preds = %42
  %47 = tail call noundef ptr @_ZNK11xalanc_1_1014VariablesStack10StackEntry7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %44) #13
  %48 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  br i1 %48, label %52, label %49

49:                                               ; preds = %46, %42
  %50 = add i64 %43, -1
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %42, !llvm.loop !348

52:                                               ; preds = %49, %46, %42, %30, %33, %32, %26
  %53 = phi i64 [ %27, %33 ], [ %27, %32 ], [ %27, %26 ], [ %10, %30 ], [ %27, %49 ], [ %43, %46 ], [ %27, %42 ]
  ret i64 %53
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !349 {
  store ptr %1, ptr %0, align 8, !tbaa !315
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1014VariablesStack10StackEntry8getValueEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !350 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !351 {
  %3 = load ptr, ptr %1, align 8, !tbaa !315
  store ptr %3, ptr %0, align 8, !tbaa !315
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %3) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014VariablesStack10StackEntry11getVariableEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !328 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !352
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4findIPPKN11xalanc_1_1012ElemVariableES3_ET_S5_S5_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat !prof !328 {
  %4 = tail call ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKPKN11xalanc_1_1012ElemVariableEEENS0_16_Iter_equals_valIT_EERS8_(ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  %5 = tail call noundef ptr @_ZSt9__find_ifIPPKN11xalanc_1_1012ElemVariableEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_(ptr noundef %0, ptr noundef %1, ptr %4) #13
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !328 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !268
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !328 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 !prof !353 {
  store ptr %1, ptr %0, align 8, !tbaa !354
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %1, align 8, !tbaa !337
  %5 = getelementptr inbounds ptr, ptr %4, i64 23
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  store ptr %7, ptr %3, align 8, !tbaa !356
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !357 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !356
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !358 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !356
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !359

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !354
  %7 = load ptr, ptr %6, align 8, !tbaa !337
  %8 = getelementptr inbounds ptr, ptr %7, i64 24
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(36) %3) #13
          to label %11 unwind label %12

11:                                               ; preds = %5, %1
  ret void

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !328 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1012ElemVariable8getValueERNS_26StylesheetExecutionContextEPNS_9XalanNodeE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(368), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !360 {
  %3 = load ptr, ptr %0, align 8, !tbaa !315
  %4 = load ptr, ptr %1, align 8, !tbaa !315
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %8, label %6, !prof !361

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %3) #13
  %7 = load ptr, ptr %1, align 8, !tbaa !315
  store ptr %7, ptr %0, align 8, !tbaa !315
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %7) #13
  br label %8

8:                                                ; preds = %6, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !362 {
  %2 = load ptr, ptr %0, align 8, !tbaa !315
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %2) #13
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !328 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !265
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !265
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !268
  %7 = getelementptr inbounds ptr, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyERS3_(ptr noundef nonnull align 8 dereferenceable(8) %7) #13
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014VariablesStack10StackEntry8setValueERKNS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !328 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 2
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack10StackEntry8activateEv(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 align 2 !prof !307 {
  %2 = load i32, ptr %0, align 8, !tbaa !296
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %4, label %5, !prof !363

4:                                                ; preds = %1
  store i32 3, ptr %0, align 8, !tbaa !296
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014VariablesStack10StackEntry7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !364 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !365
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !366 {
  %3 = load ptr, ptr %0, align 8, !tbaa !337
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  %7 = load ptr, ptr %1, align 8, !tbaa !337
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %11 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %10) #13
  br i1 %11, label %12, label %22, !prof !367

12:                                               ; preds = %2
  %13 = load ptr, ptr %0, align 8, !tbaa !337
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef nonnull align 8 dereferenceable(36) ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  %17 = load ptr, ptr %1, align 8, !tbaa !337
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef nonnull align 8 dereferenceable(36) ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %21 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %16, ptr noundef nonnull align 8 dereferenceable(36) %20) #13
  br label %22

22:                                               ; preds = %12, %2
  %23 = phi i1 [ false, %2 ], [ %21, %12 ]
  ret i1 %23
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack15popElementFrameEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !329 {
  %2 = alloca %"class.xalanc_1_10::EnsurePop", align 8
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %4 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  br label %5

5:                                                ; preds = %28, %1
  %6 = phi i64 [ %4, %1 ], [ %7, %28 ]
  %7 = add i64 %6, -1
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %31, label %9, !prof !368

9:                                                ; preds = %5
  %10 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %7) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @_ZN11xalanc_1_109EnsurePopC2ERNS_14VariablesStackE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(120) %0) #13
  %11 = call noundef i32 @_ZNK11xalanc_1_1014VariablesStack10StackEntry7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %10) #13
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %28, !prof !368

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #16
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %14) #13
          to label %15 unwind label %18

15:                                               ; preds = %13
  %16 = call ptr @__cxa_allocate_exception(i64 104) #16
  invoke void @_ZN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionC2ERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %16, ptr noundef nonnull align 8 dereferenceable(36) %3) #13
          to label %17 unwind label %20

17:                                               ; preds = %15
  invoke void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTIN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionE, ptr nonnull @_ZN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionD2Ev) #17
          to label %32 unwind label %22

18:                                               ; preds = %13
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %26

20:                                               ; preds = %15
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %16) #16
  br label %24

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi { ptr, i32 } [ %23, %22 ], [ %21, %20 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #14
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi { ptr, i32 } [ %25, %24 ], [ %19, %18 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #16
  call void @_ZN11xalanc_1_109EnsurePopD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  resume { ptr, i32 } %27

28:                                               ; preds = %9
  %29 = call noundef i32 @_ZNK11xalanc_1_1014VariablesStack10StackEntry7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %10) #13
  %30 = icmp eq i32 %29, 4
  call void @_ZN11xalanc_1_109EnsurePopD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  br i1 %30, label %31, label %5, !llvm.loop !369

31:                                               ; preds = %5, %28
  ret void

32:                                               ; preds = %17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109EnsurePopC2ERNS_14VariablesStackE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #1 comdat align 2 !prof !370 {
  store ptr %1, ptr %0, align 8, !tbaa !327
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109EnsurePopD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !370 {
  %2 = load ptr, ptr %0, align 8, !tbaa !371
  invoke void @_ZN11xalanc_1_1014VariablesStack3popEv(ptr noundef nonnull align 8 dereferenceable(120) %2) #13
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack10StackEntryC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 !prof !301 {
  store i32 0, ptr %0, align 8, !tbaa !296
  %2 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !365
  %3 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef null) #13
  %4 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack10StackEntryC2EPKNS_10XalanQNameERKNS_10XObjectPtrEb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 !prof !373 {
  %5 = select i1 %3, i32 2, i32 1
  store i32 %5, ptr %0, align 8, !tbaa !296
  %6 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !365
  %7 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  %8 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack10StackEntryC2EPKNS_10XalanQNameEPKNS_12ElemVariableEb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 !prof !328 {
  %5 = select i1 %3, i32 2, i32 1
  store i32 %5, ptr %0, align 8, !tbaa !296
  %6 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !365
  %7 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef null) #13
  %8 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 3
  store ptr %2, ptr %8, align 8, !tbaa !352
  %9 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !300
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack10StackEntryC2EPKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !329 {
  store i32 4, ptr %0, align 8, !tbaa !296
  %3 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !365
  %4 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null) #13
  %5 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 3
  store ptr null, ptr %5, align 8, !tbaa !352
  %6 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 4
  store ptr %1, ptr %6, align 8, !tbaa !300
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack10StackEntryC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 align 2 !prof !374 {
  %3 = load i32, ptr %1, align 8, !tbaa !296
  store i32 %3, ptr %0, align 8, !tbaa !296
  %4 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !365
  store ptr %6, ptr %4, align 8, !tbaa !365
  %7 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %1, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #13
  %9 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %1, i64 0, i32 3
  %11 = load <2 x ptr>, ptr %10, align 8, !tbaa !327
  store <2 x ptr> %11, ptr %9, align 8, !tbaa !327
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack10StackEntryD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 align 2 !prof !375 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryaSERKS1_(ptr noundef nonnull returned align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 !prof !328 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 8, !tbaa !296
  store i32 %5, ptr %0, align 8, !tbaa !296
  %6 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !365
  %8 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !365
  %9 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %1, i64 0, i32 2
  %10 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 2
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9) #13
  %12 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %1, i64 0, i32 3
  %13 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 3
  %14 = load <2 x ptr>, ptr %12, align 8, !tbaa !327
  store <2 x ptr> %14, ptr %13, align 8, !tbaa !327
  br label %15

15:                                               ; preds = %4, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014VariablesStack10StackEntryeqERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 align 2 !prof !328 {
  %3 = load i32, ptr %0, align 8, !tbaa !296
  %4 = load i32, ptr %1, align 8, !tbaa !296
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %26

6:                                                ; preds = %2
  switch i32 %3, label %26 [
    i32 0, label %7
    i32 1, label %9
    i32 2, label %9
    i32 3, label %9
    i32 4, label %20
  ]

7:                                                ; preds = %6
  %8 = icmp eq ptr %1, %0
  br label %26

9:                                                ; preds = %6, %6, %6
  %10 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %1, i64 0, i32 2
  %12 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_10XObjectPtrES2_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11) #13
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !352
  %16 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !352
  %18 = icmp eq ptr %15, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %13, %9
  br label %26

20:                                               ; preds = %6
  %21 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !300
  %23 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %1, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !300
  %25 = icmp eq ptr %22, %24
  br label %26

26:                                               ; preds = %20, %7, %6, %13, %19, %2
  %27 = phi i1 [ true, %19 ], [ false, %13 ], [ false, %2 ], [ %8, %7 ], [ false, %6 ], [ %25, %20 ]
  ret i1 %27
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_10XObjectPtrES2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !328 {
  %3 = load ptr, ptr %0, align 8, !tbaa !315
  %4 = load ptr, ptr %1, align 8, !tbaa !315
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionC2ERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !328 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #13
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 123) #13
  tail call void @_ZN11xalanc_1_1022XSLTProcessorExceptionC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(36) %4) #13
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !337
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !376 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022XSLTProcessorExceptionC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1022XSLTProcessorExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 align 2 !prof !328 {
  tail call void @_ZN11xalanc_1_1022XSLTProcessorExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 align 2 {
  tail call void @_ZN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014VariablesStack28InvalidStackContextException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 comdat align 2 !prof !328 {
  ret ptr @_ZN11xalanc_1_1014VariablesStack28InvalidStackContextException6m_typeE
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !377 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !378
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !380

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #13
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !381
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #13
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !382 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !383 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !384

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #13
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !385, !llvm.loop !386

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !387 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !381
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !388 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !383 {
  %3 = load ptr, ptr %0, align 8, !tbaa !389
  %4 = load ptr, ptr %3, align 8, !tbaa !337
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #1 comdat align 2 !prof !390 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !391 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !381
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !392
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 comdat !prof !393 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #13
  ret i1 %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !394 {
  %2 = load ptr, ptr %0, align 8, !tbaa !389
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !395 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !258 {
  %3 = mul i64 %1, 40
  %4 = load ptr, ptr %0, align 8, !tbaa !259
  %5 = load ptr, ptr %4, align 8, !tbaa !337
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #13
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !328 {
  %3 = shl i64 %1, 3
  %4 = load ptr, ptr %0, align 8, !tbaa !264
  %5 = load ptr, ptr %4, align 8, !tbaa !337
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #13
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !396 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !397 {
  %3 = shl i64 %1, 3
  %4 = load ptr, ptr %0, align 8, !tbaa !270
  %5 = load ptr, ptr %4, align 8, !tbaa !337
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #13
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !398 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !258 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !399

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(40) %5) #13
  %6 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !400, !llvm.loop !401

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !402 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !263
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !258 {
  %3 = load ptr, ptr %0, align 8, !tbaa !259
  %4 = load ptr, ptr %3, align 8, !tbaa !337
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !374 {
  tail call void @_ZN11xalanc_1_1014VariablesStack10StackEntryD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyEPS3_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !328 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyERS3_(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !llvm.loop !403

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10deallocateEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !328 {
  %3 = load ptr, ptr %0, align 8, !tbaa !264
  %4 = load ptr, ptr %3, align 8, !tbaa !337
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyERS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !328 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyEPS3_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !397 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !404

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyERS3_(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !405, !llvm.loop !406

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !407 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !274
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !407 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE10deallocateEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !397 {
  %3 = load ptr, ptr %0, align 8, !tbaa !270
  %4 = load ptr, ptr %3, align 8, !tbaa !337
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyERS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !408 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !409 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !274
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !271
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !245 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !259
  call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #13
  call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !258 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !259
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !260
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !410

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #13
  call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #13
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #13
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !411

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #13
  store ptr %24, ptr %8, align 8, !tbaa !263
  store i64 %3, ptr %7, align 8, !tbaa !261
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 !prof !402 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %3 = load ptr, ptr %0, align 8, !tbaa !259
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !263
  %7 = load ptr, ptr %1, align 8, !tbaa !259
  store ptr %7, ptr %0, align 8, !tbaa !259
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !412
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !263
  store ptr %11, ptr %5, align 8, !tbaa !263
  store ptr %3, ptr %1, align 8, !tbaa !259
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !412
  store <2 x i64> %9, ptr %4, align 8, !tbaa !412
  store <2 x i64> %12, ptr %8, align 8, !tbaa !412
  store ptr %6, ptr %10, align 8, !tbaa !263
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !413 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !413 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #13
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %76, label %8, !prof !414

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28, !prof !415

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #13
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %75, label %16, !prof !416

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !259
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_14VariablesStack10StackEntryEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #13
  %23 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !260
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !260
  %26 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %75, label %18, !prof !417, !llvm.loop !418

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %32 = load ptr, ptr %0, align 8, !tbaa !259
  call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #13
  %33 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  %34 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %34, ptr noundef %1) #13
          to label %35 unwind label %41

35:                                               ; preds = %31
  %36 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %36, ptr noundef %2, ptr noundef %3) #13
          to label %37 unwind label %41

37:                                               ; preds = %35
  %38 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  %39 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %38, ptr noundef %1, ptr noundef %39) #13
          to label %40 unwind label %41

40:                                               ; preds = %37
  call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %75

41:                                               ; preds = %37, %35, %31
  %42 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %42

43:                                               ; preds = %28
  %44 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %45 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %44) #13
  %46 = icmp ugt i64 %45, %6
  br i1 %46, label %62, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %2, i64 %45
  %49 = icmp eq ptr %48, %3
  br i1 %49, label %50, label %52

50:                                               ; preds = %52, %47
  %51 = icmp eq ptr %44, %1
  br i1 %51, label %60, label %56

52:                                               ; preds = %47, %52
  %53 = phi ptr [ %54, %52 ], [ %48, %47 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %53) #13
  %54 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %53, i64 1
  %55 = icmp eq ptr %54, %3
  br i1 %55, label %50, label %52, !llvm.loop !419

56:                                               ; preds = %50, %56
  %57 = phi ptr [ %58, %56 ], [ %1, %50 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %57) #13
  %58 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %57, i64 1
  %59 = icmp eq ptr %58, %44
  br i1 %59, label %60, label %56, !llvm.loop !420

60:                                               ; preds = %56, %50
  %61 = tail call noundef ptr @_ZSt4copyIPKN11xalanc_1_1014VariablesStack10StackEntryEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %48, ptr noundef %1) #13
  br label %75

62:                                               ; preds = %43
  %63 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %64 = sub i64 0, %6
  %65 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %63, i64 %64
  %66 = icmp eq ptr %65, %44
  br i1 %66, label %71, label %67

67:                                               ; preds = %62, %67
  %68 = phi ptr [ %69, %67 ], [ %65, %62 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %68) #13
  %69 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %68, i64 1
  %70 = icmp eq ptr %69, %44
  br i1 %70, label %71, label %67, !llvm.loop !421

71:                                               ; preds = %67, %62
  %72 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %44, i64 %64
  %73 = tail call noundef ptr @_ZSt13copy_backwardIPN11xalanc_1_1014VariablesStack10StackEntryES3_ET0_T_S5_S4_(ptr noundef %1, ptr noundef nonnull %72, ptr noundef %44) #13
  %74 = tail call noundef ptr @_ZSt4copyIPKN11xalanc_1_1014VariablesStack10StackEntryEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #13
  br label %75

75:                                               ; preds = %18, %13, %60, %71, %40
  call void @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  br label %76

76:                                               ; preds = %4, %75
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !413 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !263
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !413 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !413 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKN11xalanc_1_1014VariablesStack10StackEntryEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %1, ptr noundef %2) #13
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !413 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6, !prof !414

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #13
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_14VariablesStack10StackEntryEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !374 {
  tail call void @_ZN11xalanc_1_1014VariablesStack10StackEntryC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !413 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !261
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !422 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !260
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !261
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !423

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %11 = load ptr, ptr %0, align 8, !tbaa !259
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_14VariablesStack10StackEntryEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #13
  %13 = load i64, ptr %4, align 8, !tbaa !260
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !260
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !414
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %21 = load ptr, ptr %0, align 8, !tbaa !259
  call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(40) %1) #13
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKN11xalanc_1_1014VariablesStack10StackEntryEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !328 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKN11xalanc_1_1014VariablesStack10StackEntryEET_S5_(ptr noundef %0) #13
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKN11xalanc_1_1014VariablesStack10StackEntryEET_S5_(ptr noundef %1) #13
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKN11xalanc_1_1014VariablesStack10StackEntryEPS2_ET1_T0_S7_S6_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPN11xalanc_1_1014VariablesStack10StackEntryES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !328 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPN11xalanc_1_1014VariablesStack10StackEntryEET_S4_(ptr noundef %0) #13
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPN11xalanc_1_1014VariablesStack10StackEntryEET_S4_(ptr noundef %1) #13
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPN11xalanc_1_1014VariablesStack10StackEntryES3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKN11xalanc_1_1014VariablesStack10StackEntryEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !413 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !327
  call void @_ZSt19__iterator_categoryIPKN11xalanc_1_1014VariablesStack10StackEntryEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  %4 = call noundef i64 @_ZSt10__distanceIPKN11xalanc_1_1014VariablesStack10StackEntryEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #13
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKN11xalanc_1_1014VariablesStack10StackEntryEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !413 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = sdiv exact i64 %5, 40
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKN11xalanc_1_1014VariablesStack10StackEntryEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat !prof !413 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !424 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !263
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !260
  %6 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKN11xalanc_1_1014VariablesStack10StackEntryEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !328 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !327
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKN11xalanc_1_1014VariablesStack10StackEntryEET_S5_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKN11xalanc_1_1014VariablesStack10StackEntryEET_S5_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_1014VariablesStack10StackEntryEET_S4_(ptr noundef %2) #14
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKN11xalanc_1_1014VariablesStack10StackEntryEPS2_ET1_T0_S7_S6_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
  %9 = call noundef ptr @_ZSt12__niter_wrapIPN11xalanc_1_1014VariablesStack10StackEntryEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKN11xalanc_1_1014VariablesStack10StackEntryEET_S5_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !328 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPN11xalanc_1_1014VariablesStack10StackEntryEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !328 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKN11xalanc_1_1014VariablesStack10StackEntryEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !328 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKN11xalanc_1_1014VariablesStack10StackEntryEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKN11xalanc_1_1014VariablesStack10StackEntryEET_S5_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !328 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_1014VariablesStack10StackEntryEET_S4_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !328 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKN11xalanc_1_1014VariablesStack10StackEntryEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !328 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1014VariablesStack10StackEntryEPS5_EET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1014VariablesStack10StackEntryEPS5_EET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !328 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = udiv exact i64 %6, 40
  br label %12

10:                                               ; preds = %12, %3
  %11 = phi ptr [ %2, %3 ], [ %18, %12 ]
  ret ptr %11

12:                                               ; preds = %8, %12
  %13 = phi i64 [ %19, %12 ], [ %9, %8 ]
  %14 = phi ptr [ %18, %12 ], [ %2, %8 ]
  %15 = phi ptr [ %17, %12 ], [ %0, %8 ]
  %16 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryaSERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(40) %15) #13
  %17 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %15, i64 1
  %18 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %14, i64 1
  %19 = add nsw i64 %13, -1
  %20 = icmp ugt i64 %13, 1
  br i1 %20, label %12, label %10, !llvm.loop !425
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPN11xalanc_1_1014VariablesStack10StackEntryES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !328 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !327
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_1014VariablesStack10StackEntryEET_S4_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_1014VariablesStack10StackEntryEET_S4_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPN11xalanc_1_1014VariablesStack10StackEntryEET_S4_(ptr noundef %2) #14
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPN11xalanc_1_1014VariablesStack10StackEntryES3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
  %9 = call noundef ptr @_ZSt12__niter_wrapIPN11xalanc_1_1014VariablesStack10StackEntryEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPN11xalanc_1_1014VariablesStack10StackEntryEET_S4_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !328 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPN11xalanc_1_1014VariablesStack10StackEntryES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !328 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPN11xalanc_1_1014VariablesStack10StackEntryES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPN11xalanc_1_1014VariablesStack10StackEntryES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !328 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1014VariablesStack10StackEntryES6_EET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1014VariablesStack10StackEntryES6_EET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !328 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = udiv exact i64 %6, 40
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ %17, %10 ], [ %9, %8 ]
  %12 = phi ptr [ %15, %10 ], [ %2, %8 ]
  %13 = phi ptr [ %14, %10 ], [ %1, %8 ]
  %14 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %13, i64 -1
  %15 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %12, i64 -1
  %16 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryaSERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull align 8 dereferenceable(40) %14) #13
  %17 = add nsw i64 %11, -1
  %18 = icmp ugt i64 %11, 1
  br i1 %18, label %10, label %19, !llvm.loop !426

19:                                               ; preds = %10, %3
  %20 = phi ptr [ %2, %3 ], [ %15, %10 ]
  ret ptr %20
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !413 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !263
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !260
  %6 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !328 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %5 = load i64, ptr %3, align 8, !tbaa !260
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !llvm.loop !427

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !328 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %5 = load i64, ptr %3, align 8, !tbaa !265
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !llvm.loop !428

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !328 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %5 = load i64, ptr %3, align 8, !tbaa !271
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !llvm.loop !429

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !430 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !271
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !271
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !274
  %7 = getelementptr inbounds ptr, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyERS3_(ptr noundef nonnull align 8 dereferenceable(8) %7) #13
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !431 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !307 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !325
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !432
  %6 = getelementptr inbounds %"struct.xalanc_1_10::VariablesStack::ParamsVectorEntry", ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !328 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !268
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !265
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPKN11xalanc_1_1012ElemVariableEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !328 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !327
  call void @_ZSt19__iterator_categoryIPPKN11xalanc_1_1012ElemVariableEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  %5 = call noundef ptr @_ZSt9__find_ifIPPKN11xalanc_1_1012ElemVariableEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) #13
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKPKN11xalanc_1_1012ElemVariableEEENS0_16_Iter_equals_valIT_EERS8_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !328 {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8
  call void @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1012ElemVariableEEC2ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPKN11xalanc_1_1012ElemVariableEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !328 {
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
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1012ElemVariableEEclIPS5_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %12) #13
  br i1 %13, label %47, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %12, i64 1
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1012ElemVariableEEclIPS5_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %15) #13
  br i1 %16, label %47, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds ptr, ptr %12, i64 2
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1012ElemVariableEEclIPS5_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %18) #13
  br i1 %19, label %47, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds ptr, ptr %12, i64 3
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1012ElemVariableEEclIPS5_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %21) #13
  br i1 %22, label %47, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds ptr, ptr %12, i64 4
  %25 = add nsw i64 %11, -1
  %26 = icmp sgt i64 %11, 1
  br i1 %26, label %10, label %27, !llvm.loop !433

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
  %35 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1012ElemVariableEEclIPS5_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %32) #13
  br i1 %35, label %47, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds ptr, ptr %32, i64 1
  br label %38

38:                                               ; preds = %30, %36
  %39 = phi ptr [ %32, %30 ], [ %37, %36 ]
  %40 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1012ElemVariableEEclIPS5_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %39) #13
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds ptr, ptr %39, i64 1
  br label %43

43:                                               ; preds = %30, %41
  %44 = phi ptr [ %32, %30 ], [ %42, %41 ]
  %45 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1012ElemVariableEEclIPS5_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %44) #13
  br i1 %45, label %47, label %46

46:                                               ; preds = %43, %30
  br label %47

47:                                               ; preds = %20, %17, %14, %10, %43, %38, %34, %46
  %48 = phi ptr [ %1, %46 ], [ %32, %34 ], [ %39, %38 ], [ %44, %43 ], [ %21, %20 ], [ %18, %17 ], [ %15, %14 ], [ %12, %10 ]
  ret ptr %48
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPPKN11xalanc_1_1012ElemVariableEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat !prof !328 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1012ElemVariableEEclIPS5_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !328 {
  %3 = load ptr, ptr %1, align 8, !tbaa !327
  %4 = load ptr, ptr %0, align 8, !tbaa !434
  %5 = load ptr, ptr %4, align 8, !tbaa !327
  %6 = icmp eq ptr %3, %5
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1012ElemVariableEEC2ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !328 {
  store ptr %1, ptr %0, align 8, !tbaa !327
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !328 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !265
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !266
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %11 = load ptr, ptr %0, align 8, !tbaa !264
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPKNS_12ElemVariableEE9constructEPS3_RKS3_RN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #13
  %13 = load i64, ptr %4, align 8, !tbaa !265
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !265
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %21 = load ptr, ptr %0, align 8, !tbaa !264
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE4swapERS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPKNS_12ElemVariableEE9constructEPS3_RKS3_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 !prof !328 {
  %4 = load ptr, ptr %1, align 8, !tbaa !327
  store ptr %4, ptr %0, align 8, !tbaa !327
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !328 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !264
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !265
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #13
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #13
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE4swapERS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #13
  store ptr %24, ptr %8, align 8, !tbaa !268
  store i64 %3, ptr %7, align 8, !tbaa !266
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE4swapERS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 !prof !328 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %3 = load ptr, ptr %0, align 8, !tbaa !264
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !268
  %7 = load ptr, ptr %1, align 8, !tbaa !264
  store ptr %7, ptr %0, align 8, !tbaa !264
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !412
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !268
  store ptr %11, ptr %5, align 8, !tbaa !268
  store ptr %3, ptr %1, align 8, !tbaa !264
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !412
  store <2 x i64> %9, ptr %4, align 8, !tbaa !412
  store <2 x i64> %12, ptr %8, align 8, !tbaa !412
  store ptr %6, ptr %10, align 8, !tbaa !268
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !328 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !328 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE14local_distanceEPKS3_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #13
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #13
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !264
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPKNS_12ElemVariableEE9constructEPS3_RKS3_RN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #13
  %23 = getelementptr inbounds ptr, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !265
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !265
  %26 = getelementptr inbounds ptr, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !llvm.loop !436

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %32 = load ptr, ptr %0, align 8, !tbaa !264
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #13
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #13
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #13
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #13
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE4swapERS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE14local_distanceEPKS3_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #13
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %57) #13
  %58 = getelementptr inbounds ptr, ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !llvm.loop !437

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %61) #13
  %62 = getelementptr inbounds ptr, ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !llvm.loop !438

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKPKN11xalanc_1_1012ElemVariableEPS3_ET0_T_S8_S7_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #13
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds ptr, ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %72) #13
  %73 = getelementptr inbounds ptr, ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !439

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds ptr, ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPPKN11xalanc_1_1012ElemVariableES4_ET0_T_S6_S5_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #13
  %78 = tail call noundef ptr @_ZSt4copyIPKPKN11xalanc_1_1012ElemVariableEPS3_ET0_T_S8_S7_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #13
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !328 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !268
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !328 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE14local_distanceEPKS3_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !328 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKPKN11xalanc_1_1012ElemVariableEENSt15iterator_traitsIT_E15difference_typeES7_S7_(ptr noundef %1, ptr noundef %2) #13
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !328 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !265
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !328 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #13
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !328 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !266
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKPKN11xalanc_1_1012ElemVariableEPS3_ET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !328 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKPKN11xalanc_1_1012ElemVariableEET_S6_(ptr noundef %0) #13
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKPKN11xalanc_1_1012ElemVariableEET_S6_(ptr noundef %1) #13
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKPKN11xalanc_1_1012ElemVariableEPS3_ET1_T0_S8_S7_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPPKN11xalanc_1_1012ElemVariableES4_ET0_T_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !328 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPKN11xalanc_1_1012ElemVariableEET_S5_(ptr noundef %0) #13
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPKN11xalanc_1_1012ElemVariableEET_S5_(ptr noundef %1) #13
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPPKN11xalanc_1_1012ElemVariableES4_ET1_T0_S6_S5_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKPKN11xalanc_1_1012ElemVariableEENSt15iterator_traitsIT_E15difference_typeES7_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !328 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !327
  call void @_ZSt19__iterator_categoryIPKPKN11xalanc_1_1012ElemVariableEENSt15iterator_traitsIT_E17iterator_categoryERKS7_(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  %4 = call noundef i64 @_ZSt10__distanceIPKPKN11xalanc_1_1012ElemVariableEENSt15iterator_traitsIT_E15difference_typeES7_S7_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #13
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKPKN11xalanc_1_1012ElemVariableEENSt15iterator_traitsIT_E15difference_typeES7_S7_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !328 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKPKN11xalanc_1_1012ElemVariableEENSt15iterator_traitsIT_E17iterator_categoryERKS7_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat !prof !328 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !328 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !264
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE4swapERS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKPKN11xalanc_1_1012ElemVariableEPS3_ET1_T0_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !328 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !327
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKPKN11xalanc_1_1012ElemVariableEET_S6_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKPKN11xalanc_1_1012ElemVariableEET_S6_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPKN11xalanc_1_1012ElemVariableEET_S5_(ptr noundef %2) #14
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKPKN11xalanc_1_1012ElemVariableEPS3_ET1_T0_S8_S7_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPKN11xalanc_1_1012ElemVariableEET_RKS5_S5_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKPKN11xalanc_1_1012ElemVariableEET_S6_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !328 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPPKN11xalanc_1_1012ElemVariableEET_RKS5_S5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !328 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKPKN11xalanc_1_1012ElemVariableEPS3_ET1_T0_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !328 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKPKN11xalanc_1_1012ElemVariableEPS3_ET1_T0_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKPKN11xalanc_1_1012ElemVariableEET_S6_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !328 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPPKN11xalanc_1_1012ElemVariableEET_S5_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !328 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKPKN11xalanc_1_1012ElemVariableEPS3_ET1_T0_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !328 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1012ElemVariableEEEPT_PKS7_SA_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1012ElemVariableEEEPT_PKS7_SA_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !328 {
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
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPPKN11xalanc_1_1012ElemVariableES4_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !328 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !327
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPKN11xalanc_1_1012ElemVariableEET_S5_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPKN11xalanc_1_1012ElemVariableEET_S5_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPKN11xalanc_1_1012ElemVariableEET_S5_(ptr noundef %2) #14
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPKN11xalanc_1_1012ElemVariableES4_ET1_T0_S6_S5_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPKN11xalanc_1_1012ElemVariableEET_RKS5_S5_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPPKN11xalanc_1_1012ElemVariableEET_S5_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !328 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPKN11xalanc_1_1012ElemVariableES4_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !328 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPKN11xalanc_1_1012ElemVariableES4_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPKN11xalanc_1_1012ElemVariableES4_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !328 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPKN11xalanc_1_1012ElemVariableEEEPT_PKS7_SA_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPKN11xalanc_1_1012ElemVariableEEEPT_PKS7_SA_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !328 {
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
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !328 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !268
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !265
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!244}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243}
!35 = !{ptr @_ZN11xalanc_1_1014VariablesStackC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1014VariablesStackC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1014VariablesStackC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1014VariablesStackC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 14}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE8allocateEm, i64 1}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv, i64 22}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 1}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv, i64 42}
!47 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv, i64 20}
!48 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv, i64 20}
!49 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyEPS3_S7_, i64 20}
!50 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE10deallocateEPS3_, i64 20}
!51 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv, i64 1}
!52 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 28}
!53 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 14}
!54 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 14}
!55 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_, i64 14}
!56 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_, i64 14}
!57 = !{ptr @_ZN11xalanc_1_1014VariablesStackD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev, i64 1}
!58 = !{ptr @_ZN11xalanc_1_1014VariablesStackD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev, i64 1}
!59 = !{ptr @_ZN11xalanc_1_1014VariablesStackD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!60 = !{ptr @_ZN11xalanc_1_1014VariablesStack5resetEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv, i64 4}
!61 = !{ptr @_ZN11xalanc_1_1014VariablesStack5resetEv, ptr @_ZN11xalanc_1_1014VariablesStack3popEv, i64 1}
!62 = !{ptr @_ZN11xalanc_1_1014VariablesStack5resetEv, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, i64 3}
!63 = !{ptr @_ZN11xalanc_1_1014VariablesStack5resetEv, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE5clearEv, i64 3}
!64 = !{ptr @_ZN11xalanc_1_1014VariablesStack5resetEv, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE5clearEv, i64 3}
!65 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 3}
!66 = !{ptr @_ZN11xalanc_1_1014VariablesStack3popEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, i64 89986129}
!67 = !{ptr @_ZN11xalanc_1_1014VariablesStack3popEv, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, i64 89986129}
!68 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 6}
!69 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm, i64 1}
!70 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE5clearEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv, i64 6}
!71 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE12shrinkToSizeEm, i64 1}
!72 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE5clearEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv, i64 12}
!73 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE12shrinkToSizeEm, i64 1}
!74 = !{ptr @_ZNK11xalanc_1_1014VariablesStack25elementFrameAlreadyPushedEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, i64 95460}
!75 = !{ptr @_ZNK11xalanc_1_1014VariablesStack25elementFrameAlreadyPushedEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEixEm, i64 94716}
!76 = !{ptr @_ZNK11xalanc_1_1014VariablesStack25elementFrameAlreadyPushedEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_1014VariablesStack10StackEntry7getTypeEv, i64 94716}
!77 = !{ptr @_ZNK11xalanc_1_1014VariablesStack25elementFrameAlreadyPushedEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_1014VariablesStack10StackEntry10getElementEv, i64 94715}
!78 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 829264332}
!79 = !{ptr @_ZN11xalanc_1_1014VariablesStack17pushContextMarkerEv, ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryC2Ev, i64 22728825}
!80 = !{ptr @_ZN11xalanc_1_1014VariablesStack17pushContextMarkerEv, ptr @_ZN11xalanc_1_1014VariablesStack4pushERKNS0_10StackEntryE, i64 22728825}
!81 = !{ptr @_ZN11xalanc_1_1014VariablesStack17pushContextMarkerEv, ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryD2Ev, i64 22728825}
!82 = !{ptr @_ZN11xalanc_1_1014VariablesStack4pushERKNS0_10StackEntryE, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, i64 89986129}
!83 = !{ptr @_ZN11xalanc_1_1014VariablesStack4pushERKNS0_10StackEntryE, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, i64 89986129}
!84 = !{ptr @_ZN11xalanc_1_1014VariablesStack4pushERKNS0_10StackEntryE, ptr @_ZNK11xalanc_1_1014VariablesStack10StackEntry7getTypeEv, i64 3}
!85 = !{ptr @_ZN11xalanc_1_1014VariablesStack16popContextMarkerEv, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 22728825}
!86 = !{ptr @_ZN11xalanc_1_1014VariablesStack16popContextMarkerEv, ptr @_ZNK11xalanc_1_1014VariablesStack10StackEntry7getTypeEv, i64 727322400}
!87 = !{ptr @_ZN11xalanc_1_1014VariablesStack16popContextMarkerEv, ptr @_ZN11xalanc_1_1014VariablesStack3popEv, i64 727322400}
!88 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 22728852}
!89 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 22728852}
!90 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 179972258}
!91 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 89986129}
!92 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 179972258}
!93 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_, i64 89986129}
!94 = !{ptr @_ZNK11xalanc_1_1014VariablesStack16PushParamFunctorclERKNS0_17ParamsVectorEntryE, ptr @_ZNK11xalanc_1_1010XObjectPtr4nullEv, i64 44742742}
!95 = !{ptr @_ZNK11xalanc_1_1014VariablesStack16PushParamFunctorclERKNS0_17ParamsVectorEntryE, ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryC2EPKNS_10XalanQNameERKNS_10XObjectPtrEb, i64 44742741}
!96 = !{ptr @_ZNK11xalanc_1_1014VariablesStack16PushParamFunctorclERKNS0_17ParamsVectorEntryE, ptr @_ZN11xalanc_1_1014VariablesStack4pushERKNS0_10StackEntryE, i64 44742742}
!97 = !{ptr @_ZNK11xalanc_1_1014VariablesStack16PushParamFunctorclERKNS0_17ParamsVectorEntryE, ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryD2Ev, i64 44742742}
!98 = !{ptr @_ZNK11xalanc_1_1014VariablesStack16PushParamFunctorclERKNS0_17ParamsVectorEntryE, ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryC2EPKNS_10XalanQNameEPKNS_12ElemVariableEb, i64 1}
!99 = !{ptr @_ZN11xalanc_1_1014VariablesStack16CommitPushParamsC2ERS0_, ptr @_ZNK11xalanc_1_1014VariablesStack12getStackSizeEv, i64 22419101}
!100 = !{ptr @_ZNK11xalanc_1_1014VariablesStack12getStackSizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, i64 22419101}
!101 = !{ptr @_ZN11xalanc_1_1014VariablesStack16CommitPushParamsD2Ev, ptr @_ZNK11xalanc_1_1014VariablesStack12getStackSizeEv, i64 32}
!102 = !{ptr @_ZN11xalanc_1_1014VariablesStack16CommitPushParamsD2Ev, ptr @_ZN11xalanc_1_1014VariablesStack3popEv, i64 31}
!103 = !{ptr @_ZN11xalanc_1_1014VariablesStack10pushParamsERKNS_11XalanVectorINS0_17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE, ptr @_ZN11xalanc_1_1014VariablesStack16CommitPushParamsC2ERS0_, i64 22419101}
!104 = !{ptr @_ZN11xalanc_1_1014VariablesStack10pushParamsERKNS_11XalanVectorINS0_17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 22419101}
!105 = !{ptr @_ZN11xalanc_1_1014VariablesStack10pushParamsERKNS_11XalanVectorINS0_17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 22419080}
!106 = !{ptr @_ZN11xalanc_1_1014VariablesStack10pushParamsERKNS_11XalanVectorINS0_17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE, ptr @_ZN11xalanc_1_1014VariablesStack16PushParamFunctorC2ERS0_, i64 22419058}
!107 = !{ptr @_ZN11xalanc_1_1014VariablesStack10pushParamsERKNS_11XalanVectorINS0_17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE, ptr @_ZSt8for_eachIPKN11xalanc_1_1014VariablesStack17ParamsVectorEntryENS1_16PushParamFunctorEET0_T_S7_S6_, i64 22419058}
!108 = !{ptr @_ZN11xalanc_1_1014VariablesStack10pushParamsERKNS_11XalanVectorINS0_17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE, ptr @_ZN11xalanc_1_1014VariablesStack16CommitPushParams6commitEv, i64 22419037}
!109 = !{ptr @_ZN11xalanc_1_1014VariablesStack10pushParamsERKNS_11XalanVectorINS0_17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE, ptr @_ZN11xalanc_1_1014VariablesStack16CommitPushParamsD2Ev, i64 22419101}
!110 = !{ptr @_ZSt8for_eachIPKN11xalanc_1_1014VariablesStack17ParamsVectorEntryENS1_16PushParamFunctorEET0_T_S7_S6_, ptr @_ZNK11xalanc_1_1014VariablesStack16PushParamFunctorclERKNS0_17ParamsVectorEntryE, i64 44742741}
!111 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 44742742}
!112 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 44742742}
!113 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 44742742}
!114 = !{ptr @_ZN11xalanc_1_1014VariablesStack16pushElementFrameEPKNS_19ElemTemplateElementE, ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryC2EPKNS_19ElemTemplateElementE, i64 22419102}
!115 = !{ptr @_ZN11xalanc_1_1014VariablesStack16pushElementFrameEPKNS_19ElemTemplateElementE, ptr @_ZN11xalanc_1_1014VariablesStack4pushERKNS0_10StackEntryE, i64 22419102}
!116 = !{ptr @_ZN11xalanc_1_1014VariablesStack16pushElementFrameEPKNS_19ElemTemplateElementE, ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryD2Ev, i64 22419102}
!117 = !{ptr @_ZN11xalanc_1_1014VariablesStack12pushVariableERKNS_10XalanQNameERKNS_10XObjectPtrEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_1014VariablesStack25elementFrameAlreadyPushedEPKNS_19ElemTemplateElementE, i64 95460}
!118 = !{ptr @_ZN11xalanc_1_1014VariablesStack12pushVariableERKNS_10XalanQNameERKNS_10XObjectPtrEPKNS_19ElemTemplateElementE, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv, i64 1}
!119 = !{ptr @_ZN11xalanc_1_1014VariablesStack12pushVariableERKNS_10XalanQNameERKNS_10XObjectPtrEPKNS_19ElemTemplateElementE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!120 = !{ptr @_ZN11xalanc_1_1014VariablesStack12pushVariableERKNS_10XalanQNameERKNS_10XObjectPtrEPKNS_19ElemTemplateElementE, ptr @__cxa_allocate_exception, i64 1}
!121 = !{ptr @_ZN11xalanc_1_1014VariablesStack12pushVariableERKNS_10XalanQNameERKNS_10XObjectPtrEPKNS_19ElemTemplateElementE, ptr @_ZN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionC2ERNS_14XalanDOMStringE, i64 1}
!122 = !{ptr @_ZN11xalanc_1_1014VariablesStack12pushVariableERKNS_10XalanQNameERKNS_10XObjectPtrEPKNS_19ElemTemplateElementE, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 1}
!123 = !{ptr @_ZN11xalanc_1_1014VariablesStack12pushVariableERKNS_10XalanQNameERKNS_10XObjectPtrEPKNS_19ElemTemplateElementE, ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryC2EPKNS_10XalanQNameERKNS_10XObjectPtrEb, i64 95459}
!124 = !{ptr @_ZN11xalanc_1_1014VariablesStack12pushVariableERKNS_10XalanQNameERKNS_10XObjectPtrEPKNS_19ElemTemplateElementE, ptr @_ZN11xalanc_1_1014VariablesStack4pushERKNS0_10StackEntryE, i64 95459}
!125 = !{ptr @_ZN11xalanc_1_1014VariablesStack12pushVariableERKNS_10XalanQNameERKNS_10XObjectPtrEPKNS_19ElemTemplateElementE, ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryD2Ev, i64 95459}
!126 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!127 = !{ptr @_ZN11xalanc_1_1014VariablesStack20markGlobalStackFrameEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, i64 1}
!128 = !{ptr @_ZN11xalanc_1_1014VariablesStack20markGlobalStackFrameEv, ptr @_ZN11xalanc_1_1014VariablesStack17pushContextMarkerEv, i64 1}
!129 = !{ptr @_ZN11xalanc_1_1014VariablesStack22unmarkGlobalStackFrameEv, ptr @_ZN11xalanc_1_1014VariablesStack16popContextMarkerEv, i64 1}
!130 = !{ptr @_ZN11xalanc_1_1014VariablesStack11findXObjectERKNS_10XalanQNameERNS_26StylesheetExecutionContextEbbRb, ptr @_ZN11xalanc_1_1014VariablesStack9findEntryERKNS_10XalanQNameEbb, i64 201452799}
!131 = !{ptr @_ZN11xalanc_1_1014VariablesStack11findXObjectERKNS_10XalanQNameERNS_26StylesheetExecutionContextEbbRb, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, i64 201452799}
!132 = !{ptr @_ZN11xalanc_1_1014VariablesStack11findXObjectERKNS_10XalanQNameERNS_26StylesheetExecutionContextEbbRb, ptr @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE, i64 58187}
!133 = !{ptr @_ZN11xalanc_1_1014VariablesStack11findXObjectERKNS_10XalanQNameERNS_26StylesheetExecutionContextEbbRb, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEixEm, i64 201394616}
!134 = !{ptr @_ZN11xalanc_1_1014VariablesStack11findXObjectERKNS_10XalanQNameERNS_26StylesheetExecutionContextEbbRb, ptr @_ZNK11xalanc_1_1014VariablesStack10StackEntry8getValueEv, i64 201394613}
!135 = !{ptr @_ZN11xalanc_1_1014VariablesStack11findXObjectERKNS_10XalanQNameERNS_26StylesheetExecutionContextEbbRb, ptr @_ZNK11xalanc_1_1010XObjectPtr4nullEv, i64 201394613}
!136 = !{ptr @_ZN11xalanc_1_1014VariablesStack11findXObjectERKNS_10XalanQNameERNS_26StylesheetExecutionContextEbbRb, ptr @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_, i64 201394612}
!137 = !{ptr @_ZN11xalanc_1_1014VariablesStack11findXObjectERKNS_10XalanQNameERNS_26StylesheetExecutionContextEbbRb, ptr @_ZNK11xalanc_1_1014VariablesStack10StackEntry11getVariableEv, i64 1}
!138 = !{ptr @_ZN11xalanc_1_1014VariablesStack11findXObjectERKNS_10XalanQNameERNS_26StylesheetExecutionContextEbbRb, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv, i64 1}
!139 = !{ptr @_ZN11xalanc_1_1014VariablesStack11findXObjectERKNS_10XalanQNameERNS_26StylesheetExecutionContextEbbRb, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv, i64 2}
!140 = !{ptr @_ZN11xalanc_1_1014VariablesStack11findXObjectERKNS_10XalanQNameERNS_26StylesheetExecutionContextEbbRb, ptr @_ZSt4findIPPKN11xalanc_1_1012ElemVariableES3_ET_S5_S5_RKT0_, i64 1}
!141 = !{ptr @_ZN11xalanc_1_1014VariablesStack11findXObjectERKNS_10XalanQNameERNS_26StylesheetExecutionContextEbbRb, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE9push_backERKS3_, i64 1}
!142 = !{ptr @_ZN11xalanc_1_1014VariablesStack11findXObjectERKNS_10XalanQNameERNS_26StylesheetExecutionContextEbbRb, ptr @_ZNK11xalanc_1_1012ElemVariable8getValueERNS_26StylesheetExecutionContextEPNS_9XalanNodeE, i64 1}
!143 = !{ptr @_ZN11xalanc_1_1014VariablesStack11findXObjectERKNS_10XalanQNameERNS_26StylesheetExecutionContextEbbRb, ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_, i64 1}
!144 = !{ptr @_ZN11xalanc_1_1014VariablesStack11findXObjectERKNS_10XalanQNameERNS_26StylesheetExecutionContextEbbRb, ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, i64 1}
!145 = !{ptr @_ZN11xalanc_1_1014VariablesStack11findXObjectERKNS_10XalanQNameERNS_26StylesheetExecutionContextEbbRb, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE8pop_backEv, i64 1}
!146 = !{ptr @_ZN11xalanc_1_1014VariablesStack11findXObjectERKNS_10XalanQNameERNS_26StylesheetExecutionContextEbbRb, ptr @_ZN11xalanc_1_1014VariablesStack10StackEntry8setValueERKNS_10XObjectPtrE, i64 1}
!147 = !{ptr @_ZN11xalanc_1_1014VariablesStack11findXObjectERKNS_10XalanQNameERNS_26StylesheetExecutionContextEbbRb, ptr @_ZN11xalanc_1_1014VariablesStack10StackEntry8activateEv, i64 1}
!148 = !{ptr @_ZN11xalanc_1_1014VariablesStack9findEntryERKNS_10XalanQNameEbb, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, i64 402905598}
!149 = !{ptr @_ZN11xalanc_1_1014VariablesStack9findEntryERKNS_10XalanQNameEbb, ptr @_ZNK11xalanc_1_1014VariablesStack25getCurrentStackFrameIndexEv, i64 201452799}
!150 = !{ptr @_ZN11xalanc_1_1014VariablesStack9findEntryERKNS_10XalanQNameEbb, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEixEm, i64 469727199}
!151 = !{ptr @_ZN11xalanc_1_1014VariablesStack9findEntryERKNS_10XalanQNameEbb, ptr @_ZNK11xalanc_1_1014VariablesStack10StackEntry7getTypeEv, i64 469727199}
!152 = !{ptr @_ZN11xalanc_1_1014VariablesStack9findEntryERKNS_10XalanQNameEbb, ptr @_ZNK11xalanc_1_1014VariablesStack10StackEntry7getNameEv, i64 293539525}
!153 = !{ptr @_ZN11xalanc_1_1014VariablesStack9findEntryERKNS_10XalanQNameEbb, ptr @_ZNK11xalanc_1_1010XalanQName6equalsERKS0_, i64 293539525}
!154 = !{ptr @_ZN11xalanc_1_1014VariablesStack9findEntryERKNS_10XalanQNameEbb, ptr @_ZN11xalanc_1_1014VariablesStack10StackEntry8activateEv, i64 39149899}
!155 = !{ptr @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 292432932}
!156 = !{ptr @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 717007216}
!157 = !{ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev, ptr @__clang_call_terminate, i64 64}
!158 = !{ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 44800926}
!159 = !{ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 44800926}
!160 = !{ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 1009440147}
!161 = !{ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, ptr @__clang_call_terminate, i64 963}
!162 = !{ptr @_ZNK11xalanc_1_1010XalanQName6equalsERKS0_, ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_, i64 536868638}
!163 = !{ptr @_ZN11xalanc_1_1014VariablesStack15popElementFrameEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, i64 22419102}
!164 = !{ptr @_ZN11xalanc_1_1014VariablesStack15popElementFrameEv, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEixEm, i64 717409265}
!165 = !{ptr @_ZN11xalanc_1_1014VariablesStack15popElementFrameEv, ptr @_ZN11xalanc_1_109EnsurePopC2ERNS_14VariablesStackE, i64 717409265}
!166 = !{ptr @_ZN11xalanc_1_1014VariablesStack15popElementFrameEv, ptr @_ZNK11xalanc_1_1014VariablesStack10StackEntry7getTypeEv, i64 1434818498}
!167 = !{ptr @_ZN11xalanc_1_1014VariablesStack15popElementFrameEv, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv, i64 32}
!168 = !{ptr @_ZN11xalanc_1_1014VariablesStack15popElementFrameEv, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 32}
!169 = !{ptr @_ZN11xalanc_1_1014VariablesStack15popElementFrameEv, ptr @__cxa_allocate_exception, i64 16}
!170 = !{ptr @_ZN11xalanc_1_1014VariablesStack15popElementFrameEv, ptr @_ZN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionC2ERNS_14XalanDOMStringE, i64 16}
!171 = !{ptr @_ZN11xalanc_1_1014VariablesStack15popElementFrameEv, ptr @__cxa_throw, i64 8}
!172 = !{ptr @_ZN11xalanc_1_1014VariablesStack15popElementFrameEv, ptr @__cxa_free_exception, i64 8}
!173 = !{ptr @_ZN11xalanc_1_1014VariablesStack15popElementFrameEv, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 16}
!174 = !{ptr @_ZN11xalanc_1_1014VariablesStack15popElementFrameEv, ptr @_ZN11xalanc_1_109EnsurePopD2Ev, i64 717409265}
!175 = !{ptr @_ZN11xalanc_1_109EnsurePopD2Ev, ptr @_ZN11xalanc_1_1014VariablesStack3popEv, i64 22514562}
!176 = !{ptr @_ZN11xalanc_1_109EnsurePopD2Ev, ptr @__clang_call_terminate, i64 21}
!177 = !{ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryC2Ev, ptr @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE, i64 22728825}
!178 = !{ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryC2EPKNS_10XalanQNameERKNS_10XObjectPtrEb, ptr @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_, i64 44838202}
!179 = !{ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryC2EPKNS_19ElemTemplateElementE, ptr @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE, i64 22419102}
!180 = !{ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryC2ERKS1_, ptr @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_, i64 90061130}
!181 = !{ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryD2Ev, ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, i64 180047259}
!182 = !{ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv, i64 832918}
!183 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!184 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!185 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!186 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!187 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!188 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!189 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!190 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!191 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!192 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!193 = !{ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_, i64 555646850}
!194 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_, i64 70002}
!195 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 27}
!196 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_, ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryD2Ev, i64 90061130}
!197 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyEPS3_S7_, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyERS3_, i64 15080}
!198 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv, i64 39}
!199 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv, i64 39}
!200 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv, i64 39}
!201 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2}
!202 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 1}
!203 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 1}
!204 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!205 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm, i64 12}
!206 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 12}
!207 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 12}
!208 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 12}
!209 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 12}
!210 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, i64 12}
!211 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 12}
!212 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 12}
!213 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm, i64 1}
!214 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 14}
!215 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 54}
!216 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 25}
!217 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_, i64 13}
!218 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, i64 12}
!219 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 12}
!220 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, i64 11}
!221 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_14VariablesStack10StackEntryEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE, i64 60668}
!222 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, i64 1}
!223 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 12}
!224 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 13}
!225 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 13}
!226 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 13}
!227 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_, ptr @_ZSt8distanceIPKN11xalanc_1_1014VariablesStack10StackEntryEENSt15iterator_traitsIT_E15difference_typeES6_S6_, i64 13}
!228 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, i64 13}
!229 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 1}
!230 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 13}
!231 = !{ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_14VariablesStack10StackEntryEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryC2ERKS1_, i64 90061130}
!232 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 13}
!233 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 179972284}
!234 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 89986128}
!235 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerINS_14VariablesStack10StackEntryEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE, i64 89986128}
!236 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 14}
!237 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 14}
!238 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 14}
!239 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 14}
!240 = !{ptr @_ZSt8distanceIPKN11xalanc_1_1014VariablesStack10StackEntryEENSt15iterator_traitsIT_E15difference_typeES6_S6_, ptr @_ZSt19__iterator_categoryIPKN11xalanc_1_1014VariablesStack10StackEntryEENSt15iterator_traitsIT_E17iterator_categoryERKS6_, i64 13}
!241 = !{ptr @_ZSt8distanceIPKN11xalanc_1_1014VariablesStack10StackEntryEENSt15iterator_traitsIT_E15difference_typeES6_S6_, ptr @_ZSt10__distanceIPKN11xalanc_1_1014VariablesStack10StackEntryEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag, i64 13}
!242 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv, i64 45457648}
!243 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyERS3_, i64 22728824}
!244 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!245 = !{!"function_entry_count", i64 1}
!246 = !{!247, !252, i64 32}
!247 = !{!"_ZTSN11xalanc_1_1014VariablesStackE", !248, i64 0, !252, i64 32, !253, i64 40, !252, i64 48, !254, i64 56, !255, i64 88}
!248 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE", !249, i64 0, !252, i64 8, !252, i64 16, !249, i64 24}
!249 = !{!"any pointer", !250, i64 0}
!250 = !{!"omnipotent char", !251, i64 0}
!251 = !{!"Simple C++ TBAA"}
!252 = !{!"long", !250, i64 0}
!253 = !{!"bool", !250, i64 0}
!254 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEEE", !249, i64 0, !252, i64 8, !252, i64 16, !249, i64 24}
!255 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEEE", !249, i64 0, !252, i64 8, !252, i64 16, !249, i64 24}
!256 = !{!247, !253, i64 40}
!257 = !{!247, !252, i64 48}
!258 = !{!"function_entry_count", i64 14}
!259 = !{!248, !249, i64 0}
!260 = !{!248, !252, i64 8}
!261 = !{!248, !252, i64 16}
!262 = !{!"branch_weights", i32 15, i32 1}
!263 = !{!248, !249, i64 24}
!264 = !{!254, !249, i64 0}
!265 = !{!254, !252, i64 8}
!266 = !{!254, !252, i64 16}
!267 = !{!"branch_weights", i32 2, i32 1}
!268 = !{!254, !249, i64 24}
!269 = !{!"function_entry_count", i64 22}
!270 = !{!255, !249, i64 0}
!271 = !{!255, !252, i64 8}
!272 = !{!255, !252, i64 16}
!273 = !{!"branch_weights", i32 23, i32 1}
!274 = !{!255, !249, i64 24}
!275 = !{!"function_entry_count", i64 42}
!276 = !{!"branch_weights", i32 23, i32 21}
!277 = !{!"function_entry_count", i64 28}
!278 = !{!"branch_weights", i32 15, i32 15}
!279 = !{!"function_entry_count", i64 3}
!280 = !{!"branch_weights", i32 3, i32 1}
!281 = !{!"branch_weights", i32 1, i32 0}
!282 = distinct !{!282, !283}
!283 = !{!"llvm.loop.mustprogress"}
!284 = !{!"function_entry_count", i64 89986129}
!285 = !{!"branch_weights", i32 89986130, i32 1}
!286 = !{!"branch_weights", i32 4, i32 1}
!287 = !{!"function_entry_count", i64 6}
!288 = !{!"branch_weights", i32 7, i32 1}
!289 = !{!"function_entry_count", i64 95460}
!290 = !{!"branch_weights", i32 1, i32 127}
!291 = !{!"branch_weights", i32 95461, i32 1}
!292 = !{!"branch_weights", i32 127, i32 12218881}
!293 = distinct !{!293, !283}
!294 = !{!"function_entry_count", i64 829264332}
!295 = !{!"function_entry_count", i64 649427232}
!296 = !{!297, !298, i64 0}
!297 = !{!"_ZTSN11xalanc_1_1014VariablesStack10StackEntryE", !298, i64 0, !249, i64 8, !299, i64 16, !249, i64 24, !249, i64 32}
!298 = !{!"_ZTSN11xalanc_1_1014VariablesStack10StackEntry5eTypeE", !250, i64 0}
!299 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !249, i64 0}
!300 = !{!297, !249, i64 32}
!301 = !{!"function_entry_count", i64 22728825}
!302 = !{i8 0, i8 2}
!303 = !{}
!304 = !{!"branch_weights", i32 3, i32 89986128}
!305 = !{!"branch_weights", i32 1, i32 3}
!306 = !{!"function_entry_count", i64 22728852}
!307 = !{!"function_entry_count", i64 44742742}
!308 = !{!309, !249, i64 0}
!309 = !{!"_ZTSN11xalanc_1_1014VariablesStack16PushParamFunctorE", !249, i64 0}
!310 = !{!"branch_weights", i32 1, i32 44742743}
!311 = !{!312, !249, i64 0}
!312 = !{!"_ZTSN11xalanc_1_1014VariablesStack17ParamsVectorEntryE", !249, i64 0, !299, i64 8, !249, i64 16}
!313 = !{!312, !249, i64 16}
!314 = !{!"function_entry_count", i64 381195133}
!315 = !{!299, !249, i64 0}
!316 = !{!"function_entry_count", i64 22419101}
!317 = !{!318, !249, i64 0}
!318 = !{!"_ZTSN11xalanc_1_1014VariablesStack16CommitPushParamsE", !249, i64 0, !252, i64 8}
!319 = !{!318, !252, i64 8}
!320 = !{!"branch_weights", i32 22419102, i32 1}
!321 = distinct !{!321, !283}
!322 = !{!"branch_weights", i32 1, i32 22419101}
!323 = !{!"branch_weights", i32 22419101, i32 22323642}
!324 = distinct !{!324, !283}
!325 = !{!326, !249, i64 24}
!326 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14VariablesStack17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE", !249, i64 0, !252, i64 8, !252, i64 16, !249, i64 24}
!327 = !{!249, !249, i64 0}
!328 = !{!"function_entry_count", i64 0}
!329 = !{!"function_entry_count", i64 22419102}
!330 = !{!"function_entry_count", i64 43398227}
!331 = distinct !{!331, !283}
!332 = !{!"function_entry_count", i64 201452799}
!333 = !{!"function_entry_count", i64 760740255}
!334 = !{!"branch_weights", i32 58186, i32 201394615}
!335 = !{!253, !253, i64 0}
!336 = !{!"branch_weights", i32 1, i32 201394615}
!337 = !{!338, !338, i64 0}
!338 = !{!"vtable pointer", !251, i64 0}
!339 = !{!"branch_weights", i32 1, i32 7}
!340 = !{!"branch_weights", i32 1967302747, i32 -1970603487}
!341 = !{!"branch_weights", i32 156651873, i32 89431845}
!342 = !{!"branch_weights", i32 -1879008511, i32 1072844132, i32 698338}
!343 = !{!"branch_weights", i32 89390025, i32 1}
!344 = !{!"branch_weights", i32 44742743, i32 44647283}
!345 = !{!"branch_weights", i32 7, i32 -318663}
!346 = distinct !{!346, !283}
!347 = !{!"branch_weights", i32 2147436204, i32 47444}
!348 = distinct !{!348, !283}
!349 = !{!"function_entry_count", i64 292432932}
!350 = !{!"function_entry_count", i64 201394614}
!351 = !{!"function_entry_count", i64 717007216}
!352 = !{!297, !249, i64 24}
!353 = !{!"function_entry_count", i64 67594463}
!354 = !{!355, !249, i64 0}
!355 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringE", !249, i64 0, !249, i64 8}
!356 = !{!355, !249, i64 8}
!357 = !{!"function_entry_count", i64 201578993}
!358 = !{!"function_entry_count", i64 134708288}
!359 = !{!"branch_weights", i32 67113826, i32 67594464}
!360 = !{!"function_entry_count", i64 45140500}
!361 = !{!"branch_weights", i32 339574, i32 44800928}
!362 = !{!"function_entry_count", i64 1009440147}
!363 = !{!"branch_weights", i32 44742743, i32 1}
!364 = !{!"function_entry_count", i64 335473740}
!365 = !{!297, !249, i64 8}
!366 = !{!"function_entry_count", i64 335474016}
!367 = !{!"branch_weights", i32 201394623, i32 134079395}
!368 = !{!"branch_weights", i32 1, i32 22514563}
!369 = distinct !{!369, !283}
!370 = !{!"function_entry_count", i64 22514562}
!371 = !{!372, !249, i64 0}
!372 = !{!"_ZTSN11xalanc_1_109EnsurePopE", !249, i64 0}
!373 = !{!"function_entry_count", i64 44838202}
!374 = !{!"function_entry_count", i64 90061130}
!375 = !{!"function_entry_count", i64 180047259}
!376 = !{!"function_entry_count", i64 832918}
!377 = !{!"function_entry_count", i64 128698679}
!378 = !{!379, !252, i64 16}
!379 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !249, i64 0, !252, i64 8, !252, i64 16, !249, i64 24}
!380 = !{!"branch_weights", i32 43398290, i32 85300391}
!381 = !{!379, !249, i64 24}
!382 = !{!"function_entry_count", i64 6521798493}
!383 = !{!"function_entry_count", i64 85300390}
!384 = !{!"branch_weights", i32 1, i32 12185770}
!385 = !{!"branch_weights", i32 12185770, i32 -193930396}
!386 = distinct !{!386, !283}
!387 = !{!"function_entry_count", i64 227375739}
!388 = !{!"function_entry_count", i64 568333389}
!389 = !{!379, !249, i64 0}
!390 = !{!"function_entry_count", i64 30137156660}
!391 = !{!"function_entry_count", i64 825654971}
!392 = !{!379, !252, i64 8}
!393 = !{!"function_entry_count", i64 555646850}
!394 = !{!"function_entry_count", i64 833358}
!395 = !{!"function_entry_count", i64 1391910199}
!396 = !{!"function_entry_count", i64 8}
!397 = !{!"function_entry_count", i64 20}
!398 = !{!"function_entry_count", i64 136373350}
!399 = !{!"branch_weights", i32 1, i32 239}
!400 = !{!"branch_weights", i32 239, i32 1199793}
!401 = distinct !{!401, !283}
!402 = !{!"function_entry_count", i64 27}
!403 = distinct !{!403, !283}
!404 = !{!"branch_weights", i32 1, i32 167}
!405 = !{!"branch_weights", i32 167, i32 126505}
!406 = distinct !{!406, !283}
!407 = !{!"function_entry_count", i64 39}
!408 = !{!"function_entry_count", i64 22744657}
!409 = !{!"function_entry_count", i64 22728882}
!410 = !{!"branch_weights", i32 2, i32 14}
!411 = !{!"branch_weights", i32 1, i32 2}
!412 = !{!252, !252, i64 0}
!413 = !{!"function_entry_count", i64 13}
!414 = !{!"branch_weights", i32 1, i32 14}
!415 = !{!"branch_weights", i32 14, i32 1}
!416 = !{!"branch_weights", i32 1, i32 223}
!417 = !{!"branch_weights", i32 223, i32 1199809}
!418 = distinct !{!418, !283}
!419 = distinct !{!419, !283}
!420 = distinct !{!420, !283}
!421 = distinct !{!421, !283}
!422 = !{!"function_entry_count", i64 89986142}
!423 = !{!"branch_weights", i32 89986130, i32 14}
!424 = !{!"function_entry_count", i64 112714994}
!425 = distinct !{!425, !283}
!426 = distinct !{!426, !283}
!427 = distinct !{!427, !283}
!428 = distinct !{!428, !283}
!429 = distinct !{!429, !283}
!430 = !{!"function_entry_count", i64 22728824}
!431 = !{!"function_entry_count", i64 939311204}
!432 = !{!326, !252, i64 8}
!433 = distinct !{!433, !283}
!434 = !{!435, !249, i64 0}
!435 = !{!"_ZTSN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1012ElemVariableEEE", !249, i64 0}
!436 = distinct !{!436, !283}
!437 = distinct !{!437, !283}
!438 = distinct !{!438, !283}
!439 = distinct !{!439, !283}
