; ModuleID = 'XercesLiaisonXalanDOMStringPool.cpp'
source_filename = "XercesLiaisonXalanDOMStringPool.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLMutexLock" = type { ptr }
%"class.xalanc_1_10::XercesLiaisonXalanDOMStringPool" = type { %"class.xalanc_1_10::XalanDOMStringPool", %"class.xercesc_2_7::XMLMutex" }
%"class.xalanc_1_10::XalanDOMStringPool" = type { ptr, %"class.xalanc_1_10::XalanDOMStringAllocator", i64, %"class.xalanc_1_10::XalanDOMStringHashTable" }
%"class.xalanc_1_10::XalanDOMStringAllocator" = type { %"class.xalanc_1_10::ArenaAllocator" }
%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i64, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanDOMStringHashTable" = type <{ i64, i64, %"class.xalanc_1_10::XalanMemMgrAutoPtrArray", i64, i32, [4 x i8] }>
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" = type { ptr, ptr, i64 }
%"class.xercesc_2_7::XMLMutex" = type { ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XercesLiaisonXalanDOMStringPool, false>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XercesLiaisonXalanDOMStringPool, false>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XercesLiaisonXalanDOMStringPoolELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XercesLiaisonXalanDOMStringPoolELb0EE3getEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XercesLiaisonXalanDOMStringPoolELb0EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XercesLiaisonXalanDOMStringPoolELb0EED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XercesLiaisonXalanDOMStringPoolELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1031XercesLiaisonXalanDOMStringPoolEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XercesLiaisonXalanDOMStringPoolELb0EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XercesLiaisonXalanDOMStringPoolELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XercesLiaisonXalanDOMStringPoolELb0EE17MemMgrAutoPtrData10deallocateEv = comdat any

$__clang_call_terminate = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XercesLiaisonXalanDOMStringPoolELb0EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

@_ZTVN11xalanc_1_1031XercesLiaisonXalanDOMStringPoolE = dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1031XercesLiaisonXalanDOMStringPoolE, ptr @_ZN11xalanc_1_1031XercesLiaisonXalanDOMStringPoolD2Ev, ptr @_ZN11xalanc_1_1031XercesLiaisonXalanDOMStringPoolD0Ev, ptr @_ZN11xalanc_1_1031XercesLiaisonXalanDOMStringPool5clearEv, ptr @_ZNK11xalanc_1_1031XercesLiaisonXalanDOMStringPool4sizeEv, ptr @_ZN11xalanc_1_1031XercesLiaisonXalanDOMStringPool3getERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1031XercesLiaisonXalanDOMStringPool3getEPKtj] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1031XercesLiaisonXalanDOMStringPoolE = dso_local constant [49 x i8] c"N11xalanc_1_1031XercesLiaisonXalanDOMStringPoolE\00", align 1
@_ZTIN11xalanc_1_1018XalanDOMStringPoolE = external constant ptr
@_ZTIN11xalanc_1_1031XercesLiaisonXalanDOMStringPoolE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1031XercesLiaisonXalanDOMStringPoolE, ptr @_ZTIN11xalanc_1_1018XalanDOMStringPoolE }, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8

@_ZN11xalanc_1_1031XercesLiaisonXalanDOMStringPoolC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1031XercesLiaisonXalanDOMStringPoolC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1031XercesLiaisonXalanDOMStringPoolD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1031XercesLiaisonXalanDOMStringPoolD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XercesLiaisonXalanDOMStringPoolD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1031XercesLiaisonXalanDOMStringPoolD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) #7
  tail call void @_ZdlPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XercesLiaisonXalanDOMStringPool5clearEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %2 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesLiaisonXalanDOMStringPool", ptr %0, i64 0, i32 1
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %3) #10
  invoke void @_ZN11xalanc_1_1018XalanDOMStringPool5clearEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
          to label %4 unwind label %5

4:                                                ; preds = %1
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  ret void

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i64 @_ZNK11xalanc_1_1031XercesLiaisonXalanDOMStringPool4sizeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %2 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesLiaisonXalanDOMStringPool", ptr %0, i64 0, i32 1
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %3) #10
  %4 = invoke noundef i64 @_ZNK11xalanc_1_1018XalanDOMStringPool4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #10
          to label %5 unwind label %6

5:                                                ; preds = %1
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  ret i64 %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1031XercesLiaisonXalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesLiaisonXalanDOMStringPool", ptr %0, i64 0, i32 1
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %4) #10
  %5 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #10
          to label %6 unwind label %7

