; ModuleID = 'XalanDOMStringPool.cpp'
source_filename = "XalanDOMStringPool.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMStringPool" = type { ptr, %"class.xalanc_1_10::XalanDOMStringAllocator", i64, %"class.xalanc_1_10::XalanDOMStringHashTable" }
%"class.xalanc_1_10::XalanDOMStringAllocator" = type { %"class.xalanc_1_10::ArenaAllocator" }
%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i64, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanDOMStringHashTable" = type <{ i64, i64, %"class.xalanc_1_10::XalanMemMgrAutoPtrArray", i64, i32, [4 x i8] }>
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" = type { ptr, ptr, i64 }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanDOMStringPool, false>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanDOMStringPool, false>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanListIteratorBase" = type { ptr }
%"struct.xalanc_1_10::DeleteFunctor" = type { ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node" = type { ptr, ptr, ptr }
%"struct.xalanc_1_10::XalanDestroyFunctor" = type { i8 }
%"class.xalanc_1_10::ArenaBlockBase" = type { %"class.xalanc_1_10::XalanAllocator", i64, i64, ptr }
%"class.xalanc_1_10::XalanAllocator" = type { ptr }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb0EE3getEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb0EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb0EED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1018XalanDOMStringPoolEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb0EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb0EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb0EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZN11xalanc_1_1023XalanDOMStringHashTableD2Ev = comdat any

$_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEED2Ev = comdat any

$_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayData10deallocateEv = comdat any

$_ZNK11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayData10invariantsEv = comdat any

$_ZNK11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayData12isInitilizedEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyEPS3_S7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10deallocateEPS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyERS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1023XalanDOMStringAllocator5resetEv = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE5resetEv = comdat any

$_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_10ArenaBlockINS0_14XalanDOMStringEmEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5beginEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1013DeleteFunctorINS_10ArenaBlockINS_14XalanDOMStringEmEEEC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5clearEv = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEneERKSA_ = comdat any

$_ZNK11xalanc_1_1013DeleteFunctorINS_10ArenaBlockINS_14XalanDOMStringEmEEEclEPKS3_ = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEdeEv = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEppEv = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEeqERKSA_ = comdat any

$_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_19XalanDestroyFunctorIT_EEPKS5_ = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_10ArenaBlockINS_14XalanDOMStringEmEEEclEPKS3_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_10ArenaBlockINS_14XalanDOMStringEmEEEclEPS3_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_10ArenaBlockINS_14XalanDOMStringEmEEEclERS3_ = comdat any

$_ZN11xalanc_1_1010ArenaBlockINS_14XalanDOMStringEmED2Ev = comdat any

$_ZN11xalanc_1_1012XalanDestroyINS_14XalanDOMStringEEEvRT_ = comdat any

$_ZN11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEmED2Ev = comdat any

$_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEE10deallocateEPS1_m = comdat any

$_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEED2Ev = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE11getListHeadEv = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEC2ERS9_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE8allocateEm = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE8freeNodeERNS5_4NodeE = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEppEi = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEE4nodeEv = comdat any

$_ZN11xalanc_1_1011toCharArrayERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZNK11xalanc_1_1014XalanDOMString6lengthEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString4sizeEv = comdat any

$_ZN11xalanc_1_106lengthEPKt = comdat any

@_ZTVN11xalanc_1_1018XalanDOMStringPoolE = dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1018XalanDOMStringPoolE, ptr @_ZN11xalanc_1_1018XalanDOMStringPoolD2Ev, ptr @_ZN11xalanc_1_1018XalanDOMStringPoolD0Ev, ptr @_ZN11xalanc_1_1018XalanDOMStringPool5clearEv, ptr @_ZNK11xalanc_1_1018XalanDOMStringPool4sizeEv, ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1018XalanDOMStringPoolE = dso_local constant [36 x i8] c"N11xalanc_1_1018XalanDOMStringPoolE\00", align 1
@_ZTIN11xalanc_1_1018XalanDOMStringPoolE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1018XalanDOMStringPoolE }, align 8
@_ZN11xalanc_1_1018XalanDOMStringPool13s_emptyStringE = dso_local global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XalanDOMStringPool.cpp, ptr null }]

