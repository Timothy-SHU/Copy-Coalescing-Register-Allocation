; ModuleID = 'blender/intern/ghost/intern/GHOST_EventManager.cpp'
source_filename = "blender/intern/ghost/intern/GHOST_EventManager.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.GHOST_EventManager = type { ptr, %"class.std::deque", %"class.std::vector" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl" }
%"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl" = type { %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data" }
%"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<GHOST_IEventConsumer *, std::allocator<GHOST_IEventConsumer *>>::_Vector_impl" }
%"struct.std::_Vector_base<GHOST_IEventConsumer *, std::allocator<GHOST_IEventConsumer *>>::_Vector_impl" = type { %"struct.std::_Vector_base<GHOST_IEventConsumer *, std::allocator<GHOST_IEventConsumer *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<GHOST_IEventConsumer *, std::allocator<GHOST_IEventConsumer *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.3" = type { ptr }
%"struct.std::_Deque_iterator.4" = type { ptr, ptr, ptr, ptr }
%"class.std::allocator.5" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_equals_val" = type { ptr }

$_ZNSt5dequeIP12GHOST_IEventSaIS1_EEC2Ev = comdat any

$_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EEC2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE5beginEv = comdat any

$_ZN9__gnu_cxxneIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_ = comdat any

$_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE3endEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEdeEv = comdat any

$_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEC2IPS2_vEERKNS0_IT_S7_EE = comdat any

$_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EED2Ev = comdat any

$_ZNSt5dequeIP12GHOST_IEventSaIS1_EED2Ev = comdat any

$_ZNKSt5dequeIP12GHOST_IEventSaIS1_EE4sizeEv = comdat any

$_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2Ev = comdat any

$_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5beginEv = comdat any

$_ZStneRKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_ES6_ = comdat any

$_ZNSt5dequeIP12GHOST_IEventSaIS1_EE3endEv = comdat any

$_ZNKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EdeEv = comdat any

$_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EppEv = comdat any

$_ZNKSt5dequeIP12GHOST_IEventSaIS1_EE5emptyEv = comdat any

$_ZNSt5dequeIP12GHOST_IEventSaIS1_EE4backEv = comdat any

$_ZNKSt5dequeIP12GHOST_IEventSaIS1_EE8max_sizeEv = comdat any

$_ZNSt5dequeIP12GHOST_IEventSaIS1_EE10push_frontERKS1_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEC2Ev = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEppEv = comdat any

$_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_ = comdat any

$_ZN9__gnu_cxxeqIPKP20GHOST_IEventConsumerPS2_St6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T1_EERKNS9_IT0_SB_EE = comdat any

$_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE9push_backERKS1_ = comdat any

$_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5eraseESt15_Deque_iteratorIS1_RKS1_PS5_E = comdat any

$_ZNSt15_Deque_iteratorIP12GHOST_IEventRKS1_PS2_EC2IS_IS1_RS1_PS1_EvEERKT_ = comdat any

$_ZNSt5dequeIP12GHOST_IEventSaIS1_EE8pop_backEv = comdat any

$_ZNSt5dequeIP12GHOST_IEventSaIS1_EEixEm = comdat any

$_ZNSt5dequeIP12GHOST_IEventSaIS1_EE9pop_frontEv = comdat any

$_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EEC2Ev = comdat any

$_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE11_Deque_implC2Ev = comdat any

$_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE17_M_initialize_mapEm = comdat any

$_ZNSt15__new_allocatorIP12GHOST_IEventED2Ev = comdat any

$_ZNSaIP12GHOST_IEventEC2Ev = comdat any

$_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE16_Deque_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIP12GHOST_IEventEC2Ev = comdat any

$_ZSt16__deque_buf_sizem = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE15_M_allocate_mapEm = comdat any

$_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE15_M_create_nodesEPPS1_S5_ = comdat any

$_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE17_M_deallocate_mapEPPS1_m = comdat any

$_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_E11_M_set_nodeEPS3_ = comdat any

$_ZNKSt11_Deque_baseIP12GHOST_IEventSaIS1_EE20_M_get_map_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIPP12GHOST_IEventEE8allocateERS3_m = comdat any

$_ZNSt15__new_allocatorIPP12GHOST_IEventED2Ev = comdat any

$_ZNKSt11_Deque_baseIP12GHOST_IEventSaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSaIPP12GHOST_IEventEC2IS0_EERKSaIT_E = comdat any

$_ZNSt15__new_allocatorIPP12GHOST_IEventEC2Ev = comdat any

$_ZNSt15__new_allocatorIPP12GHOST_IEventE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorIPP12GHOST_IEventE11_M_max_sizeEv = comdat any

$_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE16_M_allocate_nodeEv = comdat any

$_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE16_M_destroy_nodesEPPS1_S5_ = comdat any

$_ZNSt16allocator_traitsISaIP12GHOST_IEventEE8allocateERS2_m = comdat any

$_ZNSt15__new_allocatorIP12GHOST_IEventE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorIP12GHOST_IEventE11_M_max_sizeEv = comdat any

$_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE18_M_deallocate_nodeEPS1_ = comdat any

$_ZNSt16allocator_traitsISaIP12GHOST_IEventEE10deallocateERS2_PS1_m = comdat any

$_ZNSt15__new_allocatorIP12GHOST_IEventE10deallocateEPS1_m = comdat any

$_ZNSt16allocator_traitsISaIPP12GHOST_IEventEE10deallocateERS3_PS2_m = comdat any

$_ZNSt15__new_allocatorIPP12GHOST_IEventE10deallocateEPS2_m = comdat any

$_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_E14_S_buffer_sizeEv = comdat any

$_ZNSt12_Vector_baseIP20GHOST_IEventConsumerSaIS1_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIP20GHOST_IEventConsumerSaIS1_EE12_Vector_implC2Ev = comdat any

$_ZNSaIP20GHOST_IEventConsumerEC2Ev = comdat any

$_ZNSt12_Vector_baseIP20GHOST_IEventConsumerSaIS1_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIP20GHOST_IEventConsumerEC2Ev = comdat any

$_ZNSt5dequeIP12GHOST_IEventSaIS1_EE15_M_destroy_dataESt15_Deque_iteratorIS1_RS1_PS1_ES7_RKS2_ = comdat any

$_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EED2Ev = comdat any

$_ZSt8_DestroyIPP20GHOST_IEventConsumerS1_EvT_S3_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIP20GHOST_IEventConsumerSaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIP20GHOST_IEventConsumerSaIS1_EED2Ev = comdat any

$_ZSt8_DestroyIPP20GHOST_IEventConsumerEvT_S3_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPP20GHOST_IEventConsumerEEvT_S5_ = comdat any

$_ZNSt12_Vector_baseIP20GHOST_IEventConsumerSaIS1_EE13_M_deallocateEPS1_m = comdat any

$_ZNSt15__new_allocatorIP20GHOST_IEventConsumerED2Ev = comdat any

$_ZNSt16allocator_traitsISaIP20GHOST_IEventConsumerEE10deallocateERS2_PS1_m = comdat any

$_ZNSt15__new_allocatorIP20GHOST_IEventConsumerE10deallocateEPS1_m = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEC2ERKS3_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEE4baseEv = comdat any

$_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EE = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEplEl = comdat any

$_ZN9__gnu_cxxmiIPKP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_ = comdat any

$_ZNKSt6vectorIP20GHOST_IEventConsumerSaIS1_EE6cbeginEv = comdat any

$_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_ = comdat any

$_ZNSt16allocator_traitsISaIP20GHOST_IEventConsumerEE7destroyIS1_EEvRS2_PT_ = comdat any

$_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS3_SaIS3_EEEES8_ET1_T0_SA_S9_ = comdat any

$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS3_SaIS3_EEEEET_S9_ = comdat any

$_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS3_SaIS3_EEEES4_ET_S9_T0_ = comdat any

$_ZSt14__copy_move_a1ILb1EPP20GHOST_IEventConsumerS2_ET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPP20GHOST_IEventConsumerSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE = comdat any

$_ZSt14__copy_move_a2ILb1EPP20GHOST_IEventConsumerS2_ET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP20GHOST_IEventConsumerEEPT_PKS5_S8_S6_ = comdat any

$_ZNSt15__new_allocatorIP20GHOST_IEventConsumerE7destroyIS1_EEvPT_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEC2ERKS4_ = comdat any

$_ZStmiRKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_ES6_ = comdat any

$_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_ = comdat any

$_ZSteqRKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_ES6_ = comdat any

$_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EmmEv = comdat any

$_ZNSt5dequeIP12GHOST_IEventSaIS1_EE11_S_max_sizeERKS2_ = comdat any

$_ZNSt16allocator_traitsISaIP12GHOST_IEventEE8max_sizeERKS2_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNKSt15__new_allocatorIP12GHOST_IEventE8max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaIP12GHOST_IEventEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_ = comdat any

$_ZNSt5dequeIP12GHOST_IEventSaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_ = comdat any

$_ZNSt15__new_allocatorIP12GHOST_IEventE9constructIS1_JRKS1_EEEvPT_DpOT0_ = comdat any

$_ZNSt5dequeIP12GHOST_IEventSaIS1_EE23_M_reserve_map_at_frontEm = comdat any

$_ZNSt5dequeIP12GHOST_IEventSaIS1_EE17_M_reallocate_mapEmb = comdat any

$_ZSt4copyIPPP12GHOST_IEventS3_ET0_T_S5_S4_ = comdat any

$_ZSt13copy_backwardIPPP12GHOST_IEventS3_ET0_T_S5_S4_ = comdat any

$_ZSt13__copy_move_aILb0EPPP12GHOST_IEventS3_ET1_T0_S5_S4_ = comdat any

$_ZSt12__miter_baseIPPP12GHOST_IEventET_S4_ = comdat any

$_ZSt12__niter_wrapIPPP12GHOST_IEventET_RKS4_S4_ = comdat any

$_ZSt14__copy_move_a1ILb0EPPP12GHOST_IEventS3_ET1_T0_S5_S4_ = comdat any

$_ZSt12__niter_baseIPPP12GHOST_IEventET_S4_ = comdat any

$_ZSt14__copy_move_a2ILb0EPPP12GHOST_IEventS3_ET1_T0_S5_S4_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPP12GHOST_IEventEEPT_PKS6_S9_S7_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPPP12GHOST_IEventS3_ET1_T0_S5_S4_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPPP12GHOST_IEventS3_ET1_T0_S5_S4_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPPP12GHOST_IEventS3_ET1_T0_S5_S4_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPP12GHOST_IEventEEPT_PKS6_S9_S7_ = comdat any

$_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIKS3_EEET_SD_SD_T0_ = comdat any

$_ZN9__gnu_cxx5__ops17__iter_equals_valIKP20GHOST_IEventConsumerEENS0_16_Iter_equals_valIT_EERS6_ = comdat any

$_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIKS3_EEET_SD_SD_T0_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS3_SaIS3_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSA_ = comdat any

$_ZN9__gnu_cxxmiIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_ = comdat any

$_ZN9__gnu_cxx5__ops16_Iter_equals_valIKP20GHOST_IEventConsumerEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbT_ = comdat any

$_ZN9__gnu_cxx5__ops16_Iter_equals_valIKP20GHOST_IEventConsumerEC2ERS4_ = comdat any

$_ZNSt16allocator_traitsISaIP20GHOST_IEventConsumerEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_ = comdat any

$_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt15__new_allocatorIP20GHOST_IEventConsumerE9constructIS1_JRKS1_EEEvPT_DpOT0_ = comdat any

$_ZNKSt6vectorIP20GHOST_IEventConsumerSaIS1_EE12_M_check_lenEmPKc = comdat any

$_ZNSt12_Vector_baseIP20GHOST_IEventConsumerSaIS1_EE11_M_allocateEm = comdat any

$_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_ = comdat any

$_ZNKSt6vectorIP20GHOST_IEventConsumerSaIS1_EE8max_sizeEv = comdat any

$_ZNKSt6vectorIP20GHOST_IEventConsumerSaIS1_EE4sizeEv = comdat any

$_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE11_S_max_sizeERKS2_ = comdat any

$_ZNKSt12_Vector_baseIP20GHOST_IEventConsumerSaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIP20GHOST_IEventConsumerEE8max_sizeERKS2_ = comdat any

$_ZNKSt15__new_allocatorIP20GHOST_IEventConsumerE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIP20GHOST_IEventConsumerE11_M_max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaIP20GHOST_IEventConsumerEE8allocateERS2_m = comdat any

$_ZNSt15__new_allocatorIP20GHOST_IEventConsumerE8allocateEmPKv = comdat any

$_ZSt12__relocate_aIPP20GHOST_IEventConsumerS2_SaIS1_EET0_T_S5_S4_RT1_ = comdat any

$_ZSt14__relocate_a_1IP20GHOST_IEventConsumerS1_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS3_E4typeES4_S4_S4_RSaIT0_E = comdat any

$_ZSt12__niter_baseIPP20GHOST_IEventConsumerET_S3_ = comdat any

$_ZNSt5dequeIP12GHOST_IEventSaIS1_EE8_M_eraseESt15_Deque_iteratorIS1_RS1_PS1_E = comdat any

$_ZNKSt15_Deque_iteratorIP12GHOST_IEventRKS1_PS2_E13_M_const_castEv = comdat any

$_ZSt13move_backwardISt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_ES5_ET0_T_S7_S6_ = comdat any

$_ZSt4moveISt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_ES5_ET0_T_S7_S6_ = comdat any

$_ZStplRKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_El = comdat any

$_ZSt22__copy_move_backward_aILb1ESt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_ES5_ET1_T0_S7_S6_ = comdat any

$_ZSt12__miter_baseISt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_EET_S6_ = comdat any

$_ZSt12__niter_wrapISt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_EET_RKS6_S6_ = comdat any

$_ZSt23__copy_move_backward_a1ILb1EP12GHOST_IEventRS1_PS1_S1_ESt15_Deque_iteratorIT3_RS5_PS5_ES4_IT0_T1_T2_ESC_S8_ = comdat any

$_ZSt12__niter_baseISt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_EET_S6_ = comdat any

$_ZSt24__copy_move_backward_ditILb1EP12GHOST_IEventRS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_ = comdat any

$_ZSt23__copy_move_backward_a1ILb1EPP12GHOST_IEventS1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_ = comdat any

$_ZSt3minIlERKT_S2_S2_ = comdat any

$_ZSt23__copy_move_backward_a1ILb1EPP12GHOST_IEventS2_ET1_T0_S4_S3_ = comdat any

$_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EmIEl = comdat any

$_ZSt23__copy_move_backward_a2ILb1EPP12GHOST_IEventS2_ET1_T0_S4_S3_ = comdat any

$_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIP12GHOST_IEventEEPT_PKS5_S8_S6_ = comdat any

$_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EpLEl = comdat any

$_ZSt13__copy_move_aILb1ESt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_ES5_ET1_T0_S7_S6_ = comdat any

$_ZSt14__copy_move_a1ILb1EP12GHOST_IEventRS1_PS1_S1_ESt15_Deque_iteratorIT3_RS5_PS5_ES4_IT0_T1_T2_ESC_S8_ = comdat any

$_ZSt15__copy_move_ditILb1EP12GHOST_IEventRS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_ = comdat any

$_ZSt14__copy_move_a1ILb1EPP12GHOST_IEventS1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_ = comdat any

$_ZSt14__copy_move_a1ILb1EPP12GHOST_IEventS2_ET1_T0_S4_S3_ = comdat any

$_ZSt14__copy_move_a2ILb1EPP12GHOST_IEventS2_ET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP12GHOST_IEventEEPT_PKS5_S8_S6_ = comdat any

$_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ES3_PS3_ = comdat any

$_ZNSt16allocator_traitsISaIP12GHOST_IEventEE7destroyIS1_EEvRS2_PT_ = comdat any

$_ZNSt5dequeIP12GHOST_IEventSaIS1_EE15_M_pop_back_auxEv = comdat any

$_ZNSt15__new_allocatorIP12GHOST_IEventE7destroyIS1_EEvPT_ = comdat any

$_ZNKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EixEl = comdat any

$_ZNSt5dequeIP12GHOST_IEventSaIS1_EE16_M_pop_front_auxEv = comdat any

@_ZTV18GHOST_EventManager = dso_local unnamed_addr constant { [17 x ptr] } { [17 x ptr] [ptr null, ptr @_ZTI18GHOST_EventManager, ptr @_ZN18GHOST_EventManagerD2Ev, ptr @_ZN18GHOST_EventManagerD0Ev, ptr @_ZN18GHOST_EventManager12getNumEventsEv, ptr @_ZN18GHOST_EventManager12getNumEventsE16GHOST_TEventType, ptr @_ZN18GHOST_EventManager9peekEventEv, ptr @_ZN18GHOST_EventManager9pushEventEP12GHOST_IEvent, ptr @_ZN18GHOST_EventManager13dispatchEventEP12GHOST_IEvent, ptr @_ZN18GHOST_EventManager13dispatchEventEv, ptr @_ZN18GHOST_EventManager14dispatchEventsEv, ptr @_ZN18GHOST_EventManager11addConsumerEP20GHOST_IEventConsumer, ptr @_ZN18GHOST_EventManager14removeConsumerEP20GHOST_IEventConsumer, ptr @_ZN18GHOST_EventManager18removeWindowEventsEP13GHOST_IWindow, ptr @_ZN18GHOST_EventManager16removeTypeEventsE16GHOST_TEventTypeP13GHOST_IWindow, ptr @_ZN18GHOST_EventManager8popEventEv, ptr @_ZN18GHOST_EventManager13disposeEventsEv] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS18GHOST_EventManager = dso_local constant [21 x i8] c"18GHOST_EventManager\00", align 1
@_ZTI18GHOST_EventManager = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS18GHOST_EventManager }, align 8
@.str = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN18GHOST_EventManagerC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN18GHOST_EventManagerC2Ev
@_ZN18GHOST_EventManagerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN18GHOST_EventManagerD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN18GHOST_EventManagerC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 {
  store ptr getelementptr inbounds ({ [17 x ptr] }, ptr @_ZTV18GHOST_EventManager, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1
  tail call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %2) #9
  %3 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt12_Vector_baseIP20GHOST_IEventConsumerSaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN18GHOST_EventManagerD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  store ptr getelementptr inbounds ({ [17 x ptr] }, ptr @_ZTV18GHOST_EventManager, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !34
  tail call void @_ZN18GHOST_EventManager13disposeEventsEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %5 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 2
  %6 = tail call ptr @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #10
  br label %7

7:                                                ; preds = %19, %1
  %8 = phi ptr [ %6, %1 ], [ %21, %19 ]
  store ptr %8, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %9 = call ptr @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #10
  store ptr %9, ptr %3, align 8
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  %13 = load ptr, ptr %12, align 8, !tbaa !37
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !34
  %17 = getelementptr inbounds ptr, ptr %16, i64 1
  %18 = load ptr, ptr %17, align 8
  call void %18(ptr noundef nonnull align 8 dereferenceable(8) %13) #10
  br label %19

19:                                               ; preds = %15, %11
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEC2IPS2_vEERKNS0_IT_S7_EE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  %20 = load ptr, ptr %4, align 8
  %21 = invoke ptr @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %20) #9
          to label %7 unwind label %24, !llvm.loop !40

22:                                               ; preds = %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  call void @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #10
  %23 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1
  call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %23) #10
  ret void

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #12
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxneIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  %4 = load ptr, ptr %3, align 8, !tbaa !37
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = icmp ne ptr %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<GHOST_IEventConsumer *, std::allocator<GHOST_IEventConsumer *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !42
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  store ptr %1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %6 = tail call ptr @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  store ptr %6, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %7 = tail call ptr @_ZNKSt6vectorIP20GHOST_IEventConsumerSaIS1_EE6cbeginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  store ptr %7, ptr %5, align 8
  %8 = call noundef i64 @_ZN9__gnu_cxxmiIPKP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  %9 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %8) #10
  %10 = call ptr @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEC2IPS2_vEERKNS0_IT_S7_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %4 = load ptr, ptr %3, align 8, !tbaa !37
  store ptr %4, ptr %0, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %"struct.std::_Vector_base<GHOST_IEventConsumer *, std::allocator<GHOST_IEventConsumer *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIP20GHOST_IEventConsumerSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  invoke void @_ZSt8_DestroyIPP20GHOST_IEventConsumerS1_EvT_S3_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #9
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIP20GHOST_IEventConsumerSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"struct.std::_Deque_iterator", align 8
  %3 = alloca %"struct.std::_Deque_iterator", align 8
  call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %2, ptr noundef nonnull align 8 dereferenceable(80) %0) #10
  call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(80) %0) #10
  %4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #10
  call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE15_M_destroy_dataESt15_Deque_iteratorIS1_RS1_PS1_ES7_RKS2_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #9
  call void @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN18GHOST_EventManagerD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 align 2 {
  tail call void @_ZN18GHOST_EventManagerD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN18GHOST_EventManager12getNumEventsEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 align 2 {
  %2 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1
  %3 = tail call noundef i64 @_ZNKSt5dequeIP12GHOST_IEventSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #10
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt5dequeIP12GHOST_IEventSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %3 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  %4 = tail call noundef i64 @_ZStmiRKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_ES6_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN18GHOST_EventManager12getNumEventsE16GHOST_TEventType(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1) unnamed_addr #0 align 2 {
  %3 = alloca %"struct.std::_Deque_iterator", align 8
  %4 = alloca %"struct.std::_Deque_iterator", align 8
  %5 = alloca %"struct.std::_Deque_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #11
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #11
  %6 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1
  call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(80) %6) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(80) %6) #10
  %7 = call noundef zeroext i1 @_ZStneRKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_ES6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  br i1 %7, label %8, label %21

