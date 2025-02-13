; ModuleID = 'TopLevelArg.cpp'
source_filename = "TopLevelArg.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::TopLevelArg" = type { %"class.xalanc_1_10::XalanQNameByValue", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XObjectPtr" }
%"class.xalanc_1_10::XalanQNameByValue" = type { %"class.xalanc_1_10::XalanQName", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XalanQName" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::TopLevelArg, false>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::TopLevelArg, false>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }

$_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE = comdat any

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

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EE3getEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1011TopLevelArgEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZN11xalanc_1_1010XObjectPtrC2ERKS0_ = comdat any

$_ZN11xalanc_1_1010XObjectPtrD2Ev = comdat any

@_ZN11xalanc_1_1011TopLevelArgC1ERN11xercesc_2_713MemoryManagerERKNS_10XalanQNameERKNS_14XalanDOMStringE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1011TopLevelArgC2ERN11xercesc_2_713MemoryManagerERKNS_10XalanQNameERKNS_14XalanDOMStringE
@_ZN11xalanc_1_1011TopLevelArgC1ERN11xercesc_2_713MemoryManagerERKNS_10XalanQNameENS_10XObjectPtrE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1011TopLevelArgC2ERN11xercesc_2_713MemoryManagerERKNS_10XalanQNameENS_10XObjectPtrE
@_ZN11xalanc_1_1011TopLevelArgC1ERKS0_RN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1011TopLevelArgC2ERKS0_RN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1011TopLevelArgD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1011TopLevelArgD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1011TopLevelArgC2ERN11xercesc_2_713MemoryManagerERKNS_10XalanQNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(36) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !52 {
  tail call void @_ZN11xalanc_1_1017XalanQNameByValueC1ERKNS_10XalanQNameERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  %5 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0, i32 noundef -1) #6
          to label %6 unwind label %9

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef null) #6
          to label %8 unwind label %11

8:                                                ; preds = %6
  ret void

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %13

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #7
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi { ptr, i32 } [ %12, %11 ], [ %10, %9 ]
  tail call void @_ZN11xalanc_1_1017XalanQNameByValueD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) #7
  resume { ptr, i32 } %14
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanQNameByValueC1ERKNS_10XalanQNameERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !53 {
  store ptr %1, ptr %0, align 8, !tbaa !54
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %1) #6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #2 comdat align 2 !prof !59 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017XalanQNameByValueD1Ev(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !60 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #6
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !61
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !64

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #6
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #6
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #6
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #6
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #8
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !66 {
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #8
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !67 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !68

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #6
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !69, !llvm.loop !70

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !72 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #6
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !73 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #6
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #6
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !67 {
  %3 = load ptr, ptr %0, align 8, !tbaa !74
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #2 comdat align 2 !prof !77 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !78 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !79
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1011TopLevelArg6createERN11xercesc_2_713MemoryManagerERKNS_10XalanQNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !52 {
  %4 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %5 = load ptr, ptr %0, align 8, !tbaa !75
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 136) #6
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %8) #6
  %9 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #6
  invoke void @_ZN11xalanc_1_1011TopLevelArgC2ERN11xercesc_2_713MemoryManagerERKNS_10XalanQNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(136) %9, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) #6
          to label %10 unwind label %13

10:                                               ; preds = %3
  %11 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #6
          to label %12 unwind label %13

12:                                               ; preds = %10
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret ptr %9

13:                                               ; preds = %10, %3
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !52 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !52 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !52 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #6
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !52 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #6
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #8
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !52 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !82
  store ptr %2, ptr %5, align 8, !tbaa !82
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1011TopLevelArgEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1011TopLevelArgEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 comdat align 2 !prof !52 {
  %4 = load ptr, ptr %1, align 8, !tbaa !82
  store ptr %4, ptr %0, align 8, !tbaa !83
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !82
  store ptr %6, ptr %5, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !52 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !52 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #6
  store ptr %1, ptr %0, align 8, !tbaa !83
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !80
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !52 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #6
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #6
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !83
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = load ptr, ptr %4, align 8, !tbaa !75
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #6
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !52 {
  %2 = load ptr, ptr %0, align 8, !tbaa !83
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1011TopLevelArgC2ERN11xercesc_2_713MemoryManagerERKNS_10XalanQNameENS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !52 {
  tail call void @_ZN11xalanc_1_1017XalanQNameByValueC1ERKNS_10XalanQNameERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  %5 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %1) #6
          to label %6 unwind label %9

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %3) #6
          to label %8 unwind label %11

8:                                                ; preds = %6
  ret void

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %13

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #7
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi { ptr, i32 } [ %12, %11 ], [ %10, %9 ]
  tail call void @_ZN11xalanc_1_1017XalanQNameByValueD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) #7
  resume { ptr, i32 } %14
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !84 {
  %3 = load ptr, ptr %1, align 8, !tbaa !54
  store ptr %3, ptr %0, align 8, !tbaa !54
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %3) #6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1011TopLevelArg6createERN11xercesc_2_713MemoryManagerERKNS_10XalanQNameENS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !52 {
  %4 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr", align 8
  %5 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %6 = load ptr, ptr %0, align 8, !tbaa !75
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 136) #6
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %9) #6
  %10 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #6
  invoke void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #6
          to label %11 unwind label %15

