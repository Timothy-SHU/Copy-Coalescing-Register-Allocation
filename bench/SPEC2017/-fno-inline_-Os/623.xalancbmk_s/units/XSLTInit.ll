; ModuleID = 'XSLTInit.cpp'
source_filename = "XSLTInit.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XSLTInit" = type { %"class.xalanc_1_10::PlatformSupportInit", %"class.xalanc_1_10::DOMSupportInit", %"class.xalanc_1_10::XMLSupportInit", %"class.xalanc_1_10::XalanSourceTreeInit", %"class.xalanc_1_10::XPathInit" }
%"class.xalanc_1_10::PlatformSupportInit" = type { %"class.xalanc_1_10::XalanDOMInit" }
%"class.xalanc_1_10::XalanDOMInit" = type { i8 }
%"class.xalanc_1_10::DOMSupportInit" = type { %"class.xalanc_1_10::PlatformSupportInit" }
%"class.xalanc_1_10::XMLSupportInit" = type { %"class.xalanc_1_10::PlatformSupportInit", %"class.xalanc_1_10::DOMSupportInit" }
%"class.xalanc_1_10::XalanSourceTreeInit" = type { %"class.xalanc_1_10::PlatformSupportInit", %"class.xalanc_1_10::DOMSupportInit", %"class.xalanc_1_10::XMLSupportInit" }
%"class.xalanc_1_10::XPathInit" = type { %"class.xalanc_1_10::PlatformSupportInit", %"class.xalanc_1_10::DOMSupportInit" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XSLTInit, false>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XSLTInit, false>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE3getEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_108XSLTInitEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE17MemMgrAutoPtrData10deallocateEv = comdat any

$__clang_call_terminate = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

@_ZN11xalanc_1_108XSLTInit13s_initCounterE = dso_local local_unnamed_addr global i64 0, align 8
@_ZN11xalanc_1_10L21s_staticMemoryManagerE = internal unnamed_addr global ptr null, align 8

@_ZN11xalanc_1_108XSLTInitC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_108XSLTInitC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_108XSLTInitD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_108XSLTInitD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_108XSLTInitC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  tail call void @_ZN11xalanc_1_1019PlatformSupportInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSLTInit", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1014DOMSupportInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #6
          to label %4 unwind label %15

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTInit", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1014XMLSupportInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(2) %5, ptr noundef nonnull align 8 dereferenceable(8) %1) #6
          to label %6 unwind label %17

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xalanc_1_10::XSLTInit", ptr %0, i64 0, i32 3
  invoke void @_ZN11xalanc_1_1019XalanSourceTreeInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(4) %7, ptr noundef nonnull align 8 dereferenceable(8) %1) #6
          to label %8 unwind label %19

8:                                                ; preds = %6
  %9 = getelementptr inbounds %"class.xalanc_1_10::XSLTInit", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_109XPathInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(2) %9, ptr noundef nonnull align 8 dereferenceable(8) %1) #6
          to label %10 unwind label %21

10:                                               ; preds = %8
  %11 = load i64, ptr @_ZN11xalanc_1_108XSLTInit13s_initCounterE, align 8, !tbaa !71
  %12 = add i64 %11, 1
  store i64 %12, ptr @_ZN11xalanc_1_108XSLTInit13s_initCounterE, align 8, !tbaa !71
  %13 = icmp eq i64 %11, 0
  br i1 %13, label %14, label %25, !prof !75

14:                                               ; preds = %10
  invoke void @_ZN11xalanc_1_108XSLTInit10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
          to label %25 unwind label %23

15:                                               ; preds = %2
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %32

17:                                               ; preds = %4
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %30

19:                                               ; preds = %6
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %28

21:                                               ; preds = %8
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %26

23:                                               ; preds = %14
  %24 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_109XPathInitD1Ev(ptr noundef nonnull align 1 dereferenceable(2) %9) #7
  br label %26

25:                                               ; preds = %14, %10
  ret void

26:                                               ; preds = %23, %21
  %27 = phi { ptr, i32 } [ %24, %23 ], [ %22, %21 ]
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeInitD1Ev(ptr noundef nonnull align 1 dereferenceable(4) %7) #7
  br label %28

28:                                               ; preds = %26, %19
  %29 = phi { ptr, i32 } [ %27, %26 ], [ %20, %19 ]
  tail call void @_ZN11xalanc_1_1014XMLSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(2) %5) #7
  br label %30

30:                                               ; preds = %28, %17
  %31 = phi { ptr, i32 } [ %29, %28 ], [ %18, %17 ]
  tail call void @_ZN11xalanc_1_1014DOMSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #7
  br label %32