8:                                                ; preds = %2, %8
  %9 = phi i32 [ %18, %8 ], [ 0, %2 ]
  %10 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EdeEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %11 = load ptr, ptr %10, align 8, !tbaa !37
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = call noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  %16 = icmp eq i32 %15, %1
  %17 = zext i1 %16 to i32
  %18 = add i32 %9, %17
  %19 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EppEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(80) %6) #10
  %20 = call noundef zeroext i1 @_ZStneRKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_ES6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  br i1 %20, label %8, label %21, !llvm.loop !50

21:                                               ; preds = %8, %2
  %22 = phi i32 [ 0, %2 ], [ %18, %8 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  ret i32 %22
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5beginEv(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #1 comdat align 2 {
  %3 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %1, i64 0, i32 2
  tail call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStneRKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_ES6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat {
  %3 = tail call noundef zeroext i1 @_ZSteqRKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_ES6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #10
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE3endEv(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #1 comdat align 2 {
  %3 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %1, i64 0, i32 3
  tail call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EdeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !51
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EppEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !51
  %3 = getelementptr inbounds ptr, ptr %2, i64 1
  store ptr %3, ptr %0, align 8, !tbaa !51
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = getelementptr inbounds ptr, ptr %9, i64 1
  tail call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_E11_M_set_nodeEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %10) #10
  %11 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  store ptr %12, ptr %0, align 8, !tbaa !51
  br label %13

13:                                               ; preds = %7, %1
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZN18GHOST_EventManager9peekEventEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 align 2 {
  %2 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNKSt5dequeIP12GHOST_IEventSaIS1_EE5emptyEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #10
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #10
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt5dequeIP12GHOST_IEventSaIS1_EE5emptyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %3 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  %4 = tail call noundef zeroext i1 @_ZSteqRKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_ES6_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::_Deque_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #11
  call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %2, ptr noundef nonnull align 8 dereferenceable(80) %0) #10
  %3 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EmmEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EdeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #11
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN18GHOST_EventManager9pushEventEP12GHOST_IEvent(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !37
  %4 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1
  %5 = tail call noundef i64 @_ZNKSt5dequeIP12GHOST_IEventSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #10
  %6 = tail call noundef i64 @_ZNKSt5dequeIP12GHOST_IEventSaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #10
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE10push_frontERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  br label %9

9:                                                ; preds = %2, %8
  %10 = phi i32 [ 1, %8 ], [ 0, %2 ]
  ret i32 %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt5dequeIP12GHOST_IEventSaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt11_Deque_baseIP12GHOST_IEventSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #10
  %3 = tail call noundef i64 @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE11_S_max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %2) #10
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE10push_frontERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds ptr, ptr %4, i64 -1
  tail call void @_ZNSt16allocator_traitsISaIP12GHOST_IEventEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %9, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %10 = load ptr, ptr %3, align 8, !tbaa !56
  %11 = getelementptr inbounds ptr, ptr %10, i64 -1
  store ptr %11, ptr %3, align 8, !tbaa !56
  br label %13

12:                                               ; preds = %2
  tail call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  br label %13

13:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN18GHOST_EventManager13dispatchEventEP12GHOST_IEvent(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) unnamed_addr #0 align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = icmp eq ptr %1, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  %7 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 2
  %8 = call ptr @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #10
  store ptr %8, ptr %3, align 8, !tbaa.struct !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %9 = call ptr @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #10
  store ptr %9, ptr %4, align 8
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br i1 %10, label %11, label %26

11:                                               ; preds = %6, %11
  %12 = phi i8 [ %19, %11 ], [ 1, %6 ]
  %13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  %14 = load ptr, ptr %13, align 8, !tbaa !37
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = call noundef zeroext i1 %17(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull %1) #9
  %19 = select i1 %18, i8 0, i8 %12
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %21 = call ptr @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #10
  store ptr %21, ptr %4, align 8
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br i1 %22, label %11, label %23, !llvm.loop !61

23:                                               ; preds = %11
  %24 = and i8 %19, 1
  %25 = icmp ne i8 %24, 0
  br label %26

26:                                               ; preds = %23, %6
  %27 = phi i1 [ true, %6 ], [ %25, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %28

28:                                               ; preds = %2, %26
  %29 = phi i1 [ %27, %26 ], [ false, %2 ]
  ret i1 %29
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  store ptr null, ptr %0, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !42
  %3 = getelementptr inbounds ptr, ptr %2, i64 1
  store ptr %3, ptr %0, align 8, !tbaa !42
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN18GHOST_EventManager13dispatchEventEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 13
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !34
  %9 = getelementptr inbounds ptr, ptr %8, i64 6
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef zeroext i1 %10(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %5) #9
  %12 = load ptr, ptr %5, align 8, !tbaa !34
  %13 = getelementptr inbounds ptr, ptr %12, i64 1
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %15

15:                                               ; preds = %7, %1
  %16 = phi i1 [ %11, %7 ], [ false, %1 ]
  ret i1 %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN18GHOST_EventManager14dispatchEventsEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !34
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %7, %13
  %14 = phi i8 [ %19, %13 ], [ 1, %7 ]
  %15 = load ptr, ptr %0, align 8, !tbaa !34
  %16 = getelementptr inbounds ptr, ptr %15, i64 7
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef zeroext i1 %17(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  %19 = select i1 %18, i8 %14, i8 0
  %20 = load ptr, ptr %0, align 8, !tbaa !34
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef i32 %22(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %13, !llvm.loop !62

25:                                               ; preds = %13
  %26 = and i8 %19, 1
  %27 = icmp ne i8 %26, 0
  br label %28

28:                                               ; preds = %25, %7, %1
  %29 = phi i1 [ false, %1 ], [ true, %7 ], [ %27, %25 ]
  ret i1 %29
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN18GHOST_EventManager11addConsumerEP20GHOST_IEventConsumer(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %1, ptr %3, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %7 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 2
  %8 = tail call ptr @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #10
  %9 = tail call ptr @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #10
  %10 = call ptr @_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_(ptr %8, ptr %9, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  store ptr %10, ptr %5, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEC2IPS2_vEERKNS0_IT_S7_EE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %11 = call ptr @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #10
  store ptr %11, ptr %6, align 8
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIPKP20GHOST_IEventConsumerPS2_St6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T1_EERKNS9_IT0_SB_EE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  call void @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  br label %14

14:                                               ; preds = %2, %13
  %15 = phi i32 [ 1, %13 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret i32 %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
  %4 = tail call ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKP20GHOST_IEventConsumerEENS0_16_Iter_equals_valIT_EERS6_(ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  %5 = tail call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIKS3_EEET_SD_SD_T0_(ptr %0, ptr %1, ptr %4) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxeqIPKP20GHOST_IEventConsumerPS2_St6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T1_EERKNS9_IT0_SB_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  %4 = load ptr, ptr %3, align 8, !tbaa !37
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = icmp eq ptr %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<GHOST_IEventConsumer *, std::allocator<GHOST_IEventConsumer *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds %"struct.std::_Vector_base<GHOST_IEventConsumer *, std::allocator<GHOST_IEventConsumer *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  tail call void @_ZNSt16allocator_traitsISaIP20GHOST_IEventConsumerEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %9 = load ptr, ptr %3, align 8, !tbaa !48
  %10 = getelementptr inbounds ptr, ptr %9, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !48
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  tail call void @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %12, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  br label %13

13:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN18GHOST_EventManager14removeConsumerEP20GHOST_IEventConsumer(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  store ptr %1, ptr %3, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %7 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 2
  %8 = tail call ptr @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #10
  %9 = tail call ptr @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #10
  %10 = call ptr @_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_(ptr %8, ptr %9, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  store ptr %10, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %11 = call ptr @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #10
  store ptr %11, ptr %5, align 8
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEC2IPS2_vEERKNS0_IT_S7_EE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  %14 = load ptr, ptr %6, align 8
  %15 = call ptr @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %14) #9
  br label %16

16:                                               ; preds = %2, %13
  %17 = phi i32 [ 1, %13 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret i32 %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN18GHOST_EventManager18removeWindowEventsEP13GHOST_IWindow(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef readnone %1) unnamed_addr #0 align 2 {
  %3 = alloca %"struct.std::_Deque_iterator", align 8
  %4 = alloca %"struct.std::_Deque_iterator", align 8
  %5 = alloca %"struct.std::_Deque_iterator", align 8
  %6 = alloca %"struct.std::_Deque_iterator.4", align 8
  %7 = alloca %"struct.std::_Deque_iterator", align 8
  %8 = alloca %"struct.std::_Deque_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #11
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #11
  %9 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1
  call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(80) %9) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(80) %9) #10
  %10 = call noundef zeroext i1 @_ZStneRKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_ES6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  br i1 %10, label %11, label %27

11:                                               ; preds = %2, %25
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EdeEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %13 = load ptr, ptr %12, align 8, !tbaa !37
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = getelementptr inbounds ptr, ptr %14, i64 4
  %16 = load ptr, ptr %15, align 8
  %17 = call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13) #9
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = load ptr, ptr %13, align 8, !tbaa !34
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  call void %22(ptr noundef nonnull align 8 dereferenceable(8) %13) #10
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRKS1_PS2_EC2IS_IS1_RS1_PS1_EvEERKT_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #11
  call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5eraseESt15_Deque_iteratorIS1_RKS1_PS5_E(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %7, ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #11
  call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %8, ptr noundef nonnull align 8 dereferenceable(80) %9) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #11
  br label %25

23:                                               ; preds = %11
  %24 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EppEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  br label %25

25:                                               ; preds = %23, %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(80) %9) #10
  %26 = call noundef zeroext i1 @_ZStneRKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_ES6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  br i1 %26, label %11, label %27, !llvm.loop !64

27:                                               ; preds = %25, %2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5eraseESt15_Deque_iteratorIS1_RKS1_PS5_E(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = alloca %"struct.std::_Deque_iterator", align 8
  call void @_ZNKSt15_Deque_iteratorIP12GHOST_IEventRKS1_PS2_E13_M_const_castEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE8_M_eraseESt15_Deque_iteratorIS1_RS1_PS1_E(ptr dead_on_unwind writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %4) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRKS1_PS2_EC2IS_IS1_RS1_PS1_EvEERKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 comdat align 2 {
  %3 = load <2 x ptr>, ptr %1, align 8, !tbaa !37
  store <2 x ptr> %3, ptr %0, align 8, !tbaa !37
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator.4", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 2
  %6 = load <2 x ptr>, ptr %5, align 8, !tbaa !37
  store <2 x ptr> %6, ptr %4, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN18GHOST_EventManager16removeTypeEventsE16GHOST_TEventTypeP13GHOST_IWindow(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, ptr noundef readnone %2) unnamed_addr #0 align 2 {
  %4 = alloca %"struct.std::_Deque_iterator", align 8
  %5 = alloca %"struct.std::_Deque_iterator", align 8
  %6 = alloca %"struct.std::_Deque_iterator", align 8
  %7 = alloca %"struct.std::_Deque_iterator.4", align 8
  %8 = alloca %"struct.std::_Deque_iterator", align 8
  %9 = alloca %"struct.std::_Deque_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #11
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  %10 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1
  call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(80) %10) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #11
  call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %6, ptr noundef nonnull align 8 dereferenceable(80) %10) #10
  %11 = call noundef zeroext i1 @_ZStneRKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_ES6_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %6) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #11
  br i1 %11, label %12, label %37

12:                                               ; preds = %3
  %13 = icmp eq ptr %2, null
  br label %14

14:                                               ; preds = %12, %35
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EdeEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %16 = load ptr, ptr %15, align 8, !tbaa !37
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = call noundef i32 %19(ptr noundef nonnull align 8 dereferenceable(8) %16) #9
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %22, label %33

22:                                               ; preds = %14
  br i1 %13, label %29, label %23

23:                                               ; preds = %22
  %24 = load ptr, ptr %16, align 8, !tbaa !34
  %25 = getelementptr inbounds ptr, ptr %24, i64 4
  %26 = load ptr, ptr %25, align 8
  %27 = call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %16) #9
  %28 = icmp eq ptr %27, %2
  br i1 %28, label %29, label %33

29:                                               ; preds = %22, %23
  %30 = load ptr, ptr %16, align 8, !tbaa !34
  %31 = getelementptr inbounds ptr, ptr %30, i64 1
  %32 = load ptr, ptr %31, align 8
  call void %32(ptr noundef nonnull align 8 dereferenceable(8) %16) #10
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRKS1_PS2_EC2IS_IS1_RS1_PS1_EvEERKT_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #11
  call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5eraseESt15_Deque_iteratorIS1_RKS1_PS5_E(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %8, ptr noundef nonnull align 8 dereferenceable(80) %10, ptr noundef nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #11
  call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %9, ptr noundef nonnull align 8 dereferenceable(80) %10) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #11
  br label %35

33:                                               ; preds = %23, %14
  %34 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EppEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  br label %35

35:                                               ; preds = %33, %29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #11
  call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %6, ptr noundef nonnull align 8 dereferenceable(80) %10) #10
  %36 = call noundef zeroext i1 @_ZStneRKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_ES6_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %6) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #11
  br i1 %36, label %14, label %37, !llvm.loop !65

37:                                               ; preds = %35, %3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN18GHOST_EventManager8popEventEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 4
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1
  tail call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(80) %8) #10
  br label %9

9:                                                ; preds = %7, %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds ptr, ptr %3, i64 -1
  store ptr %8, ptr %2, align 8, !tbaa !66
  %9 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #10
  %10 = load ptr, ptr %2, align 8, !tbaa !66
  tail call void @_ZNSt16allocator_traitsISaIP12GHOST_IEventEE7destroyIS1_EEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef %10) #10
  br label %12

11:                                               ; preds = %1
  tail call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE15_M_pop_back_auxEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #9
  br label %12

12:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN18GHOST_EventManager13disposeEventsEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 align 2 {
  %2 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNKSt5dequeIP12GHOST_IEventSaIS1_EE5emptyEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #10
  br i1 %3, label %14, label %4

4:                                                ; preds = %1, %12
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt5dequeIP12GHOST_IEventSaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(80) %2, i64 noundef 0) #10
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !34
  %10 = getelementptr inbounds ptr, ptr %9, i64 1
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  br label %12

12:                                               ; preds = %8, %4
  tail call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #10
  %13 = tail call noundef zeroext i1 @_ZNKSt5dequeIP12GHOST_IEventSaIS1_EE5emptyEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #10
  br i1 %13, label %14, label %4, !llvm.loop !68

14:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt5dequeIP12GHOST_IEventSaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
  %3 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EixEl(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %1) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = getelementptr inbounds ptr, ptr %5, i64 -1
  %7 = icmp eq ptr %3, %6
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #10
  %10 = load ptr, ptr %2, align 8, !tbaa !56
  tail call void @_ZNSt16allocator_traitsISaIP12GHOST_IEventEE7destroyIS1_EEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef %10) #10
  %11 = load ptr, ptr %2, align 8, !tbaa !56
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %12, ptr %2, align 8, !tbaa !56
  br label %14

13:                                               ; preds = %1
  tail call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE16_M_pop_front_auxEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #9
  br label %14

14:                                               ; preds = %13, %8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  tail call void @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE11_Deque_implC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #10
  invoke void @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 0) #9
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIP12GHOST_IEventED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #10
  resume { ptr, i32 } %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE11_Deque_implC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSaIP12GHOST_IEventEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  tail call void @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE16_Deque_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = tail call noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef 8) #9
  %6 = udiv i64 %1, %5
  %7 = add i64 %6, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store i64 8, ptr %3, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %8 = add i64 %6, 3
  store i64 %8, ptr %4, align 8, !tbaa !70
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  %10 = load i64, ptr %9, align 8, !tbaa !70
  %11 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 1
  store i64 %10, ptr %11, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  %12 = call noundef ptr @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE15_M_allocate_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %10) #9
  store ptr %12, ptr %0, align 8, !tbaa !72
  %13 = load i64, ptr %11, align 8, !tbaa !71
  %14 = sub i64 %13, %7
  %15 = lshr i64 %14, 1
  %16 = getelementptr inbounds ptr, ptr %12, i64 %15
  %17 = getelementptr inbounds ptr, ptr %16, i64 %7
  invoke void @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE15_M_create_nodesEPPS1_S5_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %16, ptr noundef %17) #9
          to label %27 unwind label %18