@_ZN11xalanc_1_1018XalanDOMStringPoolC1ERN11xercesc_2_713MemoryManagerEmmm = dso_local unnamed_addr alias void (ptr, ptr, i64, i64, i64), ptr @_ZN11xalanc_1_1018XalanDOMStringPoolC2ERN11xercesc_2_713MemoryManagerEmmm
@_ZN11xalanc_1_1018XalanDOMStringPoolD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1018XalanDOMStringPoolD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1018XalanDOMStringPoolD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1018XalanDOMStringPoolD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1018XalanDOMStringPool5clearEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringPool", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1023XalanDOMStringAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #12
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringPool", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1023XalanDOMStringHashTable5clearEv(ptr noundef nonnull align 8 dereferenceable(52) %3) #12
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringPool", ptr %0, i64 0, i32 2
  store i64 0, ptr %4, align 8, !tbaa !119
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZNK11xalanc_1_1018XalanDOMStringPool4sizeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(112) %0) unnamed_addr #2 align 2 !prof !132 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringPool", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !119
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #1 align 2 !prof !133 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1011toCharArrayERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %1) #12
  %4 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %1) #12
  %5 = load ptr, ptr %0, align 8, !tbaa !134
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr %7(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %3, i32 noundef %4) #12
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 align 2 !prof !136 {
  %4 = alloca i64, align 8
  %5 = icmp eq ptr %1, null
  br i1 %5, label %27, label %6, !prof !137

6:                                                ; preds = %3
  %7 = load i16, ptr %1, align 2, !tbaa !138
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %27, label %9, !prof !140

9:                                                ; preds = %6
  %10 = icmp eq i32 %2, -1
  br i1 %10, label %11, label %13, !prof !141

11:                                               ; preds = %9
  %12 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef nonnull %1) #12
  br label %13

13:                                               ; preds = %9, %11
  %14 = phi i32 [ %12, %11 ], [ %2, %9 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringPool", ptr %0, i64 0, i32 3
  %16 = call noundef ptr @_ZNK11xalanc_1_1023XalanDOMStringHashTable4findEPKtjPm(ptr noundef nonnull align 8 dereferenceable(52) %15, ptr noundef nonnull %1, i32 noundef %14, ptr noundef nonnull %4) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %25, !prof !142

18:                                               ; preds = %13
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringPool", ptr %0, i64 0, i32 1
  %20 = call noundef ptr @_ZN11xalanc_1_1023XalanDOMStringAllocator6createEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull %1, i32 noundef %14) #12
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringPool", ptr %0, i64 0, i32 2
  %22 = load i64, ptr %21, align 8, !tbaa !119
  %23 = add i64 %22, 1
  store i64 %23, ptr %21, align 8, !tbaa !119
  %24 = load i64, ptr %4, align 8, !tbaa !143
  call void @_ZN11xalanc_1_1023XalanDOMStringHashTable6insertERKNS_14XalanDOMStringEm(ptr noundef nonnull align 8 dereferenceable(52) %15, ptr noundef nonnull align 8 dereferenceable(36) %20, i64 noundef %24) #12
  br label %25