32:                                               ; preds = %30, %15
  %33 = phi { ptr, i32 } [ %31, %30 ], [ %16, %15 ]
  tail call void @_ZN11xalanc_1_1019PlatformSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #7
  resume { ptr, i32 } %33
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019PlatformSupportInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014DOMSupportInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XMLSupportInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(2), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019XalanSourceTreeInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(4), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_109XPathInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(2), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_108XSLTInit10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 !prof !70 {
  tail call void @_ZN11xalanc_1_109Constants10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  tail call void @_ZN11xalanc_1_1010ElemNumber10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  tail call void @_ZN11xalanc_1_1017StylesheetHandler10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  store ptr %0, ptr @_ZN11xalanc_1_10L21s_staticMemoryManagerE, align 8, !tbaa !76
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_109XPathInitD1Ev(ptr noundef nonnull align 1 dereferenceable(2)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1019XalanSourceTreeInitD1Ev(ptr noundef nonnull align 1 dereferenceable(4)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1014XMLSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(2)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1014DOMSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1019PlatformSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_108XSLTInit6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %2 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  %3 = load ptr, ptr %0, align 8, !tbaa !78
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 10) #6
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %6) #6
  %7 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #6
  invoke void @_ZN11xalanc_1_108XSLTInitC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(10) %7, ptr noundef nonnull align 8 dereferenceable(8) %0) #6
          to label %8 unwind label %11

8:                                                ; preds = %1
  %9 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #6
          to label %10 unwind label %11

10:                                               ; preds = %8
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  ret ptr %7