18:                                               ; preds = %2
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  %21 = call ptr @__cxa_begin_catch(ptr %20) #11
  %22 = load ptr, ptr %0, align 8, !tbaa !72
  %23 = load i64, ptr %11, align 8, !tbaa !71
  call void @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE17_M_deallocate_mapEPPS1_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %22, i64 noundef %23) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #14
          to label %41 unwind label %24

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %26 unwind label %38

26:                                               ; preds = %24
  resume { ptr, i32 } %25

27:                                               ; preds = %2
  %28 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_E11_M_set_nodeEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef %16) #10
  %29 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %30 = getelementptr inbounds ptr, ptr %16, i64 %6
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_E11_M_set_nodeEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef %30) #10
  %31 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !59
  store ptr %32, ptr %28, align 8, !tbaa !56
  %33 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !67
  %35 = call noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef 8) #9
  %36 = urem i64 %1, %35
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  store ptr %37, ptr %29, align 8, !tbaa !66
  ret void

38:                                               ; preds = %24
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  call void @__clang_call_terminate(ptr %40) #12
  unreachable

41:                                               ; preds = %18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP12GHOST_IEventED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIP12GHOST_IEventEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIP12GHOST_IEventEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE16_Deque_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  tail call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  tail call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP12GHOST_IEventEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef %0) local_unnamed_addr #1 comdat {
  %2 = icmp ult i64 %0, 512
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = trunc i64 %0 to i16
  %5 = udiv i16 512, %4
  %6 = zext nneg i16 %5 to i64
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi i64 [ %6, %3 ], [ 1, %1 ]
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat {
  %3 = load i64, ptr %0, align 8, !tbaa !70
  %4 = load i64, ptr %1, align 8, !tbaa !70
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE15_M_allocate_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::allocator.5", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  call void @_ZNKSt11_Deque_baseIP12GHOST_IEventSaIS1_EE20_M_get_map_allocatorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator.5") align 1 %3, ptr noundef nonnull align 8 dereferenceable(80) %0) #10
  %4 = invoke noundef ptr @_ZNSt16allocator_traitsISaIPP12GHOST_IEventEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %1) #9
          to label %5 unwind label %6

5:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIPP12GHOST_IEventED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  ret ptr %4

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIPP12GHOST_IEventED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE15_M_create_nodesEPPS1_S5_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = icmp ult ptr %1, %2
  br i1 %4, label %5, label %18

5:                                                ; preds = %3, %8
  %6 = phi ptr [ %9, %8 ], [ %1, %3 ]
  %7 = invoke noundef ptr @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE16_M_allocate_nodeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #9
          to label %8 unwind label %11

8:                                                ; preds = %5
  store ptr %7, ptr %6, align 8, !tbaa !37
  %9 = getelementptr inbounds ptr, ptr %6, i64 1
  %10 = icmp ult ptr %9, %2
  br i1 %10, label %5, label %18, !llvm.loop !73

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #11
  tail call void @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE16_M_destroy_nodesEPPS1_S5_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %6) #10
  invoke void @__cxa_rethrow() #14
          to label %22 unwind label %15

15:                                               ; preds = %11
  %16 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %17 unwind label %19

17:                                               ; preds = %15
  resume { ptr, i32 } %16

18:                                               ; preds = %8, %3
  ret void

19:                                               ; preds = %15
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = extractvalue { ptr, i32 } %20, 0
  tail call void @__clang_call_terminate(ptr %21) #12
  unreachable

22:                                               ; preds = %11
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE17_M_deallocate_mapEPPS1_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::allocator.5", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  call void @_ZNKSt11_Deque_baseIP12GHOST_IEventSaIS1_EE20_M_get_map_allocatorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator.5") align 1 %4, ptr noundef nonnull align 8 dereferenceable(80) %0) #10
  invoke void @_ZNSt16allocator_traitsISaIPP12GHOST_IEventEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, i64 noundef %2) #9
          to label %5 unwind label %6

5:                                                ; preds = %3
  call void @_ZNSt15__new_allocatorIPP12GHOST_IEventED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  call void @__clang_call_terminate(ptr %8) #12
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_E11_M_set_nodeEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
  %3 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !54
  %4 = load ptr, ptr %1, align 8, !tbaa !37
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !55
  %6 = tail call noundef i64 @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_E14_S_buffer_sizeEv() #10
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNKSt11_Deque_baseIP12GHOST_IEventSaIS1_EE20_M_get_map_allocatorEv(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.5") align 1 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #1 comdat align 2 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt11_Deque_baseIP12GHOST_IEventSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #10
  tail call void @_ZNSaIPP12GHOST_IEventEC2IS0_EERKSaIT_E(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIPP12GHOST_IEventEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIPP12GHOST_IEventE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIPP12GHOST_IEventED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt11_Deque_baseIP12GHOST_IEventSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIPP12GHOST_IEventEC2IS0_EERKSaIT_E(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIPP12GHOST_IEventEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIPP12GHOST_IEventEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIPP12GHOST_IEventE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIPP12GHOST_IEventE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !74

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 2305843009213693951
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #15
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #15
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #16
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIPP12GHOST_IEventE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 {
  ret i64 1152921504606846975
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #6

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #6

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE16_M_allocate_nodeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 {
  %2 = tail call noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef 8) #9
  %3 = tail call noundef ptr @_ZNSt16allocator_traitsISaIP12GHOST_IEventEE8allocateERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %2) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE16_M_destroy_nodesEPPS1_S5_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
  %4 = icmp ult ptr %1, %2
  br i1 %4, label %6, label %5

5:                                                ; preds = %6, %3
  ret void

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %9, %6 ], [ %1, %3 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !37
  tail call void @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE18_M_deallocate_nodeEPS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %8) #10
  %9 = getelementptr inbounds ptr, ptr %7, i64 1
  %10 = icmp ult ptr %9, %2
  br i1 %10, label %6, label %5, !llvm.loop !75
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIP12GHOST_IEventEE8allocateERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIP12GHOST_IEventE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIP12GHOST_IEventE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIP12GHOST_IEventE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !74

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 2305843009213693951
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #15
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #15
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #16
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIP12GHOST_IEventE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 {
  ret i64 1152921504606846975
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE18_M_deallocate_nodeEPS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = tail call noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef 8) #9
  invoke void @_ZNSt16allocator_traitsISaIP12GHOST_IEventEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %3) #9
          to label %4 unwind label %5

4:                                                ; preds = %2
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIP12GHOST_IEventEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIP12GHOST_IEventE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP12GHOST_IEventE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIPP12GHOST_IEventEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIPP12GHOST_IEventE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIPP12GHOST_IEventE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_E14_S_buffer_sizeEv() local_unnamed_addr #1 comdat align 2 {
  %1 = tail call noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef 8) #9
  ret i64 %1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP20GHOST_IEventConsumerSaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt12_Vector_baseIP20GHOST_IEventConsumerSaIS1_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP20GHOST_IEventConsumerSaIS1_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSaIP20GHOST_IEventConsumerEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  tail call void @_ZNSt12_Vector_baseIP20GHOST_IEventConsumerSaIS1_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIP20GHOST_IEventConsumerEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIP20GHOST_IEventConsumerEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP20GHOST_IEventConsumerSaIS1_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP20GHOST_IEventConsumerEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE15_M_destroy_dataESt15_Deque_iteratorIS1_RS1_PS1_ES7_RKS2_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !72
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !77
  %9 = getelementptr inbounds ptr, ptr %8, i64 1
  tail call void @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE16_M_destroy_nodesEPPS1_S5_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %6, ptr noundef nonnull %9) #10
  %10 = load ptr, ptr %0, align 8, !tbaa !72
  %11 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !71
  tail call void @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE17_M_deallocate_mapEPPS1_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %10, i64 noundef %12) #10
  br label %13

