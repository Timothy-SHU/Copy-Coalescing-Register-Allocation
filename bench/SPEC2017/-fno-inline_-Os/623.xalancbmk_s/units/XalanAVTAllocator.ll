; ModuleID = 'XalanAVTAllocator.cpp'
source_filename = "XalanAVTAllocator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i64, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.std::reverse_iterator" = type { %"struct.xalanc_1_10::XalanListIteratorBase.0" }
%"struct.xalanc_1_10::XalanListIteratorBase.0" = type { ptr }
%"struct.xalanc_1_10::XalanListIteratorBase" = type { ptr }
%"struct.xalanc_1_10::DeleteFunctor" = type { ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase" = type { %"class.xalanc_1_10::XalanAllocator", i64, i64, ptr }
%"class.xalanc_1_10::XalanAllocator" = type { ptr }
%"class.xalanc_1_10::AVT" = type { ptr, ptr, i64, ptr, i32, ptr }
%"class.xalanc_1_10::XalanAllocationGuard" = type { ptr, ptr }
%"struct.std::less" = type { i8 }
%"struct.xalanc_1_10::XalanDestroyFunctor" = type { i8 }

$_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEEC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEED2Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEED0Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE13allocateBlockEv = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE16commitAllocationEPS1_ = comdat any

$_ZNK11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE10ownsObjectEPKS1_ = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE5resetEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEED2Ev = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5beginEv = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEneERKSA_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE3endEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE11destroyNodeERNS5_4NodeE = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEppEi = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEE4nodeEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE10deallocateEPNS5_4NodeE = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE11getListHeadEv = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEC2ERS9_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE8allocateEm = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEeqERKSA_ = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5emptyEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE4backEv = comdat any

$_ZNK11xalanc_1_1014ArenaBlockBaseINS_3AVTEmE14blockAvailableEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE9push_backERKS4_ = comdat any

$_ZN11xalanc_1_1010ArenaBlockINS_3AVTEmE6createERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1010ArenaBlockINS_3AVTEmE13allocateBlockEv = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5beginEv = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEeqERKSA_ = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE3endEv = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE11getListHeadEv = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEC2ERS9_ = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEmmEv = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEdeEv = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_10ArenaBlockINS_3AVTEmEEE9constructEPS4_RKS4_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_10ArenaBlockINS_3AVTEmEEN11xercesc_2_713MemoryManagerEmEEPT_RS5_RS7_RT0_RKT1_ = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZNK11xalanc_1_1020XalanAllocationGuard3getEv = comdat any

$_ZN11xalanc_1_1010ArenaBlockINS_3AVTEmEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuardD2Ev = comdat any

$_ZN11xalanc_1_1014ArenaBlockBaseINS_3AVTEmEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1014XalanAllocatorINS_3AVTEEC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1014XalanAllocatorINS_3AVTEE8allocateEmPKv = comdat any

$_ZN11xalanc_1_1014XalanAllocatorINS_3AVTEED2Ev = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1010ArenaBlockINS_3AVTEmE16commitAllocationEPS1_ = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE4rendEv = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE6rbeginEv = comdat any

$_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_10ArenaBlockINS0_3AVTEmEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_ = comdat any

$_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_10ArenaBlockINS0_3AVTEmEEEENS0_9XalanListIS6_E4NodeEEEEdeEv = comdat any

$_ZNK11xalanc_1_1010ArenaBlockINS_3AVTEmE10ownsObjectEPKS1_ = comdat any

$_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_10ArenaBlockINS0_3AVTEmEEEENS0_9XalanListIS6_E4NodeEEEEppEv = comdat any

$_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_10ArenaBlockINS0_3AVTEmEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_ = comdat any

$_ZSteqIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_10ArenaBlockINS0_3AVTEmEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_ = comdat any

$_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_10ArenaBlockINS0_3AVTEmEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEmmEv = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEdeEv = comdat any

$_ZNK11xalanc_1_1014ArenaBlockBaseINS_3AVTEmE11isInBordersEPKS1_m = comdat any

$_ZNKSt4lessIPKN11xalanc_1_103AVTEEclES3_S3_ = comdat any

$_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_10ArenaBlockINS0_3AVTEmEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_ = comdat any

$_ZN11xalanc_1_1013DeleteFunctorINS_10ArenaBlockINS_3AVTEmEEEC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5clearEv = comdat any

$_ZNK11xalanc_1_1013DeleteFunctorINS_10ArenaBlockINS_3AVTEmEEEclEPKS3_ = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEppEv = comdat any

$_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_10ArenaBlockINS_3AVTEmEEEENS_19XalanDestroyFunctorIT_EEPKS5_ = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_10ArenaBlockINS_3AVTEmEEEclEPKS3_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_10ArenaBlockINS_3AVTEmEEEclEPS3_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_10ArenaBlockINS_3AVTEmEEEclERS3_ = comdat any

$_ZN11xalanc_1_1010ArenaBlockINS_3AVTEmED2Ev = comdat any

$_ZN11xalanc_1_1012XalanDestroyINS_3AVTEEEvRT_ = comdat any

$_ZN11xalanc_1_1014ArenaBlockBaseINS_3AVTEmED2Ev = comdat any

$_ZN11xalanc_1_1014XalanAllocatorINS_3AVTEE10deallocateEPS1_m = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE8freeNodeERNS5_4NodeE = comdat any

$_ZTVN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEEE = comdat any

$_ZTSN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEEE = comdat any

$_ZTIN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEEE = comdat any

@_ZTVN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEEE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEEE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEED0Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE13allocateBlockEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE16commitAllocationEPS1_, ptr @_ZNK11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE10ownsObjectEPKS1_, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE5resetEv] }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEEE = linkonce_odr dso_local constant [64 x i8] c"N11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEEE\00", comdat, align 1
@_ZTIN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEEE }, comdat, align 8