11:                                               ; preds = %3
  invoke void @_ZN11xalanc_1_1011TopLevelArgC2ERN11xercesc_2_713MemoryManagerERKNS_10XalanQNameENS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(136) %10, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %5) #6
          to label %12 unwind label %17

12:                                               ; preds = %11
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  %13 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #6
          to label %14 unwind label %15

14:                                               ; preds = %12
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret ptr %10

15:                                               ; preds = %12, %3
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %19

17:                                               ; preds = %11
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi { ptr, i32 } [ %16, %15 ], [ %18, %17 ]
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_11TopLevelArgELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  resume { ptr, i32 } %20
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !85 {
  %2 = load ptr, ptr %0, align 8, !tbaa !54
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %2) #6
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #8
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1011TopLevelArgC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !52 {
  tail call void @_ZN11xalanc_1_1017XalanQNameByValueC1ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #6
  %4 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %1, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i32 noundef -1) #6
          to label %6 unwind label %10

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %1, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #6
          to label %9 unwind label %12

9:                                                ; preds = %6
  ret void

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %14

12:                                               ; preds = %6
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #7
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi { ptr, i32 } [ %13, %12 ], [ %11, %10 ]
  tail call void @_ZN11xalanc_1_1017XalanQNameByValueD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) #7
  resume { ptr, i32 } %15
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanQNameByValueC1ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1011TopLevelArgD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #2 align 2 !prof !52 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  %3 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #7
  tail call void @_ZN11xalanc_1_1017XalanQNameByValueD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) #7
  ret void
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!51}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!36 = !{ptr @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 292432932}
!37 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!47 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!48 = !{ptr @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 717007216}
!49 = !{ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 1009440147}
!50 = !{ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, ptr @__clang_call_terminate, i64 963}
!51 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!52 = !{!"function_entry_count", i64 0}
!53 = !{!"function_entry_count", i64 292432932}
!54 = !{!55, !56, i64 0}
!55 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !56, i64 0}
!56 = !{!"any pointer", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C++ TBAA"}
!59 = !{!"function_entry_count", i64 43398227}
!60 = !{!"function_entry_count", i64 128698679}
!61 = !{!62, !63, i64 16}
!62 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !56, i64 0, !63, i64 8, !63, i64 16, !56, i64 24}
!63 = !{!"long", !57, i64 0}
!64 = !{!"branch_weights", i32 43398290, i32 85300391}
!65 = !{!62, !56, i64 24}
!66 = !{!"function_entry_count", i64 6521798503}
!67 = !{!"function_entry_count", i64 85300390}
!68 = !{!"branch_weights", i32 1, i32 12185770}
!69 = !{!"branch_weights", i32 12185770, i32 -193930395}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!"function_entry_count", i64 227375739}
!73 = !{!"function_entry_count", i64 568333389}
!74 = !{!62, !56, i64 0}
!75 = !{!76, !76, i64 0}
!76 = !{!"vtable pointer", !58, i64 0}
!77 = !{!"function_entry_count", i64 30137156670}
!78 = !{!"function_entry_count", i64 825654975}
!79 = !{!62, !63, i64 8}
!80 = !{!81, !56, i64 8}
!81 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1011TopLevelArgEE", !56, i64 0, !56, i64 8}
!82 = !{!56, !56, i64 0}
!83 = !{!81, !56, i64 0}
!84 = !{!"function_entry_count", i64 717007216}
!85 = !{!"function_entry_count", i64 1009440147}