13:                                               ; preds = %4, %1
  tail call void @_ZNSt15__new_allocatorIP12GHOST_IEventED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPP20GHOST_IEventConsumerS1_EvT_S3_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
  tail call void @_ZSt8_DestroyIPP20GHOST_IEventConsumerEvT_S3_(ptr noundef %0, ptr noundef %1) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIP20GHOST_IEventConsumerSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP20GHOST_IEventConsumerSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %"struct.std::_Vector_base<GHOST_IEventConsumer *, std::allocator<GHOST_IEventConsumer *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  invoke void @_ZNSt12_Vector_baseIP20GHOST_IEventConsumerSaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #9
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIP20GHOST_IEventConsumerED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPP20GHOST_IEventConsumerEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPP20GHOST_IEventConsumerEEvT_S5_(ptr noundef %0, ptr noundef %1) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPP20GHOST_IEventConsumerEEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP20GHOST_IEventConsumerSaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIP20GHOST_IEventConsumerEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #9
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP20GHOST_IEventConsumerED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIP20GHOST_IEventConsumerEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIP20GHOST_IEventConsumerE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP20GHOST_IEventConsumerE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
  %3 = load ptr, ptr %1, align 8, !tbaa !37
  store ptr %3, ptr %0, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %6 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 1) #10
  store ptr %6, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %7 = call ptr @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  store ptr %7, ptr %5, align 8
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 1) #10
  %11 = call ptr @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  %12 = load ptr, ptr %3, align 8, !tbaa.struct !60
  %13 = call ptr @_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_(ptr %10, ptr %11, ptr %12) #9
  br label %14

14:                                               ; preds = %9, %2
  %15 = getelementptr inbounds %"struct.std::_Vector_base<GHOST_IEventConsumer *, std::allocator<GHOST_IEventConsumer *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !48
  %17 = getelementptr inbounds ptr, ptr %16, i64 -1
  store ptr %17, ptr %15, align 8, !tbaa !48
  call void @_ZNSt16allocator_traitsISaIP20GHOST_IEventConsumerEE7destroyIS1_EEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %17) #10
  %18 = load ptr, ptr %3, align 8, !tbaa.struct !60
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %5 = load ptr, ptr %0, align 8, !tbaa !42
  %6 = getelementptr inbounds ptr, ptr %5, i64 %1
  store ptr %6, ptr %4, align 8, !tbaa !37
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  %7 = load ptr, ptr %3, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPKP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  %4 = load ptr, ptr %3, align 8, !tbaa !37
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIP20GHOST_IEventConsumerSaIS1_EE6cbeginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS3_SaIS3_EEEEET_S9_(ptr %0) #9
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS3_SaIS3_EEEEET_S9_(ptr %1) #9
  %6 = tail call ptr @_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS3_SaIS3_EEEES8_ET1_T0_SA_S9_(ptr %4, ptr %5, ptr %2) #9
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIP20GHOST_IEventConsumerEE7destroyIS1_EEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIP20GHOST_IEventConsumerE7destroyIS1_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS3_SaIS3_EEEES8_ET1_T0_SA_S9_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPP20GHOST_IEventConsumerSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE(ptr %0) #10
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPP20GHOST_IEventConsumerSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE(ptr %1) #10
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPP20GHOST_IEventConsumerSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE(ptr %2) #10
  %7 = tail call noundef ptr @_ZSt14__copy_move_a1ILb1EPP20GHOST_IEventConsumerS2_ET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %6) #9
  %8 = tail call ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS3_SaIS3_EEEES4_ET_S9_T0_(ptr %2, ptr noundef %7) #9
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS3_SaIS3_EEEEET_S9_(ptr %0) local_unnamed_addr #1 comdat {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS3_SaIS3_EEEES4_ET_S9_T0_(ptr %0, ptr noundef %1) local_unnamed_addr #1 comdat {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %3, align 8
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPP20GHOST_IEventConsumerSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE(ptr %0) #10
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  %9 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %8) #10
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb1EPP20GHOST_IEventConsumerS2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb1EPP20GHOST_IEventConsumerS2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPP20GHOST_IEventConsumerSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE(ptr %0) local_unnamed_addr #1 comdat {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  %4 = load ptr, ptr %3, align 8, !tbaa !37
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb1EPP20GHOST_IEventConsumerS2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP20GHOST_IEventConsumerEEPT_PKS5_S8_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP20GHOST_IEventConsumerEEPT_PKS5_S8_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
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
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP20GHOST_IEventConsumerE7destroyIS1_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
  %3 = load ptr, ptr %1, align 8, !tbaa !37
  store ptr %3, ptr %0, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZStmiRKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_ES6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat {
  %3 = tail call noundef i64 @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_E14_S_buffer_sizeEv() #10
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = icmp ne ptr %5, null
  %13 = sext i1 %12 to i64
  %14 = add nsw i64 %11, %13
  %15 = mul nsw i64 %14, %3
  %16 = load ptr, ptr %0, align 8, !tbaa !51
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  %19 = ptrtoint ptr %16 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 3
  %23 = add nsw i64 %15, %22
  %24 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !53
  %26 = load ptr, ptr %1, align 8, !tbaa !51
  %27 = ptrtoint ptr %25 to i64
  %28 = ptrtoint ptr %26 to i64
  %29 = sub i64 %27, %28
  %30 = ashr exact i64 %29, 3
  %31 = add nsw i64 %23, %30
  ret i64 %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 comdat align 2 {
  %3 = load <2 x ptr>, ptr %1, align 8, !tbaa !37
  store <2 x ptr> %3, ptr %0, align 8, !tbaa !37
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 2
  %6 = load <2 x ptr>, ptr %5, align 8, !tbaa !37
  store <2 x ptr> %6, ptr %4, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqRKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_ES6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat {
  %3 = load ptr, ptr %0, align 8, !tbaa !51
  %4 = load ptr, ptr %1, align 8, !tbaa !51
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EmmEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !51
  %3 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = getelementptr inbounds ptr, ptr %8, i64 -1
  tail call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_E11_M_set_nodeEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %9) #10
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !53
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi ptr [ %11, %6 ], [ %2, %1 ]
  %14 = getelementptr inbounds ptr, ptr %13, i64 -1
  store ptr %14, ptr %0, align 8, !tbaa !51
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE11_S_max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  store i64 9223372036854775807, ptr %2, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIP12GHOST_IEventEE8max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  store i64 %4, ptr %3, align 8, !tbaa !70
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  %6 = load i64, ptr %5, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIP12GHOST_IEventEE8max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIP12GHOST_IEventE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat {
  %3 = load i64, ptr %1, align 8, !tbaa !70
  %4 = load i64, ptr %0, align 8, !tbaa !70
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIP12GHOST_IEventE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIP12GHOST_IEventE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIP12GHOST_IEventEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIP12GHOST_IEventE9constructIS1_JRKS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef i64 @_ZNKSt5dequeIP12GHOST_IEventSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #10
  %4 = tail call noundef i64 @_ZNKSt5dequeIP12GHOST_IEventSaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #10
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #15
  unreachable

7:                                                ; preds = %2
  tail call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE23_M_reserve_map_at_frontEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1) #9
  %8 = tail call noundef ptr @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE16_M_allocate_nodeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #9
  %9 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !76
  %12 = getelementptr inbounds ptr, ptr %11, i64 -1
  store ptr %8, ptr %12, align 8, !tbaa !37
  %13 = load ptr, ptr %10, align 8, !tbaa !76
  %14 = getelementptr inbounds ptr, ptr %13, i64 -1
  tail call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_E11_M_set_nodeEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %14) #10
  %15 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !69
  %17 = getelementptr inbounds ptr, ptr %16, i64 -1
  store ptr %17, ptr %9, align 8, !tbaa !56
  tail call void @_ZNSt16allocator_traitsISaIP12GHOST_IEventEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %17, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP12GHOST_IEventE9constructIS1_JRKS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
  %4 = load ptr, ptr %2, align 8, !tbaa !37
  store ptr %4, ptr %1, align 8, !tbaa !37
  ret void
}

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE23_M_reserve_map_at_frontEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = load ptr, ptr %0, align 8, !tbaa !72
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp ult i64 %9, %1
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  tail call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext true) #9
  br label %12

12:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
  %4 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !70
  %5 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !76
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = add nsw i64 %12, 1
  %14 = add i64 %13, %1
  %15 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !71
  %17 = shl i64 %14, 1
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %3
  %20 = load ptr, ptr %0, align 8, !tbaa !72
  %21 = sub i64 %16, %14
  %22 = lshr i64 %21, 1
  %23 = getelementptr inbounds ptr, ptr %20, i64 %22
  %24 = select i1 %2, i64 %1, i64 0
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = icmp ult ptr %25, %8
  %27 = getelementptr inbounds ptr, ptr %6, i64 1
  br i1 %26, label %28, label %30

28:                                               ; preds = %19
  %29 = tail call noundef ptr @_ZSt4copyIPPP12GHOST_IEventS3_ET0_T_S5_S4_(ptr noundef nonnull %8, ptr noundef nonnull %27, ptr noundef %25) #9
  br label %51

30:                                               ; preds = %19
  %31 = getelementptr inbounds ptr, ptr %25, i64 %13
  %32 = tail call noundef ptr @_ZSt13copy_backwardIPPP12GHOST_IEventS3_ET0_T_S5_S4_(ptr noundef %8, ptr noundef nonnull %27, ptr noundef %31) #9
  br label %51

33:                                               ; preds = %3
  %34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  %35 = load i64, ptr %34, align 8, !tbaa !70
  %36 = add i64 %16, 2
  %37 = add i64 %36, %35
  %38 = call noundef ptr @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE15_M_allocate_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %37) #9
  %39 = sub i64 %37, %14
  %40 = lshr i64 %39, 1
  %41 = getelementptr inbounds ptr, ptr %38, i64 %40
  %42 = load i64, ptr %4, align 8
  %43 = select i1 %2, i64 %42, i64 0
  %44 = getelementptr inbounds ptr, ptr %41, i64 %43
  %45 = load ptr, ptr %7, align 8, !tbaa !76
  %46 = load ptr, ptr %5, align 8, !tbaa !77
  %47 = getelementptr inbounds ptr, ptr %46, i64 1
  %48 = call noundef ptr @_ZSt4copyIPPP12GHOST_IEventS3_ET0_T_S5_S4_(ptr noundef %45, ptr noundef nonnull %47, ptr noundef %44) #9
  %49 = load ptr, ptr %0, align 8, !tbaa !72
  %50 = load i64, ptr %15, align 8, !tbaa !71
  call void @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE17_M_deallocate_mapEPPS1_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %49, i64 noundef %50) #10
  store ptr %38, ptr %0, align 8, !tbaa !72
  store i64 %37, ptr %15, align 8, !tbaa !71
  br label %51