@_ZN11xalanc_1_1017XalanAVTAllocatorC1ERN11xercesc_2_713MemoryManagerEm = dso_local unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN11xalanc_1_1017XalanAVTAllocatorC2ERN11xercesc_2_713MemoryManagerEm
@_ZN11xalanc_1_1017XalanAVTAllocatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1017XalanAVTAllocatorD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1017XalanAVTAllocatorC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 align 2 !prof !118 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 !prof !118 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !119
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  store i64 %2, ptr %4, align 8, !tbaa !122
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !118 {
  store ptr %1, ptr %0, align 8, !tbaa !128
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !119
  invoke void @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #8
          to label %2 unwind label %4

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #9
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #10
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !129 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  br i1 %4, label %9, label %5, !prof !130

5:                                                ; preds = %1
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  %7 = load ptr, ptr %6, align 8, !tbaa !131
  %8 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_3AVTEmE14blockAvailableEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #8
  br i1 %8, label %14, label %9, !prof !132

9:                                                ; preds = %5, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #8
  %11 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !122
  %13 = tail call noundef ptr @_ZN11xalanc_1_1010ArenaBlockINS_3AVTEmE6createERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %12) #8
  store ptr %13, ptr %2, align 8, !tbaa !131
  call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  br label %14

14:                                               ; preds = %9, %5
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  %16 = load ptr, ptr %15, align 8, !tbaa !131
  %17 = call noundef ptr @_ZN11xalanc_1_1010ArenaBlockINS_3AVTEmE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(32) %16) #8
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !129 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  %5 = load ptr, ptr %4, align 8, !tbaa !131
  tail call void @_ZN11xalanc_1_1010ArenaBlockINS_3AVTEmE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !133 {
  %3 = alloca %"class.std::reverse_iterator", align 8
  %4 = alloca %"class.std::reverse_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  call void @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE4rendEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %5) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE6rbeginEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #8
  %6 = call noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_10ArenaBlockINS0_3AVTEmEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  br i1 %6, label %7, label %14

7:                                                ; preds = %2, %11
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_10ArenaBlockINS0_3AVTEmEEEENS0_9XalanListIS6_E4NodeEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  %9 = load ptr, ptr %8, align 8, !tbaa !131
  %10 = call noundef zeroext i1 @_ZNK11xalanc_1_1010ArenaBlockINS_3AVTEmE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %1) #8
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_10ArenaBlockINS0_3AVTEmEEEENS0_9XalanListIS6_E4NodeEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  %13 = call noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_10ArenaBlockINS0_3AVTEmEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  br i1 %13, label %7, label %14, !llvm.loop !134

14:                                               ; preds = %11, %7, %2
  %15 = phi i1 [ false, %2 ], [ %10, %7 ], [ %10, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret i1 %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !136 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %4 = alloca %"struct.xalanc_1_10::DeleteFunctor", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %5) #8
  call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %5) #8
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #8
  call void @_ZN11xalanc_1_1013DeleteFunctorINS_10ArenaBlockINS_3AVTEmEEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  %7 = load ptr, ptr %4, align 8
  %8 = call ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_10ArenaBlockINS0_3AVTEmEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr %7) #8
  call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #8
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !137
  %7 = icmp eq ptr %6, null
  br i1 %7, label %29, label %8, !prof !138

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  invoke void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0) #8
          to label %9 unwind label %34

9:                                                ; preds = %8, %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  invoke void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #8
          to label %10 unwind label %32

10:                                               ; preds = %9
  %11 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
          to label %12 unwind label %32

12:                                               ; preds = %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  br i1 %11, label %13, label %17, !prof !138

13:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  invoke void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEppEi(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #8
          to label %14 unwind label %32

14:                                               ; preds = %13
  %15 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  invoke void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE11destroyNodeERNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %15) #8
          to label %16 unwind label %32

16:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  br label %9, !llvm.loop !139

17:                                               ; preds = %12
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !140
  br label %20