11:                                               ; preds = %8, %1
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !70 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 !prof !70 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !70 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #6
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #6
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #9
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !70 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !76
  store ptr %2, ptr %5, align 8, !tbaa !76
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_108XSLTInitEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_108XSLTInitEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #4 comdat align 2 !prof !82 {
  %4 = load ptr, ptr %1, align 8, !tbaa !76
  store ptr %4, ptr %0, align 8, !tbaa !83
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !76
  store ptr %6, ptr %5, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 !prof !84 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !70 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #6
  store ptr %1, ptr %0, align 8, !tbaa !83
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !80
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !70 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #6
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #6
  br i1 %2, label %3, label %10, !prof !85

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !83
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = load ptr, ptr %4, align 8, !tbaa !78
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #6
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #8
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 !prof !70 {
  %2 = load ptr, ptr %0, align 8, !tbaa !83
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_108XSLTInitD2Ev(ptr noundef nonnull align 1 dereferenceable(10) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %2 = load i64, ptr @_ZN11xalanc_1_108XSLTInit13s_initCounterE, align 8, !tbaa !71
  %3 = add i64 %2, -1
  store i64 %3, ptr @_ZN11xalanc_1_108XSLTInit13s_initCounterE, align 8, !tbaa !71
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %6, !prof !75

5:                                                ; preds = %1
  invoke void @_ZN11xalanc_1_108XSLTInit9terminateEv() #6
          to label %6 unwind label %11

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XSLTInit", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_109XPathInitD1Ev(ptr noundef nonnull align 1 dereferenceable(2) %7) #7
  %8 = getelementptr inbounds %"class.xalanc_1_10::XSLTInit", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeInitD1Ev(ptr noundef nonnull align 1 dereferenceable(4) %8) #7
  %9 = getelementptr inbounds %"class.xalanc_1_10::XSLTInit", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1014XMLSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(2) %9) #7
  %10 = getelementptr inbounds %"class.xalanc_1_10::XSLTInit", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1014DOMSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %10) #7
  tail call void @_ZN11xalanc_1_1019PlatformSupportInitD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #7
  ret void

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  tail call void @__clang_call_terminate(ptr %13) #9
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_108XSLTInit9terminateEv() local_unnamed_addr #0 align 2 !prof !70 {
  tail call void @_ZN11xalanc_1_1017StylesheetHandler9terminateEv() #6
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl9terminateEv() #6
  tail call void @_ZN11xalanc_1_1010ElemNumber9terminateEv() #6
  tail call void @_ZN11xalanc_1_109Constants9terminateEv() #6
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_109Constants10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1010ElemNumber10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XSLTEngineImpl10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017StylesheetHandler10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017StylesheetHandler9terminateEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XSLTEngineImpl9terminateEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1010ElemNumber9terminateEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_109Constants9terminateEv() local_unnamed_addr #1

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!69}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
!36 = !{ptr @_ZN11xalanc_1_108XSLTInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019PlatformSupportInitC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!37 = !{ptr @_ZN11xalanc_1_108XSLTInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014DOMSupportInitC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!38 = !{ptr @_ZN11xalanc_1_108XSLTInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XMLSupportInitC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!39 = !{ptr @_ZN11xalanc_1_108XSLTInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019XalanSourceTreeInitC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!40 = !{ptr @_ZN11xalanc_1_108XSLTInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_109XPathInitC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!41 = !{ptr @_ZN11xalanc_1_108XSLTInitC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_108XSLTInit10initializeERN11xercesc_2_713MemoryManagerE, i64 1}
!42 = !{ptr @_ZN11xalanc_1_108XSLTInit10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_109Constants10initializeERN11xercesc_2_713MemoryManagerE, i64 1}
!43 = !{ptr @_ZN11xalanc_1_108XSLTInit10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1010ElemNumber10initializeERN11xercesc_2_713MemoryManagerE, i64 1}
!44 = !{ptr @_ZN11xalanc_1_108XSLTInit10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XSLTEngineImpl10initializeERN11xercesc_2_713MemoryManagerE, i64 1}
!45 = !{ptr @_ZN11xalanc_1_108XSLTInit10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1017StylesheetHandler10initializeERN11xercesc_2_713MemoryManagerE, i64 1}
!46 = !{ptr @_ZN11xalanc_1_108XSLTInit6createERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_, i64 1}
!47 = !{ptr @_ZN11xalanc_1_108XSLTInit6createERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE3getEv, i64 1}
!48 = !{ptr @_ZN11xalanc_1_108XSLTInit6createERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_108XSLTInitC2ERN11xercesc_2_713MemoryManagerE, i64 1}
!49 = !{ptr @_ZN11xalanc_1_108XSLTInit6createERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE7releaseEv, i64 1}
!50 = !{ptr @_ZN11xalanc_1_108XSLTInit6createERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EED2Ev, i64 1}
!51 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, i64 1}
!52 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE7releaseEv, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_, i64 1}
!53 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EED2Ev, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE17MemMgrAutoPtrData10deallocateEv, i64 1}
!54 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_108XSLTInitEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_, i64 1}
!55 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE17MemMgrAutoPtrData10invariantsEv, i64 1}
!56 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE17MemMgrAutoPtrData10invariantsEv, i64 2}
!57 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE17MemMgrAutoPtrData10deallocateEv, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE17MemMgrAutoPtrData10invariantsEv, i64 1}
!58 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE17MemMgrAutoPtrData10deallocateEv, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb0EE17MemMgrAutoPtrData12isInitilizedEv, i64 1}
!59 = !{ptr @_ZN11xalanc_1_108XSLTInitD2Ev, ptr @_ZN11xalanc_1_108XSLTInit9terminateEv, i64 1}
!60 = !{ptr @_ZN11xalanc_1_108XSLTInitD2Ev, ptr @_ZN11xalanc_1_109XPathInitD1Ev, i64 1}
!61 = !{ptr @_ZN11xalanc_1_108XSLTInitD2Ev, ptr @_ZN11xalanc_1_1019XalanSourceTreeInitD1Ev, i64 1}
!62 = !{ptr @_ZN11xalanc_1_108XSLTInitD2Ev, ptr @_ZN11xalanc_1_1014XMLSupportInitD1Ev, i64 1}
!63 = !{ptr @_ZN11xalanc_1_108XSLTInitD2Ev, ptr @_ZN11xalanc_1_1014DOMSupportInitD1Ev, i64 1}
!64 = !{ptr @_ZN11xalanc_1_108XSLTInitD2Ev, ptr @_ZN11xalanc_1_1019PlatformSupportInitD1Ev, i64 1}
!65 = !{ptr @_ZN11xalanc_1_108XSLTInit9terminateEv, ptr @_ZN11xalanc_1_1017StylesheetHandler9terminateEv, i64 1}
!66 = !{ptr @_ZN11xalanc_1_108XSLTInit9terminateEv, ptr @_ZN11xalanc_1_1014XSLTEngineImpl9terminateEv, i64 1}
!67 = !{ptr @_ZN11xalanc_1_108XSLTInit9terminateEv, ptr @_ZN11xalanc_1_1010ElemNumber9terminateEv, i64 1}
!68 = !{ptr @_ZN11xalanc_1_108XSLTInit9terminateEv, ptr @_ZN11xalanc_1_109Constants9terminateEv, i64 1}
!69 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!70 = !{!"function_entry_count", i64 1}
!71 = !{!72, !72, i64 0}
!72 = !{!"long", !73, i64 0}
!73 = !{!"omnipotent char", !74, i64 0}
!74 = !{!"Simple C++ TBAA"}
!75 = !{!"branch_weights", i32 2, i32 1}
!76 = !{!77, !77, i64 0}
!77 = !{!"any pointer", !73, i64 0}
!78 = !{!79, !79, i64 0}
!79 = !{!"vtable pointer", !74, i64 0}
!80 = !{!81, !77, i64 8}
!81 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_108XSLTInitEE", !77, i64 0, !77, i64 8}
!82 = !{!"function_entry_count", i64 2}
!83 = !{!81, !77, i64 0}
!84 = !{!"function_entry_count", i64 4}
!85 = !{!"branch_weights", i32 1, i32 2}