51:                                               ; preds = %28, %30, %33
  %52 = phi ptr [ %25, %28 ], [ %25, %30 ], [ %44, %33 ]
  %53 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  %54 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_E11_M_set_nodeEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef %52) #10
  %55 = getelementptr inbounds ptr, ptr %52, i64 %13
  %56 = getelementptr inbounds ptr, ptr %55, i64 -1
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_E11_M_set_nodeEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull %56) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPPP12GHOST_IEventS3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPP12GHOST_IEventET_S4_(ptr noundef %0) #9
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPP12GHOST_IEventET_S4_(ptr noundef %1) #9
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPPP12GHOST_IEventS3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #9
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPPP12GHOST_IEventS3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPP12GHOST_IEventET_S4_(ptr noundef %0) #9
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPP12GHOST_IEventET_S4_(ptr noundef %1) #9
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPPP12GHOST_IEventS3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #9
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPPP12GHOST_IEventS3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !37
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPP12GHOST_IEventET_S4_(ptr noundef %0) #10
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPP12GHOST_IEventET_S4_(ptr noundef %1) #10
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPP12GHOST_IEventET_S4_(ptr noundef %2) #10
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPPP12GHOST_IEventS3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #9
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPP12GHOST_IEventET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #9
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPPP12GHOST_IEventET_S4_(ptr noundef %0) local_unnamed_addr #1 comdat {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPPP12GHOST_IEventET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPPP12GHOST_IEventS3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPPP12GHOST_IEventS3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPPP12GHOST_IEventET_S4_(ptr noundef %0) local_unnamed_addr #1 comdat {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPPP12GHOST_IEventS3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPP12GHOST_IEventEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPP12GHOST_IEventEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
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
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPPP12GHOST_IEventS3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !37
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPP12GHOST_IEventET_S4_(ptr noundef %0) #10
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPP12GHOST_IEventET_S4_(ptr noundef %1) #10
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPP12GHOST_IEventET_S4_(ptr noundef %2) #10
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPP12GHOST_IEventS3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #9
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPP12GHOST_IEventET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #9
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPP12GHOST_IEventS3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPP12GHOST_IEventS3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPP12GHOST_IEventS3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPP12GHOST_IEventEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPP12GHOST_IEventEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
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
define linkonce_odr dso_local ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIKS3_EEET_SD_SD_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %4, align 8
  call void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS3_SaIS3_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  %5 = call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIKS3_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKP20GHOST_IEventConsumerEENS0_16_Iter_equals_valIT_EERS6_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8
  call void @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKP20GHOST_IEventConsumerEC2ERS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIKS3_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = call noundef i64 @_ZN9__gnu_cxxmiIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  %8 = ashr i64 %7, 2
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %3, %26
  %11 = phi i64 [ %28, %26 ], [ %8, %3 ]
  %12 = load ptr, ptr %4, align 8, !tbaa.struct !60
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKP20GHOST_IEventConsumerEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr %12) #9
  br i1 %13, label %47, label %14

14:                                               ; preds = %10
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  %16 = load ptr, ptr %4, align 8, !tbaa.struct !60
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKP20GHOST_IEventConsumerEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr %16) #9
  br i1 %17, label %47, label %18

18:                                               ; preds = %14
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  %20 = load ptr, ptr %4, align 8, !tbaa.struct !60
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKP20GHOST_IEventConsumerEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr %20) #9
  br i1 %21, label %47, label %22

22:                                               ; preds = %18
  %23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  %24 = load ptr, ptr %4, align 8, !tbaa.struct !60
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKP20GHOST_IEventConsumerEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr %24) #9
  br i1 %25, label %47, label %26

26:                                               ; preds = %22
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  %28 = add nsw i64 %11, -1
  %29 = icmp sgt i64 %11, 1
  br i1 %29, label %10, label %30, !llvm.loop !78

30:                                               ; preds = %26, %3
  %31 = call noundef i64 @_ZN9__gnu_cxxmiIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  switch i64 %31, label %47 [
    i64 3, label %32
    i64 2, label %37
    i64 1, label %42
  ]

32:                                               ; preds = %30
  %33 = load ptr, ptr %4, align 8, !tbaa.struct !60
  %34 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKP20GHOST_IEventConsumerEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr %33) #9
  br i1 %34, label %47, label %35

35:                                               ; preds = %32
  %36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  br label %37

37:                                               ; preds = %30, %35
  %38 = load ptr, ptr %4, align 8, !tbaa.struct !60
  %39 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKP20GHOST_IEventConsumerEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr %38) #9
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  %41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  br label %42

42:                                               ; preds = %30, %40
  %43 = load ptr, ptr %4, align 8, !tbaa.struct !60
  %44 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKP20GHOST_IEventConsumerEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr %43) #9
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  br label %47

47:                                               ; preds = %22, %18, %14, %10, %30, %45, %42, %37, %32
  %48 = phi ptr [ %4, %32 ], [ %4, %37 ], [ %4, %42 ], [ %5, %45 ], [ %5, %30 ], [ %4, %10 ], [ %4, %14 ], [ %4, %18 ], [ %4, %22 ]
  %49 = load ptr, ptr %48, align 8
  ret ptr %49
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS3_SaIS3_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  %4 = load ptr, ptr %3, align 8, !tbaa !37
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKP20GHOST_IEventConsumerEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) local_unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %1, ptr %3, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  %5 = load ptr, ptr %4, align 8, !tbaa !37
  %6 = load ptr, ptr %0, align 8, !tbaa !79
  %7 = load ptr, ptr %6, align 8, !tbaa !37
  %8 = icmp eq ptr %5, %7
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKP20GHOST_IEventConsumerEC2ERS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
  store ptr %1, ptr %0, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIP20GHOST_IEventConsumerEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIP20GHOST_IEventConsumerE9constructIS1_JRKS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %1, ptr %4, align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorIP20GHOST_IEventConsumerSaIS1_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull @.str.1) #9
  %7 = load ptr, ptr %0, align 8, !tbaa !46
  %8 = getelementptr inbounds %"struct.std::_Vector_base<GHOST_IEventConsumer *, std::allocator<GHOST_IEventConsumer *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %10 = tail call ptr @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  store ptr %10, ptr %5, align 8
  %11 = call noundef i64 @_ZN9__gnu_cxxmiIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  %12 = call noundef ptr @_ZNSt12_Vector_baseIP20GHOST_IEventConsumerSaIS1_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #9
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  call void @_ZNSt16allocator_traitsISaIP20GHOST_IEventConsumerEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  %15 = load ptr, ptr %14, align 8, !tbaa !37
  %16 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIP20GHOST_IEventConsumerSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  %17 = call noundef ptr @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %7, ptr noundef %15, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %16) #10
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  %20 = load ptr, ptr %19, align 8, !tbaa !37
  %21 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIP20GHOST_IEventConsumerSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  %22 = call noundef ptr @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %20, ptr noundef %9, ptr noundef nonnull %18, ptr noundef nonnull align 1 dereferenceable(1) %21) #10
  %23 = getelementptr inbounds %"struct.std::_Vector_base<GHOST_IEventConsumer *, std::allocator<GHOST_IEventConsumer *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !63
  %25 = ptrtoint ptr %24 to i64
  %26 = ptrtoint ptr %7 to i64
  %27 = sub i64 %25, %26
  %28 = ashr exact i64 %27, 3
  call void @_ZNSt12_Vector_baseIP20GHOST_IEventConsumerSaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %7, i64 noundef %28) #9
  store ptr %12, ptr %0, align 8, !tbaa !46
  store ptr %22, ptr %8, align 8, !tbaa !48
  %29 = getelementptr inbounds ptr, ptr %12, i64 %6
  store ptr %29, ptr %23, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP20GHOST_IEventConsumerE9constructIS1_JRKS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
  %4 = load ptr, ptr %2, align 8, !tbaa !37
  store ptr %4, ptr %1, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIP20GHOST_IEventConsumerSaIS1_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !70
  %6 = tail call noundef i64 @_ZNKSt6vectorIP20GHOST_IEventConsumerSaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  %7 = tail call noundef i64 @_ZNKSt6vectorIP20GHOST_IEventConsumerSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #15
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIP20GHOST_IEventConsumerSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %13 = tail call noundef i64 @_ZNKSt6vectorIP20GHOST_IEventConsumerSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  store i64 %13, ptr %5, align 8, !tbaa !70
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  %15 = load i64, ptr %14, align 8, !tbaa !70
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  %17 = call noundef i64 @_ZNKSt6vectorIP20GHOST_IEventConsumerSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIP20GHOST_IEventConsumerSaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIP20GHOST_IEventConsumerSaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIP20GHOST_IEventConsumerSaIS1_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIP20GHOST_IEventConsumerEE8allocateERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #9
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat align 2 {
  %5 = tail call noundef ptr @_ZSt12__relocate_aIPP20GHOST_IEventConsumerS2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #10
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIP20GHOST_IEventConsumerSaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIP20GHOST_IEventConsumerSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  %3 = tail call noundef i64 @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE11_S_max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %2) #10
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIP20GHOST_IEventConsumerSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<GHOST_IEventConsumer *, std::allocator<GHOST_IEventConsumer *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = load ptr, ptr %0, align 8, !tbaa !46
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIP20GHOST_IEventConsumerSaIS1_EE11_S_max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  store i64 1152921504606846975, ptr %2, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIP20GHOST_IEventConsumerEE8max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  store i64 %4, ptr %3, align 8, !tbaa !70
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  %6 = load i64, ptr %5, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIP20GHOST_IEventConsumerSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIP20GHOST_IEventConsumerEE8max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIP20GHOST_IEventConsumerE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIP20GHOST_IEventConsumerE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIP20GHOST_IEventConsumerE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIP20GHOST_IEventConsumerE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 {
  ret i64 1152921504606846975
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIP20GHOST_IEventConsumerEE8allocateERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIP20GHOST_IEventConsumerE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIP20GHOST_IEventConsumerE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIP20GHOST_IEventConsumerE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !74

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 2305843009213693951
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #15
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #15
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #16
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIPP20GHOST_IEventConsumerS2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat {
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPP20GHOST_IEventConsumerET_S3_(ptr noundef %0) #10
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPP20GHOST_IEventConsumerET_S3_(ptr noundef %1) #10
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPP20GHOST_IEventConsumerET_S3_(ptr noundef %2) #10
  %8 = tail call noundef ptr @_ZSt14__relocate_a_1IP20GHOST_IEventConsumerS1_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS3_E4typeES4_S4_S4_RSaIT0_E(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %3) #10
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IP20GHOST_IEventConsumerS1_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS3_E4typeES4_S4_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat {
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %7, i1 false)
  br label %10

10:                                               ; preds = %9, %4
  %11 = getelementptr inbounds i8, ptr %2, i64 %7
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPP20GHOST_IEventConsumerET_S3_(ptr noundef %0) local_unnamed_addr #1 comdat {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE8_M_eraseESt15_Deque_iteratorIS1_RS1_PS1_E(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = alloca %"struct.std::_Deque_iterator", align 8
  %5 = alloca %"struct.std::_Deque_iterator", align 8
  %6 = alloca %"struct.std::_Deque_iterator", align 8
  %7 = alloca %"struct.std::_Deque_iterator", align 8
  %8 = alloca %"struct.std::_Deque_iterator", align 8
  %9 = alloca %"struct.std::_Deque_iterator", align 8
  %10 = alloca %"struct.std::_Deque_iterator", align 8
  %11 = alloca %"struct.std::_Deque_iterator", align 8
  %12 = alloca %"struct.std::_Deque_iterator", align 8
  %13 = alloca %"struct.std::_Deque_iterator", align 8
  %14 = alloca %"struct.std::_Deque_iterator", align 8
  %15 = alloca %"struct.std::_Deque_iterator", align 8
  %16 = alloca %"struct.std::_Deque_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #11
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %17 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EppEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(80) %1) #10
  %18 = call noundef i64 @_ZStmiRKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_ES6_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  %19 = call noundef i64 @_ZNKSt5dequeIP12GHOST_IEventSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #10
  %20 = lshr i64 %19, 1
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #11
  call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %6, ptr noundef nonnull align 8 dereferenceable(80) %1) #10
  %23 = call noundef zeroext i1 @_ZStneRKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_ES6_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %6) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #11
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %7, ptr noundef nonnull align 8 dereferenceable(80) %1) #10
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #11
  call void @_ZSt13move_backwardISt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_ES5_ET0_T_S7_S6_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %10, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #11
  br label %25