25:                                               ; preds = %13, %18
  %26 = phi ptr [ %20, %18 ], [ %16, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %27

27:                                               ; preds = %3, %6, %25
  %28 = phi ptr [ %26, %25 ], [ @_ZN11xalanc_1_1018XalanDOMStringPool13s_emptyStringE, %6 ], [ @_ZN11xalanc_1_1018XalanDOMStringPool13s_emptyStringE, %3 ]
  ret ptr %28
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #3 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #12
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1018XalanDOMStringPool13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_1018XalanDOMStringPool13s_emptyStringE, ptr nonnull @__dso_handle) #13
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #0 comdat align 2 !prof !144 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !145 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !146
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !148

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #12
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !149
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #12
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
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !150 {
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !151 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !152

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #12
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !153, !llvm.loop !154

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !156 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !149
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !157 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !151 {
  %3 = load ptr, ptr %0, align 8, !tbaa !158
  %4 = load ptr, ptr %3, align 8, !tbaa !134
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #0 comdat align 2 !prof !159 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !160 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !149
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !161
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1018XalanDOMStringPoolC2ERN11xercesc_2_713MemoryManagerEmmm(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !162 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1018XalanDOMStringPoolE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !134
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringPool", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1023XalanDOMStringAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) #12
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringPool", ptr %0, i64 0, i32 2
  store i64 0, ptr %7, align 8, !tbaa !119
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringPool", ptr %0, i64 0, i32 3
  invoke void @_ZN11xalanc_1_1023XalanDOMStringHashTableC1ERN11xercesc_2_713MemoryManagerEmm(ptr noundef nonnull align 8 dereferenceable(52) %8, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %3, i64 noundef %4) #12
          to label %9 unwind label %10

9:                                                ; preds = %5
  ret void

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1023XalanDOMStringAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #10
  resume { ptr, i32 } %11
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1023XalanDOMStringAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1023XalanDOMStringHashTableC1ERN11xercesc_2_713MemoryManagerEmm(ptr noundef nonnull align 8 dereferenceable(52), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1023XalanDOMStringAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1018XalanDOMStringPool6createERN11xercesc_2_713MemoryManagerEmmm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !132 {
  %5 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  %6 = load ptr, ptr %0, align 8, !tbaa !134
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 112) #12
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %9) #12
  %10 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #12
  invoke void @_ZN11xalanc_1_1018XalanDOMStringPoolC2ERN11xercesc_2_713MemoryManagerEmmm(ptr noundef nonnull align 8 dereferenceable(112) %10, ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #12
          to label %11 unwind label %14

11:                                               ; preds = %4
  %12 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #12
          to label %13 unwind label %14

13:                                               ; preds = %11
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  ret ptr %10

14:                                               ; preds = %11, %4
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  resume { ptr, i32 } %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !132 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !132 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !163
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !132 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #12
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !132 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
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
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !132 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !165
  store ptr %2, ptr %5, align 8, !tbaa !165
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1018XalanDOMStringPoolEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1018XalanDOMStringPoolEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 !prof !132 {
  %4 = load ptr, ptr %1, align 8, !tbaa !165
  store ptr %4, ptr %0, align 8, !tbaa !166
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !165
  store ptr %6, ptr %5, align 8, !tbaa !163
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !132 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !132 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  store ptr %1, ptr %0, align 8, !tbaa !166
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !163
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !132 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !166
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !163
  %7 = load ptr, ptr %4, align 8, !tbaa !134
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #12
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !132 {
  %2 = load ptr, ptr %0, align 8, !tbaa !166
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1018XalanDOMStringPoolD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 !prof !162 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1018XalanDOMStringPoolE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !134
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringPool", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1023XalanDOMStringHashTableD2Ev(ptr noundef nonnull align 8 dereferenceable(52) %2) #10
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringPool", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1023XalanDOMStringAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023XalanDOMStringHashTableD2Ev(ptr noundef nonnull align 8 dereferenceable(52) %0) unnamed_addr #0 comdat align 2 !prof !162 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringHashTable", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !167 {
  invoke void @_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
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
define linkonce_odr dso_local void @_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !167 {
  tail call void @_ZNK11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  br i1 %2, label %3, label %23, !prof !168

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData", ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !169
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %9, label %7, !prof !170

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData", ptr %0, i64 0, i32 1
  br label %16

9:                                                ; preds = %16, %3
  %10 = load ptr, ptr %0, align 8, !tbaa !171
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !172
  %13 = load ptr, ptr %10, align 8, !tbaa !134
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12) #12
  br label %23

16:                                               ; preds = %7, %16
  %17 = phi i64 [ 0, %7 ], [ %20, %16 ]
  %18 = load ptr, ptr %8, align 8, !tbaa !172
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %18, i64 %17
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %19) #10
  %20 = add nuw i64 %17, 1
  %21 = load i64, ptr %4, align 8, !tbaa !169
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %16, label %9, !prof !173, !llvm.loop !174

23:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !175 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !167 {
  %2 = load ptr, ptr %0, align 8, !tbaa !171
  %3 = icmp eq ptr %2, null
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  %7 = select i1 %3, i1 true, i1 %6
  br i1 %7, label %12, label %8, !prof !176

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData", ptr %0, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !169
  %11 = icmp ne i64 %10, 0
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i1 [ false, %1 ], [ %11, %8 ]
  ret i1 %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !178
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !180

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyEPS3_S7_(ptr noundef %6, ptr noundef %7) #12
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !181
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10deallocateEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #12
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
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !182 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyEPS3_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !183 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !184

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyERS3_(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !185, !llvm.loop !186

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !187 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !181
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !187 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10deallocateEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !183 {
  %3 = load ptr, ptr %0, align 8, !tbaa !188
  %4 = load ptr, ptr %3, align 8, !tbaa !134
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyERS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !189 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !190 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !181
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !191
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023XalanDOMStringAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !118 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #12
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1023XalanDOMStringHashTable5clearEv(ptr noundef nonnull align 8 dereferenceable(52)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !192 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %4 = alloca %"struct.xalanc_1_10::DeleteFunctor", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  call void @_ZN11xalanc_1_1013DeleteFunctorINS_10ArenaBlockINS_14XalanDOMStringEmEEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  %7 = load ptr, ptr %4, align 8
  %8 = call ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_10ArenaBlockINS0_14XalanDOMStringEmEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr %7) #12
  call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_10ArenaBlockINS0_14XalanDOMStringEmEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #1 comdat !prof !192 {
  %4 = alloca %"struct.xalanc_1_10::DeleteFunctor", align 8
  %5 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  store ptr %2, ptr %4, align 8
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  br i1 %6, label %7, label %13, !prof !193

7:                                                ; preds = %3, %7
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  %9 = load ptr, ptr %8, align 8, !tbaa !165
  call void @_ZNK11xalanc_1_1013DeleteFunctorINS_10ArenaBlockINS_14XalanDOMStringEmEEEclEPKS3_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %9) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEppEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  %10 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  br i1 %10, label %7, label %11, !prof !194, !llvm.loop !195

11:                                               ; preds = %7
  %12 = load ptr, ptr %4, align 8
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi ptr [ %12, %11 ], [ %2, %3 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5beginEv(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 !prof !196 {
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #12
  %4 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !197
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 !prof !199 {
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #12
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !200 {
  %2 = load ptr, ptr %0, align 8, !tbaa !201
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1013DeleteFunctorINS_10ArenaBlockINS_14XalanDOMStringEmEEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !192 {
  store ptr %1, ptr %0, align 8, !tbaa !165
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !192 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  %5 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br i1 %5, label %6, label %9, !prof !193

6:                                                ; preds = %1, %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEppEi(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #12
  %7 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE8freeNodeERNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  %8 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br i1 %8, label %6, label %9, !prof !194, !llvm.loop !202

9:                                                ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !203 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1013DeleteFunctorINS_10ArenaBlockINS_14XalanDOMStringEmEEEclEPKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !204 {
  %3 = alloca %"struct.xalanc_1_10::XalanDestroyFunctor", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  tail call void @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_19XalanDestroyFunctorIT_EEPKS5_(ptr noundef %1) #12
  %4 = load ptr, ptr %0, align 8, !tbaa !205
  call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_10ArenaBlockINS_14XalanDOMStringEmEEEclEPKS3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !207 {
  %2 = load ptr, ptr %0, align 8, !tbaa !208
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEppEv(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !204 {
  %3 = load ptr, ptr %1, align 8, !tbaa !208
  %4 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !197
  store ptr %5, ptr %1, align 8, !tbaa !208
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !203 {
  %3 = load ptr, ptr %0, align 8, !tbaa !208
  %4 = load ptr, ptr %1, align 8, !tbaa !208
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_19XalanDestroyFunctorIT_EEPKS5_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !204 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_10ArenaBlockINS_14XalanDOMStringEmEEEclEPKS3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 !prof !204 {
  tail call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_10ArenaBlockINS_14XalanDOMStringEmEEEclEPS3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_10ArenaBlockINS_14XalanDOMStringEmEEEclEPS3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 !prof !204 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5, !prof !210

5:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_10ArenaBlockINS_14XalanDOMStringEmEEEclERS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #12
  %6 = load ptr, ptr %2, align 8, !tbaa !134
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %1) #12
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_10ArenaBlockINS_14XalanDOMStringEmEEEclERS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !204 {
  tail call void @_ZN11xalanc_1_1010ArenaBlockINS_14XalanDOMStringEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010ArenaBlockINS_14XalanDOMStringEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !204 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !211
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %7, label %5, !prof !214

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  br label %8

7:                                                ; preds = %8, %1
  tail call void @_ZN11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void

8:                                                ; preds = %5, %8
  %9 = phi i64 [ 0, %5 ], [ %12, %8 ]
  %10 = load ptr, ptr %6, align 8, !tbaa !215
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %10, i64 %9
  tail call void @_ZN11xalanc_1_1012XalanDestroyINS_14XalanDOMStringEEEvRT_(ptr noundef nonnull align 8 dereferenceable(36) %11) #12
  %12 = add nuw i64 %9, 1
  %13 = load i64, ptr %2, align 8, !tbaa !211
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %8, label %7, !prof !216, !llvm.loop !217
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1012XalanDestroyINS_14XalanDOMStringEEEvRT_(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat !prof !218 {
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !204 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !215
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !219
  invoke void @_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEE10deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3, i64 noundef %5) #12
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEE10deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !220 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %10, label %5, !prof !221

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !222
  %7 = load ptr, ptr %6, align 8, !tbaa !134
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %1) #12
  br label %10

10:                                               ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !220 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !207 {
  %3 = load ptr, ptr %1, align 8, !tbaa !208
  store ptr %3, ptr %0, align 8, !tbaa !208
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !223 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !224
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9, !prof !225

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1) #12
  store ptr %6, ptr %2, align 8, !tbaa !224
  %7 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %6, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !197
  %8 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %6, i64 0, i32 1
  store ptr %6, ptr %8, align 8, !tbaa !226
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ %6, %5 ], [ %3, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 !prof !227 {
  store ptr %1, ptr %0, align 8, !tbaa !208
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !228 {
  %3 = mul i64 %1, 24
  %4 = load ptr, ptr %0, align 8, !tbaa !201
  %5 = load ptr, ptr %4, align 8, !tbaa !134
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #12
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE8freeNodeERNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !204 {
  %3 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !197
  %5 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !226
  %7 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %6, i64 0, i32 2
  store ptr %4, ptr %7, align 8, !tbaa !197
  %8 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %4, i64 0, i32 1
  store ptr %6, ptr %8, align 8, !tbaa !226
  store ptr null, ptr %5, align 8, !tbaa !226
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !229
  store ptr %10, ptr %3, align 8, !tbaa !197
  store ptr %1, ptr %9, align 8, !tbaa !229
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEppEi(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !204 {
  %4 = load ptr, ptr %1, align 8, !tbaa !208
  %5 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !197
  store ptr %6, ptr %1, align 8, !tbaa !208
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %4) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !230 {
  %2 = load ptr, ptr %0, align 8, !tbaa !208
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011toCharArrayERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat !prof !231 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #12
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat !prof !232 {
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #12
  ret i32 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !233 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #12
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  br i1 %2, label %5, label %3, !prof !234

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #12
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !235 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !236 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !161
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !237 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !149
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !238 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #12
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #12
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !239 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !240
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %0) local_unnamed_addr #0 comdat !prof !242 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ]
  %4 = load i16, ptr %3, align 2, !tbaa !138
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds i16, ptr %3, i64 1
  br i1 %5, label %7, label %2, !prof !243, !llvm.loop !244

7:                                                ; preds = %2
  %8 = ptrtoint ptr %3 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = lshr exact i64 %10, 1
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1023XalanDOMStringHashTable4findEPKtjPm(ptr noundef nonnull align 8 dereferenceable(52), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1023XalanDOMStringAllocator6createEPKtj(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1023XalanDOMStringHashTable6insertERKNS_14XalanDOMStringEm(ptr noundef nonnull align 8 dereferenceable(52), ptr noundef nonnull align 8 dereferenceable(36), i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_XalanDOMStringPool.cpp() #3 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind optsize }
attributes #11 = { builtin nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

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
!36 = !{ptr @_ZN11xalanc_1_1018XalanDOMStringPool5clearEv, ptr @_ZN11xalanc_1_1023XalanDOMStringAllocator5resetEv, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1018XalanDOMStringPool5clearEv, ptr @_ZN11xalanc_1_1023XalanDOMStringHashTable5clearEv, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1011toCharArrayERKNS_14XalanDOMStringE, i64 837023}
!39 = !{ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, i64 837023}
!40 = !{ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj, ptr @_ZN11xalanc_1_106lengthEPKt, i64 2900797}
!41 = !{ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj, ptr @_ZNK11xalanc_1_1023XalanDOMStringHashTable4findEPKtjPm, i64 3830498}
!42 = !{ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj, ptr @_ZN11xalanc_1_1023XalanDOMStringAllocator6createEPKtj, i64 35901}
!43 = !{ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj, ptr @_ZN11xalanc_1_1023XalanDOMStringHashTable6insertERKNS_14XalanDOMStringEm, i64 35901}
!44 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!47 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!48 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!49 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!50 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!51 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!52 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!53 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!54 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!55 = !{ptr @_ZN11xalanc_1_1018XalanDOMStringPoolC2ERN11xercesc_2_713MemoryManagerEmmm, ptr @_ZN11xalanc_1_1023XalanDOMStringAllocatorC1ERN11xercesc_2_713MemoryManagerEm, i64 6}
!56 = !{ptr @_ZN11xalanc_1_1018XalanDOMStringPoolC2ERN11xercesc_2_713MemoryManagerEmmm, ptr @_ZN11xalanc_1_1023XalanDOMStringHashTableC1ERN11xercesc_2_713MemoryManagerEmm, i64 6}
!57 = !{ptr @_ZN11xalanc_1_1018XalanDOMStringPoolD2Ev, ptr @_ZN11xalanc_1_1023XalanDOMStringHashTableD2Ev, i64 6}
!58 = !{ptr @_ZN11xalanc_1_1018XalanDOMStringPoolD2Ev, ptr @_ZN11xalanc_1_1023XalanDOMStringAllocatorD1Ev, i64 6}
!59 = !{ptr @_ZN11xalanc_1_1023XalanDOMStringHashTableD2Ev, ptr @_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEED2Ev, i64 6}
!60 = !{ptr @_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEED2Ev, ptr @_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayData10deallocateEv, i64 12}
!61 = !{ptr @_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayData10deallocateEv, ptr @_ZNK11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayData10invariantsEv, i64 12}
!62 = !{ptr @_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayData10deallocateEv, ptr @_ZNK11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayData12isInitilizedEv, i64 12}
!63 = !{ptr @_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayData10deallocateEv, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev, i64 2056}
!64 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv, i64 8844}
!65 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv, i64 3368}
!66 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv, i64 3368}
!67 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyEPS3_S7_, i64 3368}
!68 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10deallocateEPS3_, i64 3368}
!69 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyEPS3_S7_, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyERS3_, i64 83340}
!70 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv, i64 5594}
!71 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv, i64 5594}
!72 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv, i64 5594}
!73 = !{ptr @_ZN11xalanc_1_1023XalanDOMStringAllocator5resetEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE5resetEv, i64 1}
!74 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5beginEv, i64 9}
!75 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv, i64 9}
!76 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE16getMemoryManagerEv, i64 9}
!77 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_1013DeleteFunctorINS_10ArenaBlockINS_14XalanDOMStringEmEEEC2ERN11xercesc_2_713MemoryManagerE, i64 9}
!78 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_10ArenaBlockINS0_14XalanDOMStringEmEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, i64 9}
!79 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5clearEv, i64 9}
!80 = !{ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_10ArenaBlockINS0_14XalanDOMStringEmEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEneERKSA_, i64 18439}
!81 = !{ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_10ArenaBlockINS0_14XalanDOMStringEmEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEdeEv, i64 18430}
!82 = !{ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_10ArenaBlockINS0_14XalanDOMStringEmEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_10ArenaBlockINS_14XalanDOMStringEmEEEclEPKS3_, i64 18430}
!83 = !{ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_10ArenaBlockINS0_14XalanDOMStringEmEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEppEv, i64 18430}
!84 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5beginEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE11getListHeadEv, i64 26}
!85 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5beginEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 26}
!86 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE11getListHeadEv, i64 2006653}
!87 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 2006653}
!88 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5clearEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5beginEv, i64 9}
!89 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5clearEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv, i64 18439}
!90 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5clearEv, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEneERKSA_, i64 18439}
!91 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5clearEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEppEi, i64 18430}
!92 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5clearEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEE4nodeEv, i64 18430}
!93 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5clearEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE8freeNodeERNS5_4NodeE, i64 18430}
!94 = !{ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEneERKSA_, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEeqERKSA_, i64 40980}
!95 = !{ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_10ArenaBlockINS_14XalanDOMStringEmEEEclEPKS3_, ptr @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_19XalanDestroyFunctorIT_EEPKS5_, i64 20477}
!96 = !{ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_10ArenaBlockINS_14XalanDOMStringEmEEEclEPKS3_, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_10ArenaBlockINS_14XalanDOMStringEmEEEclEPKS3_RN11xercesc_2_713MemoryManagerE, i64 20477}
!97 = !{ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEppEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_, i64 20477}
!98 = !{ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_10ArenaBlockINS_14XalanDOMStringEmEEEclEPKS3_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_10ArenaBlockINS_14XalanDOMStringEmEEEclEPS3_RN11xercesc_2_713MemoryManagerE, i64 20477}
!99 = !{ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_10ArenaBlockINS_14XalanDOMStringEmEEEclEPS3_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_10ArenaBlockINS_14XalanDOMStringEmEEEclERS3_, i64 20476}
!100 = !{ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_10ArenaBlockINS_14XalanDOMStringEmEEEclERS3_, ptr @_ZN11xalanc_1_1010ArenaBlockINS_14XalanDOMStringEmED2Ev, i64 20477}
!101 = !{ptr @_ZN11xalanc_1_1010ArenaBlockINS_14XalanDOMStringEmED2Ev, ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEmED2Ev, i64 20477}
!102 = !{ptr @_ZN11xalanc_1_1010ArenaBlockINS_14XalanDOMStringEmED2Ev, ptr @_ZN11xalanc_1_1012XalanDestroyINS_14XalanDOMStringEEEvRT_, i64 655195}
!103 = !{ptr @_ZN11xalanc_1_1012XalanDestroyINS_14XalanDOMStringEEEvRT_, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 42029689}
!104 = !{ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEmED2Ev, ptr @_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEE10deallocateEPS1_m, i64 20477}
!105 = !{ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEmED2Ev, ptr @_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEED2Ev, i64 20477}
!106 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE11getListHeadEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE8allocateEm, i64 9}
!107 = !{ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEppEi, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 20477}
!108 = !{ptr @_ZN11xalanc_1_1011toCharArrayERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 45868073}
!109 = !{ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, i64 66708615}
!110 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!111 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!112 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!113 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!114 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 230527000}
!115 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, i64 230527000}
!116 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 1414337976}
!117 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!118 = !{!"function_entry_count", i64 1}
!119 = !{!120, !123, i64 48}
!120 = !{!"_ZTSN11xalanc_1_1018XalanDOMStringPoolE", !121, i64 8, !123, i64 48, !128, i64 56}
!121 = !{!"_ZTSN11xalanc_1_1023XalanDOMStringAllocatorE", !122, i64 0}
!122 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEEE", !123, i64 8, !126, i64 16}
!123 = !{!"long", !124, i64 0}
!124 = !{!"omnipotent char", !125, i64 0}
!125 = !{!"Simple C++ TBAA"}
!126 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEE", !127, i64 0, !127, i64 8, !127, i64 16}
!127 = !{!"any pointer", !124, i64 0}
!128 = !{!"_ZTSN11xalanc_1_1023XalanDOMStringHashTableE", !123, i64 0, !123, i64 8, !129, i64 16, !123, i64 40, !131, i64 48}
!129 = !{!"_ZTSN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEEE", !130, i64 0}
!130 = !{!"_ZTSN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayDataE", !127, i64 0, !127, i64 8, !123, i64 16}
!131 = !{!"int", !124, i64 0}
!132 = !{!"function_entry_count", i64 0}
!133 = !{!"function_entry_count", i64 837023}
!134 = !{!135, !135, i64 0}
!135 = !{!"vtable pointer", !125, i64 0}
!136 = !{!"function_entry_count", i64 4663425}
!137 = !{!"branch_weights", i32 1, i32 4663426}
!138 = !{!139, !139, i64 0}
!139 = !{!"short", !124, i64 0}
!140 = !{!"branch_weights", i32 832927, i32 3830500}
!141 = !{!"branch_weights", i32 2900800, i32 929701}
!142 = !{!"branch_weights", i32 35901, i32 3794600}
!143 = !{!123, !123, i64 0}
!144 = !{!"function_entry_count", i64 43398227}
!145 = !{!"function_entry_count", i64 128698679}
!146 = !{!147, !123, i64 16}
!147 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !127, i64 0, !123, i64 8, !123, i64 16, !127, i64 24}
!148 = !{!"branch_weights", i32 43398290, i32 85300391}
!149 = !{!147, !127, i64 24}
!150 = !{!"function_entry_count", i64 6521798503}
!151 = !{!"function_entry_count", i64 85300390}
!152 = !{!"branch_weights", i32 1, i32 12185770}
!153 = !{!"branch_weights", i32 12185770, i32 -193930395}
!154 = distinct !{!154, !155}
!155 = !{!"llvm.loop.mustprogress"}
!156 = !{!"function_entry_count", i64 227375739}
!157 = !{!"function_entry_count", i64 568333389}
!158 = !{!147, !127, i64 0}
!159 = !{!"function_entry_count", i64 30137156670}
!160 = !{!"function_entry_count", i64 825654975}
!161 = !{!147, !123, i64 8}
!162 = !{!"function_entry_count", i64 6}
!163 = !{!164, !127, i64 8}
!164 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1018XalanDOMStringPoolEE", !127, i64 0, !127, i64 8}
!165 = !{!127, !127, i64 0}
!166 = !{!164, !127, i64 0}
!167 = !{!"function_entry_count", i64 12}
!168 = !{!"branch_weights", i32 7, i32 7}
!169 = !{!130, !123, i64 16}
!170 = !{!"branch_weights", i32 1, i32 223}
!171 = !{!130, !127, i64 0}
!172 = !{!130, !127, i64 8}
!173 = !{!"branch_weights", i32 76545, i32 223}
!174 = distinct !{!174, !155}
!175 = !{!"function_entry_count", i64 36}
!176 = !{!"branch_weights", i32 63, i32 49}
!177 = !{!"function_entry_count", i64 8844}
!178 = !{!179, !123, i64 16}
!179 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !127, i64 0, !123, i64 8, !123, i64 16, !127, i64 24}
!180 = !{!"branch_weights", i32 5477, i32 3369}
!181 = !{!179, !127, i64 24}
!182 = !{!"function_entry_count", i64 11769656}
!183 = !{!"function_entry_count", i64 3368}
!184 = !{!"branch_weights", i32 1, i32 3368}
!185 = !{!"branch_weights", i32 3368, i32 79997}
!186 = distinct !{!186, !155}
!187 = !{!"function_entry_count", i64 5594}
!188 = !{!179, !127, i64 0}
!189 = !{!"function_entry_count", i64 83599}
!190 = !{!"function_entry_count", i64 43720}
!191 = !{!179, !123, i64 8}
!192 = !{!"function_entry_count", i64 9}
!193 = !{!"branch_weights", i32 159, i32 1}
!194 = !{!"branch_weights", i32 327489, i32 159}
!195 = distinct !{!195, !155}
!196 = !{!"function_entry_count", i64 26}
!197 = !{!198, !127, i64 16}
!198 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE4NodeE", !127, i64 0, !127, i64 8, !127, i64 16}
!199 = !{!"function_entry_count", i64 2006653}
!200 = !{!"function_entry_count", i64 675712}
!201 = !{!126, !127, i64 0}
!202 = distinct !{!202, !155}
!203 = !{!"function_entry_count", i64 40980}
!204 = !{!"function_entry_count", i64 20477}
!205 = !{!206, !127, i64 0}
!206 = !{!"_ZTSN11xalanc_1_1013DeleteFunctorINS_10ArenaBlockINS_14XalanDOMStringEmEEEE", !127, i64 0}
!207 = !{!"function_entry_count", i64 1986150}
!208 = !{!209, !127, i64 0}
!209 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEE", !127, i64 0}
!210 = !{!"branch_weights", i32 1, i32 20478}
!211 = !{!212, !123, i64 8}
!212 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEmEE", !213, i64 0, !123, i64 8, !123, i64 16, !127, i64 24}
!213 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEEE", !127, i64 0}
!214 = !{!"branch_weights", i32 1, i32 20477}
!215 = !{!212, !127, i64 24}
!216 = !{!"branch_weights", i32 634750, i32 20477}
!217 = distinct !{!217, !155}
!218 = !{!"function_entry_count", i64 42029689}
!219 = !{!212, !123, i64 16}
!220 = !{!"function_entry_count", i64 22998}
!221 = !{!"branch_weights", i32 1, i32 22999}
!222 = !{!213, !127, i64 0}
!223 = !{!"function_entry_count", i64 3317131}
!224 = !{!126, !127, i64 8}
!225 = !{!"branch_weights", i32 9, i32 3317124}
!226 = !{!198, !127, i64 8}
!227 = !{!"function_entry_count", i64 2027156}
!228 = !{!"function_entry_count", i64 20485}
!229 = !{!126, !127, i64 16}
!230 = !{!"function_entry_count", i64 102385}
!231 = !{!"function_entry_count", i64 45868073}
!232 = !{!"function_entry_count", i64 66708615}
!233 = !{!"function_entry_count", i64 967143541}
!234 = !{!"branch_weights", i32 403628487, i32 563515056}
!235 = !{!"function_entry_count", i64 3070433826}
!236 = !{!"function_entry_count", i64 1083116306}
!237 = !{!"function_entry_count", i64 565220908}
!238 = !{!"function_entry_count", i64 230527000}
!239 = !{!"function_entry_count", i64 1414337976}
!240 = !{!241, !131, i64 32}
!241 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !147, i64 0, !131, i64 32}
!242 = !{!"function_entry_count", i64 21552397}
!243 = !{!"branch_weights", i32 21552398, i32 128560690}
!244 = distinct !{!244, !155}