20:                                               ; preds = %23, %17
  %21 = phi ptr [ %19, %17 ], [ %25, %23 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23, !prof !141

23:                                               ; preds = %20
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %21, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !142
  invoke void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE10deallocateEPNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %21) #8
          to label %20 unwind label %30, !llvm.loop !144

26:                                               ; preds = %20
  %27 = load ptr, ptr %5, align 8, !tbaa !137
  invoke void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE10deallocateEPNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %27) #8
          to label %28 unwind label %34

28:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  br label %29

29:                                               ; preds = %28, %1
  ret void

30:                                               ; preds = %23
  %31 = landingpad { ptr, i32 }
          catch ptr null
  br label %36

32:                                               ; preds = %14, %13, %10, %9
  %33 = landingpad { ptr, i32 }
          catch ptr null
  br label %36

34:                                               ; preds = %26, %8
  %35 = landingpad { ptr, i32 }
          catch ptr null
  br label %36

36:                                               ; preds = %32, %34, %30
  %37 = phi { ptr, i32 } [ %31, %30 ], [ %33, %32 ], [ %35, %34 ]
  %38 = extractvalue { ptr, i32 } %37, 0
  call void @__clang_call_terminate(ptr %38) #10
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5beginEv(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !145 {
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  %4 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !142
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %5) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !146 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE3endEv(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !147 {
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE11destroyNodeERNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !133 {
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE10deallocateEPNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEppEi(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %4 = load ptr, ptr %1, align 8, !tbaa !148
  %5 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !142
  store ptr %6, ptr %1, align 8, !tbaa !148
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %4) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !145 {
  %2 = load ptr, ptr %0, align 8, !tbaa !148
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE10deallocateEPNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !136 {
  %3 = load ptr, ptr %0, align 8, !tbaa !128
  %4 = load ptr, ptr %3, align 8, !tbaa !119
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !150 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !137
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9, !prof !151

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1) #8
  store ptr %6, ptr %2, align 8, !tbaa !137
  %7 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %6, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !142
  %8 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %6, i64 0, i32 1
  store ptr %6, ptr %8, align 8, !tbaa !152
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ %6, %5 ], [ %3, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 !prof !153 {
  store ptr %1, ptr %0, align 8, !tbaa !148
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !136 {
  %3 = mul i64 %1, 24
  %4 = load ptr, ptr %0, align 8, !tbaa !128
  %5 = load ptr, ptr %4, align 8, !tbaa !119
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #8
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !146 {
  %3 = load ptr, ptr %0, align 8, !tbaa !148
  %4 = load ptr, ptr %1, align 8, !tbaa !148
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !129 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  %4 = tail call ptr @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  store ptr %4, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %5 = tail call ptr @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  store ptr %5, ptr %3, align 8
  %6 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !154 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEmmEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_3AVTEmE14blockAvailableEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !155 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !156
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !159
  %6 = icmp ult i64 %3, %5
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  %4 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %3) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1010ArenaBlockINS_3AVTEmE6createERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %5 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_10ArenaBlockINS_3AVTEmEEN11xercesc_2_713MemoryManagerEmEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1010ArenaBlockINS_3AVTEmE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !129 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !156
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !159
  %6 = icmp eq i64 %3, %5
  %7 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %8, i64 %3
  %10 = select i1 %6, ptr null, ptr %9, !prof !161
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !129 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  %4 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !142
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %5) #8
  %6 = load ptr, ptr %2, align 8
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !129 {
  %3 = load ptr, ptr %0, align 8, !tbaa !162
  %4 = load ptr, ptr %1, align 8, !tbaa !162
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !129 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !164 {
  %2 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 !prof !164 {
  store ptr %1, ptr %0, align 8, !tbaa !162
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEmmEv(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !154 {
  %3 = load ptr, ptr %1, align 8, !tbaa !148
  %4 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !152
  store ptr %5, ptr %1, align 8, !tbaa !148
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !165 {
  %2 = load ptr, ptr %0, align 8, !tbaa !148
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !165 {
  %3 = load ptr, ptr %1, align 8, !tbaa !148
  store ptr %3, ptr %0, align 8, !tbaa !148
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !140
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !166

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !142
  br label %12

10:                                               ; preds = %3
  %11 = tail call noundef ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1) #8
  store ptr %11, ptr %4, align 8, !tbaa !140
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi ptr [ %5, %7 ], [ %11, %10 ]
  %14 = phi ptr [ %9, %7 ], [ null, %10 ]
  %15 = load ptr, ptr %0, align 8, !tbaa !128
  %16 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_10ArenaBlockINS_3AVTEmEEE9constructEPS4_RKS4_RN11xercesc_2_713MemoryManagerE(ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %15) #8
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %13, i64 0, i32 1
  %18 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !152
  store ptr %20, ptr %17, align 8, !tbaa !131
  %21 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %13, i64 0, i32 2
  %22 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  store ptr %22, ptr %21, align 8, !tbaa !131
  %23 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !152
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %25, i64 0, i32 2
  store ptr %13, ptr %26, align 8, !tbaa !142
  %27 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %27, i64 0, i32 1
  store ptr %13, ptr %28, align 8, !tbaa !152
  store ptr %14, ptr %4, align 8, !tbaa !140
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_10ArenaBlockINS_3AVTEmEEE9constructEPS4_RKS4_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 !prof !118 {
  %4 = load ptr, ptr %1, align 8, !tbaa !131
  store ptr %4, ptr %0, align 8, !tbaa !131
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_10ArenaBlockINS_3AVTEmEEN11xercesc_2_713MemoryManagerEmEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !prof !118 {
  %5 = alloca %"class.xalanc_1_10::XalanAllocationGuard", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  call void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 32) #8
  %6 = call noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #8
  %7 = load i64, ptr %3, align 8, !tbaa !160
  invoke void @_ZN11xalanc_1_1010ArenaBlockINS_3AVTEmEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %7) #8
          to label %8 unwind label %10

8:                                                ; preds = %4
  store ptr %6, ptr %1, align 8, !tbaa !131
  call void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #8
  %9 = load ptr, ptr %1, align 8, !tbaa !131
  call void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  ret ptr %9

10:                                               ; preds = %4
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 !prof !167 {
  store ptr %1, ptr %0, align 8, !tbaa !131
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %1, align 8, !tbaa !119
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) #8
  store ptr %8, ptr %4, align 8, !tbaa !168
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !167 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !168
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010ArenaBlockINS_3AVTEmEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 !prof !118 {
  tail call void @_ZN11xalanc_1_1014ArenaBlockBaseINS_3AVTEmEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !167 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !168
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !167 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !168
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !170

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !171
  %7 = load ptr, ptr %6, align 8, !tbaa !119
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  invoke void %9(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %3) #8
          to label %10 unwind label %11

10:                                               ; preds = %5, %1
  ret void

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  tail call void @__clang_call_terminate(ptr %13) #10
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaBlockBaseINS_3AVTEmEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  tail call void @_ZN11xalanc_1_1014XalanAllocatorINS_3AVTEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !156
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !159
  %6 = invoke noundef ptr @_ZN11xalanc_1_1014XalanAllocatorINS_3AVTEE8allocateEmPKv(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %2, ptr noundef null) #8
          to label %7 unwind label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  store ptr %6, ptr %8, align 8, !tbaa !172
  ret void

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1014XalanAllocatorINS_3AVTEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanAllocatorINS_3AVTEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !118 {
  store ptr %1, ptr %0, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanAllocatorINS_3AVTEE8allocateEmPKv(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %4 = load ptr, ptr %0, align 8, !tbaa !173
  %5 = mul i64 %1, 48
  %6 = load ptr, ptr %4, align 8, !tbaa !119
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %5) #8
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanAllocatorINS_3AVTEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !118 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !174 {
  %2 = load ptr, ptr %0, align 8, !tbaa !128
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010ArenaBlockINS_3AVTEmE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !129 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !156
  %5 = add i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !156
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE4rendEv(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !133 {
  %3 = tail call ptr @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  tail call void @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_10ArenaBlockINS0_3AVTEmEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %3) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE6rbeginEv(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !133 {
  %3 = tail call ptr @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  tail call void @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_10ArenaBlockINS0_3AVTEmEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %3) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_10ArenaBlockINS0_3AVTEmEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat !prof !133 {
  %3 = tail call noundef zeroext i1 @_ZSteqIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_10ArenaBlockINS0_3AVTEmEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_10ArenaBlockINS0_3AVTEmEEEENS0_9XalanListIS6_E4NodeEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !133 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  %4 = load i64, ptr %0, align 8, !tbaa !131
  store i64 %4, ptr %2, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %5 = call ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  store ptr %5, ptr %3, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1010ArenaBlockINS_3AVTEmE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !133 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !156
  %5 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_3AVTEmE11isInBordersEPKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %4) #8
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_10ArenaBlockINS0_3AVTEmEEEENS0_9XalanListIS6_E4NodeEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !133 {
  %2 = tail call ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_10ArenaBlockINS0_3AVTEmEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) unnamed_addr #1 comdat align 2 !prof !133 {
  store ptr %1, ptr %0, align 8, !tbaa.struct !175
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_10ArenaBlockINS0_3AVTEmEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !133 {
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %5 = tail call ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_10ArenaBlockINS0_3AVTEmEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  store ptr %5, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %6 = tail call ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_10ArenaBlockINS0_3AVTEmEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  store ptr %6, ptr %4, align 8
  %7 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_10ArenaBlockINS0_3AVTEmEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !133 {
  %2 = load ptr, ptr %0, align 8, !tbaa.struct !175
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !133 {
  %2 = load ptr, ptr %0, align 8, !tbaa !162
  %3 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !152
  store ptr %4, ptr %0, align 8, !tbaa !162
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !133 {
  %2 = load ptr, ptr %0, align 8, !tbaa !162
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_3AVTEmE11isInBordersEPKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !133 {
  %4 = alloca %"struct.std::less", align 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  %7 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !172
  %9 = call noundef zeroext i1 @_ZNKSt4lessIPKN11xalanc_1_103AVTEEclES3_S3_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef %8) #9
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = call i64 @llvm.umin.i64(i64 %6, i64 %2)
  %12 = load ptr, ptr %7, align 8, !tbaa !172
  %13 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %12, i64 %11
  %14 = call noundef zeroext i1 @_ZNKSt4lessIPKN11xalanc_1_103AVTEEclES3_S3_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef %13) #9
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %3
  br label %16

16:                                               ; preds = %10, %15
  %17 = phi i1 [ false, %15 ], [ true, %10 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  ret i1 %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt4lessIPKN11xalanc_1_103AVTEEclES3_S3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !133 {
  %4 = icmp ult ptr %1, %2
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_10ArenaBlockINS0_3AVTEmEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !136 {
  %4 = alloca %"struct.xalanc_1_10::DeleteFunctor", align 8
  %5 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  store ptr %2, ptr %4, align 8
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  br i1 %6, label %7, label %13, !prof !166

7:                                                ; preds = %3, %7
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  %9 = load ptr, ptr %8, align 8, !tbaa !131
  call void @_ZNK11xalanc_1_1013DeleteFunctorINS_10ArenaBlockINS_3AVTEmEEEclEPKS3_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEppEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  %10 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  br i1 %10, label %7, label %11, !prof !176, !llvm.loop !177

11:                                               ; preds = %7
  %12 = load ptr, ptr %4, align 8
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi ptr [ %12, %11 ], [ %2, %3 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1013DeleteFunctorINS_10ArenaBlockINS_3AVTEmEEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !136 {
  store ptr %1, ptr %0, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !136 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  %5 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  br i1 %5, label %6, label %9, !prof !166

6:                                                ; preds = %1, %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEppEi(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #8
  %7 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE8freeNodeERNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  %8 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  br i1 %8, label %6, label %9, !prof !176, !llvm.loop !178

9:                                                ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1013DeleteFunctorINS_10ArenaBlockINS_3AVTEmEEEclEPKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %3 = alloca %"struct.xalanc_1_10::XalanDestroyFunctor", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  tail call void @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_10ArenaBlockINS_3AVTEmEEEENS_19XalanDestroyFunctorIT_EEPKS5_(ptr noundef %1) #8
  %4 = load ptr, ptr %0, align 8, !tbaa !179
  call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_10ArenaBlockINS_3AVTEmEEEclEPKS3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEppEv(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %3 = load ptr, ptr %1, align 8, !tbaa !148
  %4 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !142
  store ptr %5, ptr %1, align 8, !tbaa !148
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_10ArenaBlockINS_3AVTEmEEEENS_19XalanDestroyFunctorIT_EEPKS5_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !118 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_10ArenaBlockINS_3AVTEmEEEclEPKS3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !118 {
  tail call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_10ArenaBlockINS_3AVTEmEEEclEPS3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_10ArenaBlockINS_3AVTEmEEEclEPS3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5, !prof !138

5:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_10ArenaBlockINS_3AVTEmEEEclERS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #8
  %6 = load ptr, ptr %2, align 8, !tbaa !119
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %1) #8
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_10ArenaBlockINS_3AVTEmEEEclERS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 !prof !118 {
  tail call void @_ZN11xalanc_1_1010ArenaBlockINS_3AVTEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010ArenaBlockINS_3AVTEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !156
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %7, label %5, !prof !181

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  br label %8

7:                                                ; preds = %8, %1
  tail call void @_ZN11xalanc_1_1014ArenaBlockBaseINS_3AVTEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret void

8:                                                ; preds = %5, %8
  %9 = phi i64 [ 0, %5 ], [ %12, %8 ]
  %10 = load ptr, ptr %6, align 8, !tbaa !172
  %11 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %10, i64 %9
  tail call void @_ZN11xalanc_1_1012XalanDestroyINS_3AVTEEEvRT_(ptr noundef nonnull align 8 dereferenceable(48) %11) #8
  %12 = add nuw i64 %9, 1
  %13 = load i64, ptr %2, align 8, !tbaa !156
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %8, label %7, !prof !182, !llvm.loop !183
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1012XalanDestroyINS_3AVTEEEvRT_(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat !prof !129 {
  %2 = load ptr, ptr %0, align 8, !tbaa !119
  %3 = load ptr, ptr %2, align 8
  tail call void %3(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaBlockBaseINS_3AVTEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !172
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !159
  invoke void @_ZN11xalanc_1_1014XalanAllocatorINS_3AVTEE10deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3, i64 noundef %5) #8
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1014XalanAllocatorINS_3AVTEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #10
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanAllocatorINS_3AVTEE10deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %10, label %5, !prof !138

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !173
  %7 = load ptr, ptr %6, align 8, !tbaa !119
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %1) #8
  br label %10

10:                                               ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE8freeNodeERNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 !prof !118 {
  %3 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !142
  %5 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !152
  %7 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %6, i64 0, i32 2
  store ptr %4, ptr %7, align 8, !tbaa !142
  %8 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %4, i64 0, i32 1
  store ptr %6, ptr %8, align 8, !tbaa !152
  store ptr null, ptr %5, align 8, !tbaa !152
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !140
  store ptr %10, ptr %3, align 8, !tbaa !142
  store ptr %1, ptr %9, align 8, !tbaa !140
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1017XalanAVTAllocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 align 2 !prof !118 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1017XalanAVTAllocator6createERNS_29StylesheetConstructionContextEPKN11xercesc_2_77LocatorEPKtS8_RKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 1 %5) local_unnamed_addr #0 align 2 !prof !129 {
  %7 = tail call noundef ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #8
  tail call void @_ZN11xalanc_1_103AVTC1ERNS_29StylesheetConstructionContextEPKN11xercesc_2_77LocatorEPKtS8_RKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 1 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 1 %5) #8
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %7) #8
  ret ptr %7
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_103AVTC1ERNS_29StylesheetConstructionContextEPKN11xercesc_2_77LocatorEPKtS8_RKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 1, ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 1) unnamed_addr #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { noreturn nounwind }
attributes #11 = { builtin nounwind optsize }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!117}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116}
!36 = !{ptr @_ZN11xalanc_1_1017XalanAVTAllocatorC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEEC2ERN11xercesc_2_713MemoryManagerE, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE5resetEv, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEED2Ev, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE13allocateBlockEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5emptyEv, i64 48}
!41 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE13allocateBlockEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE4backEv, i64 94}
!42 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE13allocateBlockEv, ptr @_ZNK11xalanc_1_1014ArenaBlockBaseINS_3AVTEmE14blockAvailableEv, i64 46}
!43 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE13allocateBlockEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE16getMemoryManagerEv, i64 3}
!44 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE13allocateBlockEv, ptr @_ZN11xalanc_1_1010ArenaBlockINS_3AVTEmE6createERN11xercesc_2_713MemoryManagerEm, i64 3}
!45 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE13allocateBlockEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE9push_backERKS4_, i64 3}
!46 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE13allocateBlockEv, ptr @_ZN11xalanc_1_1010ArenaBlockINS_3AVTEmE13allocateBlockEv, i64 48}
!47 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE16commitAllocationEPS1_, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE4backEv, i64 48}
!48 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE16commitAllocationEPS1_, ptr @_ZN11xalanc_1_1010ArenaBlockINS_3AVTEmE16commitAllocationEPS1_, i64 48}
!49 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5beginEv, i64 2}
!50 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE3endEv, i64 2}
!51 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE16getMemoryManagerEv, i64 2}
!52 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_1013DeleteFunctorINS_10ArenaBlockINS_3AVTEmEEEC2ERN11xercesc_2_713MemoryManagerE, i64 2}
!53 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_10ArenaBlockINS0_3AVTEmEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, i64 2}
!54 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5clearEv, i64 2}
!55 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5beginEv, i64 1}
!56 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE3endEv, i64 1}
!57 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEED2Ev, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEneERKSA_, i64 1}
!58 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE10deallocateEPNS5_4NodeE, i64 2}
!59 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5beginEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE11getListHeadEv, i64 5}
!60 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5beginEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 5}
!61 = !{ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEneERKSA_, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEeqERKSA_, i64 7}
!62 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE3endEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE11getListHeadEv, i64 150}
!63 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE3endEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 150}
!64 = !{ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEppEi, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 1}
!65 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE11getListHeadEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE8allocateEm, i64 2}
!66 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5emptyEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5beginEv, i64 48}
!67 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5emptyEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE3endEv, i64 48}
!68 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5emptyEv, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEeqERKSA_, i64 48}
!69 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE4backEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE3endEv, i64 143}
!70 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE4backEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEmmEv, i64 143}
!71 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE4backEv, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEdeEv, i64 143}
!72 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE9push_backERKS4_, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE3endEv, i64 1}
!73 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE9push_backERKS4_, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, i64 1}
!74 = !{ptr @_ZN11xalanc_1_1010ArenaBlockINS_3AVTEmE6createERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1014XalanConstructINS_10ArenaBlockINS_3AVTEmEEN11xercesc_2_713MemoryManagerEmEEPT_RS5_RS7_RT0_RKT1_, i64 1}
!75 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE16getMemoryManagerEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE16getMemoryManagerEv, i64 1}
!76 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5beginEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE11getListHeadEv, i64 48}
!77 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5beginEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 48}
!78 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE3endEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE11getListHeadEv, i64 48}
!79 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE3endEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 48}
!80 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE11getListHeadEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE11getListHeadEv, i64 96}
!81 = !{ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEmmEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_, i64 143}
!82 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE8allocateEm, i64 1}
!83 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_10ArenaBlockINS_3AVTEmEEE9constructEPS4_RKS4_RN11xercesc_2_713MemoryManagerE, i64 1}
!84 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEE4nodeEv, i64 4}
!85 = !{ptr @_ZN11xalanc_1_1014XalanConstructINS_10ArenaBlockINS_3AVTEmEEN11xercesc_2_713MemoryManagerEmEEPT_RS5_RS7_RT0_RKT1_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!86 = !{ptr @_ZN11xalanc_1_1014XalanConstructINS_10ArenaBlockINS_3AVTEmEEN11xercesc_2_713MemoryManagerEmEEPT_RS5_RS7_RT0_RKT1_, ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv, i64 1}
!87 = !{ptr @_ZN11xalanc_1_1014XalanConstructINS_10ArenaBlockINS_3AVTEmEEN11xercesc_2_713MemoryManagerEmEEPT_RS5_RS7_RT0_RKT1_, ptr @_ZN11xalanc_1_1010ArenaBlockINS_3AVTEmEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!88 = !{ptr @_ZN11xalanc_1_1014XalanConstructINS_10ArenaBlockINS_3AVTEmEEN11xercesc_2_713MemoryManagerEmEEPT_RS5_RS7_RT0_RKT1_, ptr @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv, i64 1}
!89 = !{ptr @_ZN11xalanc_1_1014XalanConstructINS_10ArenaBlockINS_3AVTEmEEN11xercesc_2_713MemoryManagerEmEEPT_RS5_RS7_RT0_RKT1_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev, i64 1}
!90 = !{ptr @_ZN11xalanc_1_1010ArenaBlockINS_3AVTEmEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_3AVTEmEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!91 = !{ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_3AVTEmEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1014XalanAllocatorINS_3AVTEEC2ERN11xercesc_2_713MemoryManagerE, i64 1}
!92 = !{ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_3AVTEmEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1014XalanAllocatorINS_3AVTEE8allocateEmPKv, i64 1}
!93 = !{ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_10ArenaBlockINS0_3AVTEmEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEneERKSA_, i64 3}
!94 = !{ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_10ArenaBlockINS0_3AVTEmEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEdeEv, i64 1}
!95 = !{ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_10ArenaBlockINS0_3AVTEmEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_10ArenaBlockINS_3AVTEmEEEclEPKS3_, i64 1}
!96 = !{ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_10ArenaBlockINS0_3AVTEmEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEppEv, i64 1}
!97 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5clearEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5beginEv, i64 2}
!98 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5clearEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE3endEv, i64 3}
!99 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5clearEv, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEneERKSA_, i64 3}
!100 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5clearEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEppEi, i64 1}
!101 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5clearEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEE4nodeEv, i64 1}
!102 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5clearEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE8freeNodeERNS5_4NodeE, i64 1}
!103 = !{ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_10ArenaBlockINS_3AVTEmEEEclEPKS3_, ptr @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_10ArenaBlockINS_3AVTEmEEEENS_19XalanDestroyFunctorIT_EEPKS5_, i64 1}
!104 = !{ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_10ArenaBlockINS_3AVTEmEEEclEPKS3_, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_10ArenaBlockINS_3AVTEmEEEclEPKS3_RN11xercesc_2_713MemoryManagerE, i64 1}
!105 = !{ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEppEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_, i64 1}
!106 = !{ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_10ArenaBlockINS_3AVTEmEEEclEPKS3_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_10ArenaBlockINS_3AVTEmEEEclEPS3_RN11xercesc_2_713MemoryManagerE, i64 1}
!107 = !{ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_10ArenaBlockINS_3AVTEmEEEclEPS3_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_10ArenaBlockINS_3AVTEmEEEclERS3_, i64 1}
!108 = !{ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_10ArenaBlockINS_3AVTEmEEEclERS3_, ptr @_ZN11xalanc_1_1010ArenaBlockINS_3AVTEmED2Ev, i64 1}
!109 = !{ptr @_ZN11xalanc_1_1010ArenaBlockINS_3AVTEmED2Ev, ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_3AVTEmED2Ev, i64 1}
!110 = !{ptr @_ZN11xalanc_1_1010ArenaBlockINS_3AVTEmED2Ev, ptr @_ZN11xalanc_1_1012XalanDestroyINS_3AVTEEEvRT_, i64 25}
!111 = !{ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_3AVTEmED2Ev, ptr @_ZN11xalanc_1_1014XalanAllocatorINS_3AVTEE10deallocateEPS1_m, i64 1}
!112 = !{ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_3AVTEmED2Ev, ptr @_ZN11xalanc_1_1014XalanAllocatorINS_3AVTEED2Ev, i64 1}
!113 = !{ptr @_ZN11xalanc_1_1017XalanAVTAllocatorD2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEED2Ev, i64 1}
!114 = !{ptr @_ZN11xalanc_1_1017XalanAVTAllocator6createERNS_29StylesheetConstructionContextEPKN11xercesc_2_77LocatorEPKtS8_RKNS_14PrefixResolverE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE13allocateBlockEv, i64 48}
!115 = !{ptr @_ZN11xalanc_1_1017XalanAVTAllocator6createERNS_29StylesheetConstructionContextEPKN11xercesc_2_77LocatorEPKtS8_RKNS_14PrefixResolverE, ptr @_ZN11xalanc_1_103AVTC1ERNS_29StylesheetConstructionContextEPKN11xercesc_2_77LocatorEPKtS8_RKNS_14PrefixResolverE, i64 48}
!116 = !{ptr @_ZN11xalanc_1_1017XalanAVTAllocator6createERNS_29StylesheetConstructionContextEPKN11xercesc_2_77LocatorEPKtS8_RKNS_14PrefixResolverE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE16commitAllocationEPS1_, i64 48}
!117 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!118 = !{!"function_entry_count", i64 1}
!119 = !{!120, !120, i64 0}
!120 = !{!"vtable pointer", !121, i64 0}
!121 = !{!"Simple C++ TBAA"}
!122 = !{!123, !124, i64 8}
!123 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEEE", !124, i64 8, !126, i64 16}
!124 = !{!"long", !125, i64 0}
!125 = !{!"omnipotent char", !121, i64 0}
!126 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEEE", !127, i64 0, !127, i64 8, !127, i64 16}
!127 = !{!"any pointer", !125, i64 0}
!128 = !{!126, !127, i64 0}
!129 = !{!"function_entry_count", i64 48}
!130 = !{!"branch_weights", i32 2, i32 48}
!131 = !{!127, !127, i64 0}
!132 = !{!"branch_weights", i32 48, i32 1}
!133 = !{!"function_entry_count", i64 0}
!134 = distinct !{!134, !135}
!135 = !{!"llvm.loop.mustprogress"}
!136 = !{!"function_entry_count", i64 2}
!137 = !{!126, !127, i64 8}
!138 = !{!"branch_weights", i32 1, i32 2}
!139 = distinct !{!139, !135}
!140 = !{!126, !127, i64 16}
!141 = !{!"branch_weights", i32 2, i32 2}
!142 = !{!143, !127, i64 16}
!143 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE4NodeE", !127, i64 0, !127, i64 8, !127, i64 16}
!144 = distinct !{!144, !135}
!145 = !{!"function_entry_count", i64 5}
!146 = !{!"function_entry_count", i64 7}
!147 = !{!"function_entry_count", i64 150}
!148 = !{!149, !127, i64 0}
!149 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEE", !127, i64 0}
!150 = !{!"function_entry_count", i64 251}
!151 = !{!"branch_weights", i32 2, i32 251}
!152 = !{!143, !127, i64 8}
!153 = !{!"function_entry_count", i64 156}
!154 = !{!"function_entry_count", i64 143}
!155 = !{!"function_entry_count", i64 47}
!156 = !{!157, !124, i64 8}
!157 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_3AVTEmEE", !158, i64 0, !124, i64 8, !124, i64 16, !127, i64 24}
!158 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_3AVTEEE", !127, i64 0}
!159 = !{!157, !124, i64 16}
!160 = !{!124, !124, i64 0}
!161 = !{!"branch_weights", i32 1, i32 49}
!162 = !{!163, !127, i64 0}
!163 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEE", !127, i64 0}
!164 = !{!"function_entry_count", i64 96}
!165 = !{!"function_entry_count", i64 144}
!166 = !{!"branch_weights", i32 2, i32 1}
!167 = !{!"function_entry_count", i64 50702}
!168 = !{!169, !127, i64 8}
!169 = !{!"_ZTSN11xalanc_1_1020XalanAllocationGuardE", !127, i64 0, !127, i64 8}
!170 = !{!"branch_weights", i32 50703, i32 1}
!171 = !{!169, !127, i64 0}
!172 = !{!157, !127, i64 24}
!173 = !{!158, !127, i64 0}
!174 = !{!"function_entry_count", i64 3}
!175 = !{i64 0, i64 8, !131}
!176 = !{!"branch_weights", i32 0, i32 2}
!177 = distinct !{!177, !135}
!178 = distinct !{!178, !135}
!179 = !{!180, !127, i64 0}
!180 = !{!"_ZTSN11xalanc_1_1013DeleteFunctorINS_10ArenaBlockINS_3AVTEmEEEE", !127, i64 0}
!181 = !{!"branch_weights", i32 1, i32 127}
!182 = !{!"branch_weights", i32 3009, i32 127}
!183 = distinct !{!183, !135}