25:                                               ; preds = %24, %22
  call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #10
  br label %30

26:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #11
  call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %11, ptr noundef nonnull align 8 dereferenceable(80) %1) #10
  %27 = call noundef zeroext i1 @_ZStneRKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_ES6_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %11) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #11
  br i1 %27, label %28, label %29

28:                                               ; preds = %26
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %13, ptr noundef nonnull align 8 dereferenceable(80) %1) #10
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #11
  call void @_ZSt4moveISt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_ES5_ET0_T_S7_S6_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %15, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #11
  br label %29

29:                                               ; preds = %28, %26
  call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #10
  br label %30

30:                                               ; preds = %29, %25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #11
  call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %16, ptr noundef nonnull align 8 dereferenceable(80) %1) #10
  call void @_ZStplRKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_El(ptr dead_on_unwind writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %18) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNKSt15_Deque_iteratorIP12GHOST_IEventRKS1_PS2_E13_M_const_castEv(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 {
  %3 = load ptr, ptr %1, align 8, !tbaa !81
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator.4", ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !83
  tail call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ES3_PS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %3, ptr noundef %5) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt13move_backwardISt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_ES5_ET0_T_S7_S6_(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
  %5 = alloca %"struct.std::_Deque_iterator", align 8
  %6 = alloca %"struct.std::_Deque_iterator", align 8
  %7 = alloca %"struct.std::_Deque_iterator", align 8
  %8 = alloca %"struct.std::_Deque_iterator", align 8
  %9 = alloca %"struct.std::_Deque_iterator", align 8
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %1) #10
  call void @_ZSt12__miter_baseISt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_EET_S6_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %5, ptr noundef nonnull %6) #9
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  call void @_ZSt12__miter_baseISt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_EET_S6_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %7, ptr noundef nonnull %8) #9
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @_ZSt22__copy_move_backward_aILb1ESt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_ES5_ET1_T0_S7_S6_(ptr dead_on_unwind writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %9) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4moveISt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_ES5_ET0_T_S7_S6_(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
  %5 = alloca %"struct.std::_Deque_iterator", align 8
  %6 = alloca %"struct.std::_Deque_iterator", align 8
  %7 = alloca %"struct.std::_Deque_iterator", align 8
  %8 = alloca %"struct.std::_Deque_iterator", align 8
  %9 = alloca %"struct.std::_Deque_iterator", align 8
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %1) #10
  call void @_ZSt12__miter_baseISt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_EET_S6_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %5, ptr noundef nonnull %6) #9
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  call void @_ZSt12__miter_baseISt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_EET_S6_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %7, ptr noundef nonnull %8) #9
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @_ZSt13__copy_move_aILb1ESt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_ES5_ET1_T0_S7_S6_(ptr dead_on_unwind writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %9) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZStplRKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_El(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2) local_unnamed_addr #1 comdat {
  tail call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #10
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EpLEl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt22__copy_move_backward_aILb1ESt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_ES5_ET1_T0_S7_S6_(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
  %5 = alloca %"struct.std::_Deque_iterator", align 8
  %6 = alloca %"struct.std::_Deque_iterator", align 8
  %7 = alloca %"struct.std::_Deque_iterator", align 8
  %8 = alloca %"struct.std::_Deque_iterator", align 8
  %9 = alloca %"struct.std::_Deque_iterator", align 8
  %10 = alloca %"struct.std::_Deque_iterator", align 8
  %11 = alloca %"struct.std::_Deque_iterator", align 8
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %1) #10
  call void @_ZSt12__niter_baseISt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_EET_S6_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %6, ptr noundef nonnull %7) #10
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  call void @_ZSt12__niter_baseISt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_EET_S6_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %8, ptr noundef nonnull %9) #10
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @_ZSt12__niter_baseISt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_EET_S6_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %10, ptr noundef nonnull %11) #10
  call void @_ZSt23__copy_move_backward_a1ILb1EP12GHOST_IEventRS1_PS1_S1_ESt15_Deque_iteratorIT3_RS5_PS5_ES4_IT0_T1_T2_ESC_S8_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %5, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %10) #9
  call void @_ZSt12__niter_wrapISt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_EET_RKS6_S6_(ptr dead_on_unwind writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %5) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt12__miter_baseISt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_EET_S6_(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef %1) local_unnamed_addr #1 comdat {
  tail call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt12__niter_wrapISt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_EET_RKS6_S6_(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #1 comdat {
  tail call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt23__copy_move_backward_a1ILb1EP12GHOST_IEventRS1_PS1_S1_ESt15_Deque_iteratorIT3_RS5_PS5_ES4_IT0_T1_T2_ESC_S8_(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
  %5 = alloca %"struct.std::_Deque_iterator", align 8
  %6 = alloca %"struct.std::_Deque_iterator", align 8
  %7 = alloca %"struct.std::_Deque_iterator", align 8
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %1) #10
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @_ZSt24__copy_move_backward_ditILb1EP12GHOST_IEventRS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_(ptr dead_on_unwind writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt12__niter_baseISt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_EET_S6_(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef %1) local_unnamed_addr #1 comdat {
  tail call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt24__copy_move_backward_ditILb1EP12GHOST_IEventRS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
  %5 = alloca %"struct.std::_Deque_iterator", align 8
  %6 = alloca %"struct.std::_Deque_iterator", align 8
  %7 = alloca %"struct.std::_Deque_iterator", align 8
  %8 = alloca %"struct.std::_Deque_iterator", align 8
  %9 = alloca %"struct.std::_Deque_iterator", align 8
  %10 = alloca %"struct.std::_Deque_iterator", align 8
  %11 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %36, label %16

16:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  %19 = load ptr, ptr %2, align 8, !tbaa !51
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @_ZSt23__copy_move_backward_a1ILb1EPP12GHOST_IEventS1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %5, ptr noundef %18, ptr noundef %19, ptr noundef nonnull %6) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  %20 = load ptr, ptr %13, align 8, !tbaa !54
  %21 = getelementptr inbounds ptr, ptr %20, i64 -1
  %22 = load ptr, ptr %11, align 8, !tbaa !54
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %28, %16
  %25 = load ptr, ptr %1, align 8, !tbaa !51
  %26 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !53
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @_ZSt23__copy_move_backward_a1ILb1EPP12GHOST_IEventS1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_(ptr dead_on_unwind writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef %25, ptr noundef %27, ptr noundef nonnull %9) #9
  br label %39

28:                                               ; preds = %16, %28
  %29 = phi ptr [ %33, %28 ], [ %21, %16 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #11
  %30 = load ptr, ptr %29, align 8, !tbaa !37
  %31 = call noundef i64 @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_E14_S_buffer_sizeEv() #10
  %32 = getelementptr inbounds ptr, ptr %30, i64 %31
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @_ZSt23__copy_move_backward_a1ILb1EPP12GHOST_IEventS1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %7, ptr noundef %30, ptr noundef %32, ptr noundef nonnull %8) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #11
  %33 = getelementptr inbounds ptr, ptr %29, i64 -1
  %34 = load ptr, ptr %11, align 8, !tbaa !54
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %24, label %28, !llvm.loop !84

36:                                               ; preds = %4
  %37 = load ptr, ptr %1, align 8, !tbaa !51
  %38 = load ptr, ptr %2, align 8, !tbaa !51
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @_ZSt23__copy_move_backward_a1ILb1EPP12GHOST_IEventS1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_(ptr dead_on_unwind writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef %37, ptr noundef %38, ptr noundef nonnull %10) #9
  br label %39

39:                                               ; preds = %36, %24
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt23__copy_move_backward_a1ILb1EPP12GHOST_IEventS1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %7 = ptrtoint ptr %2 to i64
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  store i64 %10, ptr %5, align 8, !tbaa !70
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %4
  %13 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 1
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 3
  br label %15

15:                                               ; preds = %12, %30
  %16 = phi ptr [ %2, %12 ], [ %35, %30 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %17 = load ptr, ptr %3, align 8, !tbaa !51
  %18 = load ptr, ptr %13, align 8, !tbaa !55
  %19 = ptrtoint ptr %17 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 3
  store i64 %22, ptr %6, align 8, !tbaa !70
  %23 = icmp eq ptr %17, %18
  br i1 %23, label %24, label %30

24:                                               ; preds = %15
  %25 = call noundef i64 @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_E14_S_buffer_sizeEv() #10
  store i64 %25, ptr %6, align 8, !tbaa !70
  %26 = load ptr, ptr %14, align 8, !tbaa !54
  %27 = getelementptr inbounds ptr, ptr %26, i64 -1
  %28 = load ptr, ptr %27, align 8, !tbaa !37
  %29 = getelementptr inbounds ptr, ptr %28, i64 %25
  br label %30

30:                                               ; preds = %24, %15
  %31 = phi ptr [ %17, %15 ], [ %29, %24 ]
  %32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIlERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  %33 = load i64, ptr %32, align 8, !tbaa !70
  %34 = sub i64 0, %33
  %35 = getelementptr inbounds ptr, ptr %16, i64 %34
  %36 = call noundef ptr @_ZSt23__copy_move_backward_a1ILb1EPP12GHOST_IEventS2_ET1_T0_S4_S3_(ptr noundef %35, ptr noundef %16, ptr noundef %31) #9
  %37 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EmIEl(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %33) #10
  %38 = load i64, ptr %5, align 8, !tbaa !70
  %39 = sub nsw i64 %38, %33
  store i64 %39, ptr %5, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %15, label %41, !llvm.loop !85

41:                                               ; preds = %30, %4
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIlERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat {
  %3 = load i64, ptr %1, align 8, !tbaa !70
  %4 = load i64, ptr %0, align 8, !tbaa !70
  %5 = icmp slt i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb1EPP12GHOST_IEventS2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPP12GHOST_IEventS2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EmIEl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
  %3 = sub nsw i64 0, %1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EpLEl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPP12GHOST_IEventS2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIP12GHOST_IEventEEPT_PKS5_S8_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIP12GHOST_IEventEEPT_PKS5_S8_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
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
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EpLEl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !51
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = add nsw i64 %9, %1
  %11 = icmp sgt i64 %10, -1
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = tail call noundef i64 @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_E14_S_buffer_sizeEv() #10
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load ptr, ptr %0, align 8, !tbaa !51
  %17 = getelementptr inbounds ptr, ptr %16, i64 %1
  br label %38

18:                                               ; preds = %12
  %19 = icmp eq i64 %10, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  %21 = tail call noundef i64 @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_E14_S_buffer_sizeEv() #10
  %22 = sdiv i64 %10, %21
  br label %28

23:                                               ; preds = %2, %18
  %24 = xor i64 %10, -1
  %25 = tail call noundef i64 @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_E14_S_buffer_sizeEv() #10
  %26 = udiv i64 %24, %25
  %27 = xor i64 %26, -1
  br label %28

28:                                               ; preds = %23, %20
  %29 = phi i64 [ %22, %20 ], [ %27, %23 ]
  %30 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !54
  %32 = getelementptr inbounds ptr, ptr %31, i64 %29
  tail call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_E11_M_set_nodeEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %32) #10
  %33 = load ptr, ptr %4, align 8, !tbaa !55
  %34 = tail call noundef i64 @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_E14_S_buffer_sizeEv() #10
  %35 = mul nsw i64 %34, %29
  %36 = sub nsw i64 %10, %35
  %37 = getelementptr inbounds ptr, ptr %33, i64 %36
  br label %38

38:                                               ; preds = %28, %15
  %39 = phi ptr [ %37, %28 ], [ %17, %15 ]
  store ptr %39, ptr %0, align 8, !tbaa !51
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt13__copy_move_aILb1ESt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_ES5_ET1_T0_S7_S6_(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
  %5 = alloca %"struct.std::_Deque_iterator", align 8
  %6 = alloca %"struct.std::_Deque_iterator", align 8
  %7 = alloca %"struct.std::_Deque_iterator", align 8
  %8 = alloca %"struct.std::_Deque_iterator", align 8
  %9 = alloca %"struct.std::_Deque_iterator", align 8
  %10 = alloca %"struct.std::_Deque_iterator", align 8
  %11 = alloca %"struct.std::_Deque_iterator", align 8
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %1) #10
  call void @_ZSt12__niter_baseISt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_EET_S6_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %6, ptr noundef nonnull %7) #10
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  call void @_ZSt12__niter_baseISt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_EET_S6_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %8, ptr noundef nonnull %9) #10
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @_ZSt12__niter_baseISt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_EET_S6_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %10, ptr noundef nonnull %11) #10
  call void @_ZSt14__copy_move_a1ILb1EP12GHOST_IEventRS1_PS1_S1_ESt15_Deque_iteratorIT3_RS5_PS5_ES4_IT0_T1_T2_ESC_S8_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %5, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %10) #9
  call void @_ZSt12__niter_wrapISt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_EET_RKS6_S6_(ptr dead_on_unwind writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %5) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt14__copy_move_a1ILb1EP12GHOST_IEventRS1_PS1_S1_ESt15_Deque_iteratorIT3_RS5_PS5_ES4_IT0_T1_T2_ESC_S8_(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
  %5 = alloca %"struct.std::_Deque_iterator", align 8
  %6 = alloca %"struct.std::_Deque_iterator", align 8
  %7 = alloca %"struct.std::_Deque_iterator", align 8
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %1) #10
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @_ZSt15__copy_move_ditILb1EP12GHOST_IEventRS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_(ptr dead_on_unwind writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt15__copy_move_ditILb1EP12GHOST_IEventRS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
  %5 = alloca %"struct.std::_Deque_iterator", align 8
  %6 = alloca %"struct.std::_Deque_iterator", align 8
  %7 = alloca %"struct.std::_Deque_iterator", align 8
  %8 = alloca %"struct.std::_Deque_iterator", align 8
  %9 = alloca %"struct.std::_Deque_iterator", align 8
  %10 = alloca %"struct.std::_Deque_iterator", align 8
  %11 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %34, label %16

16:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  %17 = load ptr, ptr %1, align 8, !tbaa !51
  %18 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @_ZSt14__copy_move_a1ILb1EPP12GHOST_IEventS1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %5, ptr noundef %17, ptr noundef %19, ptr noundef nonnull %6) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  %20 = load ptr, ptr %11, align 8, !tbaa !54
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %13, align 8, !tbaa !54
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %26, %16
  %25 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 1
  br label %34

