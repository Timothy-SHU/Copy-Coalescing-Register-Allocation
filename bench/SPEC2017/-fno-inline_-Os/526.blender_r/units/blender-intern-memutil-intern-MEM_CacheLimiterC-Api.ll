; ModuleID = 'blender/intern/memutil/intern/MEM_CacheLimiterC-Api.cpp'
source_filename = "blender/intern/memutil/intern/MEM_CacheLimiterC-Api.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::_List_iterator" = type { ptr }
%class.MEM_CacheLimiterCClass = type { ptr, %class.MEM_CacheLimiter, %"class.std::__cxx11::list.0" }
%class.MEM_CacheLimiter = type { %"class.std::__cxx11::list", ptr, ptr, ptr }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<MEM_CacheLimiterHandle<MEM_CacheLimiterHandleCClass> *, MEM_Allocator<MEM_CacheLimiterHandle<MEM_CacheLimiterHandleCClass> *>>::_List_impl" }
%"struct.std::__cxx11::_List_base<MEM_CacheLimiterHandle<MEM_CacheLimiterHandleCClass> *, MEM_Allocator<MEM_CacheLimiterHandle<MEM_CacheLimiterHandleCClass> *>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { ptr, ptr }
%"class.std::__cxx11::list.0" = type { %"class.std::__cxx11::_List_base.1" }
%"class.std::__cxx11::_List_base.1" = type { %"struct.std::__cxx11::_List_base<MEM_CacheLimiterHandleCClass *, MEM_Allocator<MEM_CacheLimiterHandleCClass *>>::_List_impl" }
%"struct.std::__cxx11::_List_base<MEM_CacheLimiterHandleCClass *, MEM_Allocator<MEM_CacheLimiterHandleCClass *>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%class.MEM_CacheLimiterHandleCClass = type { ptr, ptr, %"struct.std::_List_iterator" }
%"struct.std::_List_iterator.4" = type { ptr }
%class.MEM_CacheLimiterHandle = type { ptr, i32, %"struct.std::_List_iterator.4", ptr }
%"struct.std::_List_const_iterator" = type { ptr }
%"struct.std::_List_node" = type { %"struct.std::__detail::_List_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [8 x i8] }
%"struct.std::_List_node.5" = type { %"struct.std::__detail::_List_node_base", %"struct.__gnu_cxx::__aligned_membuf.6" }
%"struct.__gnu_cxx::__aligned_membuf.6" = type { [8 x i8] }
%"struct.std::__allocated_ptr" = type { ptr, ptr }
%"struct.std::__allocated_ptr.7" = type { ptr, ptr }
%"struct.std::_List_const_iterator.8" = type { ptr }

$_ZNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE9push_backEOS2_ = comdat any

$_ZN28MEM_CacheLimiterHandleCClassC2EPvP22MEM_CacheLimiterCClass = comdat any

$_ZNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE3endEv = comdat any

$_ZNSt14_List_iteratorIP28MEM_CacheLimiterHandleCClassEmmEv = comdat any

$_ZNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE4backEv = comdat any

$_ZN28MEM_CacheLimiterHandleCClass8set_iterESt14_List_iteratorIPS_E = comdat any

$_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE6insertEPS0_ = comdat any

$_ZNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE5eraseESt20_List_const_iteratorIS2_E = comdat any

$_ZNSt20_List_const_iteratorIP28MEM_CacheLimiterHandleCClassEC2ERKSt14_List_iteratorIS1_E = comdat any

$__clang_call_terminate = comdat any

$_ZNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE5beginEv = comdat any

$_ZStneRKSt14_List_iteratorIP28MEM_CacheLimiterHandleCClassES4_ = comdat any

$_ZNKSt14_List_iteratorIP28MEM_CacheLimiterHandleCClassEdeEv = comdat any

$_ZN28MEM_CacheLimiterHandleCClass8set_dataEPv = comdat any

$_ZNSt14_List_iteratorIP28MEM_CacheLimiterHandleCClassEppEi = comdat any

$_ZNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EED2Ev = comdat any

$_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassED2Ev = comdat any

$_ZN22MEM_CacheLimiterCClassC2EPFvPvEPFmS0_E = comdat any

$_ZN22MEM_CacheLimiterCClass9get_cacheEv = comdat any

$_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE14enforce_limitsEv = comdat any

$_ZN22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE8unmanageEv = comdat any

$_ZN22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE5touchEv = comdat any

$_ZN22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE3refEv = comdat any

$_ZN22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE5unrefEv = comdat any

$_ZNK22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE12get_refcountEv = comdat any

$_ZN22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE3getEv = comdat any

$_ZNK28MEM_CacheLimiterHandleCClass8get_dataEv = comdat any

$_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE22set_item_priority_funcEPFiPviE = comdat any

$_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE25set_item_destroyable_funcEPFbPvE = comdat any

$_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE17get_memory_in_useEv = comdat any

$_ZNSt14_List_iteratorIP28MEM_CacheLimiterHandleCClassEC2Ev = comdat any

$_ZNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE8_M_clearEv = comdat any

$_ZN13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEED2Ev = comdat any

$_ZNSt10_List_nodeIP28MEM_CacheLimiterHandleCClassE9_M_valptrEv = comdat any

$_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEE7destroyIS3_EEvRS5_PT_ = comdat any

$_ZNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE21_M_get_Node_allocatorEv = comdat any

$_ZNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE11_M_put_nodeEPSt10_List_nodeIS2_E = comdat any

$_ZN9__gnu_cxx16__aligned_membufIP28MEM_CacheLimiterHandleCClassE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufIP28MEM_CacheLimiterHandleCClassE7_M_addrEv = comdat any

$_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEE10_S_destroyIS5_S3_EEvRT_PT0_z = comdat any

$_ZSt8_DestroyIP28MEM_CacheLimiterHandleCClassEvPT_ = comdat any

$_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEE10deallocateERS5_PS4_m = comdat any

$_ZN13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEE10deallocateEPS3_m = comdat any

$_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassEC2EPFmPvE = comdat any

$_ZNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EEC2Ev = comdat any

$_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EEC2Ev = comdat any

$_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EEC2Ev = comdat any

$_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE10_List_implC2Ev = comdat any

$_ZN13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEC2Ev = comdat any

$_ZNSt8__detail17_List_node_headerC2Ev = comdat any

$_ZNSt8__detail17_List_node_header7_M_initEv = comdat any

$_ZNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EEC2Ev = comdat any

$_ZNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE10_List_implC2Ev = comdat any

$_ZN13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEC2Ev = comdat any

$_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE5beginEv = comdat any

$_ZStneRKSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEES6_ = comdat any

$_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE3endEv = comdat any

$_ZNKSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEdeEv = comdat any

$_ZNSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEppEi = comdat any

$_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EED2Ev = comdat any

$_ZNSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEC2EPNSt8__detail15_List_node_baseE = comdat any

$_ZNSt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEE9_M_valptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEE7_M_addrEv = comdat any

$_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE8_M_clearEv = comdat any

$_ZN13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEED2Ev = comdat any

$_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEE7destroyIS5_EEvRS7_PT_ = comdat any

$_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE21_M_get_Node_allocatorEv = comdat any

$_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE11_M_put_nodeEPSt10_List_nodeIS4_E = comdat any

$_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEE10_S_destroyIS7_S5_EEvRT_PT0_z = comdat any

$_ZSt8_DestroyIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEvPT_ = comdat any

$_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEE10deallocateERS7_PS6_m = comdat any

$_ZN13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEE10deallocateEPS5_m = comdat any

$_ZNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE9_M_insertIJS2_EEEvSt14_List_iteratorIS2_EDpOT_ = comdat any

$_ZNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE14_M_create_nodeIJS2_EEEPSt10_List_nodeIS2_EDpOT_ = comdat any

$_ZNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE11_M_inc_sizeEm = comdat any

$_ZNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE11_M_get_nodeEv = comdat any

$_ZNSt15__allocated_ptrI13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEEC2ERS5_PS4_ = comdat any

$_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEE9constructIS3_JS3_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS5_PT_DpOS8_ = comdat any

$_ZNSt15__allocated_ptrI13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEEaSEDn = comdat any

$_ZNSt15__allocated_ptrI13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEED2Ev = comdat any

$_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEE8allocateERS5_m = comdat any

$_ZN13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEE8allocateEmPKv = comdat any

$_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEE12_S_constructIS3_JS3_EEENSt9enable_ifIXsr6__and_ISt6__and_IJSt6__not_INS6_18__construct_helperIT_JDpT0_EE4typeEESt16is_constructibleISC_JSE_EEEEEE5valueEvE4typeERS5_PSC_DpOSD_ = comdat any

$_ZNSt14_List_iteratorIP28MEM_CacheLimiterHandleCClassEC2EPNSt8__detail15_List_node_baseE = comdat any

$_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE9push_backEOS4_ = comdat any

$_ZN22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEC2EPS0_P16MEM_CacheLimiterIS0_E = comdat any

$_ZNSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEmmEv = comdat any

$_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE4backEv = comdat any

$_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE9_M_insertIJS4_EEEvSt14_List_iteratorIS4_EDpOT_ = comdat any

$_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE14_M_create_nodeIJS4_EEEPSt10_List_nodeIS4_EDpOT_ = comdat any

$_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE11_M_inc_sizeEm = comdat any

$_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE11_M_get_nodeEv = comdat any

$_ZNSt15__allocated_ptrI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEEC2ERS7_PS6_ = comdat any

$_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEE9constructIS5_JS5_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS7_PT_DpOSA_ = comdat any

$_ZNSt15__allocated_ptrI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEEaSEDn = comdat any

$_ZNSt15__allocated_ptrI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEED2Ev = comdat any

$_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEE8allocateERS7_m = comdat any

$_ZN13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEE8allocateEmPKv = comdat any

$_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEE12_S_constructIS5_JS5_EEENSt9enable_ifIXsr6__and_ISt6__and_IJSt6__not_INS8_18__construct_helperIT_JDpT0_EE4typeEESt16is_constructibleISE_JSG_EEEEEE5valueEvE4typeERS7_PSE_DpOSF_ = comdat any

$_ZNSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEC2Ev = comdat any

$_ZNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE8_M_eraseESt14_List_iteratorIS2_E = comdat any

$_ZNKSt20_List_const_iteratorIP28MEM_CacheLimiterHandleCClassE13_M_const_castEv = comdat any

$_ZNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE11_M_dec_sizeEm = comdat any

$_ZNKSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE5emptyEv = comdat any

$_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE38get_least_priority_destroyable_elementEv = comdat any

$_ZN22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE19destroy_if_possibleEv = comdat any

$_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE19can_destroy_elementERP22MEM_CacheLimiterHandleIS0_E = comdat any

$_ZNKSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE4sizeEv = comdat any

$_ZNK22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE11can_destroyEv = comdat any

$_ZNKSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE13_M_node_countEv = comdat any

$_ZNKSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE11_M_get_sizeEv = comdat any

$_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE8unmanageEP22MEM_CacheLimiterHandleIS0_E = comdat any

$_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE5eraseESt20_List_const_iteratorIS4_E = comdat any

$_ZNSt20_List_const_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEC2ERKSt14_List_iteratorIS3_E = comdat any

$_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE8_M_eraseESt14_List_iteratorIS4_E = comdat any

$_ZNKSt20_List_const_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEE13_M_const_castEv = comdat any

$_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE11_M_dec_sizeEm = comdat any

$_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE5touchEP22MEM_CacheLimiterHandleIS0_E = comdat any

$_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE9push_backERKS4_ = comdat any

$_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE9_M_insertIJRKS4_EEEvSt14_List_iteratorIS4_EDpOT_ = comdat any

$_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE14_M_create_nodeIJRKS4_EEEPSt10_List_nodeIS4_EDpOT_ = comdat any

$_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEE9constructIS5_JRKS5_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS7_PT_DpOSC_ = comdat any

$_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEE12_S_constructIS5_JRKS5_EEENSt9enable_ifIXsr6__and_ISt6__and_IJSt6__not_INS8_18__construct_helperIT_JDpT0_EE4typeEESt16is_constructibleISG_JSI_EEEEEE5valueEvE4typeERS7_PSG_DpOSH_ = comdat any

@_ZL11is_disabled = internal unnamed_addr global i8 0, align 1
@_ZZL7get_maxvE1m = internal unnamed_addr global i64 33554432, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"STL MEM_Allocator\00", align 1
@MEM_get_memory_in_use = external local_unnamed_addr global ptr, align 8

@_ZN28MEM_CacheLimiterHandleCClassD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN28MEM_CacheLimiterHandleCClassD2Ev
@_ZN22MEM_CacheLimiterCClassD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN22MEM_CacheLimiterCClassD2Ev

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @MEM_CacheLimiter_set_maximum(i64 noundef %0) local_unnamed_addr #0 {
  store i64 %0, ptr @_ZZL7get_maxvE1m, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i64 @MEM_CacheLimiter_get_maximum() local_unnamed_addr #1 {
  %1 = load i64, ptr @_ZZL7get_maxvE1m, align 8, !tbaa !34
  ret i64 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @MEM_CacheLimiter_set_disabled(i1 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = zext i1 %0 to i8
  store i8 %2, ptr @_ZL11is_disabled, align 1, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @MEM_CacheLimiter_is_disabled() local_unnamed_addr #1 {
  %1 = load i8, ptr @_ZL11is_disabled, align 1, !tbaa !38, !range !40, !noundef !41
  %2 = icmp ne i8 %1, 0
  ret i1 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN22MEM_CacheLimiterCClass6insertEPv(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca %"struct.std::_List_iterator", align 8
  %5 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %0, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %6 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
  tail call void @_ZN28MEM_CacheLimiterHandleCClassC2EPvP22MEM_CacheLimiterCClass(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %1, ptr noundef nonnull %0) #11
  store ptr %6, ptr %3, align 8, !tbaa !42
  call void @_ZNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE9push_backEOS2_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %7 = call ptr @_ZNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  store ptr %7, ptr %4, align 8
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt14_List_iteratorIP28MEM_CacheLimiterHandleCClassEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = load ptr, ptr %4, align 8, !tbaa.struct !44
  call void @_ZN28MEM_CacheLimiterHandleCClass8set_iterESt14_List_iteratorIPS_E(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr %11) #11
  %12 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %0, i64 0, i32 1
  %13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = call noundef ptr @_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE6insertEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef %14) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret ptr %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE9push_backEOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
  %3 = tail call ptr @_ZNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  tail call void @_ZNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE9_M_insertIJS2_EEEvSt14_List_iteratorIS2_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN28MEM_CacheLimiterHandleCClassC2EPvP22MEM_CacheLimiterCClass(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 comdat align 2 {
  store ptr %1, ptr %0, align 8, !tbaa !45
  %4 = getelementptr inbounds %class.MEM_CacheLimiterHandleCClass, ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %class.MEM_CacheLimiterHandleCClass, ptr %0, i64 0, i32 2
  tail call void @_ZNSt14_List_iteratorIP28MEM_CacheLimiterHandleCClassEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = alloca %"struct.std::_List_iterator", align 8
  call void @_ZNSt14_List_iteratorIP28MEM_CacheLimiterHandleCClassEC2EPNSt8__detail15_List_node_baseE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %0) #12
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt14_List_iteratorIP28MEM_CacheLimiterHandleCClassEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = getelementptr inbounds %"struct.std::__detail::_List_node_base", ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  store ptr %4, ptr %0, align 8, !tbaa !49
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = alloca %"struct.std::_List_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  %3 = tail call ptr @_ZNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  store ptr %3, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt14_List_iteratorIP28MEM_CacheLimiterHandleCClassEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt14_List_iteratorIP28MEM_CacheLimiterHandleCClassEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN28MEM_CacheLimiterHandleCClass8set_iterESt14_List_iteratorIPS_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #5 comdat align 2 {
  %3 = getelementptr inbounds %class.MEM_CacheLimiterHandleCClass, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa.struct !44
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE6insertEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca %"struct.std::_List_iterator.4", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %5 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #10
  tail call void @_ZN22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEC2EPS0_P16MEM_CacheLimiterIS0_E(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull %0) #11
  store ptr %5, ptr %3, align 8, !tbaa !42
  call void @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE9push_backEOS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %6 = call ptr @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  store ptr %6, ptr %4, align 8
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %9, i64 0, i32 2
  %11 = load i64, ptr %4, align 8, !tbaa !42
  store i64 %11, ptr %10, align 8, !tbaa !42
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN22MEM_CacheLimiterCClass8destructEPvSt14_List_iteratorIP28MEM_CacheLimiterHandleCClassE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr %2) local_unnamed_addr #2 align 2 {
  %4 = alloca %"struct.std::_List_iterator", align 8
  %5 = alloca %"struct.std::_List_const_iterator", align 8
  store ptr %2, ptr %4, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !52
  tail call void %6(ptr noundef %1) #11
  %7 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %0, i64 0, i32 2
  call void @_ZNSt20_List_const_iteratorIP28MEM_CacheLimiterHandleCClassEC2ERKSt14_List_iteratorIS1_E(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  %8 = load ptr, ptr %5, align 8
  %9 = call ptr @_ZNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE5eraseESt20_List_const_iteratorIS2_E(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %8) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE5eraseESt20_List_const_iteratorIS2_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #5 comdat align 2 {
  %3 = alloca %"struct.std::_List_iterator", align 8
  %4 = alloca %"struct.std::_List_const_iterator", align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %1, align 8, !tbaa !62
  call void @_ZNSt14_List_iteratorIP28MEM_CacheLimiterHandleCClassEC2EPNSt8__detail15_List_node_baseE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #12
  %6 = call ptr @_ZNKSt20_List_const_iteratorIP28MEM_CacheLimiterHandleCClassE13_M_const_castEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @_ZNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE8_M_eraseESt14_List_iteratorIS2_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %6) #12
  %7 = load ptr, ptr %3, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt20_List_const_iteratorIP28MEM_CacheLimiterHandleCClassEC2ERKSt14_List_iteratorIS1_E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
  %3 = load ptr, ptr %1, align 8, !tbaa !49
  store ptr %3, ptr %0, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN28MEM_CacheLimiterHandleCClassD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !45
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %class.MEM_CacheLimiterHandleCClass, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds %class.MEM_CacheLimiterHandleCClass, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa.struct !44
  invoke void @_ZN22MEM_CacheLimiterCClass8destructEPvSt14_List_iteratorIP28MEM_CacheLimiterHandleCClassE(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull %2, ptr %8) #11
          to label %9 unwind label %10

9:                                                ; preds = %4, %1
  ret void

10:                                               ; preds = %4
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #13
  unreachable
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN22MEM_CacheLimiterCClassD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"struct.std::_List_iterator", align 8
  %3 = alloca %"struct.std::_List_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  %4 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %0, i64 0, i32 2
  %5 = tail call ptr @_ZNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #12
  store ptr %5, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %6 = tail call ptr @_ZNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #12
  store ptr %6, ptr %3, align 8
  %7 = call noundef zeroext i1 @_ZStneRKSt14_List_iteratorIP28MEM_CacheLimiterHandleCClassES4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br i1 %7, label %10, label %8

8:                                                ; preds = %17, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  call void @_ZNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #12
  %9 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %0, i64 0, i32 1
  call void @_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %9) #12
  ret void

10:                                               ; preds = %1, %17
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt14_List_iteratorIP28MEM_CacheLimiterHandleCClassEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  call void @_ZN28MEM_CacheLimiterHandleCClass8set_dataEPv(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef null) #11
  %13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt14_List_iteratorIP28MEM_CacheLimiterHandleCClassEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  call void @_ZN28MEM_CacheLimiterHandleCClassD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #12
  call void @_ZdlPv(ptr noundef nonnull %14) #14
  br label %17

17:                                               ; preds = %10, %16
  %18 = call ptr @_ZNSt14_List_iteratorIP28MEM_CacheLimiterHandleCClassEppEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %19 = call ptr @_ZNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #12
  store ptr %19, ptr %3, align 8
  %20 = call noundef zeroext i1 @_ZStneRKSt14_List_iteratorIP28MEM_CacheLimiterHandleCClassES4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br i1 %20, label %10, label %8, !llvm.loop !65
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = alloca %"struct.std::_List_iterator", align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !62
  call void @_ZNSt14_List_iteratorIP28MEM_CacheLimiterHandleCClassEC2EPNSt8__detail15_List_node_baseE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) #12
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStneRKSt14_List_iteratorIP28MEM_CacheLimiterHandleCClassES4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat {
  %3 = load ptr, ptr %0, align 8, !tbaa !49
  %4 = load ptr, ptr %1, align 8, !tbaa !49
  %5 = icmp ne ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt14_List_iteratorIP28MEM_CacheLimiterHandleCClassEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = tail call noundef ptr @_ZNSt10_List_nodeIP28MEM_CacheLimiterHandleCClassE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN28MEM_CacheLimiterHandleCClass8set_dataEPv(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 {
  store ptr %1, ptr %0, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt14_List_iteratorIP28MEM_CacheLimiterHandleCClassEppEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 {
  %3 = load ptr, ptr %0, align 8
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  store ptr %4, ptr %0, align 8, !tbaa !49
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE8_M_clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  tail call void @_ZN13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"struct.std::_List_iterator.4", align 8
  %3 = alloca %"struct.std::_List_iterator.4", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  %4 = tail call ptr @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  store ptr %4, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %5 = tail call ptr @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  store ptr %5, ptr %3, align 8
  %6 = call noundef zeroext i1 @_ZStneRKSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEES6_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br i1 %6, label %8, label %7

7:                                                ; preds = %13, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  call void @_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  ret void

8:                                                ; preds = %1, %13
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  call void @_ZdlPv(ptr noundef nonnull %10) #14
  br label %13

13:                                               ; preds = %8, %12
  %14 = call ptr @_ZNSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEppEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %15 = call ptr @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  store ptr %15, ptr %3, align 8
  %16 = call noundef zeroext i1 @_ZStneRKSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEES6_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br i1 %16, label %8, label %7, !llvm.loop !67
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @new_MEM_CacheLimiter(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %3 = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #10
  invoke void @_ZN22MEM_CacheLimiterCClassC2EPFvPvEPFmS0_E(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef %0, ptr noundef %1) #11
          to label %4 unwind label %5

4:                                                ; preds = %2
  ret ptr %3

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %3) #14
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN22MEM_CacheLimiterCClassC2EPFvPvEPFmS0_E(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 {
  store ptr %1, ptr %0, align 8, !tbaa !52
  %4 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %0, i64 0, i32 1
  tail call void @_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassEC2EPFmPvE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %2) #11
  %5 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @delete_MEM_CacheLimiter(ptr noundef %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @_ZN22MEM_CacheLimiterCClassD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #12
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @MEM_CacheLimiter_insert(ptr noundef nonnull %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call noundef ptr @_ZN22MEM_CacheLimiterCClass6insertEPv(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @MEM_CacheLimiter_enforce_limits(ptr noundef nonnull %0) local_unnamed_addr #2 {
  %2 = tail call noundef ptr @_ZN22MEM_CacheLimiterCClass9get_cacheEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #11
  tail call void @_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE14enforce_limitsEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN22MEM_CacheLimiterCClass9get_cacheEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE14enforce_limitsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 {
  %2 = tail call i64 @MEM_CacheLimiter_get_maximum() #11
  %3 = tail call zeroext i1 @MEM_CacheLimiter_is_disabled() #11
  %4 = icmp eq i64 %2, 0
  %5 = select i1 %3, i1 true, i1 %4
  br i1 %5, label %42, label %6

6:                                                ; preds = %1
  %7 = tail call noundef i64 @_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE17get_memory_in_useEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  %8 = icmp ugt i64 %7, %2
  br i1 %8, label %9, label %42

9:                                                ; preds = %6
  %10 = tail call noundef zeroext i1 @_ZNKSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  br i1 %10, label %42, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %class.MEM_CacheLimiter, ptr %0, i64 0, i32 1
  br label %13

13:                                               ; preds = %11, %37
  %14 = phi i64 [ %7, %11 ], [ %38, %37 ]
  %15 = tail call noundef ptr @_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE38get_least_priority_destroyable_elementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %42, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %12, align 8, !tbaa !68
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = tail call noundef ptr @_ZN22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE3getEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #11
  %22 = tail call noundef ptr @_ZNK28MEM_CacheLimiterHandleCClass8get_dataEv(ptr noundef nonnull align 8 dereferenceable(24) %21) #11
  %23 = tail call noundef i64 %18(ptr noundef %22) #11
  br label %24

24:                                               ; preds = %17, %20
  %25 = phi i64 [ %23, %20 ], [ %14, %17 ]
  %26 = tail call noundef zeroext i1 @_ZN22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE19destroy_if_possibleEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #11
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load ptr, ptr %12, align 8, !tbaa !68
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = sub i64 %14, %25
  br label %37

32:                                               ; preds = %27
  %33 = load ptr, ptr @MEM_get_memory_in_use, align 8, !tbaa !42
  %34 = tail call i64 %33() #11
  %35 = sub i64 %14, %25
  %36 = add i64 %35, %34
  br label %37

37:                                               ; preds = %24, %32, %30
  %38 = phi i64 [ %31, %30 ], [ %36, %32 ], [ %14, %24 ]
  %39 = tail call noundef zeroext i1 @_ZNKSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  %40 = icmp ule i64 %38, %2
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %42, label %13

42:                                               ; preds = %37, %13, %9, %6, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @MEM_CacheLimiter_unmanage(ptr noundef nonnull %0) local_unnamed_addr #2 {
  tail call void @_ZN22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE8unmanageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE8unmanageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 {
  %2 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  tail call void @_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE8unmanageEP22MEM_CacheLimiterHandleIS0_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @MEM_CacheLimiter_touch(ptr noundef nonnull %0) local_unnamed_addr #2 {
  tail call void @_ZN22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE5touchEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE5touchEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 {
  %2 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  tail call void @_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE5touchEP22MEM_CacheLimiterHandleIS0_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @MEM_CacheLimiter_ref(ptr noundef nonnull %0) local_unnamed_addr #5 {
  tail call void @_ZN22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE3refEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE3refEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !73
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @MEM_CacheLimiter_unref(ptr noundef nonnull %0) local_unnamed_addr #5 {
  tail call void @_ZN22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE5unrefEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE5unrefEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !73
  %4 = add nsw i32 %3, -1
  store i32 %4, ptr %2, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @MEM_CacheLimiter_get_refcount(ptr noundef nonnull %0) local_unnamed_addr #5 {
  %2 = tail call noundef i32 @_ZNK22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE12get_refcountEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE12get_refcountEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !73
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @MEM_CacheLimiter_get(ptr noundef nonnull %0) local_unnamed_addr #5 {
  %2 = tail call noundef ptr @_ZN22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE3getEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %3 = tail call noundef ptr @_ZNK28MEM_CacheLimiterHandleCClass8get_dataEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE3getEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !74
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK28MEM_CacheLimiterHandleCClass8get_dataEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !45
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @MEM_CacheLimiter_ItemPriority_Func_set(ptr noundef nonnull %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = tail call noundef ptr @_ZN22MEM_CacheLimiterCClass9get_cacheEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #11
  tail call void @_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE22set_item_priority_funcEPFiPviE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE22set_item_priority_funcEPFiPviE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 {
  %3 = getelementptr inbounds %class.MEM_CacheLimiter, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @MEM_CacheLimiter_ItemDestroyable_Func_set(ptr noundef nonnull %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = tail call noundef ptr @_ZN22MEM_CacheLimiterCClass9get_cacheEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #11
  tail call void @_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE25set_item_destroyable_funcEPFbPvE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE25set_item_destroyable_funcEPFbPvE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 {
  %3 = getelementptr inbounds %class.MEM_CacheLimiter, ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !76
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i64 @MEM_CacheLimiter_get_memory_in_use(ptr noundef nonnull %0) local_unnamed_addr #2 {
  %2 = tail call noundef ptr @_ZN22MEM_CacheLimiterCClass9get_cacheEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #11
  %3 = tail call noundef i64 @_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE17get_memory_in_useEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #11
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE17get_memory_in_useEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 {
  %2 = alloca %"struct.std::_List_iterator.4", align 8
  %3 = alloca %"struct.std::_List_iterator.4", align 8
  %4 = getelementptr inbounds %class.MEM_CacheLimiter, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  %8 = tail call ptr @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  store ptr %8, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %9 = tail call ptr @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  store ptr %9, ptr %3, align 8
  %10 = call noundef zeroext i1 @_ZStneRKSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEES6_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br i1 %10, label %13, label %11

11:                                               ; preds = %13, %7
  %12 = phi i64 [ 0, %7 ], [ %21, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  br label %28

13:                                               ; preds = %7, %13
  %14 = phi i64 [ %21, %13 ], [ 0, %7 ]
  %15 = load ptr, ptr %4, align 8, !tbaa !68
  %16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = call noundef ptr @_ZN22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE3getEv(ptr noundef nonnull align 8 dereferenceable(32) %17) #11
  %19 = call noundef ptr @_ZNK28MEM_CacheLimiterHandleCClass8get_dataEv(ptr noundef nonnull align 8 dereferenceable(24) %18) #11
  %20 = call noundef i64 %15(ptr noundef %19) #11
  %21 = add i64 %20, %14
  %22 = call ptr @_ZNSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEppEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %23 = call ptr @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  store ptr %23, ptr %3, align 8
  %24 = call noundef zeroext i1 @_ZStneRKSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEES6_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br i1 %24, label %13, label %11, !llvm.loop !77

25:                                               ; preds = %1
  %26 = load ptr, ptr @MEM_get_memory_in_use, align 8, !tbaa !42
  %27 = tail call i64 %26() #11
  br label %28

28:                                               ; preds = %25, %11
  %29 = phi i64 [ %12, %11 ], [ %27, %25 ]
  ret i64 %29
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt14_List_iteratorIP28MEM_CacheLimiterHandleCClassEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  store ptr null, ptr %0, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE8_M_clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !62
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = tail call noundef ptr @_ZNSt10_List_nodeIP28MEM_CacheLimiterHandleCClassE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #11
  %8 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  tail call void @_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEE7destroyIS3_EEvRS5_PT_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef %7) #12
  tail call void @_ZNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE11_M_put_nodeEPSt10_List_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %5) #12
  %9 = icmp eq ptr %6, %0
  br i1 %9, label %10, label %4, !llvm.loop !78

10:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt10_List_nodeIP28MEM_CacheLimiterHandleCClassE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::_List_node", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufIP28MEM_CacheLimiterHandleCClassE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEE7destroyIS3_EEvRS5_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 {
  tail call void (ptr, ptr, ...) @_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEE10_S_destroyIS5_S3_EEvRT_PT0_z(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef 0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE11_M_put_nodeEPSt10_List_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
  invoke void @_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEE10deallocateERS5_PS4_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef 1) #11
          to label %3 unwind label %4

3:                                                ; preds = %2
  ret void

4:                                                ; preds = %2
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufIP28MEM_CacheLimiterHandleCClassE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufIP28MEM_CacheLimiterHandleCClassE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufIP28MEM_CacheLimiterHandleCClassE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEE10_S_destroyIS5_S3_EEvRT_PT0_z(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ...) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
  tail call void @_ZSt8_DestroyIP28MEM_CacheLimiterHandleCClassEvPT_(ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP28MEM_CacheLimiterHandleCClassEvPT_(ptr noundef %0) local_unnamed_addr #5 comdat {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEE10deallocateERS5_PS4_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
  tail call void @_ZN13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEE10deallocateEPS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEE10deallocateEPS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %4(ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassEC2EPFmPvE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
  tail call void @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  %3 = getelementptr inbounds %class.MEM_CacheLimiter, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !68
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE10_List_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE10_List_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  tail call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8__detail17_List_node_headerC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZNSt8__detail17_List_node_header7_M_initEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8__detail17_List_node_header7_M_initEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::__detail::_List_node_base", ptr %0, i64 0, i32 1
  store ptr %0, ptr %2, align 8, !tbaa !50
  store ptr %0, ptr %0, align 8, !tbaa !62
  %3 = getelementptr inbounds %"struct.std::__detail::_List_node_header", ptr %0, i64 0, i32 1
  store i64 0, ptr %3, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE10_List_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE10_List_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  tail call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = alloca %"struct.std::_List_iterator.4", align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !62
  call void @_ZNSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEC2EPNSt8__detail15_List_node_baseE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) #12
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStneRKSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEES6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat {
  %3 = load ptr, ptr %0, align 8, !tbaa !80
  %4 = load ptr, ptr %1, align 8, !tbaa !80
  %5 = icmp ne ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = alloca %"struct.std::_List_iterator.4", align 8
  call void @_ZNSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEC2EPNSt8__detail15_List_node_baseE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %0) #12
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !80
  %3 = tail call noundef ptr @_ZNSt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEppEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 {
  %3 = load ptr, ptr %0, align 8
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  store ptr %4, ptr %0, align 8, !tbaa !80
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE8_M_clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  tail call void @_ZN13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEC2EPNSt8__detail15_List_node_baseE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
  store ptr %1, ptr %0, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::_List_node.5", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE8_M_clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !62
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = tail call noundef ptr @_ZNSt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #11
  %8 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  tail call void @_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEE7destroyIS5_EEvRS7_PT_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef %7) #12
  tail call void @_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE11_M_put_nodeEPSt10_List_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %5) #12
  %9 = icmp eq ptr %6, %0
  br i1 %9, label %10, label %4, !llvm.loop !81

10:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEE7destroyIS5_EEvRS7_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 {
  tail call void (ptr, ptr, ...) @_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEE10_S_destroyIS7_S5_EEvRT_PT0_z(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef 0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE11_M_put_nodeEPSt10_List_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
  invoke void @_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEE10deallocateERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef 1) #11
          to label %3 unwind label %4

3:                                                ; preds = %2
  ret void

4:                                                ; preds = %2
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEE10_S_destroyIS7_S5_EEvRT_PT0_z(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ...) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
  tail call void @_ZSt8_DestroyIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEvPT_(ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEvPT_(ptr noundef %0) local_unnamed_addr #5 comdat {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEE10deallocateERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
  tail call void @_ZN13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEE10deallocateEPS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEE10deallocateEPS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %4(ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE9_M_insertIJS2_EEEvSt14_List_iteratorIS2_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
  %4 = tail call noundef ptr @_ZNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE14_M_create_nodeIJS2_EEEPSt10_List_nodeIS2_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #11
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %1) #12
  tail call void @_ZNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE11_M_inc_sizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE14_M_create_nodeIJS2_EEEPSt10_List_nodeIS2_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
  %3 = alloca %"struct.std::__allocated_ptr", align 8
  %4 = tail call noundef ptr @_ZNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE11_M_get_nodeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @_ZNSt15__allocated_ptrI13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEEC2ERS5_PS4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %4) #12
  %6 = call noundef ptr @_ZNSt10_List_nodeIP28MEM_CacheLimiterHandleCClassE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #11
  call void @_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEE9constructIS3_JS3_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS5_PT_DpOS8_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt15__allocated_ptrI13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEEaSEDn(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr null) #12
  call void @_ZNSt15__allocated_ptrI13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret ptr %4
}

; Function Attrs: nounwind optsize
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE11_M_inc_sizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
  %3 = getelementptr inbounds %"struct.std::__detail::_List_node_header", ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !82
  %5 = add i64 %4, %1
  store i64 %5, ptr %3, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE11_M_get_nodeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 {
  %2 = tail call noundef ptr @_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEE8allocateERS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef 1) #11
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__allocated_ptrI13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEEC2ERS5_PS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2) unnamed_addr #5 comdat align 2 {
  store ptr %1, ptr %0, align 8, !tbaa !83
  %4 = getelementptr inbounds %"struct.std::__allocated_ptr", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEE9constructIS3_JS3_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS5_PT_DpOS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 {
  tail call void @_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEE12_S_constructIS3_JS3_EEENSt9enable_ifIXsr6__and_ISt6__and_IJSt6__not_INS6_18__construct_helperIT_JDpT0_EE4typeEESt16is_constructibleISC_JSE_EEEEEE5valueEvE4typeERS5_PSC_DpOSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt15__allocated_ptrI13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEEaSEDn(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #5 comdat align 2 {
  %3 = getelementptr inbounds %"struct.std::__allocated_ptr", ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !85
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__allocated_ptrI13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds %"struct.std::__allocated_ptr", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !83
  invoke void @_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEE10deallocateERS5_PS4_m(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull %3, i64 noundef 1) #11
          to label %7 unwind label %8

7:                                                ; preds = %5, %1
  ret void

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  tail call void @__clang_call_terminate(ptr %10) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEE8allocateERS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
  %3 = tail call noundef ptr @_ZN13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %7 = mul i64 %1, 24
  %8 = tail call ptr %6(i64 noundef %7, ptr noundef nonnull @.str) #11
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi ptr [ %8, %5 ], [ null, %3 ]
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEE12_S_constructIS3_JS3_EEENSt9enable_ifIXsr6__and_ISt6__and_IJSt6__not_INS6_18__construct_helperIT_JDpT0_EE4typeEESt16is_constructibleISC_JSE_EEEEEE5valueEvE4typeERS5_PSC_DpOSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 {
  %4 = load ptr, ptr %2, align 8, !tbaa !42
  store ptr %4, ptr %1, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt14_List_iteratorIP28MEM_CacheLimiterHandleCClassEC2EPNSt8__detail15_List_node_baseE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
  store ptr %1, ptr %0, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE9push_backEOS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
  %3 = tail call ptr @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  tail call void @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE9_M_insertIJS4_EEEvSt14_List_iteratorIS4_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEC2EPS0_P16MEM_CacheLimiterIS0_E(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 comdat align 2 {
  store ptr %1, ptr %0, align 8, !tbaa !74
  %4 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !73
  %5 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %0, i64 0, i32 2
  tail call void @_ZNSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %6 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %0, i64 0, i32 3
  store ptr %2, ptr %6, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !80
  %3 = getelementptr inbounds %"struct.std::__detail::_List_node_base", ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  store ptr %4, ptr %0, align 8, !tbaa !80
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = alloca %"struct.std::_List_iterator.4", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  %3 = tail call ptr @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  store ptr %3, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE9_M_insertIJS4_EEEvSt14_List_iteratorIS4_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
  %4 = tail call noundef ptr @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE14_M_create_nodeIJS4_EEEPSt10_List_nodeIS4_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #11
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %1) #12
  tail call void @_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE11_M_inc_sizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE14_M_create_nodeIJS4_EEEPSt10_List_nodeIS4_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
  %3 = alloca %"struct.std::__allocated_ptr.7", align 8
  %4 = tail call noundef ptr @_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE11_M_get_nodeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @_ZNSt15__allocated_ptrI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEEC2ERS7_PS6_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %4) #12
  %6 = call noundef ptr @_ZNSt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #11
  call void @_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEE9constructIS5_JS5_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS7_PT_DpOSA_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt15__allocated_ptrI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEEaSEDn(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr null) #12
  call void @_ZNSt15__allocated_ptrI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE11_M_inc_sizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
  %3 = getelementptr inbounds %"struct.std::__detail::_List_node_header", ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !86
  %5 = add i64 %4, %1
  store i64 %5, ptr %3, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE11_M_get_nodeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 {
  %2 = tail call noundef ptr @_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEE8allocateERS7_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef 1) #11
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__allocated_ptrI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEEC2ERS7_PS6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2) unnamed_addr #5 comdat align 2 {
  store ptr %1, ptr %0, align 8, !tbaa !87
  %4 = getelementptr inbounds %"struct.std::__allocated_ptr.7", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEE9constructIS5_JS5_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS7_PT_DpOSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 {
  tail call void @_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEE12_S_constructIS5_JS5_EEENSt9enable_ifIXsr6__and_ISt6__and_IJSt6__not_INS8_18__construct_helperIT_JDpT0_EE4typeEESt16is_constructibleISE_JSG_EEEEEE5valueEvE4typeERS7_PSE_DpOSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt15__allocated_ptrI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEEaSEDn(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #5 comdat align 2 {
  %3 = getelementptr inbounds %"struct.std::__allocated_ptr.7", ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !89
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__allocated_ptrI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds %"struct.std::__allocated_ptr.7", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !87
  invoke void @_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEE10deallocateERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull %3, i64 noundef 1) #11
          to label %7 unwind label %8

7:                                                ; preds = %5, %1
  ret void

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  tail call void @__clang_call_terminate(ptr %10) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEE8allocateERS7_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
  %3 = tail call noundef ptr @_ZN13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %7 = mul i64 %1, 24
  %8 = tail call ptr %6(i64 noundef %7, ptr noundef nonnull @.str) #11
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi ptr [ %8, %5 ], [ null, %3 ]
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEE12_S_constructIS5_JS5_EEENSt9enable_ifIXsr6__and_ISt6__and_IJSt6__not_INS8_18__construct_helperIT_JDpT0_EE4typeEESt16is_constructibleISE_JSG_EEEEEE5valueEvE4typeERS7_PSE_DpOSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 {
  %4 = load ptr, ptr %2, align 8, !tbaa !42
  store ptr %4, ptr %1, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  store ptr null, ptr %0, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE8_M_eraseESt14_List_iteratorIS2_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
  tail call void @_ZNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE11_M_dec_sizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1) #11
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #12
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  %4 = tail call noundef ptr @_ZNSt10_List_nodeIP28MEM_CacheLimiterHandleCClassE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #11
  tail call void @_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEE7destroyIS3_EEvRS5_PT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %4) #12
  tail call void @_ZNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE11_M_put_nodeEPSt10_List_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt20_List_const_iteratorIP28MEM_CacheLimiterHandleCClassE13_M_const_castEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = alloca %"struct.std::_List_iterator", align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !63
  call void @_ZNSt14_List_iteratorIP28MEM_CacheLimiterHandleCClassEC2EPNSt8__detail15_List_node_baseE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) #12
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE11_M_dec_sizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
  %3 = getelementptr inbounds %"struct.std::__detail::_List_node_header", ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !82
  %5 = sub i64 %4, %1
  store i64 %5, ptr %3, align 8, !tbaa !82
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !62
  %3 = icmp eq ptr %2, %0
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE38get_least_priority_destroyable_elementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 {
  %2 = alloca %"struct.std::_List_iterator.4", align 8
  %3 = alloca %"struct.std::_List_iterator.4", align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::_List_iterator.4", align 8
  %6 = alloca %"struct.std::_List_iterator.4", align 8
  %7 = alloca ptr, align 8
  %8 = tail call noundef zeroext i1 @_ZNKSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  br i1 %8, label %66, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %class.MEM_CacheLimiter, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  %14 = tail call ptr @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  store ptr %14, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %15 = tail call ptr @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  store ptr %15, ptr %3, align 8
  %16 = call noundef zeroext i1 @_ZStneRKSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEES6_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br i1 %16, label %17, label %26

17:                                               ; preds = %13, %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  store ptr %19, ptr %4, align 8, !tbaa !42
  %20 = call noundef zeroext i1 @_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE19can_destroy_elementERP22MEM_CacheLimiterHandleIS0_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  %21 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br i1 %20, label %26, label %22

22:                                               ; preds = %17
  %23 = call ptr @_ZNSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEppEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %24 = call ptr @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  store ptr %24, ptr %3, align 8
  %25 = call noundef zeroext i1 @_ZStneRKSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEES6_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br i1 %25, label %17, label %26, !llvm.loop !90

26:                                               ; preds = %17, %22, %13
  %27 = phi ptr [ null, %13 ], [ null, %22 ], [ %21, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  br label %66

28:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  call void @_ZNSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %29 = call ptr @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  store ptr %29, ptr %5, align 8, !tbaa.struct !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  %30 = call ptr @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  store ptr %30, ptr %6, align 8
  %31 = call noundef zeroext i1 @_ZStneRKSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEES6_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br i1 %31, label %32, label %64

32:                                               ; preds = %28, %57
  %33 = phi ptr [ %60, %57 ], [ null, %28 ]
  %34 = phi i32 [ %58, %57 ], [ 0, %28 ]
  %35 = phi i32 [ %59, %57 ], [ 0, %28 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  %36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %37 = load ptr, ptr %36, align 8, !tbaa !42
  store ptr %37, ptr %7, align 8, !tbaa !42
  %38 = call noundef zeroext i1 @_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE19can_destroy_elementERP22MEM_CacheLimiterHandleIS0_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #11
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = add nuw nsw i32 %34, 1
  br label %57

41:                                               ; preds = %32
  %42 = call noundef i64 @_ZNKSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  %43 = trunc i64 %42 to i32
  %44 = add nuw i32 %34, 1
  %45 = sub i32 %44, %43
  %46 = load ptr, ptr %10, align 8, !tbaa !75
  %47 = load ptr, ptr %7, align 8, !tbaa !42
  %48 = call noundef ptr @_ZN22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE3getEv(ptr noundef nonnull align 8 dereferenceable(32) %47) #11
  %49 = call noundef ptr @_ZNK28MEM_CacheLimiterHandleCClass8get_dataEv(ptr noundef nonnull align 8 dereferenceable(24) %48) #11
  %50 = call noundef i32 %46(ptr noundef %49, i32 noundef %45) #11
  %51 = icmp slt i32 %50, %35
  %52 = icmp eq ptr %33, null
  %53 = select i1 %51, i1 true, i1 %52
  %54 = load ptr, ptr %7, align 8
  %55 = select i1 %53, i32 %50, i32 %35
  %56 = select i1 %53, ptr %54, ptr %33
  br label %57

57:                                               ; preds = %39, %41
  %58 = phi i32 [ %40, %39 ], [ %44, %41 ]
  %59 = phi i32 [ %35, %39 ], [ %55, %41 ]
  %60 = phi ptr [ %33, %39 ], [ %56, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  %61 = call ptr @_ZNSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEppEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  %62 = call ptr @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  store ptr %62, ptr %6, align 8
  %63 = call noundef zeroext i1 @_ZStneRKSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEES6_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br i1 %63, label %32, label %64, !llvm.loop !91

64:                                               ; preds = %57, %28
  %65 = phi ptr [ null, %28 ], [ %60, %57 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %66

66:                                               ; preds = %26, %64, %1
  %67 = phi ptr [ null, %1 ], [ %65, %64 ], [ %27, %26 ]
  ret ptr %67
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE19destroy_if_possibleEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 {
  %2 = tail call noundef zeroext i1 @_ZNK22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE11can_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !74
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @_ZN28MEM_CacheLimiterHandleCClassD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #12
  tail call void @_ZdlPv(ptr noundef nonnull %4) #14
  br label %7

7:                                                ; preds = %6, %3
  store ptr null, ptr %0, align 8, !tbaa !74
  tail call void @_ZN22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE8unmanageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  br label %8

8:                                                ; preds = %1, %7
  ret i1 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE19can_destroy_elementERP22MEM_CacheLimiterHandleIS0_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
  %3 = load ptr, ptr %1, align 8, !tbaa !42
  %4 = tail call noundef zeroext i1 @_ZNK22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE11can_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  br i1 %4, label %5, label %15

5:                                                ; preds = %2
  %6 = getelementptr inbounds %class.MEM_CacheLimiter, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !76
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %1, align 8, !tbaa !42
  %11 = tail call noundef ptr @_ZN22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE3getEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #11
  %12 = tail call noundef ptr @_ZNK28MEM_CacheLimiterHandleCClass8get_dataEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #11
  %13 = tail call noundef zeroext i1 %7(ptr noundef %12) #11
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %5
  br label %15

15:                                               ; preds = %9, %2, %14
  %16 = phi i1 [ true, %14 ], [ false, %2 ], [ false, %9 ]
  ret i1 %16
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = invoke noundef i64 @_ZNKSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE13_M_node_countEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret i64 %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE11can_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !74
  %3 = icmp eq ptr %2, null
  %4 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %3, i1 true, i1 %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE13_M_node_countEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE11_M_get_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE11_M_get_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::__detail::_List_node_header", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !86
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE8unmanageEP22MEM_CacheLimiterHandleIS0_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 {
  %3 = alloca %"struct.std::_List_const_iterator.8", align 8
  %4 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %1, i64 0, i32 2
  call void @_ZNSt20_List_const_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEC2ERKSt14_List_iteratorIS3_E(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  %5 = load ptr, ptr %3, align 8
  %6 = call ptr @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE5eraseESt20_List_const_iteratorIS4_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %5) #12
  %7 = icmp eq ptr %1, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  call void @_ZdlPv(ptr noundef nonnull %1) #14
  br label %9

9:                                                ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE5eraseESt20_List_const_iteratorIS4_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #5 comdat align 2 {
  %3 = alloca %"struct.std::_List_iterator.4", align 8
  %4 = alloca %"struct.std::_List_const_iterator.8", align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %1, align 8, !tbaa !62
  call void @_ZNSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEC2EPNSt8__detail15_List_node_baseE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #12
  %6 = call ptr @_ZNKSt20_List_const_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEE13_M_const_castEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE8_M_eraseESt14_List_iteratorIS4_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %6) #12
  %7 = load ptr, ptr %3, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt20_List_const_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEC2ERKSt14_List_iteratorIS3_E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
  %3 = load ptr, ptr %1, align 8, !tbaa !80
  store ptr %3, ptr %0, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE8_M_eraseESt14_List_iteratorIS4_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
  tail call void @_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE11_M_dec_sizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1) #11
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #12
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  %4 = tail call noundef ptr @_ZNSt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #11
  tail call void @_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEE7destroyIS5_EEvRS7_PT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %4) #12
  tail call void @_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE11_M_put_nodeEPSt10_List_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt20_List_const_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEE13_M_const_castEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = alloca %"struct.std::_List_iterator.4", align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !92
  call void @_ZNSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEC2EPNSt8__detail15_List_node_baseE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) #12
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE11_M_dec_sizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
  %3 = getelementptr inbounds %"struct.std::__detail::_List_node_header", ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !86
  %5 = sub i64 %4, %1
  store i64 %5, ptr %3, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE5touchEP22MEM_CacheLimiterHandleIS0_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca %"struct.std::_List_const_iterator.8", align 8
  %5 = alloca %"struct.std::_List_iterator.4", align 8
  store ptr %1, ptr %3, align 8, !tbaa !42
  %6 = getelementptr inbounds %class.MEM_CacheLimiter, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  call void @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  %10 = load ptr, ptr %3, align 8, !tbaa !42
  %11 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %10, i64 0, i32 2
  call void @_ZNSt20_List_const_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEC2ERKSt14_List_iteratorIS3_E(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %11) #12
  %12 = load ptr, ptr %4, align 8
  %13 = call ptr @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE5eraseESt20_List_const_iteratorIS4_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %12) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %14 = call ptr @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  store ptr %14, ptr %5, align 8
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %16 = load ptr, ptr %3, align 8, !tbaa !42
  %17 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %16, i64 0, i32 2
  %18 = load i64, ptr %5, align 8, !tbaa !42
  store i64 %18, ptr %17, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %19

19:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
  %3 = tail call ptr @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  tail call void @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE9_M_insertIJRKS4_EEEvSt14_List_iteratorIS4_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE9_M_insertIJRKS4_EEEvSt14_List_iteratorIS4_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
  %4 = tail call noundef ptr @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE14_M_create_nodeIJRKS4_EEEPSt10_List_nodeIS4_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #11
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %1) #12
  tail call void @_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE11_M_inc_sizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE14_M_create_nodeIJRKS4_EEEPSt10_List_nodeIS4_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
  %3 = alloca %"struct.std::__allocated_ptr.7", align 8
  %4 = tail call noundef ptr @_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE11_M_get_nodeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @_ZNSt15__allocated_ptrI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEEC2ERS7_PS6_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %4) #12
  %6 = call noundef ptr @_ZNSt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #11
  call void @_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEE9constructIS5_JRKS5_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS7_PT_DpOSC_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt15__allocated_ptrI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEEaSEDn(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr null) #12
  call void @_ZNSt15__allocated_ptrI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEE9constructIS5_JRKS5_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS7_PT_DpOSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 {
  tail call void @_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEE12_S_constructIS5_JRKS5_EEENSt9enable_ifIXsr6__and_ISt6__and_IJSt6__not_INS8_18__construct_helperIT_JDpT0_EE4typeEESt16is_constructibleISG_JSI_EEEEEE5valueEvE4typeERS7_PSG_DpOSH_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEE12_S_constructIS5_JRKS5_EEENSt9enable_ifIXsr6__and_ISt6__and_IJSt6__not_INS8_18__construct_helperIT_JDpT0_EE4typeEESt16is_constructibleISG_JSI_EEEEEE5valueEvE4typeERS7_PSG_DpOSH_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 {
  %4 = load ptr, ptr %2, align 8, !tbaa !42
  store ptr %4, ptr %1, align 8, !tbaa !42
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { builtin optsize allocsize(0) }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize }
attributes #13 = { noreturn nounwind }
attributes #14 = { builtin nounwind optsize }

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
!35 = !{!"long", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"bool", !36, i64 0}
!40 = !{i8 0, i8 2}
!41 = !{}
!42 = !{!43, !43, i64 0}
!43 = !{!"any pointer", !36, i64 0}
!44 = !{i64 0, i64 8, !42}
!45 = !{!46, !43, i64 0}
!46 = !{!"_ZTS28MEM_CacheLimiterHandleCClass", !43, i64 0, !43, i64 8, !47, i64 16}
!47 = !{!"_ZTSSt14_List_iteratorIP28MEM_CacheLimiterHandleCClassE", !43, i64 0}
!48 = !{!46, !43, i64 8}
!49 = !{!47, !43, i64 0}
!50 = !{!51, !43, i64 8}
!51 = !{!"_ZTSNSt8__detail15_List_node_baseE", !43, i64 0, !43, i64 8}
!52 = !{!53, !43, i64 0}
!53 = !{!"_ZTS22MEM_CacheLimiterCClass", !43, i64 0, !54, i64 8, !59, i64 56}
!54 = !{!"_ZTS16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE", !55, i64 0, !43, i64 24, !43, i64 32, !43, i64 40}
!55 = !{!"_ZTSNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EEE", !56, i64 0}
!56 = !{!"_ZTSNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EEE", !57, i64 0}
!57 = !{!"_ZTSNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE10_List_implE", !58, i64 0}
!58 = !{!"_ZTSNSt8__detail17_List_node_headerE", !51, i64 0, !35, i64 16}
!59 = !{!"_ZTSNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EEE", !60, i64 0}
!60 = !{!"_ZTSNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EEE", !61, i64 0}
!61 = !{!"_ZTSNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE10_List_implE", !58, i64 0}
!62 = !{!51, !43, i64 0}
!63 = !{!64, !43, i64 0}
!64 = !{!"_ZTSSt20_List_const_iteratorIP28MEM_CacheLimiterHandleCClassE", !43, i64 0}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.mustprogress"}
!67 = distinct !{!67, !66}
!68 = !{!54, !43, i64 24}
!69 = !{!70, !43, i64 24}
!70 = !{!"_ZTS22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE", !43, i64 0, !71, i64 8, !72, i64 16, !43, i64 24}
!71 = !{!"int", !36, i64 0}
!72 = !{!"_ZTSSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEE", !43, i64 0}
!73 = !{!70, !71, i64 8}
!74 = !{!70, !43, i64 0}
!75 = !{!54, !43, i64 32}
!76 = !{!54, !43, i64 40}
!77 = distinct !{!77, !66}
!78 = distinct !{!78, !66}
!79 = !{!58, !35, i64 16}
!80 = !{!72, !43, i64 0}
!81 = distinct !{!81, !66}
!82 = !{!60, !35, i64 16}
!83 = !{!84, !43, i64 0}
!84 = !{!"_ZTSSt15__allocated_ptrI13MEM_AllocatorISt10_List_nodeIP28MEM_CacheLimiterHandleCClassEEE", !43, i64 0, !43, i64 8}
!85 = !{!84, !43, i64 8}
!86 = !{!56, !35, i64 16}
!87 = !{!88, !43, i64 0}
!88 = !{!"_ZTSSt15__allocated_ptrI13MEM_AllocatorISt10_List_nodeIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEEEE", !43, i64 0, !43, i64 8}
!89 = !{!88, !43, i64 8}
!90 = distinct !{!90, !66}
!91 = distinct !{!91, !66}
!92 = !{!93, !43, i64 0}
!93 = !{!"_ZTSSt20_List_const_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEE", !43, i64 0}