6:                                                ; preds = %2
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret ptr %5

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1031XercesLiaisonXalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %4 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %5 = getelementptr inbounds %"class.xalanc_1_10::XercesLiaisonXalanDOMStringPool", ptr %0, i64 0, i32 1
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %5) #10
  %6 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, i32 noundef %2) #10
          to label %7 unwind label %8

7:                                                ; preds = %3
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret ptr %6

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  resume { ptr, i32 } %9
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XercesLiaisonXalanDOMStringPoolC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  tail call void @_ZN11xalanc_1_1018XalanDOMStringPoolC2ERN11xercesc_2_713MemoryManagerEmmm(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 32, i64 noundef 101, i64 noundef 15) #10
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1031XercesLiaisonXalanDOMStringPoolE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesLiaisonXalanDOMStringPool", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) #10
          to label %5 unwind label %6

5:                                                ; preds = %2
  ret void

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1018XalanDOMStringPoolD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #7
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1018XalanDOMStringPoolC2ERN11xercesc_2_713MemoryManagerEmmm(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1018XalanDOMStringPoolD2Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1031XercesLiaisonXalanDOMStringPool6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %2 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9
  %3 = load ptr, ptr %0, align 8, !tbaa !36
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 120) #10
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XercesLiaisonXalanDOMStringPoolELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %6) #10
  %7 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XercesLiaisonXalanDOMStringPoolELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  invoke void @_ZN11xalanc_1_1031XercesLiaisonXalanDOMStringPoolC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %7, ptr noundef nonnull align 8 dereferenceable(8) %0) #10
          to label %8 unwind label %11

8:                                                ; preds = %1
  %9 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XercesLiaisonXalanDOMStringPoolELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #10
          to label %10 unwind label %11

10:                                               ; preds = %8
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XercesLiaisonXalanDOMStringPoolELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  ret ptr %7

11:                                               ; preds = %8, %1
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XercesLiaisonXalanDOMStringPoolELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XercesLiaisonXalanDOMStringPoolELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !35 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XercesLiaisonXalanDOMStringPoolELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XercesLiaisonXalanDOMStringPoolELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XercesLiaisonXalanDOMStringPoolELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !35 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XercesLiaisonXalanDOMStringPoolELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #10
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XercesLiaisonXalanDOMStringPoolELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XercesLiaisonXalanDOMStringPoolELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #11
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XercesLiaisonXalanDOMStringPoolELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !35 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !39
  store ptr %2, ptr %5, align 8, !tbaa !39
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1031XercesLiaisonXalanDOMStringPoolEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XercesLiaisonXalanDOMStringPoolELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1031XercesLiaisonXalanDOMStringPoolEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 !prof !35 {
  %4 = load ptr, ptr %1, align 8, !tbaa !39
  store ptr %4, ptr %0, align 8, !tbaa !44
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !39
  store ptr %6, ptr %5, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XercesLiaisonXalanDOMStringPoolELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XercesLiaisonXalanDOMStringPoolELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !35 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XercesLiaisonXalanDOMStringPoolELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  store ptr %1, ptr %0, align 8, !tbaa !44
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !42
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XercesLiaisonXalanDOMStringPoolELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XercesLiaisonXalanDOMStringPoolELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !35 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XercesLiaisonXalanDOMStringPoolELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XercesLiaisonXalanDOMStringPoolELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !44
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = load ptr, ptr %4, align 8, !tbaa !36
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #10
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XercesLiaisonXalanDOMStringPoolELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !35 {
  %2 = load ptr, ptr %0, align 8, !tbaa !44
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XercesLiaisonXalanDOMStringPoolD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 align 2 !prof !35 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1031XercesLiaisonXalanDOMStringPoolE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesLiaisonXalanDOMStringPool", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  tail call void @_ZN11xalanc_1_1018XalanDOMStringPoolD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #7
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1018XalanDOMStringPool5clearEv(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: optsize
declare noundef i64 @_ZNK11xalanc_1_1018XalanDOMStringPool4sizeEv(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #3

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, i32 noundef) unnamed_addr #3

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize }
attributes #8 = { builtin nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { optsize }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

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
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"vtable pointer", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{!40, !40, i64 0}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !38, i64 0}
!42 = !{!43, !40, i64 8}
!43 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1031XercesLiaisonXalanDOMStringPoolEE", !40, i64 0, !40, i64 8}
!44 = !{!43, !40, i64 0}