26:                                               ; preds = %16, %26
  %27 = phi ptr [ %31, %26 ], [ %21, %16 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #11
  %28 = load ptr, ptr %27, align 8, !tbaa !37
  %29 = call noundef i64 @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_E14_S_buffer_sizeEv() #10
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @_ZSt14__copy_move_a1ILb1EPP12GHOST_IEventS1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %7, ptr noundef %28, ptr noundef %30, ptr noundef nonnull %8) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #11
  %31 = getelementptr inbounds ptr, ptr %27, i64 1
  %32 = load ptr, ptr %13, align 8, !tbaa !54
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %24, label %26, !llvm.loop !86

34:                                               ; preds = %4, %24
  %35 = phi ptr [ %25, %24 ], [ %1, %4 ]
  %36 = phi ptr [ %9, %24 ], [ %10, %4 ]
  %37 = load ptr, ptr %35, align 8, !tbaa !37
  %38 = load ptr, ptr %2, align 8, !tbaa !51
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @_ZSt14__copy_move_a1ILb1EPP12GHOST_IEventS1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_(ptr dead_on_unwind writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef %37, ptr noundef %38, ptr noundef nonnull %36) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt14__copy_move_a1ILb1EPP12GHOST_IEventS1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %7 = ptrtoint ptr %2 to i64
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  store i64 %10, ptr %5, align 8, !tbaa !70
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %4
  %13 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 2
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi ptr [ %1, %12 ], [ %24, %14 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %16 = load ptr, ptr %13, align 8, !tbaa !53
  %17 = load ptr, ptr %3, align 8, !tbaa !51
  %18 = ptrtoint ptr %16 to i64
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %18, %19
  %21 = ashr exact i64 %20, 3
  store i64 %21, ptr %6, align 8, !tbaa !70
  %22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIlERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  %23 = load i64, ptr %22, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  %24 = getelementptr inbounds ptr, ptr %15, i64 %23
  %25 = load ptr, ptr %3, align 8, !tbaa !51
  %26 = call noundef ptr @_ZSt14__copy_move_a1ILb1EPP12GHOST_IEventS2_ET1_T0_S4_S3_(ptr noundef %15, ptr noundef %24, ptr noundef %25) #9
  %27 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EpLEl(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %23) #10
  %28 = load i64, ptr %5, align 8, !tbaa !70
  %29 = sub nsw i64 %28, %23
  store i64 %29, ptr %5, align 8, !tbaa !70
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %14, label %31, !llvm.loop !87

31:                                               ; preds = %14, %4
  call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb1EPP12GHOST_IEventS2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb1EPP12GHOST_IEventS2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb1EPP12GHOST_IEventS2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP12GHOST_IEventEEPT_PKS5_S8_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP12GHOST_IEventEEPT_PKS5_S8_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EC2ES3_PS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 {
  store ptr %1, ptr %0, align 8, !tbaa !51
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %2, align 8, !tbaa !37
  store ptr %5, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 2
  %7 = tail call noundef i64 @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_E14_S_buffer_sizeEv() #10
  %8 = getelementptr inbounds ptr, ptr %5, i64 %7
  store ptr %8, ptr %6, align 8, !tbaa !53
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 3
  store ptr %2, ptr %9, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIP12GHOST_IEventEE7destroyIS1_EEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIP12GHOST_IEventE7destroyIS1_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE15_M_pop_back_auxEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %3 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  tail call void @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE18_M_deallocate_nodeEPS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %4) #10
  %5 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = getelementptr inbounds ptr, ptr %6, i64 -1
  tail call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_E11_M_set_nodeEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %7) #10
  %8 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  %10 = getelementptr inbounds ptr, ptr %9, i64 -1
  store ptr %10, ptr %2, align 8, !tbaa !66
  %11 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #10
  %12 = load ptr, ptr %2, align 8, !tbaa !66
  tail call void @_ZNSt16allocator_traitsISaIP12GHOST_IEventEE7destroyIS1_EEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef %12) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP12GHOST_IEventE7destroyIS1_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EixEl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
  %3 = alloca %"struct.std::_Deque_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #11
  call void @_ZStplRKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_El(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #10
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_EdeEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE16_M_pop_front_auxEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #10
  %3 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  tail call void @_ZNSt16allocator_traitsISaIP12GHOST_IEventEE7destroyIS1_EEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %4) #10
  %5 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  tail call void @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE18_M_deallocate_nodeEPS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %6) #10
  %7 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !76
  %9 = getelementptr inbounds ptr, ptr %8, i64 1
  tail call void @_ZNSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_E11_M_set_nodeEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %9) #10
  %10 = load ptr, ptr %5, align 8, !tbaa !59
  store ptr %10, ptr %3, align 8, !tbaa !56
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { builtin nounwind optsize }
attributes #14 = { noreturn }
attributes #15 = { noreturn optsize }
attributes #16 = { builtin optsize allocsize(0) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"vtable pointer", !36, i64 0}
!36 = !{!"Simple C++ TBAA"}
!37 = !{!38, !38, i64 0}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !36, i64 0}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!43, !38, i64 0}
!43 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEE", !38, i64 0}
!44 = !{!45, !38, i64 0}
!45 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKP20GHOST_IEventConsumerSt6vectorIS2_SaIS2_EEEE", !38, i64 0}
!46 = !{!47, !38, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIP20GHOST_IEventConsumerSaIS1_EE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!48 = !{!47, !38, i64 8}
!49 = !{i64 0, i64 8, !37, i64 8, i64 8, !37, i64 16, i64 8, !37, i64 24, i64 8, !37}
!50 = distinct !{!50, !41}
!51 = !{!52, !38, i64 0}
!52 = !{!"_ZTSSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_E", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24}
!53 = !{!52, !38, i64 16}
!54 = !{!52, !38, i64 24}
!55 = !{!52, !38, i64 8}
!56 = !{!57, !38, i64 16}
!57 = !{!"_ZTSNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE16_Deque_impl_dataE", !38, i64 0, !58, i64 8, !52, i64 16, !52, i64 48}
!58 = !{!"long", !39, i64 0}
!59 = !{!57, !38, i64 24}
!60 = !{i64 0, i64 8, !37}
!61 = distinct !{!61, !41}
!62 = distinct !{!62, !41}
!63 = !{!47, !38, i64 16}
!64 = distinct !{!64, !41}
!65 = distinct !{!65, !41}
!66 = !{!57, !38, i64 48}
!67 = !{!57, !38, i64 56}
!68 = distinct !{!68, !41}
!69 = !{!57, !38, i64 32}
!70 = !{!58, !58, i64 0}
!71 = !{!57, !58, i64 8}
!72 = !{!57, !38, i64 0}
!73 = distinct !{!73, !41}
!74 = !{!"branch_weights", i32 1, i32 2000}
!75 = distinct !{!75, !41}
!76 = !{!57, !38, i64 40}
!77 = !{!57, !38, i64 72}
!78 = distinct !{!78, !41}
!79 = !{!80, !38, i64 0}
!80 = !{!"_ZTSN9__gnu_cxx5__ops16_Iter_equals_valIKP20GHOST_IEventConsumerEE", !38, i64 0}
!81 = !{!82, !38, i64 0}
!82 = !{!"_ZTSSt15_Deque_iteratorIP12GHOST_IEventRKS1_PS2_E", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24}
!83 = !{!82, !38, i64 24}
!84 = distinct !{!84, !41}
!85 = distinct !{!85, !41}
!86 = distinct !{!86, !41}
!87 = distinct !{!87, !41}
!88 = !{!57, !38, i64 64}
